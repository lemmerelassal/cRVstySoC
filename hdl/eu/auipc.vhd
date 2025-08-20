
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_auipc is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    next_pc, result : out std_logic_vector(31 downto 0)

  );
end eu_auipc;

architecture behavioural of eu_auipc is
    


begin
    decode_auipc: process(imm, pc)
    begin
        use_rd <= '1';
        result <= pc + imm;
        next_pc <= pc + X"00000004";
        execution_done <= '1';
        decode_error <= '0';
    end process;

end behavioural;