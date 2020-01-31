----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2020 07:06:17 PM
-- Design Name: 
-- Module Name: tb_printf - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_printf is
--  Port ( );
end tb_printf;

architecture Behavioral of tb_printf is
      component fsm PORT ( 
        rst, clk: STD_LOGIC;
        mem_rdata : in std_logic_vector(31 downto 0);
        mem_wdata, mem_addr : out std_logic_vector(31 downto 0);
        mem_re, mem_we : out std_logic;
        mem_wack, mem_rdy : in std_logic;
        mem_width: out std_logic_vector(1 downto 0)
    );
    end component;
    
    signal clk, rst: std_logic := '1';
begin


clk <= not clk after 5 ns;
rst <= '0' after 100 ns;

    sim: fsm PORT MAP (
      clk => clk, rst => rst, mem_wack => '1', mem_rdy => '1'
    );

end Behavioral;
