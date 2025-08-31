
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_jal is

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    result, next_pc : out std_logic_vector(31 downto 0)
  );
end eu_jal;

architecture behavioural of eu_jal is

begin

    
  use_rd <= '1';
  result <= pc + X"00000004";
  execution_done <= '1';
  decode_error <= '0';
  next_pc <= pc + imm;
    
end behavioural;
