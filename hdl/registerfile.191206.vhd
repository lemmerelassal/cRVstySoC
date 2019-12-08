library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity registerFile is
  Port (
    rst, clk : in std_logic;
    access_request : in std_logic_vector(7 downto 0);
    access_grant : out std_logic_vector(7 downto 0);
    register_selection : in std_logic_vector(4 downto 0);
    register_selected : out std_logic_vector(4 downto 0);
    set_lock_status, lock_status, set_value : in std_logic;
    is_locked : out std_logic;

    data_in : in std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0)

  );
end registerFile;

architecture behavioural of registerFile is
    -- Registers
    type registers_t is array (31 downto 1) of std_logic_vector(31 downto 0);
    signal registers, n_registers : registers_t; -- := (others => (others => '0'));
    signal register_lock : std_logic_vector(31 downto 1);

    type state_t is (SCAN_FOR_ACCESS_REQUEST, ACCESS_GRANTED);
    signal state, n_state : state_t;

    signal current_selection, i_access_grant, n_access_grant : std_logic_vector(7 downto 0);
    signal select_next, set_register_lock, set_register_value  : std_logic;

    signal i_register_selection : std_logic_vector(4 downto 0);


begin

    process(state, current_selection, access_request, set_lock_status, i_register_selection, set_value, i_access_grant)
    begin
        n_state <= state;
        set_register_lock <= '0';
        select_next <= '0';
        set_register_value <= '0';
        n_access_grant <= i_access_grant;
        case state is
            when SCAN_FOR_ACCESS_REQUEST =>
                if (current_selection and access_request) = X"00" then
                    select_next <= '1';
                else
                    n_access_grant <= current_selection and access_request;
                    n_state <= ACCESS_GRANTED;
                end if;

            when ACCESS_GRANTED =>
                if (access_request and i_access_grant) = X"00" then
                    n_state <= SCAN_FOR_ACCESS_REQUEST;
                    select_next <= '1';
                    n_access_grant <= (others => '0');
                else
                    if (set_lock_status = '1') and (i_register_selection /= "00000") then
                        set_register_lock <= '1';
                    end if;

                    if (set_value = '1') and (i_register_selection /= "00000") then
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
            i_access_grant <= (others => '0');
            i_register_selection <= (others => '0');
        elsif rising_edge(clk) then
            state <= n_state;
            if select_next = '1' then
                if (access_request(0) xor access_request(1) xor access_request(2) xor access_request(3) xor access_request(4) xor access_request(5) xor access_request(6) xor access_request(7)) = '1' then
                    current_selection <= access_request;
                else
                    current_selection <= current_selection(0) & current_selection(7 downto 1);
                end if;
            end if;

            if set_register_lock = '1' then
                register_lock(to_integer(unsigned(i_register_selection))) <= lock_status;
            end if;

            if set_register_value = '1' then
                registers(to_integer(unsigned(i_register_selection))) <= data_in;
            end if;

            i_access_grant <= n_access_grant;
            i_register_selection <= register_selection;

        end if;
    end process;

    is_locked <= register_lock(to_integer(unsigned(i_register_selection))) when i_register_selection /= "00000" else lock_status;
    data_out <= registers(to_integer(unsigned(i_register_selection))) when i_register_selection /= "00000" else X"00000000";
    access_grant <= i_access_grant;
    register_selected <= i_register_selection;

end behavioural;