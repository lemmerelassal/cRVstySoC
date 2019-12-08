library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity cpu is
  Port (
    rst, clk : in std_logic;
    ram_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    mmu_addr, mmu_wdata : out std_logic_vector(31 downto 0);
    mmu_rdata : in std_logic_vector(31 downto 0);
    mmu_re, mmu_we : out std_logic;
    mmu_rdy, mmu_wack : in std_logic;

    -- Instruction pipeline
    fifo_we : out std_logic;
    fifo_full : in std_logic;
    fifo_wdata : out std_logic_vector(31 downto 0);


    -- Register file
    registerfile_register_selection : out std_logic_vector(4 downto 0);
    registerfile_register_selected : in std_logic_vector(4 downto 0);
    registerfile_wdata : out std_logic_vector(32 downto 0);
    registerfile_rdata : in std_logic_vector(32 downto 0);
    registerfile_we : out std_logic;
        
    interrupt_error, exec_done : out std_logic
  );
end cpu;

architecture behavioural of cpu is

    type instruction_details_t is
        record
            selected, decode_error, execution_done, use_rs1, use_rs2, use_rd : std_logic;
            result, next_pc : std_logic_vector(31 downto 0);
        end record;
    constant init_instruction_details: instruction_details_t := (selected => '0', execution_done => '0', decode_error => '1', result => (others => '0'), next_pc => (others => '0'), use_rs1 => '0', use_rs2 => '0', use_rd => '0');
    type instruction_details_array_t is array (natural range <>) of instruction_details_t;
    signal instruction_details_array : instruction_details_array_t(127 downto 0) := (others => init_instruction_details);


    signal opcode, funct7 : std_logic_vector(6 downto 0);
    signal instruction, n_instruction : std_logic_vector(31 downto 0);

    signal reg_rs1, reg_rs2, pc, n_pc : std_logic_vector(31 downto 0);
    signal rs1, rs2, rd : std_logic_vector(4 downto 0);
    signal funct3 : std_logic_vector(2 downto 0);


    signal imm_i, imm_s, imm_b, imm_u, imm_j : std_logic_vector(31 downto 0);

    constant B_TYPE : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    constant R_TYPE : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)

    type state_t is (FETCH_INSTRUCTION, WAIT_UNTIL_RD_UNLOCKED, FETCH_RS1, FETCH_RS2, EXECUTE, WRITEBACK);
    signal state, n_state : state_t;

    signal set_rs1, set_rs2 : std_logic;


begin

    funct7 <= instruction(31 downto 25);
    rs2 <= instruction(24 downto 20);
    rs1 <= instruction(19 downto 15);
    funct3 <= instruction(14 downto 12);
    rd <= instruction(11 downto 7);
    opcode <= instruction(6 downto 0);

    
    fsm: process(state, instruction, instruction_details_array, pc, mmu_rdy, mmu_rdata, opcode, rd, rs1, rs2, registerfile_register_selected, registerfile_rdata)
    begin
        n_state <= state;
        n_pc <= pc;
        registerfile_we <= '0';
        registerfile_wdata <= (others => '0');
        n_instruction <= instruction;
        registerfile_register_selection <= (others => '0');
        ram_width <= "10";
        mmu_re <= '0';
        mmu_addr <= (others => '0');
        set_rs1 <= '0';
        set_rs2 <= '0';

        fifo_wdata <= (others => '0');
        fifo_we <= '0';
        mmu_wdata <= (others => '0');
        mmu_we <= '0';

        case state is
            when FETCH_INSTRUCTION =>
                mmu_addr <= pc;
                ram_width <= "10";
                n_instruction <= mmu_rdata;
                if mmu_rdy = '1' then
                    mmu_re <= '1';
                    n_state <= WAIT_UNTIL_RD_UNLOCKED;
                end if;
            when WAIT_UNTIL_RD_UNLOCKED =>
                if instruction_details_array(to_integer(unsigned(opcode))).use_rd = '1' then
                    registerfile_register_selection <= rd;
                    if (registerfile_register_selected = rd) and (registerfile_rdata(32) = '0') then
                        if instruction_details_array(to_integer(unsigned(opcode))).use_rs1 = '1' then
                            n_state <= FETCH_RS1;
                        elsif instruction_details_array(to_integer(unsigned(opcode))).use_rs2 = '1' then
                            n_state <= FETCH_RS2;
                        else
                            n_state <= EXECUTE;
                        end if;
                    end if;
                else
                    if instruction_details_array(to_integer(unsigned(opcode))).use_rs1 = '1' then
                        n_state <= FETCH_RS1;
                    elsif instruction_details_array(to_integer(unsigned(opcode))).use_rs2 = '1' then
                        n_state <= FETCH_RS2;
                    else
                        n_state <= EXECUTE;
                    end if;
                end if;

            when FETCH_RS1 =>
                registerfile_register_selection <= rs1;
                if (registerfile_register_selected = rs1) and (registerfile_rdata(32) = '0') then
                    set_rs1 <= '1';
                    if instruction_details_array(to_integer(unsigned(opcode))).use_rs2 = '1' then
                        n_state <= FETCH_RS2;
                    else
                        n_state <= EXECUTE;
                    end if;
                end if;

            when FETCH_RS2 =>
                registerfile_register_selection <= rs2;
                if (registerfile_register_selected = rs2) and (registerfile_rdata(32) = '0') then
                    set_rs2 <= '1';
                    n_state <= EXECUTE;
                end if;
            
            when EXECUTE =>
                instruction_details_array(to_integer(unsigned(opcode))).selected <= '1';
                if instruction_details_array(to_integer(unsigned(opcode))).execution_done = '1' then
                    if instruction_details_array(to_integer(unsigned(opcode))).use_rd = '1' then
                        n_state <= WRITEBACK;
                    else
                        n_pc <= instruction_details_array(to_integer(unsigned(opcode))).next_pc;
                        n_state <= FETCH_INSTRUCTION;
                    end if;
                end if;

            when WRITEBACK =>
                registerfile_register_selection <= rd;
                registerfile_wdata <= '0' & instruction_details_array(to_integer(unsigned(opcode))).result;
                registerfile_we <= '1';
                if (registerfile_register_selected = rd) and (registerfile_rdata(32) = '0') and (registerfile_rdata(31 downto 0) = instruction_details_array(to_integer(unsigned(opcode))).result) then
                    n_state <= FETCH_INSTRUCTION;
                end if;

            when others =>
                n_state <= FETCH_INSTRUCTION;
        end case;
    end process;

    synchronous: process(rst, clk)
    begin
        if rst = '1' then
            state <= FETCH_INSTRUCTION;
            instruction <= (others => '0');
            reg_rs1 <= (others => '0');
            reg_rs2 <= (others => '0');
            pc <= (others => '0');
        elsif rising_edge(clk) then
            pc <= n_pc;
            instruction <= n_instruction;
            state <= n_state;

            if set_rs1 = '1' then
                reg_rs1 <= registerfile_rdata(31 downto 0);
            end if;

            if set_rs2 = '1' then
                reg_rs2 <= registerfile_rdata(31 downto 0);
            end if;

        end if;
    end process;



    decode_b_type: process(funct3, reg_rs1, reg_rs2, imm_b, pc)
    begin
        instruction_details_array(to_integer(unsigned(B_TYPE))).decode_error <= '0';
        instruction_details_array(to_integer(unsigned(B_TYPE))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + X"00000004";

        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rs1 <= '1';
        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rs2 <= '1';

        case funct3 is
            when "000" => -- BEQ
                if signed(reg_rs1) = signed(reg_rs2) then
                    instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + imm_b;
                end if;
            when "001" => -- BNE
                if signed(reg_rs1) /= signed(reg_rs2) then
                    instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + imm_b;
                end if;
            when "100" => -- BLT
                if signed(reg_rs1) < signed(reg_rs2) then
                    instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + imm_b;
                end if;
            when "101" => -- BGE
                if signed(reg_rs1) >= signed(reg_rs2) then
                    instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + imm_b;
                end if;
            when "110" => -- BLTU
                if unsigned(reg_rs1) < unsigned(reg_rs2) then
                    instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + imm_b;
                end if;
            when "111" => -- BGEU
                if unsigned(reg_rs1) >= unsigned(reg_rs2) then
                    instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + imm_b;
                end if;
            when others =>
                instruction_details_array(to_integer(unsigned(B_TYPE))).decode_error <= '1';
        end case;
    end process;


    decode_r_type: process(funct3, funct7, reg_rs1, reg_rs2, pc)
    begin
        instruction_details_array(to_integer(unsigned(R_TYPE))).decode_error <= '0';
        instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(R_TYPE))).next_pc <= pc + X"00000004";

        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rs1 <= '1'; 
        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rs2 <= '1'; 
        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rd <= '1';

        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= (others => '0');

        case funct3 is
            when "000" =>
                case funct7 is
                    when "0000000" => -- ADD
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 + reg_rs2;
                    when others => -- SUB
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 - reg_rs2;
                end case;
            when "100" => -- XOR
                instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 xor reg_rs2;
            when "110" => -- OR
                instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 or reg_rs2;
            when "111" => -- AND
                instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 and reg_rs2;
            when others =>
                instruction_details_array(to_integer(unsigned(R_TYPE))).decode_error <= '1';
        end case;
    end process;





    -- Immediate fields
    decode_imm: process(instruction)
    begin
        -- I-type
        imm_i(31 downto 11) <= (others => instruction(31));
        imm_i(10 downto 5) <= instruction(30 downto 25);
        imm_i(4 downto 1) <= instruction(24 downto 21);
        imm_i(0) <= instruction(20);

        -- S-type
        imm_s(31 downto 11) <= (others => instruction(31));
        imm_s(10 downto 5) <= instruction(30 downto 25);
        imm_s(4 downto 1) <= instruction(11 downto 8);
        imm_s(0) <= instruction(7);

        -- B-type
        imm_b(31 downto 12) <= (others => instruction(31));
        imm_b(11) <= instruction(7);
        imm_b(10 downto 5) <= instruction(30 downto 25);
        imm_b(4 downto 1) <= instruction(11 downto 8);
        imm_b(0) <= '0';

        -- U-type
        imm_u(31) <= instruction(31);
        imm_u(30 downto 20) <= instruction(30 downto 20);
        imm_u(19 downto 12) <= instruction(19 downto 12);
        imm_u(11 downto 0) <= (others => '0');

        -- J-type
        imm_j(31 downto 20) <= (others => instruction(31));
        imm_j(19 downto 12) <= instruction(19 downto 12);
        imm_j(11) <= instruction(20);
        imm_j(10 downto 5) <= instruction(30 downto 25);
        imm_j(4 downto 1) <= instruction(24 downto 21);
        imm_j(0) <= '0';

    end process;

    interrupt_error <= instruction_details_array(to_integer(unsigned(B_TYPE))).decode_error;
    exec_done <= instruction_details_array(to_integer(unsigned(B_TYPE))).execution_done;
end behavioural;