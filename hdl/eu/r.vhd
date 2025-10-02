
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_r is

  Port (
    reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);
    
    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic

  );
end eu_r;

architecture behavioural of eu_r is

    
        

        type word_t is array (natural range <>) of std_logic_vector(31 downto 0);
    signal i_result : word_t(7 downto 0);

    signal ires : word_t(4095 downto 0);


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


    signal remainder : std_logic_vector(31 downto 0);
    signal f3f7 : std_logic_vector(11 downto 0);
    signal mul : std_logic_vector(31 downto 0);


begin

    -- f3f7 <= '0' & funct3 & '0' & funct7;

    -- ires(to_integer(X"000")) <= reg_rs1 + reg_rs2;
    -- ires(to_integer(X"020")) <= reg_rs1 - reg_rs2;
    -- ires(to_integer(X"001")) <= mul;
    
    -- ires(to_integer(X"100")) <= DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, true);

    -- ires(to_integer(X"200")) <= X"00000001" when signed(reg_rs1) < signed(reg_rs2) else (others => '0');

    -- ires(to_integer(X"300")) <= X"00000001" when unsigned(reg_rs1) < unsigned(reg_rs2) else (others => '0');

    -- ires(to_integer(X"400")) <=  reg_rs1 xor reg_rs2;

    -- ires(to_integer(X"500")) <= DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, false);
    -- ires(to_integer(X"520")) <= DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), true, false);

    -- ires(to_integer(X"600")) <= reg_rs1 or reg_rs2;
    -- ires(to_integer(X"601")) <= remainder;

    -- ires(to_integer(X"700")) <= reg_rs1 and reg_rs2;


    -- result <= ires(to_integer(unsigned(f3f7)));



    mul <= std_logic_vector(unsigned(reg_rs1) * unsigned(reg_rs2))(31 downto 0);


    i_result(0) <= reg_rs1 + reg_rs2 when funct7 = "0000000" else reg_rs1 - reg_rs2 when funct7 = "0100000" 
    else mul when funct7 = "00000001" 
    else (others => '0');
    i_result(1) <=  DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, true);
    i_result(2) <= X"00000001" when signed(reg_rs1) < signed(reg_rs2) else (others => '0');
    i_result(3) <= X"00000001" when unsigned(reg_rs1) < unsigned(reg_rs2) else (others => '0');
    i_result(4) <= reg_rs1 xor reg_rs2;
    i_result(5) <= DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, false) when funct7 = "0000000" else  DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), true, false) when funct7 = "0100000" else (others => '0');
    i_result(6) <= remainder when funct7 = "00000001" else reg_rs1 or reg_rs2;
    i_result(7) <= reg_rs1 and reg_rs2;
    result <= i_result(to_integer(unsigned(funct3)));



        use_rs1 <= '1'; 
        use_rs2 <= '1'; 
        use_rd <= '1';
        next_pc <= pc + X"00000004";
        decode_error <= '0';
        execution_done <= '1';



            process(reg_rs1, reg_rs2)
    begin
        if reg_rs2 /= X"00000000" then   -- avoid divide-by-zero
            remainder <= std_logic_vector(
                          unsigned(reg_rs1) rem unsigned(reg_rs2)
                      );
        else
            remainder <= (others => '0');  -- define remainder as 0 on div-by-zero
        end if;
    end process;
        

end behavioural;