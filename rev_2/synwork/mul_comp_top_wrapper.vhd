--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sun Sep 14 20:00:46 2025
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_sqrt is
   port (
      clk : in std_logic;
      n : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(31 downto 0)
   );
end wrapper_for_sqrt;

architecture rtl of wrapper_for_sqrt is

component sqrt
 port (
   clk : in std_logic;
   n : in std_logic_vector (31 downto 0);
   result : out std_logic_vector (31 downto 0)
 );
end component;

signal tmp_clk : std_logic;
signal tmp_n : std_logic_vector (31 downto 0);
signal tmp_result : std_logic_vector (31 downto 0);

begin

tmp_clk <= clk;

tmp_n <= n;

result <= tmp_result;



u1:   sqrt port map (
		clk => tmp_clk,
		n => tmp_n,
		result => tmp_result
       );
end rtl;
