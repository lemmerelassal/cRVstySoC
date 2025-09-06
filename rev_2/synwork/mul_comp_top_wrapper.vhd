--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sat Sep  6 10:10:47 2025
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_shift_add_mult is
   port (
      a : in std_logic_vector(31 downto 0);
      b : in std_logic_vector(31 downto 0);
      res : out std_logic_vector(63 downto 0)
   );
end wrapper_for_shift_add_mult;

architecture rtl of wrapper_for_shift_add_mult is

component shift_add_mult
 port (
   a : in std_logic_vector (31 downto 0);
   b : in std_logic_vector (31 downto 0);
   res : out std_logic_vector (63 downto 0)
 );
end component;

signal tmp_a : std_logic_vector (31 downto 0);
signal tmp_b : std_logic_vector (31 downto 0);
signal tmp_res : std_logic_vector (63 downto 0);

begin

tmp_a <= a;

tmp_b <= b;

res <= tmp_res;



u1:   shift_add_mult port map (
		a => tmp_a,
		b => tmp_b,
		res => tmp_res
       );
end rtl;
