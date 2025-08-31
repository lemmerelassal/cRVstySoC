
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_s is

  Port (
    imm, pc, reg_rs1, reg_rs2 : in std_logic_vector(31 downto 0);
    data_wack, selected : in std_logic;

    result, next_pc, daddr, wdata : out std_logic_vector(31 downto 0);
    use_rs1, use_rs2, execution_done, decode_error, dwe : out std_logic




  );
end eu_s;

architecture behavioural of eu_s is
    


begin
    
        result <= imm;
        use_rs1 <= '1';
        use_rs2 <= '1';
        next_pc <= pc + X"00000004";
        execution_done <= data_wack;
        decode_error <= '0';

        daddr <= reg_rs1 + imm;
        wdata<= reg_rs2;
        dwe <= selected;

end behavioural;