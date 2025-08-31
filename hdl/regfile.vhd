library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity regfile is
  Port (
    rst, clk, we : in std_logic;
    rd, rs1, rs2 : in std_logic_vector(4 downto 0);
    result : in std_logic_vector(31 downto 0);
    rs1_out, rs2_out : out std_logic_vector(31 downto 0)
  );
end regfile;

architecture behavioural of regfile is
    -- Registers
    type registers_t is array (31 downto 0) of std_logic_vector(31 downto 0);
    signal registers_rs1, registers_rs2 : registers_t := (others => (others => '0'));

    attribute syn_ramstyle : string;
    attribute syn_ramstyle of registers_rs1, registers_rs2 : signal is "rw_check";


begin

    
    process(rst,clk)
    begin
        if rst = '1' then
            registers_rs1 <= (others => (others => '0'));
            registers_rs2 <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if we = '1' then
                registers_rs1(to_integer(unsigned(rd))) <= result;
                registers_rs2(to_integer(unsigned(rd))) <= result;
            end if;
        end if;
    end process;


    rs1_out <= registers_rs1(to_integer(unsigned(rs1)));
    rs2_out <= registers_rs2(to_integer(unsigned(rs2)));

end behavioural;