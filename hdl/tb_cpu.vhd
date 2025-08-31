----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2019 12:27:44 PM
-- Design Name: 
-- Module Name: tb_cpu - Behavioral
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

entity tb_cpu is
end tb_cpu;

architecture Behavioral of tb_cpu is

component cpu is
--    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    rst, clk : in std_logic;

    -- Instruction memory bus
    inst_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    inst_addr : out std_logic_vector(31 downto 0);
    inst_rdata : in std_logic_vector(31 downto 0);
    inst_re : out std_logic;
    inst_rdy : in std_logic;

    -- Data memory bus
    data_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    data_addr, data_wdata : out std_logic_vector(31 downto 0);
    data_rdata : in std_logic_vector(31 downto 0);
    data_re, data_we : out std_logic;
    data_rdy, data_wack : in std_logic
  );
end component;


    component rom PORT (
      rst, clk : in std_logic;
      addr : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0)
    );
    end component;


    signal clk, rst : std_logic := '1';
    signal led : std_logic_vector(3 downto 0);
    signal inst_rdata, inst_addr : std_logic_vector(31 downto 0);

begin

    sim: cpu PORT MAP (
    rst => rst, clk => clk,
    inst_rdata => inst_rdata,
    inst_addr => inst_addr,
    inst_rdy => '1',
    data_rdata => X"00000000",
    data_rdy => '1',
    data_wack => '1'
    );

    rom_inst : rom PORT MAP (
      rst => rst, clk => clk, addr => inst_addr, data_out => inst_rdata
    );
    
    
clk <= not clk after 5 ns;
rst <= '0' after 50 ns;


end Behavioral;
