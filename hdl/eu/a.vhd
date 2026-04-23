library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- RV32A atomic memory operations.
--
-- All AMO instructions share the same three-phase sequence:
--   S_READ    : issue a load to rs1 address, wait for data_rdy
--   S_WRITING : issue a store of the modified value, wait for data_wack
--   S_DONE    : assert execution_done for one cycle; CPU advances PC
--
-- LR.W  skips S_WRITING and instead sets the reservation register.
-- SC.W  clears the reservation; skips S_WRITING when the reservation
--       is invalid (failed SC), writing rd=1; on success rd=0.
-- All other AMO operations write rd = old memory value.
--
-- The aq/rl ordering bits (instruction[26:25]) are accepted but ignored;
-- the in-order pipeline already provides the required ordering.
--
-- Reservation register management (lr_valid / lr_addr) lives in cpu.vhd.
-- eu_a signals when to update it via lr_we / lr_valid_out / lr_addr_out.
entity eu_a is
  Port (
    clk, rst : in std_logic;
    selected : in std_logic;   -- '1' while this EU is the active opcode

    reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);
    funct5 : in std_logic_vector(4 downto 0);  -- instruction[31:27]

    -- Data memory bus (read phase then write phase)
    data_rdata : in  std_logic_vector(31 downto 0);
    data_rdy   : in  std_logic;
    data_wack  : in  std_logic;

    -- LR/SC reservation (maintained in cpu.vhd)
    lr_valid_in  : in  std_logic;
    lr_addr_in   : in  std_logic_vector(31 downto 0);
    lr_we        : out std_logic;                      -- update reservation this cycle
    lr_valid_out : out std_logic;
    lr_addr_out  : out std_logic_vector(31 downto 0);

    -- Standard EU outputs
    result, next_pc, daddr, wdata : out std_logic_vector(31 downto 0);
    data_re, data_we : out std_logic;
    use_rs1, use_rs2, use_rd : out std_logic;
    execution_done, decode_error : out std_logic
  );
end eu_a;

architecture behavioural of eu_a is

    type state_t is (S_READ, S_WRITING, S_DONE);
    signal state : state_t := S_READ;

    -- Value loaded from memory in S_READ, held stable through S_WRITING
    signal loaded      : std_logic_vector(31 downto 0) := (others => '0');
    -- '1' when a store should be issued in S_WRITING
    signal needs_write : std_logic := '0';
    -- SC.W result: '1' = success (rd=0), '0' = failure (rd=1)
    signal sc_ok       : std_logic := '0';

    -- New memory value to write (combinational from loaded + reg_rs2)
    signal new_val : std_logic_vector(31 downto 0);

begin

    use_rs1 <= '1';
    use_rs2 <= '1';
    use_rd  <= '1';
    next_pc <= pc + X"00000004";
    daddr   <= reg_rs1;  -- same address for both read and write

    -- -----------------------------------------------------------------------
    -- Compute new memory value (combinational)
    -- All operations: new_val = f(loaded, reg_rs2)
    -- -----------------------------------------------------------------------
    process(funct5, loaded, reg_rs2)
    begin
        case funct5 is
            when "00001" =>  -- AMOSWAP: new = rs2
                new_val <= reg_rs2;
            when "00000" =>  -- AMOADD:  new = old + rs2
                new_val <= loaded + reg_rs2;
            when "00100" =>  -- AMOXOR:  new = old ^ rs2
                new_val <= loaded xor reg_rs2;
            when "01100" =>  -- AMOAND:  new = old & rs2
                new_val <= loaded and reg_rs2;
            when "01000" =>  -- AMOOR:   new = old | rs2
                new_val <= loaded or reg_rs2;
            when "10000" =>  -- AMOMIN (signed): new = min(old, rs2)
                if signed(loaded) < signed(reg_rs2) then
                    new_val <= loaded;
                else
                    new_val <= reg_rs2;
                end if;
            when "10100" =>  -- AMOMAX (signed): new = max(old, rs2)
                if signed(loaded) > signed(reg_rs2) then
                    new_val <= loaded;
                else
                    new_val <= reg_rs2;
                end if;
            when "11000" =>  -- AMOMINU (unsigned): new = min(old, rs2)
                if unsigned(loaded) < unsigned(reg_rs2) then
                    new_val <= loaded;
                else
                    new_val <= reg_rs2;
                end if;
            when "11100" =>  -- AMOMAXU (unsigned): new = max(old, rs2)
                if unsigned(loaded) > unsigned(reg_rs2) then
                    new_val <= loaded;
                else
                    new_val <= reg_rs2;
                end if;
            when others =>
                new_val <= (others => '0');
        end case;
    end process;

    -- -----------------------------------------------------------------------
    -- State machine (clocked)
    -- Reset to S_READ whenever deselected so the EU is ready for next use.
    -- -----------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state       <= S_READ;
            loaded      <= (others => '0');
            needs_write <= '0';
            sc_ok       <= '0';
        elsif rising_edge(clk) then
            if selected = '0' then
                state       <= S_READ;
                needs_write <= '0';
                sc_ok       <= '0';
            else
                case state is

                    when S_READ =>
                        if data_rdy = '1' then
                            loaded <= data_rdata;
                            if funct5 = "00010" then
                                -- LR.W: no store, reservation set via lr_we
                                needs_write <= '0';
                                state       <= S_DONE;
                            elsif funct5 = "00011" then
                                -- SC.W: conditional store; always clears reservation
                                if lr_valid_in = '1' and lr_addr_in = reg_rs1 then
                                    needs_write <= '1';
                                    sc_ok       <= '1';   -- success → rd = 0
                                else
                                    needs_write <= '0';
                                    sc_ok       <= '0';   -- failure → rd = 1
                                end if;
                                state <= S_WRITING;
                            else
                                -- All other AMO: unconditional store
                                needs_write <= '1';
                                state       <= S_WRITING;
                            end if;
                        end if;

                    when S_WRITING =>
                        -- Advance when there is nothing to write, or the write is ack'd
                        if needs_write = '0' or data_wack = '1' then
                            state <= S_DONE;
                        end if;

                    when S_DONE =>
                        null;  -- hold until deselected resets us

                end case;
            end if;
        end if;
    end process;

    -- -----------------------------------------------------------------------
    -- Combinational outputs (driven from registered state)
    -- -----------------------------------------------------------------------
    process(state, selected, funct5, loaded, new_val, needs_write, sc_ok)
    begin
        data_re        <= '0';
        data_we        <= '0';
        wdata          <= new_val;
        result         <= loaded;
        execution_done <= '0';
        decode_error   <= '0';

        case state is
            when S_READ =>
                data_re <= selected;      -- read only when we are the active EU

            when S_WRITING =>
                data_we <= needs_write;   -- '0' for failed SC, '1' for all others

            when S_DONE =>
                execution_done <= '1';
                -- SC.W result encodes success/failure; all others return old value
                if funct5 = "00011" then
                    if sc_ok = '1' then
                        result <= (others => '0');   -- success
                    else
                        result <= X"00000001";        -- failure
                    end if;
                end if;
        end case;
    end process;

    -- -----------------------------------------------------------------------
    -- LR/SC reservation update
    -- Pulsed on the same cycle that the read phase completes for LR.W or SC.W.
    -- cpu.vhd latches the new value on the next rising edge.
    -- -----------------------------------------------------------------------
    lr_we        <= '1' when selected = '1' and state = S_READ and data_rdy = '1'
                             and (funct5 = "00010" or funct5 = "00011") else '0';
    lr_valid_out <= '1' when funct5 = "00010" else '0';  -- LR sets, SC clears
    lr_addr_out  <= reg_rs1;

end behavioural;
