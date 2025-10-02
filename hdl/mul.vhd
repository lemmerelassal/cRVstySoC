library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier is
    Port (
        pc : in std_logic_vector(31 downto 0);
        reg_rs1 : in  std_logic_vector(31 downto 0);
        reg_rs2 : in  std_logic_vector(31 downto 0);
        result  : out std_logic_vector(63 downto 0);  -- product can be up to 64 bits
        execution_done : out std_logic;

        next_pc : out std_logic_vector(31 downto 0)

    );
end multiplier;

architecture behavioural of multiplier is
begin
    result <= std_logic_vector(unsigned(reg_rs1) * unsigned(reg_rs2));
    execution_done <= '1';
end behavioural;
