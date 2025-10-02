--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sun Sep 28 20:12:15 2025
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.genpackage.all;

entity wrapper_for_top is
   port (
      DIVIDE : out std_logic_vector(0 downto 0);
      REMAIND : out std_logic_vector(31 downto 0);
      A : in std_logic_vector(31 downto 0);
      B : in std_logic_vector(31 downto 0)
   );
end wrapper_for_top;

architecture gen of wrapper_for_top is

component top
 port (
   DIVIDE : out std_logic_vector (0 downto 0);
   REMAIND : out std_logic_vector (31 downto 0);
   A : in std_logic_vector (31 downto 0);
   B : in std_logic_vector (31 downto 0)
 );
end component;

signal tmp_DIVIDE : std_logic_vector (0 downto 0);
signal tmp_REMAIND : std_logic_vector (31 downto 0);
signal tmp_A : std_logic_vector (31 downto 0);
signal tmp_B : std_logic_vector (31 downto 0);

begin

DIVIDE <= tmp_DIVIDE;

REMAIND <= tmp_REMAIND;

tmp_A <= A;

tmp_B <= B;



u1:   top port map (
		DIVIDE => tmp_DIVIDE,
		REMAIND => tmp_REMAIND,
		A => tmp_A,
		B => tmp_B
       );
end gen;
