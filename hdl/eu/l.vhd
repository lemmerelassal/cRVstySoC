library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_l is

  Port (
    imm, pc, reg_rs1, data_rdata : in std_logic_vector(31 downto 0);
    data_rdy : in std_logic;
    funct3 : in std_logic_vector(2 downto 0);

    result, next_pc, daddr : out std_logic_vector(31 downto 0);
    use_rs1, use_rd, execution_done, decode_error : out std_logic




  );
end eu_l;

architecture behavioural of eu_l is

begin


        decode_load: process(imm, pc, reg_rs1, data_rdy, data_rdata, funct3)
    begin
        use_rs1 <= '1';
        use_rd <= '1';

        next_pc <= pc + X"00000004";
        execution_done <= data_rdy;
        decode_error <= '0';

        daddr <= reg_rs1 + imm;

        
        result <= data_rdata;


        if(funct3(2) = '0') then
            case funct3(1 downto 0) is
                when "00" =>
                    result(31 downto 8) <= (others => data_rdata(7));

                when "01" =>
                    result(31 downto 16) <= (others => data_rdata(15));

                when "11" =>
                    decode_error <= '1';

                when others =>

            end case;
        end if;

    end process;

end behavioural;