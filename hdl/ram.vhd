library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

use IEEE.std_logic_unsigned.all; -- for arithmetic
use IEEE.NUMERIC_STD.ALL; -- for unsigned()


entity block_ram is
	generic (
        base_address : std_logic_vector(31 downto 0) := X"80000000";
		ram_size : std_logic_vector(31 downto 0) := X"00000800";
		ram_file : string := "RAM.txt"
	);
    port ( 
        rst, clk : in std_logic;
        mem_addr, mem_wdata : in std_logic_vector(31 downto 0);
        mem_rdata : out std_logic_vector(31 downto 0);
        mem_we, mem_re : in std_logic;
        mem_width : in std_logic_vector(1 downto 0);
        mem_rdy, mem_wack : out std_logic

    );
    end block_ram;

architecture Behavioral of block_ram is
	type memory_t is array ((to_integer(unsigned(ram_size))) - 1 downto 0) of std_logic_vector (7 downto 0);
    impure function InitRamFromFile (RamFileName : in string) return memory_t is
        FILE RamFile : text is in RamFileName;
        variable RamFileLine : line;
        variable tempIn : std_logic_vector(7 downto 0);
        variable RAM : memory_t;
        variable good: boolean;   -- Status of the read operations
        variable i : integer;
    begin
        i := 0;
        for i in 0 to to_integer(unsigned(ram_size))-1 loop
            readline (RamFile, RamFileLine);
            hread (RamFileLine, tempIn);
            RAM(i) := tempIn;
        end loop;
        return RAM;
    end function;
	
    signal memory : memory_t := InitRamFromFile(ram_file);
    signal address_valid, i_we, i_re, start_fsm : std_logic;
    signal i_addr : integer range 0 to to_integer(unsigned(ram_size))-1 := 0;

    type state_t is (IDLE, READ_OR_WRITE_B0, READ_OR_WRITE_B1, READ_OR_WRITE_B2, READ_OR_WRITE_B3, DONE);
    signal state, n_state : state_t;
    
    signal i_width : std_logic_vector(1 downto 0);

    signal i_rdata, n_rdata : std_logic_vector(31 downto 0);
    

begin

    address_valid <= '1' when (mem_addr >= base_address) and (mem_addr < (base_address + ram_size)) else '0';

    process(rst, clk)
    begin
        if rst = '1' then
            i_width <= "00";
            i_we <= '0';
            i_re <= '0';
            i_addr <= 0;
            i_rdata <= (others => '0');
            state <= IDLE;
        elsif rising_edge(clk) then
            i_rdata <= n_rdata;
            state <= n_state;
            if start_fsm = '1' then
                i_width <= mem_width;
                i_we <= mem_we;
                i_re <= mem_re;
                i_addr <= to_integer(unsigned((mem_addr-base_address) and (ram_size-X"00000001")));
            end if;

            if i_we = '1' then
                case state is
                    when READ_OR_WRITE_B0 =>
                            memory(i_addr) <= mem_wdata(7 downto 0);
                    when READ_OR_WRITE_B1 =>
                            memory((i_addr+1) mod to_integer(unsigned(ram_size))) <= mem_wdata(15 downto 8);
                    when READ_OR_WRITE_B2 =>
                            memory((i_addr+2) mod to_integer(unsigned(ram_size))) <= mem_wdata(23 downto 16);
                    when READ_OR_WRITE_B3 =>
                            memory((i_addr+3) mod to_integer(unsigned(ram_size))) <= mem_wdata(31 downto 24);
                    when others =>
                end case;
            end if;

        end if;
    end process;

    process(state, i_rdata, mem_we, mem_re, address_valid, i_addr, i_width, i_re, i_we)
    begin
        n_state <= state;
        n_rdata <= i_rdata;
        mem_rdy <= '0';
        mem_wack <= '0';
        start_fsm <= '0';

        case state is
            when IDLE =>
                n_rdata <= (others => 'Z');
                mem_rdy <= 'Z';
                mem_wack <= 'Z';
                if (mem_we = '1' or mem_re = '1') and (address_valid = '1') then
                    n_rdata <= (others => '0');
                    mem_rdy <= '0';
                    mem_wack <= '0';
                    start_fsm <= '1';
                    n_state <= READ_OR_WRITE_B0;
                end if;
            when READ_OR_WRITE_B0 =>
                n_rdata(7 downto 0) <= memory(i_addr);
                n_state <= READ_OR_WRITE_B1;
                if i_width = "00" then
                    n_state <= DONE;
                end if;
            when READ_OR_WRITE_B1 =>
                n_rdata(15 downto 8) <= memory((i_addr+1) mod to_integer(unsigned(ram_size)));
                n_state <= READ_OR_WRITE_B2;
                if i_width = "01" then
                    n_state <= DONE;
                end if;
            when READ_OR_WRITE_B2 =>
                n_rdata(23 downto 16) <= memory((i_addr+2) mod to_integer(unsigned(ram_size)));
                n_state <= READ_OR_WRITE_B3;
            when READ_OR_WRITE_B3 =>
                n_rdata(31 downto 24) <= memory((i_addr+3) mod to_integer(unsigned(ram_size)));
                n_state <= DONE;
            when DONE =>
                mem_rdy <= i_re;
                mem_wack <= i_we;
                if mem_we = '0' and mem_re = '0' then
                    n_state <= IDLE;
                end if;
            when others =>
                n_state <= IDLE;
        end case;
    end process;

mem_rdata <= i_rdata;

end Behavioral;