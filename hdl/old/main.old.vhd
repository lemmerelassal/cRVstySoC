library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity cpu is
  Port (
    rst, clk : in std_logic;
    ram_width : out std_logic_vector(2 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid
    o_ram_addr, ram_wdata : out std_logic_vector(31 downto 0);
    ram_rdata : in std_logic_vector(31 downto 0);
    ram_re, ram_we : out std_logic;
    ram_rdy, ram_wack : in std_logic;

    -- Instruction pipeline
    fifo_re, fifo_we : out std_logic;
    fifo_full, fifo_empty : in std_logic;
    fifo_rdata : in std_logic_vector(31 downto 0);
    fifo_wdata : out std_logic_vector(31 downto 0);


    -- Register file
    registerfile_access_request : out std_logic;
    registerfile_access_grant : in std_logic;
    registerfile_register_selection : out std_logic_vector(4 downto 0);
    registerfile_set_lock_status, registerfile_set_lock_status_value, registerfile_set_value : out std_logic;
    registerfile_current_lock_status : in std_logic;

    registerfile_data_in : out std_logic_vector(31 downto 0);
    registerfile_data_out : in std_logic_vector(31 downto 0);

    registerfile_access_stop : out std_logic;
    
    interrupt_error : out std_logic
  );
end cpu;

architecture behavioural of cpu is
    -- Registers
    type registers_t is array (31 downto 0) of std_logic_vector(31 downto 0);
    signal registers, n_registers : registers_t := (others => (others => '0'));

    signal pc, n_pc, imm_i, imm_s, imm_b, imm_u, imm_j, instruction, n_instruction, ram_addr, reg_rs1, reg_rs2, reg_rd, n_reg_rd : std_logic_vector(31 downto 0); -- Program Counter
    
    -- Instruction fields
    signal opcode, funct7 : std_logic_vector(6 downto 0);
    signal rs1, rs2, rd : std_logic_vector(4 downto 0);
    signal funct3 : std_logic_vector(2 downto 0);

    type state_t is (FETCH, PREDECODE, GET_RS1_OR_RS2, S_GET_RS2, DECODE, WRITEBACK, GIVE_UP_REGISTERFILE, EXCEPTION);
    signal state, n_state : state_t;

    -- Opcodes
    constant I_TYPE_AL : std_logic_vector(6 downto 0) := "0010011"; -- Register/Immediate (ADDI, ...)
    constant I_TYPE_LOAD : std_logic_vector(6 downto 0) := "0000011"; -- Loads
    constant I_TYPE_JALR : std_logic_vector(6 downto 0) := "1100111"; -- JALR only
    constant R_TYPE : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)
    constant S_TYPE : std_logic_vector(6 downto 0) := "0100011"; -- Store
    constant SB_TYPE : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    constant U_TYPE_LUI : std_logic_vector(6 downto 0) := "0110111"; -- Upper immediate
    constant U_TYPE_AUIPC : std_logic_vector(6 downto 0) := "0010111"; -- Upper immediate
    constant UJ_TYPE : std_logic_vector(6 downto 0) := "1101111"; --Jump and Link

    signal do_writeback, n_do_writeback, get_rs1, n_get_rs1, get_rs2, n_get_rs2, set_reg_rs1, set_reg_rs2, n_registerfile_access_stop, n_registerfile_access_request, i_registerfile_access_request : std_logic;

begin

    process(state, pc, ram_rdy, ram_wack, ram_rdata, instruction, rs1, rs2, imm_i, imm_s, funct3, funct7, opcode, reg_rs1, reg_rs2, get_rs1, get_rs2, registerfile_data_out, registerfile_access_grant, reg_rd, do_writeback, i_registerfile_access_request)
    begin
        ram_addr <= (others => '0');
        ram_wdata <= (others => '0');
        ram_re <= 'Z';
        ram_we <= 'Z';
        ram_width <= (others => 'Z');
        interrupt_error <= '0';
        
        n_state <= state;
        n_registers <= registers;
        n_pc <= pc;
        n_instruction <= instruction;
        
        n_registerfile_access_request <= i_registerfile_access_request;
        registerfile_register_selection <= (others => 'Z');
        registerfile_set_lock_status <= 'Z';
        registerfile_set_lock_status_value <= 'Z';
        registerfile_set_value <= 'Z';

        registerfile_set_lock_status_value <= 'Z';
        registerfile_set_lock_status <= 'Z';
    
        registerfile_data_in <= (others => 'Z');    
        n_registerfile_access_stop <= 'Z';

        n_do_writeback <= do_writeback;

        set_reg_rs1 <= '0';
        set_reg_rs2 <= '0';
        n_reg_rd <= reg_rd;
        n_get_rs1 <= get_rs1;
        n_get_rs2 <= get_rs2;

        case state is
            when FETCH =>
                n_registerfile_access_request <= '0';
                n_registerfile_access_stop <= 'Z';

                ram_re <= '1';
                ram_addr <= pc;
                ram_width <= "111";
                --fifo_wdata <= ram_rdata;
                n_instruction <= ram_rdata;
                if ram_rdy = '1' then
                    n_state <= PREDECODE;
                end if;
            
            when PREDECODE =>

                -- case opcode is
                --     when S_TYPE | SB_TYPE =>
                --         n_do_writeback <= '0';
                --     when others =>
                --         n_do_writeback <= '1';
                -- end case;

                case opcode is
                    when I_TYPE_JALR | U_TYPE_LUI | U_TYPE_AUIPC | UJ_TYPE =>
                        n_get_rs1 <= '0';
                    when others =>
                        n_get_rs1 <= '1';
                end case;

                case opcode is
                    when R_TYPE | S_TYPE| SB_TYPE =>
                        n_get_rs2 <= '1';
                    when others =>
                        n_get_rs1 <= '0';
                end case;

                n_registerfile_access_request <= '1';

                if registerfile_access_grant = '1' then
                    n_registerfile_access_stop <= '0';
                    n_state <= GET_RS1_OR_RS2;
                end if;

            when GET_RS1_OR_RS2 =>
                if get_rs1 = '1' then
                    registerfile_register_selection <= rs1;
                    if registerfile_current_lock_status = '0' then    
                        set_reg_rs1 <= '1';
                        if get_rs2 = '0' then
                            n_state <= DECODE;
                        else
                            n_state <= S_GET_RS2;
                        end if;
                    else
                        n_state <= GIVE_UP_REGISTERFILE;
                    end if;
                elsif get_rs2 = '1' then
                    registerfile_register_selection <= rs2;
                    if registerfile_current_lock_status = '0' then
                        set_reg_rs2 <= '1';
                        n_state <= DECODE;
                    else
                        n_state <= GIVE_UP_REGISTERFILE;
                    end if;
                else
                    n_state <= DECODE;
                end if;

            when S_GET_RS2 =>
                registerfile_register_selection <= rs2;
                if registerfile_current_lock_status = '0' then
                    set_reg_rs2 <= '1';
                    n_state <= DECODE;
                else
                    n_state <= GIVE_UP_REGISTERFILE;
                end if;

            when DECODE =>
                case opcode is
                    when I_TYPE_AL =>
                        n_state <= WRITEBACK;
                        case funct3 is
                            when "000" => -- ADDI
                                n_reg_rd <= reg_rs1 + imm_i;
                            when "100" => -- XORI
                                n_reg_rd <= reg_rd xor reg_rs1 xor imm_i;
                            when "110" => -- ORI
                                n_reg_rd <= reg_rs1 or imm_i;
                            when "111" => -- ANDI
                                n_reg_rd <= reg_rs1 or imm_i;
                            when others =>
                                n_state <= EXCEPTION;
                        end case;
                    when R_TYPE =>
                        n_state <= WRITEBACK;
                        case funct3 is
                            when "000" =>
                                case funct7 is
                                    when "0000000" => -- ADD
                                        n_reg_rd <= reg_rs1 + reg_rs2;
                                    when others => -- SUB
                                        n_reg_rd <= reg_rs1 - reg_rs2;
                                end case;
                            when "100" => -- XOR
                                n_reg_rd <= reg_rs1 xor reg_rs2;
                            when "110" => -- OR
                                n_reg_rd <= reg_rs1 or reg_rs2;
                            when "111" => -- AND
                                n_reg_rd <= reg_rs1 and reg_rs2;
                            when others =>
                                n_state <= EXCEPTION;
                        end case;
                    when S_TYPE => -- Store (wrong, but let's try like this)
                        ram_addr <= reg_rs1 + imm_s;
                        ram_wdata <= reg_rs2;
                        ram_we <= '1';
                        ram_width <= funct3;
                        if ram_wack = '1' then
                            n_state <= GIVE_UP_REGISTERFILE;
                        end if;

                    when I_TYPE_LOAD => -- Load (wrong, but let's try like this)
                        ram_addr <= reg_rs1 + imm_i;
                        ram_re <= '1';
                        ram_width <= funct3;
                        if ram_rdy = '1' then
                            n_reg_rd <= ram_rdata;
                            n_state <= WRITEBACK;
                        end if;

                    when others =>
                        n_state <= EXCEPTION;
                end case;
            when WRITEBACK =>
                registerfile_data_in <= reg_rd;
                registerfile_set_value <= '1';

                registerfile_set_lock_status_value <= '0';
                registerfile_set_lock_status <= '1';

                if registerfile_data_out = reg_rd then
                    n_pc <= pc + X"00000004";
                    n_state <= GIVE_UP_REGISTERFILE;
                end if;
            when GIVE_UP_REGISTERFILE =>
                n_registerfile_access_stop <= '1';
                n_registerfile_access_request <= '0';
                if registerfile_access_grant = '0' then
                    n_state <= FETCH;
                end if;
            when EXCEPTION =>
                interrupt_error <= '1';
                n_state <= FETCH;
        end case;
    end process;
    

    process(rst, clk)
    begin
        if rst = '1' then
            registers <= (others => (others => '0'));
            state <= FETCH;
            pc <= (others => '0');
            instruction <= (others => '0');
            o_ram_addr <= (others => '0');
            reg_rs1 <= (others => '0');
            reg_rs2 <= (others => '0');
            reg_rd <= (others => '0');
            do_writeback <= '0';
            i_registerfile_access_request <= '0';
            registerfile_access_stop <= 'Z';
            get_rs1 <= '0';
            get_rs2 <= '0';
            
        elsif rising_edge(clk) then
            o_ram_addr <= ram_addr;
            registers <= n_registers;
            state <= n_state;
            instruction <= n_instruction;
            pc <= n_pc;
            do_writeback <= n_do_writeback;
            i_registerfile_access_request <= n_registerfile_access_request;
            registerfile_access_stop <= n_registerfile_access_stop;
            get_rs1 <= n_get_rs1;
            get_rs2 <= n_get_rs2;
            

            if set_reg_rs1 = '1' then
                reg_rs1 <= registerfile_data_out;
            end if;

            if set_reg_rs2 = '1' then
                reg_rs2 <= registerfile_data_out;
            end if;

            reg_rd <= n_reg_rd;
            
            if interrupt_error = '1' then
                pc <= X"10000000";
            end if;
        end if;
    end process;

    funct7 <= instruction(31 downto 25);
    rs2 <= instruction(24 downto 20);
    rs1 <= instruction(19 downto 15);
    funct3 <= instruction(14 downto 12);
    rd <= instruction(11 downto 7);
    opcode <= instruction(6 downto 0);

    -- Immediate fields
    process(instruction)
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
    registerfile_access_request <= i_registerfile_access_request;

end behavioural;