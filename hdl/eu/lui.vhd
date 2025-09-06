
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_lui is

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    next_pc, result : out std_logic_vector(31 downto 0)

  );
end eu_lui;

architecture behavioural of eu_lui is
    


begin

    
        result <= imm;
        use_rd <= '1';
        next_pc <= pc + X"00000004";
        execution_done <= '1';
        decode_error <= '0';


end behavioural;