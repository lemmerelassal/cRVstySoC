library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity find_msb is
  port (
    rst,clk : in std_logic;
    a : in  std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl of find_msb is

    signal temp : std_logic_vector(31 downto 0);
begin
  process(a)
    variable pos : integer := 32;
  begin
    -- default: no '1' found
    pos := 32;

    -- search for the most significant '1'
    for i in 31 downto 0 loop
      if a(i) = '1' then
        pos := i;
        exit; -- stop at first '1' from MSB down
      end if;
    end loop;

    if pos < 32 then
      -- output position+1 as a 32-bit vector
      temp <= std_logic_vector(to_unsigned(pos + 1, 32));
    else
      -- no '1' found → output zero
      temp <= (others => '0');
    end if;

  end process;


  process(rst,clk)
  begin
    if rst = '1' then
        y <= (others => '0');
    elsif rising_edge(clk) then
        y <= temp;
    end if;
  end process;



end architecture;
