library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;


entity rom is
    port ( 
        rst, clk : in std_logic;
        addr : in std_logic_vector(2 downto 0);
        data_out : out std_logic_vector(31 downto 0)
    );
    end rom;

architecture Behavioral of rom is
    
begin

    process(addr)
    begin
        case addr is
            when "000" =>
                data_out <= X"00000793";
            when "001" =>
                data_out <= X"deadc6b7";
            when "010" =>
                data_out <= X"0127d713";
            when "011" =>
                data_out <= X"eee6a023";
            when "100" =>
                data_out <= X"00178793";
            when "101" =>
                data_out <= X"ff5ff06f";
            when others =>
                data_out <= X"00000793";
        end case;
    end process;

end Behavioral;