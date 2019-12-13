library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;


entity block_ram is
	generic (
		ram_size : integer := 1024;
		ram_file : string := "binary.txt"
	);
    port ( 
        clk : in std_logic;
        data_in : in std_logic_vector(31 downto 0);
        data_addr : in std_logic_vector(9 downto 0);
        inst_addr : in std_logic_vector(9 downto 0);
        we : in std_logic;
        instr_out : out std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0)
    );
    end block_ram;

architecture Behavioral of block_ram is
	type memory_t is array ((ram_size) - 1 downto 0) of std_logic_vector (31 downto 0);
    impure function InitRamFromFile (RamFileName : in string) return memory_t is
        FILE RamFile : text is in RamFileName;
        variable RamFileLine : line;
        variable tempIn : std_logic_vector(31 downto 0);
        variable RAM : memory_t;
        variable good: boolean;   -- Status of the read operations
        variable i : integer;
    begin
        i := 0;
        while i < 6 loop
            readline (RamFile, RamFileLine);
            report "RamFileLine";
            hread (RamFileLine, tempIn);
            report "tempIn";
            RAM(i) := tempIn;
            i := i + 1;
        end loop;

        while i < 1024 loop
            RAM(i) := (others => '0');
            i := i + 1;
        end loop;
        return RAM;
    end function;
	
    signal memory : memory_t := InitRamFromFile(ram_file);
begin

	process (clk, data_addr)
	begin
		if rising_edge(clk) then
			if we = '1' then
                memory(to_integer(unsigned(data_addr))) <= data_in;
		    end if;
        end if;

    end process;


    -- read mem asynchronus
    data_out <= memory(to_integer(unsigned(data_addr(9 downto 0))));


    -- read instr asynchronus
    instr_out <= memory(to_integer(unsigned(inst_addr(9 downto 0))));

end Behavioral;