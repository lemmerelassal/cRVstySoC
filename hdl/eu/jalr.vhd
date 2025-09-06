
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_jalr is

  Port (
    reg_rs1,pc, imm : in std_logic_vector(31 downto 0);

    use_rd, use_rs1, execution_done, decode_error : out std_logic;

    result, next_pc : out std_logic_vector(31 downto 0)
  );
end eu_jalr;

architecture behavioural of eu_jalr is

begin

        use_rd <= '1';
        use_rs1 <= '1';
        result <= pc + X"00000004";
        next_pc <= (imm + reg_rs1) and X"FFFFFFFE"; --(pc + reg_rs1) and X"FFFFFFFE";
        execution_done <= '1';
        decode_error <= '0';
end behavioural;
