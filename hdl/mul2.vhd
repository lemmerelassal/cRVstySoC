library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_add_mult is
    port (
        clk : in std_logic;
        a   : in  std_logic_vector(31 downto 0);
        b   : in  std_logic_vector(31 downto 0);
        result : out std_logic_vector(31 downto 0)
    );
end entity;

architecture rtl of shift_add_mult is

    signal res : std_logic_vector(63 downto 0);
begin
    process(a, b)
        variable temp_res : unsigned(63 downto 0);
        variable a_unsigned : unsigned(31 downto 0);
    begin
        temp_res := (others => '0');
        a_unsigned := unsigned(a);
        
        for i in 0 to 31 loop
            if b(i) = '1' then
                temp_res := temp_res + (shift_left(a_unsigned, i)(31 downto 0));
            end if;
        end loop;
        
        res <= std_logic_vector(temp_res);
    end process;


    process(clk)
    begin
        if rising_edge(clk) then
            result <= res(31 downto 0);
        end if;
    end process;
end architecture;