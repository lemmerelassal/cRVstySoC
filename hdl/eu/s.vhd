
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_s is

  Port (
    imm, pc, reg_rs1, reg_rs2 : in std_logic_vector(31 downto 0);
    funct3 : in std_logic_vector(2 downto 0);
    data_wack, selected : in std_logic;

    result, next_pc, daddr, wdata : out std_logic_vector(31 downto 0);
    use_rs1, use_rs2, execution_done, decode_error, dwe : out std_logic




  );
end eu_s;

architecture behavioural of eu_s is
    


begin

    result         <= imm;
    use_rs1        <= '1';
    use_rs2        <= '1';
    next_pc        <= pc + X"00000004";
    execution_done <= data_wack;
    daddr          <= reg_rs1 + imm;
    dwe            <= selected;

    -- Mask wdata to the stored width so the memory sees only valid bytes
    process(funct3, reg_rs2)
    begin
        decode_error <= '0';
        case funct3 is
            when "000" =>  -- SB: byte in lowest position
                wdata <= X"000000" & reg_rs2(7 downto 0);
            when "001" =>  -- SH: halfword in lowest position
                wdata <= X"0000" & reg_rs2(15 downto 0);
            when "010" =>  -- SW: full word
                wdata <= reg_rs2;
            when others =>
                wdata <= reg_rs2;
                decode_error <= '1';
        end case;
    end process;

end behavioural;