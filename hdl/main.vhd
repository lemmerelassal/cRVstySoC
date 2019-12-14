library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity main is
  Port (
    rst, clk : in std_logic;

    gpio : out std_logic_vector(31 downto 0)

    -- Instruction memory bus
    -- inst_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    -- inst_addr : out std_logic_vector(31 downto 0);
    -- inst_rdata : in std_logic_vector(31 downto 0);
    -- inst_re : out std_logic;
    -- inst_rdy : in std_logic;

    -- Data memory bus
    -- data_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    -- data_addr, data_wdata : out std_logic_vector(31 downto 0);
    -- data_rdata : in std_logic_vector(31 downto 0);
    -- data_re, data_we : out std_logic;
    -- data_rdy, data_wack : in std_logic

  );
end main;


architecture behavioural of main is

    component registerFile PORT (
          rst, clk : in std_logic;
          --access_request : in std_logic_vector(7 downto 0);
          access_grant : out std_logic_vector(7 downto 0);
      
          register_selection_0 : in std_logic_vector(4 downto 0);
          register_selected_0 : out std_logic_vector(4 downto 0);
          data_out_0 : out std_logic_vector(32 downto 0);
          data_in_0 : in std_logic_vector(32 downto 0);
          we_0 : in std_logic;
      
          register_selection_1 : in std_logic_vector(4 downto 0);
          register_selected_1 : out std_logic_vector(4 downto 0);
          data_out_1 : out std_logic_vector(32 downto 0);
          data_in_1 : in std_logic_vector(32 downto 0);
          we_1 : in std_logic;
      
          register_selection_2 : in std_logic_vector(4 downto 0);
          register_selected_2 : out std_logic_vector(4 downto 0);
          data_out_2 : out std_logic_vector(32 downto 0);
          data_in_2 : in std_logic_vector(32 downto 0);
          we_2 : in std_logic;
      
          register_selection_3 : in std_logic_vector(4 downto 0);
          register_selected_3 : out std_logic_vector(4 downto 0);
          data_out_3 : out std_logic_vector(32 downto 0);
          data_in_3 : in std_logic_vector(32 downto 0);
          we_3 : in std_logic;
      
          register_selection_4 : in std_logic_vector(4 downto 0);
          register_selected_4 : out std_logic_vector(4 downto 0);
          data_out_4 : out std_logic_vector(32 downto 0);
          data_in_4 : in std_logic_vector(32 downto 0);
          we_4 : in std_logic;
      
          register_selection_5 : in std_logic_vector(4 downto 0);
          register_selected_5 : out std_logic_vector(4 downto 0);
          data_out_5 : out std_logic_vector(32 downto 0);
          data_in_5 : in std_logic_vector(32 downto 0);
          we_5 : in std_logic;
      
          register_selection_6 : in std_logic_vector(4 downto 0);
          register_selected_6 : out std_logic_vector(4 downto 0);
          data_out_6 : out std_logic_vector(32 downto 0);
          data_in_6 : in std_logic_vector(32 downto 0);
          we_6 : in std_logic;
      
          register_selection_7 : in std_logic_vector(4 downto 0);
          register_selected_7 : out std_logic_vector(4 downto 0);
          data_out_7 : out std_logic_vector(32 downto 0);
          data_in_7 : in std_logic_vector(32 downto 0);
          we_7 : in std_logic
      
        );
      end component;


      component cpu PORT (
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
          data_rdy, data_wack : in std_logic;
      
          -- FIFO for distribution onto other sub-CPUs (not implemented yet)
          --fifo_we : out std_logic;
          --fifo_full : in std_logic;
          --fifo_wdata : out std_logic_vector(31 downto 0);
      
      
          -- Register file
          registerfile_register_selection : out std_logic_vector(4 downto 0);
          registerfile_register_selected : in std_logic_vector(4 downto 0);
          registerfile_wdata : out std_logic_vector(32 downto 0);
          registerfile_rdata : in std_logic_vector(32 downto 0);
          registerfile_we : out std_logic;

          err : out std_logic
              
          --interrupt_error, exec_done : out std_logic
        );
      end component;

      component block_ram PORT ( 
        clk : in std_logic;
        data_in : in std_logic_vector(31 downto 0);
        data_addr : in std_logic_vector(9 downto 0);
        inst_addr : in std_logic_vector(9 downto 0);
        we : in std_logic;
        instr_out : out std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0)
    );
    end component;

signal register_selection_0, register_selected_0 : std_logic_vector(4 downto 0);
signal data_out_0, data_in_0 : std_logic_vector(32 downto 0);
signal we_0, data_we, data_re, inst_re, inst_rdy, data_rdy, data_wack : std_logic;

signal data_wdata, data_addr, inst_addr, inst_rdata, data_rdata : std_logic_vector(31 downto 0);

signal inst_width, data_width : std_logic_vector(1 downto 0);

begin

  inst_rdy <= '1';
  data_rdy <= '1';
  data_wack <= '1';

  gpio <= data_wdata;

    ram: block_ram PORT MAP (
      clk => clk, data_in => data_wdata, data_addr => data_addr(11 downto 2), inst_addr => inst_addr(11 downto 2), we => data_we, instr_out => inst_rdata, data_out => data_rdata
    );

    cpu0: cpu PORT MAP (
        rst => rst, clk => clk,
    
        -- Instruction memory bus
        inst_width => inst_width, inst_addr => inst_addr, inst_rdata => inst_rdata, inst_re => inst_re, inst_rdy => inst_rdy,
    
        data_width => data_width, data_addr => data_addr, data_wdata => data_wdata,
        data_rdata => data_rdata, data_re => data_re, data_we => data_we, data_rdy => data_rdy, data_wack => data_wack,
    
        -- Register file
        registerfile_register_selection => register_selection_0,
        registerfile_register_selected => register_selected_0,
        registerfile_wdata => data_in_0,
        registerfile_rdata => data_out_0,
        registerfile_we => we_0
            
        --interrupt_error, exec_done : out std_logic
      );


    regfile: registerFile PORT MAP(
        rst => rst, clk => clk,
        --access_grant => ,
    
        register_selection_0 => register_selection_0,
        register_selected_0 => register_selected_0,
        data_out_0 => data_out_0,
        data_in_0 => data_in_0,
        we_0 => we_0,
    
        register_selection_1 => (others => '0'),
        -- register_selected_1 : out std_logic_vector(4 downto 0);
        -- data_out_1 : out std_logic_vector(32 downto 0);
        data_in_1 => (others => '0'),
        we_1 => '0',
    
        register_selection_2 => (others => '0'),
        -- register_selected_2 : out std_logic_vector(4 downto 0);
        -- data_out_2 : out std_logic_vector(32 downto 0);
        data_in_2 => (others => '0'),
        we_2 => '0',

        register_selection_3 => (others => '0'),
        -- register_selected_3 : out std_logic_vector(4 downto 0);
        -- data_out_3 : out std_logic_vector(32 downto 0);
        data_in_3 => (others => '0'),
        we_3 => '0',
    
        register_selection_4 => (others => '0'),
        -- register_selected_4 : out std_logic_vector(4 downto 0);
        -- data_out_4 : out std_logic_vector(32 downto 0);
        data_in_4 => (others => '0'),
        we_4 => '0',
    
        register_selection_5 => (others => '0'),
        -- register_selected_5 : out std_logic_vector(4 downto 0);
        -- data_out_5 : out std_logic_vector(32 downto 0);
        data_in_5 => (others => '0'),
        we_5 => '0',
    
        register_selection_6 => (others => '0'),
        -- register_selected_6 : out std_logic_vector(4 downto 0);
        -- data_out_6 : out std_logic_vector(32 downto 0);
        data_in_6 => (others => '0'),
        we_6 => '0',
    
        register_selection_7 => (others => '0'),
        -- register_selected_7 : out std_logic_vector(4 downto 0);
        -- data_out_7 : out std_logic_vector(32 downto 0);
        data_in_7 => (others => '0'),
        we_7 => '0'
    
      );

end behavioural;