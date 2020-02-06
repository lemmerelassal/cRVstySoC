library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity timebase is
  generic (base_address : std_logic_vector(31 downto 0) := X"C0000000");
  Port (
    rst, clk : in std_logic;
    mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
    mem_rdata : out std_logic_vector(31 downto 0);
    mem_we, mem_re : in std_logic;
    mem_wack, mem_rdy : out std_logic;

    address_valid : out std_logic
  );
end timebase;


architecture Behavioural of timebase is

  signal time_ns, n_time_ns, time_s, n_time_s : std_logic_vector(31 downto 0);

begin

process(rst, clk)
begin
  if rst = '1' then
    time_ns <= (others => '0');
    time_s <= (others => '0');
  elsif rising_edge(clk) then
    if (mem_addr = base_address) and (mem_we = '1') then
      time_ns <= mem_wdata;
    else 
      time_ns <= n_time_ns;
    end if;


    if (mem_addr = (base_address+X"00000004")) and (mem_we = '1') then
      time_s <= mem_wdata;
    else 
      time_s <= n_time_s;
    end if;

  end if;
end process;

process(time_ns, time_s)
begin
  n_time_ns <= time_ns + X"00000001";
  n_time_s <= time_s;
  if time_ns >= X"05F5E100" then
    n_time_ns <= (others => '0');
    n_time_s <= time_s + X"00000001";
  end if;
end process;

process(mem_addr, time_s, time_ns)
begin
  mem_rdy <= '1';
  mem_wack <= '1';
  address_valid <= '1';
  case mem_addr is
    when base_address =>
      mem_rdata <= time_ns;
    when base_address + X"00000004" =>
      mem_rdata <= time_s;
    when others =>
      address_valid <= '0';
      mem_rdy <= 'Z';
      mem_wack <= 'Z';
      mem_rdata <= (others => 'Z');
  end case;
end process;

end Behavioural;