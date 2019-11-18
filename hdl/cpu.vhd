library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity cpu is
  Port (
    rst, clk : in std_logic;
    ram_width : out std_logic_vector(2 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid
    ram_addr, ram_wdata : out std_logic_vector(31 downto 0);
    ram_rdata : in std_logic_vector(31 downto 0);
    ram_re, ram_we : out std_logic;
    ram_rdy, ram_wack : in std_logic;
    interrupt_error : out std_logic
  );
end cpu;

architecture behavioural of cpu is
    -- Registers
    type registers_t is array (31 downto 0) of std_logic_vector(31 downto 0);
    signal registers, n_registers : registers_t := (others => (others => '0'));

    signal pc, n_pc, imm, instruction, n_instruction : std_logic_vector(31 downto 0); -- Program Counter
    
    -- Instruction fields
    signal opcode, func7 : std_logic_vector(6 downto 0);
    signal rs1, rs2, rd : std_logic_vector(4 downto 0);
    signal func3 : std_logic_vector(2 downto 0);

    type state_t is (FETCH, DECODE, INC_PC, EXCEPTION);
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



begin

    process(state, pc, ram_rdy, ram_wack, ram_rdata, instruction, rd, rs1, rs2, imm, func3, func7, opcode)
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
        
        case state is
            when FETCH => 
                ram_re <= '1';
                ram_addr <= pc;
                ram_width <= "111";
                if ram_rdy = '1' then
                    n_state <= DECODE;
                    n_instruction <= ram_rdata;
                end if;
            when DECODE =>
                n_state <= INC_PC;

                case opcode is
                    when I_TYPE_AL =>
                        case func3 is
                            when "000" => -- ADDI
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) + imm;
                                
                            -- when "001" => 
                            --     alu_out <= ALU_SLL;
                            -- when "010" =>  
                            --     alu_out <= ALU_SLT;
                            -- when "011" => 
                            --     alu_out <= ALU_SLTU;
                            when "100" => -- XORI
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rd))) xor registers(to_integer(unsigned(rs1))) xor imm;
                            -- when "101" =>
                            --     case func7 is
                            --         when "0000000" =>
                            --             alu_out <= ALU_SRL;
                            --         when others =>
                            --             alu_out <= ALU_SRA;
                            --     end case;
                            when "110" => -- ORI
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) or imm;
                            when "111" => -- ANDI
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) and imm;
                            when others =>
                                n_state <= EXCEPTION;
                        end case;
                    when R_TYPE =>
                        -- alu_out
                        case func3 is
                            when "000" =>
                                case func7 is
                                    when "0000000" => -- ADD
                                        n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) + registers(to_integer(unsigned(rs2)));
                                    when others => -- SUB
                                        n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) - registers(to_integer(unsigned(rs2)));
                                end case;
                            -- when "001" =>
                            --     alu_out <= ALU_SLL;
                            -- when "010" =>
                            --     alu_out <= ALU_SLT;
                            -- when "011" =>
                            --     alu_out <= ALU_SLTU;
                            when "100" => -- XOR
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) xor registers(to_integer(unsigned(rs2)));
                            -- when "101" =>
                            --     case funct7 is
                            --         when "0000000" =>
                            --             alu_out <= ALU_SRL;
                            --         when others =>
                            --             alu_out <= ALU_SRA;
                            --     end case;
                            when "110" => -- OR
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) or registers(to_integer(unsigned(rs2)));
                            when "111" => -- AND
                                n_registers(to_integer(unsigned(rd))) <= registers(to_integer(unsigned(rs1))) and registers(to_integer(unsigned(rs2)));
                            when others =>
                                n_state <= EXCEPTION;
                        end case;
                    when S_TYPE => -- Store (wrong, but let's try like this)
                        ram_addr <= registers(to_integer(unsigned(rs1))) + imm;
                        ram_wdata <= registers(to_integer(unsigned(rs2)));
                        ram_we <= '1';
                        ram_width <= func3;
                        if ram_wack = '1' then
                            n_state <= FETCH;
                        end if;

                    when I_TYPE_LOAD => -- Load (wrong, but let's try like this)
                        ram_addr <= registers(to_integer(unsigned(rs1))) + imm;
                        ram_re <= '1';
                        ram_width <= func3;
                        if ram_rdy = '1' then
                            n_registers(to_integer(unsigned(rs2))) <= ram_rdata;
                            n_state <= FETCH;
                        end if;

                    when others =>
                        n_state <= EXCEPTION;
                end case;
            when INC_PC =>
                n_pc <= pc + X"00000004";
                n_state <= FETCH;
            when EXCEPTION =>
                interrupt_error <= '1';
        end case;
    end process;
    
    process(instruction)
    begin
        func7 <= instruction(31 downto 25);
        rs2 <= instruction(24 downto 20);
        rs1 <= instruction(19 downto 15);
        func3 <= instruction(14 downto 12);
        rd <= instruction(11 downto 7);
        opcode <= instruction(6 downto 0);
        

        case func3 is
            --shift
            when "001" | "101" =>
                imm(31 downto 12) <= (others => instruction(31));
                imm(11 downto 5) <= instruction(31 downto 25);
                imm(4 downto 0) <= instruction(24 downto 20);
            when others =>
                imm(31 downto 12) <= (others => instruction(31));
                imm(11 downto 0) <= instruction(31 downto 20);
        end case;
    end process;


    process(rst, clk)
    begin
        if rst = '1' then
            registers <= (others => (others => '0'));
            state <= FETCH;
            pc <= (others => '0');
            instruction <= (others => '0');
        elsif rising_edge(clk) then
            registers <= n_registers;
            state <= n_state;
            instruction <= n_instruction;
            if interrupt_error = '1' then
                pc <= X"10000000";
            else
                pc <= n_pc;
            end if;
        end if;
    end process;
                

end behavioural;