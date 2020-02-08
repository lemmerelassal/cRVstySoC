----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2019 12:27:44 PM
-- Design Name: 
-- Module Name: tb_top_level - Behavioral
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

entity tb_ram is
end tb_ram;

architecture Behavioral of tb_ram is

      component   block_ram  port ( 
        clk : in std_logic;
        data_in : in std_logic_vector(31 downto 0);
        data_addr : in std_logic_vector(9 downto 0);
        inst_addr : in std_logic_vector(9 downto 0);
        we : in std_logic;
        instr_out : out std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal clk, rst : std_logic := '1';
    signal gpio : std_logic_vector(31 downto 0);
    

begin

    sim: block_ram PORT MAP (
      clk => clk, data_in => (others => '0'), data_addr => (others => '0'), inst_addr => (others => '0'), we => '0'
    );
    
    
clk <= not clk after 10 ns;

end Behavioral;
