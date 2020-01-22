library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity uart is
    generic (base_address : std_logic_vector(31 downto 0) := X"C0000010");
    Port ( rst, clk : in STD_LOGIC;
           txd : out STD_LOGIC;
           mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
           mem_rdata : out std_logic_vector(31 downto 0);
           mem_we, mem_re : in std_logic;
           mem_wack, mem_rdy : out std_logic
           );
end uart;

architecture Behavioral of uart is
signal counter : integer := 433; -- 115207 bps
signal charToBeSent : std_logic_vector(11 downto 0) := "001000010000"; -- '!'
signal reg_status : std_logic_vector(7 downto 0);
constant TX_BUSY : integer := 0;



begin

    process(rst, clk)
    begin
        if rst = '1' then
            counter <= 866;
            charToBeSent <= "001000010000";
        elsif rising_edge(clk) then
            if (mem_we = '1') and (mem_addr = (base_address+X"00000001")) then
                counter <= 866;
                charToBeSent <= mem_wdata(7 downto 0) & "0000";
            elsif counter = 0 then
                charToBeSent <= '1' & charToBeSent(11 downto 1);
                counter <= 866;
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
                mem_rdata <= X"000000" & charToBeSent(10 downto 3);
            when others =>
                mem_rdy <= 'Z';
                mem_wack <= 'Z';
                mem_rdata <= (others => 'Z');
        end case;
    end process;


    reg_status(TX_BUSY) <= '1' when charToBeSent /= "111111111111" else '0';

    txd <= charToBeSent(3);

end Behavioral;
