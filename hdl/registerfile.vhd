library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity registerFile is
  Port (
    rst, clk : in std_logic;
    access_request : in std_logic_vector(7 downto 0);
    o_access_grant : out std_logic_vector(7 downto 0);
    register_selected : in std_logic_vector(4 downto 0);
    set_lock_status, lock_status, set_value : in std_logic;
    is_locked : out std_logic;

    data_in : in std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0);

    access_stop : in std_logic

  );
end registerFile;

architecture behavioural of registerFile is
    -- Registers
    type registers_t is array (31 downto 1) of std_logic_vector(31 downto 0);
    signal registers, n_registers : registers_t := (others => (others => '0'));
    signal register_lock : std_logic_vector(31 downto 1);

    type state_t is (SCAN_FOR_ACCESS_REQUEST, ACCESS_GRANTED);
    signal state, n_state : state_t;

    signal current_selection, access_grant, n_access_grant : std_logic_vector(7 downto 0);
    signal shift_selection, set_register_lock, set_register_value  : std_logic;


begin

    process(state, current_selection, access_request, access_stop, set_lock_status, register_selected, set_value, access_grant)
    begin
        n_state <= state;
        set_register_lock <= '0';
        shift_selection <= '0';
        set_register_value <= '0';
        n_access_grant <= access_grant;
        case state is
            when SCAN_FOR_ACCESS_REQUEST =>
                if (current_selection and access_request) = X"00" then
                    shift_selection <= '1';
                else
                    n_access_grant <= current_selection and access_request;
                    n_state <= ACCESS_GRANTED;
                end if;

            when ACCESS_GRANTED =>
                if access_stop = '1' then
                    n_state <= SCAN_FOR_ACCESS_REQUEST;
                    shift_selection <= '1';
                else
                    if (set_lock_status = '1') and (register_selected /= "00000") then
                        set_register_lock <= '1';
                    end if;

                    if (set_value = '1') and (register_selected /= "00000") then
                        set_register_value <= '1';
                    end if;
                end if;
        end case;
    end process;

    process(rst, clk)
    begin
        if rst = '1' then
            state <= SCAN_FOR_ACCESS_REQUEST;
            current_selection <= X"01";
            register_lock <= (others => '0');
            --registers <= (others => (others => '0'));
            access_grant <= (others => '0');
        elsif rising_edge(clk) then
            state <= n_state;
            if shift_selection = '1' then
                current_selection <= current_selection(0) & current_selection(7 downto 1);
            end if;

            if set_register_lock = '1' then
                register_lock(to_integer(unsigned(register_selected))) <= lock_status;
            end if;

            if set_register_value = '1' then
                registers(to_integer(unsigned(register_selected))) <= data_in;
            end if;

            access_grant <= n_access_grant;

        end if;
    end process;

    is_locked <= register_lock(to_integer(unsigned(register_selected))) when register_selected /= "00000" else '0';
    data_out <= registers(to_integer(unsigned(register_selected))) when register_selected /= "00000" else X"00000000";
    o_access_grant <= access_grant;


end behavioural;