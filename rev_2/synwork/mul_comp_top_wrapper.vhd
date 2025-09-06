--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sat Sep  6 10:26:34 2025
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_shift_add_mult is
   port (
      clk : in std_logic;
      a : in std_logic_vector(31 downto 0);
      b : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(31 downto 0)
   );
end wrapper_for_shift_add_mult;

architecture rtl of wrapper_for_shift_add_mult is

component shift_add_mult
 port (
   clk : in std_logic;
   a : in std_logic_vector (31 downto 0);
   b : in std_logic_vector (31 downto 0);
   result : out std_logic_vector (31 downto 0)
 );
end component;

signal tmp_clk : std_logic;
signal tmp_a : std_logic_vector (31 downto 0);
signal tmp_b : std_logic_vector (31 downto 0);
signal tmp_result : std_logic_vector (31 downto 0);

begin

tmp_clk <= clk;

tmp_a <= a;

tmp_b <= b;

result <= tmp_result;



u1:   shift_add_mult port map (
		clk => tmp_clk,
		a => tmp_a,
		b => tmp_b,
		result => tmp_result
       );
end rtl;
