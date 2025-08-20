library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_i is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    reg_rs1, imm, pc : in std_logic_vector(31 downto 0);
    
    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic

  );
end eu_i;

architecture behavioural of eu_i is
    

        type word_t is array (natural range <>) of std_logic_vector(31 downto 0);
    signal i_result : word_t(7 downto 0);


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

begin

    decode_error <= '0';
    execution_done <= '1';
    next_pc <= pc + X"00000004";

    use_rs1 <= '1'; 
    use_rs2 <= '1'; 
    use_rd <= '1';

        



    i_result(0) <= reg_rs1 + imm;
    i_result(1) <=  DoShift(reg_rs1, to_integer(unsigned(imm(4 downto 0))), false, true);
    i_result(2) <= X"00000001" when  signed(reg_rs1) < signed(imm) else X"00000000";
    i_result(3) <= X"00000001" when   unsigned(reg_rs1) < unsigned(imm) else X"00000000";
    i_result(4) <= reg_rs1 xor imm;
    i_result(5) <=  DoShift(reg_rs1, to_integer(unsigned(imm(4 downto 0))), false, false) when funct7 = "0000000" else  DoShift(reg_rs1, to_integer(unsigned(imm(4 downto 0))), true, false) when funct7 = "0100000" else (others => '0');

    i_result(6) <= reg_rs1 or imm;
    i_result(7) <= reg_rs1 and imm;



    result <= i_result(to_integer(unsigned(funct3)));






end behavioural;