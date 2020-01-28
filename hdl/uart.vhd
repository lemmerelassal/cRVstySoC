library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity uart is
    generic (base_address : std_logic_vector(31 downto 0) := X"C0001000";
            baud_rate : integer := 115200;
            clk_freq : integer := 100000000;
            initial_data : std_logic_vector(7 downto 0) := X"0A"
            );
    Port ( rst, clk : in STD_LOGIC;
           txd : out STD_LOGIC;
           mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
           mem_rdata : out std_logic_vector(31 downto 0);
           mem_we, mem_re : in std_logic;
           mem_wack, mem_rdy : out std_logic
           );
end uart;

architecture Behavioral of uart is
constant COUNTER_MAX : integer := (clk_freq/baud_rate)-1;
constant TX_BUSY : integer := 0;

signal counter : integer := COUNTER_MAX; -- 115207 bps
signal charToBeSent : std_logic_vector(14 downto 0) := initial_data & "0111000"; -- '\n'
signal reg_status : std_logic_vector(7 downto 0);
signal is_shifting : std_logic;


begin

    is_shifting <= '1' when counter = 0 else '0';

    process(rst, clk)
    begin
        if rst = '1' then
            counter <= COUNTER_MAX;
            charToBeSent <= initial_data & "0111000";
        elsif rising_edge(clk) then
            if (mem_we = '1') and (mem_addr = (base_address+X"00000001")) then
                counter <= COUNTER_MAX;
                charToBeSent <= mem_wdata(7 downto 0) & "0111000";
            elsif counter = 0 then
                charToBeSent <= '1' & charToBeSent(14 downto 1);
                counter <= COUNTER_MAX;
            else
                counter <= counter - 1;
            end if;
        end if;
    end process;

    process(mem_addr, reg_status, charToBeSent)
    begin
        mem_rdy <= '1';
        mem_wack <= '1';
        case mem_addr is
            when base_address => -- status
                mem_rdata <= X"000000" & reg_status;
            when base_address + X"00000001" =>
                mem_rdata <= X"000000" & charToBeSent(13 downto 6);
            when others =>
                mem_rdy <= 'Z';
                mem_wack <= 'Z';
                mem_rdata <= (others => 'Z');
        end case;
    end process;


    reg_status(TX_BUSY) <= '1' when charToBeSent /= "111111111111111" else '0';

    txd <= charToBeSent(3);

end Behavioral;
