library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity cpu is
  Port (
    rst, clk : in std_logic;

    -- Instruction memory bus
    inst_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    inst_addr : out std_logic_vector(31 downto 0);
    inst_rdata : in std_logic_vector(31 downto 0);
    inst_re : out std_logic;
    inst_rdy : in std_logic;

    -- Data memory bus
    data_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    data_addr, data_wdata : out std_logic_vector(31 downto 0);
    data_rdata : in std_logic_vector(31 downto 0);
    data_re, data_we : out std_logic;
    data_rdy, data_wack : in std_logic;

    -- FIFO for distribution onto other sub-CPUs (not implemented yet)
    --fifo_we : out std_logic;
    --fifo_full : in std_logic;
    --fifo_wdata : out std_logic_vector(31 downto 0);


    -- Register file
    registerfile_register_selection : out std_logic_vector(4 downto 0);
    registerfile_register_selected : in std_logic_vector(4 downto 0);
    registerfile_wdata : out std_logic_vector(32 downto 0);
    registerfile_rdata : in std_logic_vector(32 downto 0);
    registerfile_we : out std_logic --;
        
    --interrupt_error, exec_done : out std_logic
  );
end cpu;

architecture behavioural of cpu is

    type instruction_details_t is
        record
            selected, decode_error, execution_done, use_rs1, use_rs2, use_rd, decrement_counter : std_logic;
            result, next_pc, imm : std_logic_vector(31 downto 0);

            -- mmu interface
            data_width : std_logic_vector(1 downto 0);
            data_addr, data_wdata : std_logic_vector(31 downto 0);
            data_re, data_we : std_logic;
        end record;
    constant init_instruction_details: instruction_details_t := (selected => '0', imm => (others => '0'), execution_done => '0', decode_error => '1', result => (others => '0'), next_pc => (others => '0'), use_rs1 => '0', use_rs2 => '0', use_rd => '0', decrement_counter => '0',
                                                                    data_width => "10", data_addr => (others => '0'), data_wdata => (others => '0'), data_re => '0', data_we => '0');
    type instruction_details_array_t is array (natural range <>) of instruction_details_t;
    signal instruction_details_array : instruction_details_array_t(127 downto 0) := (others => init_instruction_details);


    signal opcode, funct7 : std_logic_vector(6 downto 0);
    signal instruction, n_instruction : std_logic_vector(31 downto 0);

    signal reg_rs1, reg_rs2, pc, n_pc, counter, n_counter : std_logic_vector(31 downto 0);
    signal rs1, rs2, rd : std_logic_vector(4 downto 0);
    signal funct3 : std_logic_vector(2 downto 0);


    signal imm_i, imm_s, imm_b, imm_u, imm_j : std_logic_vector(31 downto 0);

    constant R_TYPE         : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)
    constant I_TYPE         : std_logic_vector(6 downto 0) := "0010011"; -- Register/Immediate (ADDI, ...)
    constant I_TYPE_LOAD    : std_logic_vector(6 downto 0) := "0000011";
    constant S_TYPE         : std_logic_vector(6 downto 0) := "0100011"; -- Store (SB, SH, SW)
    constant B_TYPE         : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    constant U_TYPE_LUI     : std_logic_vector(6 downto 0) := "0110111"; -- LUI
    constant U_TYPE_AUIPC   : std_logic_vector(6 downto 0) := "0010111"; -- AUIPC
    constant J_TYPE_JAL     : std_logic_vector(6 downto 0) := "1101111"; -- JAL
    constant J_TYPE_JALR    : std_logic_vector(6 downto 0) := "1100111"; -- JALR
    

    type state_t is (FETCH_INSTRUCTION, WAIT_UNTIL_RD_UNLOCKED, FETCH_RS1, FETCH_RS2, EXECUTE, WRITEBACK);
    signal state, n_state : state_t;

    signal set_rs1, set_rs2, set_instruction, reset_instruction, decrement_counter, set_counter : std_logic;


begin

    funct7 <= instruction(31 downto 25);
    rs2 <= instruction(24 downto 20);
    rs1 <= instruction(19 downto 15);
    funct3 <= instruction(14 downto 12);
    rd <= instruction(11 downto 7);
    opcode <= instruction(6 downto 0);
    instruction_details_array(to_integer(unsigned(opcode))).selected <= '1';

    data_width <= instruction_details_array(to_integer(unsigned(opcode))).data_width;
    data_addr <= instruction_details_array(to_integer(unsigned(opcode))).data_addr;
    data_wdata <= instruction_details_array(to_integer(unsigned(opcode))).data_wdata;
    data_re <= instruction_details_array(to_integer(unsigned(opcode))).data_re;
    data_we <= instruction_details_array(to_integer(unsigned(opcode))).data_we;


   
    fsm: process(state, instruction_details_array, pc, inst_rdy, opcode, rd, rs1, rs2, registerfile_register_selected, registerfile_rdata)
    begin
        n_state <= state;
        n_pc <= pc;
        registerfile_we <= '0';
        registerfile_wdata <= (others => '0');
        set_instruction <= '0';
        registerfile_register_selection <= (others => '0');
        inst_width <= "10";
        inst_re <= '0';
        inst_addr <= (others => '0');
        set_rs1 <= '0';
        set_rs2 <= '0';
        reset_instruction <= '0';

        --fifo_wdata <= (others => '0');
        --fifo_we <= '0';

        set_counter <= '0';

        case state is
            when FETCH_INSTRUCTION =>
                inst_addr <= pc;
                inst_width <= "10";
                set_instruction <= '1';
                if inst_rdy = '1' then
                    inst_re <= '1';
                    n_state <= WAIT_UNTIL_RD_UNLOCKED;
                end if;
            when WAIT_UNTIL_RD_UNLOCKED =>
                set_counter <= '1';
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
                set_rs1 <= '1';

                if (registerfile_register_selected = rs1) and (registerfile_rdata(32) = '0') then
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
                if instruction_details_array(to_integer(unsigned(opcode))).execution_done = '1' then
                    if instruction_details_array(to_integer(unsigned(opcode))).use_rd = '1' then
                        n_state <= WRITEBACK;
                    else
                        n_pc <= instruction_details_array(to_integer(unsigned(opcode))).next_pc;
                        n_state <= FETCH_INSTRUCTION;
                    end if;
                end if;

            when WRITEBACK =>
                reset_instruction <= '1';
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
            counter <= (others => '0');
        elsif rising_edge(clk) then
            pc <= n_pc;

            counter <= n_counter;

            if set_instruction = '1' then
                instruction <= inst_rdata;
            end if;

            if reset_instruction = '1' then
                instruction <= (others => '0');
            end if;

            state <= n_state;

            if set_rs1 = '1' then
                reg_rs1 <= registerfile_rdata(31 downto 0);
            end if;

            if set_rs2 = '1' then
                reg_rs2 <= registerfile_rdata(31 downto 0);
            end if;

        end if;
    end process;

    decrement_counter <= instruction_details_array(to_integer(unsigned(opcode))).decrement_counter;
    n_counter <= instruction_details_array(to_integer(unsigned(opcode))).imm when set_counter = '1' else counter - X"00000001" when decrement_counter = '1' else counter;


    decode_store: process(imm_s, pc, reg_rs1, reg_rs2, data_wack, funct3)
    begin
        instruction_details_array(to_integer(unsigned(S_TYPE))).imm <= imm_s;
        instruction_details_array(to_integer(unsigned(S_TYPE))).result <= imm_s;
        instruction_details_array(to_integer(unsigned(S_TYPE))).use_rs1 <= '1';
        instruction_details_array(to_integer(unsigned(S_TYPE))).use_rs2 <= '1';
        instruction_details_array(to_integer(unsigned(S_TYPE))).next_pc <= pc + X"00000004";
        instruction_details_array(to_integer(unsigned(S_TYPE))).execution_done <= data_wack;
        instruction_details_array(to_integer(unsigned(S_TYPE))).decode_error <= '0';

        instruction_details_array(to_integer(unsigned(S_TYPE))).data_addr <= reg_rs1 + imm_s;
        instruction_details_array(to_integer(unsigned(S_TYPE))).data_wdata <= reg_rs2;
        instruction_details_array(to_integer(unsigned(S_TYPE))).data_we <= '1';
        instruction_details_array(to_integer(unsigned(S_TYPE))).data_width <= funct3(1 downto 0);
    end process;

    decode_load: process(imm_i, pc, reg_rs1, data_rdy, data_rdata, funct3)
    begin
        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).imm <= imm_i;
        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).use_rs1 <= '1';
        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).use_rd <= '1';

        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).next_pc <= pc + X"00000004";
        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).execution_done <= data_rdy;
        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).decode_error <= '0';

        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).data_addr <= reg_rs1 + imm_i;
        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).data_re <= '1';

        instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).result <= data_rdata;
        if(funct3(2) = '0') then
            case funct3(1 downto 0) is
                when "00" =>
                    instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).result(31 downto 8) <= (others => data_rdata(7));
                when "01" =>
                    instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).result(31 downto 16) <= (others => data_rdata(15));
                when "11" =>
                    instruction_details_array(to_integer(unsigned(I_TYPE_LOAD))).decode_error <= '1';
                when others =>
            end case;
        end if;




    end process;

    decode_lui: process(imm_u, pc)
    begin
        instruction_details_array(to_integer(unsigned(U_TYPE_LUI))).imm <= imm_u;
        instruction_details_array(to_integer(unsigned(U_TYPE_LUI))).result <= imm_u;
        instruction_details_array(to_integer(unsigned(U_TYPE_LUI))).use_rd <= '1';
        instruction_details_array(to_integer(unsigned(U_TYPE_LUI))).next_pc <= pc + X"00000004";
        instruction_details_array(to_integer(unsigned(U_TYPE_LUI))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(U_TYPE_LUI))).decode_error <= '0';
    end process;

    decode_auipc: process(imm_u, pc)
    begin
        instruction_details_array(to_integer(unsigned(U_TYPE_AUIPC))).imm <= imm_u;
        instruction_details_array(to_integer(unsigned(U_TYPE_AUIPC))).use_rd <= '1';
        instruction_details_array(to_integer(unsigned(U_TYPE_AUIPC))).result <= pc + imm_u;
        instruction_details_array(to_integer(unsigned(U_TYPE_AUIPC))).next_pc <= pc + imm_u;
        instruction_details_array(to_integer(unsigned(U_TYPE_AUIPC))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(U_TYPE_AUIPC))).decode_error <= '0';
    end process;

    decode_jal: process(imm_j, pc)
    begin
        instruction_details_array(to_integer(unsigned(J_TYPE_JAL))).imm <= imm_j;
        instruction_details_array(to_integer(unsigned(J_TYPE_JAL))).use_rd <= '1';
        instruction_details_array(to_integer(unsigned(J_TYPE_JAL))).result <= pc + X"00000004";
        instruction_details_array(to_integer(unsigned(J_TYPE_JAL))).next_pc <= pc + imm_j;
        instruction_details_array(to_integer(unsigned(J_TYPE_JAL))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(J_TYPE_JAL))).decode_error <= '0';
    end process;

    decode_jalr: process(reg_rs1, pc, imm_j)
    begin
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).imm <= imm_j;
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).use_rd <= '1';
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).use_rs1 <= '1';
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).result <= pc + X"00000004";
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).next_pc <= (pc + reg_rs1) and X"FFFFFFFE";
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(J_TYPE_JALR))).decode_error <= '0';
    end process;

    
    decode_b_type: process(funct3, reg_rs1, reg_rs2, imm_b, pc)
    begin
        instruction_details_array(to_integer(unsigned(B_TYPE))).imm <= imm_b;

        instruction_details_array(to_integer(unsigned(B_TYPE))).result <= (others => '0');
        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rs1 <= '1';
        instruction_details_array(to_integer(unsigned(B_TYPE))).use_rs2 <= '1';
        instruction_details_array(to_integer(unsigned(B_TYPE))).next_pc <= pc + X"00000004";

        instruction_details_array(to_integer(unsigned(B_TYPE))).decode_error <= '0';
        instruction_details_array(to_integer(unsigned(B_TYPE))).execution_done <= '1';

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


    decode_r_type: process(instruction_details_array(to_integer(unsigned(R_TYPE))).selected, funct3, funct7, reg_rs1, reg_rs2, counter, pc) --clk, pc)
    begin
        instruction_details_array(to_integer(unsigned(R_TYPE))).use_rs1 <= '1'; 
        instruction_details_array(to_integer(unsigned(R_TYPE))).use_rs2 <= '1'; 
        instruction_details_array(to_integer(unsigned(R_TYPE))).use_rd <= '1';
        instruction_details_array(to_integer(unsigned(R_TYPE))).next_pc <= pc + X"00000004";
        instruction_details_array(to_integer(unsigned(R_TYPE))).decode_error <= '0';
        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= (others => '0');


        instruction_details_array(to_integer(unsigned(R_TYPE))).imm <= reg_rs2;


        --if instruction_details_array(to_integer(unsigned(R_TYPE))).selected = '0' then
        --    instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '0';
        --    instruction_details_array(to_integer(unsigned(R_TYPE))).counter <= (others => '0');
        --elsif rising_edge(clk) then
            instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
            instruction_details_array(to_integer(unsigned(R_TYPE))).decrement_counter <= '0';

            case funct3 is
                when "000" =>
                    case funct7 is
                        when "0000000" => -- ADD
                            instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 + reg_rs2;

                        when "0100000" => -- SUB
                            instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 - reg_rs2;

                        when others =>
                            instruction_details_array(to_integer(unsigned(R_TYPE))).decode_error <= '1';
                    end case;

                when "001" => -- SLL
                    instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '0';

                    if counter = X"00000000" then
                        instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
                    else
                        instruction_details_array(to_integer(unsigned(R_TYPE))).decrement_counter <= '1';
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1(30 downto 0) & '0';
                    end if;

--                    if instruction_details_array(to_integer(unsigned(R_TYPE))).counter = X"00000000" then
--                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1;
--                    elsif instruction_details_array(to_integer(unsigned(R_TYPE))).counter < reg_rs2 then
--                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1(30 downto 0) & '0';
--                        instruction_details_array(to_integer(unsigned(R_TYPE))).counter <= instruction_details_array(to_integer(unsigned(R_TYPE))).counter + X"00000001";
--                    end if;

--                    if instruction_details_array(to_integer(unsigned(R_TYPE))).counter = reg_rs2 then
--                        instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
--                    end if;
                    
                when "010" => -- SLT
                    if signed(reg_rs1) < signed(reg_rs2) then
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= X"00000001";
                    else
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= (others => '0');
                    end if;

                when "011" => -- SLTU
                    if unsigned(reg_rs1) < unsigned(reg_rs2) then
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= X"00000001";
                    else
                        instruction_details_array(to_integer(unsigned(R_TYPE))).result <= (others => '0');
                    end if;

                when "100" => -- XOR
                    instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 xor reg_rs2;

                when "101" =>
                    instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '0';
                    --if instruction_details_array(to_integer(unsigned(R_TYPE))).counter = X"00000000" then
                    --    instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1;
                    --end if;

                    case funct7 is
                        when "0000000" => -- SRL
                            instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '0';

                            if counter = X"00000000" then
                                instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
                            else
                                instruction_details_array(to_integer(unsigned(R_TYPE))).decrement_counter <= '1';
                                instruction_details_array(to_integer(unsigned(R_TYPE))).result <=  '0' & reg_rs1(31 downto 1);
                            end if;


                            --if unsigned(instruction_details_array(to_integer(unsigned(R_TYPE))).counter) < unsigned(reg_rs2) then
                            --    instruction_details_array(to_integer(unsigned(R_TYPE))).result <=  '0' & reg_rs1(31 downto 1);
                            --    instruction_details_array(to_integer(unsigned(R_TYPE))).counter <= instruction_details_array(to_integer(unsigned(R_TYPE))).counter + X"00000001";
                            --end if;
        
                            --if unsigned(instruction_details_array(to_integer(unsigned(R_TYPE))).counter) = unsigned(reg_rs2) then
                            --    instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
                            --end if;

                        when "0100000" => -- SRA
                            instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '0';

                            if counter = X"00000000" then
                                instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
                            else
                                instruction_details_array(to_integer(unsigned(R_TYPE))).decrement_counter <= '1';
                                instruction_details_array(to_integer(unsigned(R_TYPE))).result <=  reg_rs1(31) & reg_rs1(31 downto 1);
                            end if;



                            --if signed(instruction_details_array(to_integer(unsigned(R_TYPE))).counter) < signed(reg_rs2) then
                            --    instruction_details_array(to_integer(unsigned(R_TYPE))).result <=  '0' & reg_rs1(31 downto 1);
                            --    instruction_details_array(to_integer(unsigned(R_TYPE))).counter <= instruction_details_array(to_integer(unsigned(R_TYPE))).counter + X"00000001";
                            --end if;
        
                            --if signed(instruction_details_array(to_integer(unsigned(R_TYPE))).counter) = signed(reg_rs2) then
                            --    instruction_details_array(to_integer(unsigned(R_TYPE))).execution_done <= '1';
                            --end if;
                        when others =>
                            instruction_details_array(to_integer(unsigned(R_TYPE))).decode_error <= '1';
                    end case;

                when "110" => -- OR
                    instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 or reg_rs2;

                when "111" => -- AND
                    instruction_details_array(to_integer(unsigned(R_TYPE))).result <= reg_rs1 and reg_rs2;
            end case;
        --end if;
    end process;

    decode_i_type: process(instruction_details_array(to_integer(unsigned(I_TYPE))).selected, imm_i, funct3, funct7, counter, reg_rs1, pc) --clk, pc)
    begin
        instruction_details_array(to_integer(unsigned(I_TYPE))).imm <= imm_i;

        instruction_details_array(to_integer(unsigned(I_TYPE))).decode_error <= '0';
        instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
        instruction_details_array(to_integer(unsigned(I_TYPE))).next_pc <= pc + X"00000004";

        instruction_details_array(to_integer(unsigned(I_TYPE))).use_rs1 <= '1'; 
        instruction_details_array(to_integer(unsigned(I_TYPE))).use_rs2 <= '1'; 
        instruction_details_array(to_integer(unsigned(I_TYPE))).use_rd <= '1';

        instruction_details_array(to_integer(unsigned(I_TYPE))).result <= (others => '0');

        instruction_details_array(to_integer(unsigned(I_TYPE))).decrement_counter <= '0';


        -- if instruction_details_array(to_integer(unsigned(I_TYPE))).selected = '0' then
        --     instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '0';
        --     instruction_details_array(to_integer(unsigned(I_TYPE))).result <= (others => '0');
        --     instruction_details_array(to_integer(unsigned(I_TYPE))).counter <= (others => '0');
        -- elsif rising_edge(clk) then

            case funct3 is
                when "000" => -- ADDI
                    instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1 + imm_i;

                when "001" =>
                    case funct7 is
                        when "0000000" => -- SLLI
                            instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '0';

                            if counter = X"00000000" then
                                instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
                            else
                                instruction_details_array(to_integer(unsigned(I_TYPE))).decrement_counter <= '1';
                                instruction_details_array(to_integer(unsigned(I_TYPE))).result <=  reg_rs1(30 downto 0) & '0';
                            end if;

                            --if instruction_details_array(to_integer(unsigned(I_TYPE))).counter = X"00000000" then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1;
                            --elsif instruction_details_array(to_integer(unsigned(I_TYPE))).counter < imm_i then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1(30 downto 0) & '0';
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).counter <= instruction_details_array(to_integer(unsigned(I_TYPE))).counter + X"00000001";
                            --end if;

                            --if instruction_details_array(to_integer(unsigned(I_TYPE))).counter = imm_i then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
                            --end if;
                        when others =>
                            instruction_details_array(to_integer(unsigned(I_TYPE))).decode_error <= '1';
                    end case;
                when "010" => -- SLTI
                    if signed(reg_rs1) < signed(imm_i) then
                        instruction_details_array(to_integer(unsigned(I_TYPE))).result <= X"00000001";
                    else
                        instruction_details_array(to_integer(unsigned(I_TYPE))).result <= (others => '0');
                    end if;

                when "011" => -- SLTIU
                    if unsigned(reg_rs1) < unsigned(imm_i) then
                        instruction_details_array(to_integer(unsigned(I_TYPE))).result <= X"00000001";
                    else
                        instruction_details_array(to_integer(unsigned(I_TYPE))).result <= (others => '0');
                    end if;

                when "100" => -- XORI
                    instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1 xor imm_i;

                when "101" =>
                    instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '0';
                    -- if instruction_details_array(to_integer(unsigned(I_TYPE))).counter = X"00000000" then
                    --     instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1;
                    -- end if;

                    case funct7 is
                        when "0000000" => -- SRLI

                            instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '0';

                            if counter = X"00000000" then
                                instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
                            else
                                instruction_details_array(to_integer(unsigned(I_TYPE))).decrement_counter <= '1';
                                instruction_details_array(to_integer(unsigned(I_TYPE))).result <=  '0' & reg_rs1(31 downto 1);
                            end if;

                            --if unsigned(instruction_details_array(to_integer(unsigned(I_TYPE))).counter) < unsigned(imm_i) then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).result <=  '0' & reg_rs1(31 downto 1);
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).counter <= instruction_details_array(to_integer(unsigned(I_TYPE))).counter + X"00000001";
                            --end if;

                            --if unsigned(instruction_details_array(to_integer(unsigned(I_TYPE))).counter) = unsigned(imm_i) then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
                            --end if;

                        when "0100000" => -- SRAI

                            instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '0';

                            if counter = X"00000000" then
                                instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
                            else
                                instruction_details_array(to_integer(unsigned(I_TYPE))).decrement_counter <= '1';
                                instruction_details_array(to_integer(unsigned(I_TYPE))).result <=  reg_rs1(31) & reg_rs1(31 downto 1);
                            end if;

                            --if signed(instruction_details_array(to_integer(unsigned(I_TYPE))).counter) < signed(imm_i) then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).result <=  '0' & reg_rs1(31 downto 1);
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).counter <= instruction_details_array(to_integer(unsigned(I_TYPE))).counter + X"00000001";
                            --end if;

                            --if signed(instruction_details_array(to_integer(unsigned(I_TYPE))).counter) = signed(imm_i) then
                            --    instruction_details_array(to_integer(unsigned(I_TYPE))).execution_done <= '1';
                            --end if;
                        when others =>
                            instruction_details_array(to_integer(unsigned(I_TYPE))).decode_error <= '1';
                    end case;
                when "110" => -- ORI
                    instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1 or imm_i;

                when "111" => -- ANDI
                    instruction_details_array(to_integer(unsigned(I_TYPE))).result <= reg_rs1 and imm_i;

                when others =>
                    instruction_details_array(to_integer(unsigned(I_TYPE))).decode_error <= '1';

            end case;
        --end if;
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

    --interrupt_error <= instruction_details_array(to_integer(unsigned(opcode))).decode_error;
    --exec_done <= instruction_details_array(to_integer(unsigned(opcode))).execution_done;
end behavioural;