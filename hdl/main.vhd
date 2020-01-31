library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

use work.mylibrary.all;

entity main is
  Port (
    --rst, clk : in std_logic;

    CLK100MHZ : in std_logic;
    btn : in std_logic_vector(3 downto 0);
    led : out std_logic_vector(3 downto 0);
    uart_rxd_out : out std_logic

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
        rst, clk : in std_logic;
        mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
        mem_rdata : out std_logic_vector(31 downto 0);
        mem_we, mem_re : in std_logic;
        mem_width : in std_logic_vector(1 downto 0);
        mem_rdy, mem_wack : out std_logic
    );
    end component;

    component uart PORT ( rst, clk : in STD_LOGIC;
    txd : out STD_LOGIC;
    mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
    mem_rdata : out std_logic_vector(31 downto 0);
    mem_we, mem_re : in std_logic;
    mem_wack, mem_rdy : out std_logic
    );
    end component;

    component gpio PORT (
      rst, clk : in std_logic;
      mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
      mem_rdata : out std_logic_vector(31 downto 0);
      mem_we, mem_re : in std_logic;
      mem_wack, mem_rdy : out std_logic;
  
      gpio : inout std_logic_vector(31 downto 0)
    );
    end component; 

    component timebase PORT (
        rst, clk : in std_logic;
        mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
        mem_rdata : out std_logic_vector(31 downto 0);
        mem_we, mem_re : in std_logic;
        mem_wack, mem_rdy : out std_logic
      );
    end component;


    component rom PORT (
      rst, clk : in std_logic;
      addr : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0)
    );
    end component;

    -- component uart PORT (
    --   rst, CLK100MHZ : in std_logic;
    --   txd : out std_logic
    -- );
    -- end component;

    -- component ila_0 PORT (
    --   clk : in std_logic;
    --   probe0, probe1 : in std_logic_vector(31 downto 0)
    -- );
    -- end component;

signal register_selection_0, register_selected_0 : std_logic_vector(4 downto 0);
signal data_out_0, data_in_0 : std_logic_vector(32 downto 0);
signal we_0, data_we, data_re, inst_re, inst_rdy, data_rdy, data_wack : std_logic;

signal data_wdata, data_addr, inst_addr, inst_rdata, data_rdata : std_logic_vector(31 downto 0);

signal inst_width, mem_width : std_logic_vector(1 downto 0);

signal rst, clk : std_logic;

signal mem_addr, mem_wdata, mem_rdata, int_gpio : std_logic_vector(31 downto 0);
signal mem_rdy, mem_wack, mem_we, mem_re : std_logic;

---------------------------------------------------------------------------
-- Peripherals
---------------------------------------------------------------------------

constant PERIPHERAL_RAM0 : integer := 0;
constant PERIPHERAL_RAM1 : integer := 1;
constant PERIPHERAL_RAM2 : integer := 2;

constant PERIPHERAL_TIMEBASE : integer := 3;
constant PERIPHERAL_UART : integer := 4;
constant PERIPHERAL_GPIO : integer := 5;
constant PERIPHERAL_MAX : integer := 6;

signal i_mem_rdy, i_mem_wack : std_logic_vector(PERIPHERAL_MAX-1 downto 0);
type mem_rdata_t is array (natural range <>) of std_logic_vector(31 downto 0);
type addr_t is array (natural range <>) of std_logic_vector(19 downto 0);

signal i_mem_rdata : mem_rdata_t(PERIPHERAL_MAX-1 downto 0) := (others => (others => '0'));
signal addr : addr_t(PERIPHERAL_MAX-1 downto 0) := (
  PERIPHERAL_RAM0 => X"80000",
  PERIPHERAL_RAM1 => X"80001",
  PERIPHERAL_RAM2 => X"80002",
  PERIPHERAL_TIMEBASE => X"C0000",
  PERIPHERAL_UART => X"C0001",
  PERIPHERAL_GPIO => X"C0002",
  others => (others => '0'));

begin


  --clk <= CLK100MHZ;
  rst <= btn(0) or btn(1) or btn(2) or btn(3);

  inst_rdy <= '1';

    -- i_gpio : gpio PORT MAP (
    --   rst => rst, clk => clk,
    --   mem_addr => mem_addr, mem_wdata => mem_wdata,
    --   mem_rdata => mem_rdata,
    --   mem_we => mem_we, mem_re => mem_re,
    --   mem_wack => mem_wack, mem_rdy => mem_rdy,
  
    --   gpio => int_gpio
    -- );

    i_uart: uart PORT MAP (
      rst => rst, clk => clk,
      txd => uart_rxd_out,
      mem_addr => mem_addr, mem_wdata => mem_wdata,
      mem_rdata => mem_rdata, --i_mem_rdata(PERIPHERAL_UART),
      mem_we => mem_we, mem_re => mem_re,
      mem_wack => mem_wack, --i_mem_wack(PERIPHERAL_UART), 
      mem_rdy => mem_rdy --i_mem_rdy(PERIPHERAL_UART)
    );

    i_timebase: timebase PORT MAP (
      rst => rst, clk => clk,
      mem_addr => mem_addr, mem_wdata => mem_wdata,
      mem_rdata => mem_rdata, --i_mem_rdata(PERIPHERAL_TIMEBASE),
      mem_we => mem_we, mem_re => mem_re,
      mem_wack => mem_wack, --i_mem_wack(PERIPHERAL_TIMEBASE), 
      mem_rdy => mem_rdy --i_mem_rdy(PERIPHERAL_TIMEBASE)
    );


--    ram: block_ram PORT MAP (
--      clk => clk, data_in => data_wdata, data_addr => data_addr(11 downto 2), inst_addr => inst_addr(11 downto 2), we => ram_we, 
      --instr_out => inst_rdata, 
--      data_out => data_rdata
--    );

    ram: block_ram PORT MAP(
      rst => rst, clk => clk,
      mem_addr => mem_addr, mem_wdata => mem_wdata,
      mem_width => mem_width,
      mem_rdata => mem_rdata, --i_mem_rdata(PERIPHERAL_RAM),
      mem_we => mem_we, mem_re => mem_re,
      mem_wack => mem_wack, --i_mem_wack(PERIPHERAL_RAM), 
      mem_rdy => mem_rdy --i_mem_rdy(PERIPHERAL_RAM)
    );

    myrom: rom PORT MAP( 
          rst => rst, clk => clk,
          addr => inst_addr,
          data_out => inst_rdata
      );

    cpu0: cpu PORT MAP (
        rst => rst, clk => clk,
    
        -- Instruction memory bus
        inst_width => inst_width, inst_addr => inst_addr, inst_rdata => inst_rdata, inst_re => inst_re, inst_rdy => inst_rdy,
    
        data_width => mem_width, data_addr => mem_addr, data_wdata => mem_wdata,
        data_rdata => mem_rdata, data_re => mem_re, data_we => mem_we, data_rdy => mem_rdy, data_wack => mem_wack,
    
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


      -- process(data_addr, data_we)
      -- begin
      --   ce_gpio <= '0';
      --   ce_ram <= '0';
      --   ram_we <= '0';
      --   case data_addr(31 downto 12) is
      --     when X"deadb" => -- GPIO
      --       ce_gpio <= '1';
      --     when X"00000" => -- RAM
      --       ce_ram <= '1';
      --       ram_we <= data_we;
      --     when others =>
      --   end case;
      -- end process;

      -- process(rst, clk)
      -- begin
      --   if rst = '1' then
      --     gpio <= (others => '1');
      --   elsif rising_edge(clk) then
      --     if (ce_gpio and data_we) = '1' then
      --       gpio <= data_wdata;
      --     end if;
      --   end if;
      -- end process;


      -- process(rst, CLK100MHZ)
      -- begin
      --   if rst = '1' then
      --     i_clk <= '0';
      --   elsif rising_edge(CLK100MHZ) then
      --     i_clk <= not i_clk;
      --   end if;
      -- end process;

      --process(rst, i_clk)
      --begin
      --  if rst = '1' then
      --    clk <= '0';
      --  elsif rising_edge(i_clk) then
      --    clk <= not clk;
      --  end if;
      --end process;

      clk <= CLK100MHZ;

led(3 downto 0) <= int_gpio(3 downto 0);

-- process(mem_addr, addr, i_mem_rdata, i_mem_rdy, i_mem_wack)
-- begin
--   mem_rdata <= (others => '0');
--   mem_rdy <= '0';
--   mem_wack <= '0';
--   for i in PERIPHERAL_MAX-1 downto 0 loop
--     if mem_addr(31 downto 12) = addr(i) then
--       mem_rdata <= i_mem_rdata(i);
--       mem_rdy <= i_mem_rdy(i);
--       mem_wack <= i_mem_wack(i);
--     end if;
--   end loop;
-- end process;



end behavioural;