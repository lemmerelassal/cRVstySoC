library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package mylibrary is





type memory_address_details_t is
    record
        rdy, wack : std_logic;
        rdata : std_logic_vector(31 downto 0);
        valid : std_logic;
    end record;
constant init_memory_address_details: memory_address_details_t := (rdy => '0', wack => '0', rdata => (others => '0'), valid => '0');
type memory_address_details_array_t is array (natural range <>) of memory_address_details_t;



end mylibrary;
