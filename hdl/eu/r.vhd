
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_r is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);
    
    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic






  );
end eu_r;

architecture behavioural of eu_r is

    signal dec_counter : std_logic;

    

    impure function DoShift (
        value : std_logic_vector(31 downto 0); 
        shamt : integer range 0 to 31;
        arithmetic_shift : boolean; 
        shleft : boolean
    ) return std_logic_vector is
        variable result : std_logic_vector(31 downto 0);
        variable appendbit : std_logic;
    begin
        if arithmetic_shift = true then
            appendbit := value(31);
        else
            appendbit := '0';
        end if;

        if shamt > 31 then
            result := (others => appendbit);
            return result;
        elsif shamt = 0 then
            return value;
        end if;

        if shleft = true then
            result := (others => '0');
            result(31 downto shamt) := value(31-shamt downto 0);
        else
            result := (others => appendbit);
            result(31-shamt downto 0) := value(31 downto shamt);
        end if;
        return result;
    end function;


    constant R_TYPE         : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)
    constant I_TYPE         : std_logic_vector(6 downto 0) := "0010011"; -- Register/Immediate (ADDI, ...)
    constant I_TYPE_LOAD    : std_logic_vector(6 downto 0) := "0000011";
    constant S_TYPE         : std_logic_vector(6 downto 0) := "0100011"; -- Store (SB, SH, SW)
    constant B_TYPE         : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    constant U_TYPE_LUI     : std_logic_vector(6 downto 0) := "0110111"; -- LUI
    constant U_TYPE_AUIPC   : std_logic_vector(6 downto 0) := "0010111"; -- AUIPC
    constant J_TYPE_JAL     : std_logic_vector(6 downto 0) := "1101111"; -- JAL
    constant J_TYPE_JALR    : std_logic_vector(6 downto 0) := "1100111"; -- JALR
        


begin

decode_r_type: process(funct3, funct7, reg_rs1, reg_rs2, pc) --clk, pc)
    begin
        use_rs1 <= '1'; 
        use_rs2 <= '1'; 
        use_rd <= '1';
        next_pc <= pc + X"00000004";
        decode_error <= '0';

        for i in 0 to 7 loop
        result <= (others => '0');
        end loop;




        execution_done <= '1';

         case funct3 is
             when "000" =>
                case funct7 is
                    when "0000000" => -- ADD
                        result <= reg_rs1 + reg_rs2;

                    when "0100000" => -- SUB
                        result <= reg_rs1 - reg_rs2;

                    when others =>
                        decode_error <= '1';
                end case;

             when "001" => -- SLL
                execution_done <= '1';
                result <=  DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, true);
                
             when "010" => -- SLT
                if signed(reg_rs1) < signed(reg_rs2) then
                    result <= X"00000001";
                else
                    result <= (others => '0');
                end if;

             when "011" => -- SLTU
                if unsigned(reg_rs1) < unsigned(reg_rs2) then
                    result <= X"00000001";
                else
                    result <= (others => '0');
                end if;

             when "100" => -- XOR
                result <= reg_rs1 xor reg_rs2;

            when "101" =>
                -- execution_done <= '0';

                case funct7 is
                    when "0000000" => -- SRL

                        -- execution_done <= '1';
                        result <=  DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, false);

                    when "0100000" => -- SRA
                        -- execution_done <= '1';
                        result <=  DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), true, false);

                    when others =>
                        decode_error <= '1';
                end case;

            when "110" => -- OR
                result <= reg_rs1 or reg_rs2;

            when "111" => -- AND
                result <= reg_rs1 and reg_rs2;
            when others =>
                 decode_error <= '1';
         end case;
    end process;

end behavioural;