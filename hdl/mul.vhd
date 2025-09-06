
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_r is

  Port (
    clk : in std_logic;
    reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic

  );
end eu_r;

architecture behavioural of eu_r is

function shift_and_subtract_32(
    a : std_logic_vector(31 downto 0);
    b : std_logic_vector(31 downto 0)
) return std_logic_vector is
    variable res       : signed(31 downto 0) := (others => '0');
    variable b_signed  : signed(31 downto 0) := signed(b);
    variable msb_index : integer := -1;
begin
    -- 1. Find MSB of b
    for i in 31 downto 0 loop
        if b(i) = '1' then
            msb_index := i;
            exit;
        end if;
    end loop;

    if msb_index < 0 then
        return X"00000000"; -- no '1' in b
    end if;

    -- 2. Shift a left by (MSB+1)
    res := shift_left(signed(a), msb_index+1);

    -- 3. For every '0' below MSB, subtract (b << position)
    for i in 31 downto 0 loop
        if (b(i) = '0') and (i < msb_index) then
            res := res - shift_left(b_signed, i);
        end if;
    end loop;

    return std_logic_vector(res);
end function;

begin
    


    process(clk)
    begin
        if rising_edge(clk) then
                result <= shift_and_subtract_32(reg_rs1, reg_rs2);
            end if;
            end process;

end behavioural;