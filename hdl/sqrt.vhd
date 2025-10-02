library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sqrt is
    port (
        clk    : in  std_logic;
        n      : in  std_logic_vector(31 downto 0);
        result : out std_logic_vector(31 downto 0)
    );
end entity;

architecture rtl of sqrt is
    signal res : unsigned(31 downto 0);
begin

    process(n)
        variable a, aSquared, b, bSquared, temp : unsigned(31 downto 0);
    begin
        a        := (others => '0');
        aSquared := (others => '0');
        temp     := (others => '0');

        for i in 31 downto 0 loop
            b := (others => '0');
            b(i) := '1';

            -- b^2 is simply 2*i bit set
            bSquared := (others => '0');
            if (2 * i) <= 31 then
                bSquared(2 * i) := '1';
            end if;

            temp := (aSquared + (2 * a * b) + bSquared)(31 downto 0);

            if temp <= unsigned(n) then
                a := a + b;
                aSquared := (a * a)(31 downto 0);
            end if;
        end loop;

        res <= a;  -- the sqrt result
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            result <= std_logic_vector(res);
        end if;
    end process;

end architecture;