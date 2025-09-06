library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity registerFile is
  Port (
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
end registerFile;

architecture behavioural of registerFile is
    -- Registers
    type registers_t is array (31 downto 0) of std_logic_vector(32 downto 0);
    signal registers : registers_t := (others => (others => '0'));

    attribute syn_ramstyle : string;
    attribute syn_ramstyle of registers : signal is "rw_check";

    signal data_in : std_logic_vector(32 downto 0);
    signal we : std_logic;
    signal register_selection : std_logic_vector(4 downto 0);
    signal register_selection_0r, register_selection_1r, register_selection_2r, register_selection_3r, 
    register_selection_4r, register_selection_5r, register_selection_6r, register_selection_7r : std_logic_vector(4 downto 0);

    type state_t is (SCAN_FOR_ACCESS_REQUEST, ACCESS_GRANTED);
    signal state, n_state : state_t;

    signal current_selection, n_current_selection, i_access_grant, n_access_grant : std_logic_vector(7 downto 0);
    signal select_next, we_r  : std_logic;



    signal data_in_r : std_logic_vector(32 downto 0);
    attribute noprune: boolean; attribute noprune of data_in_r: signal is true;


    signal access_request : std_logic_vector(7 downto 0);

begin

    access_request <= we_7 & we_6 & we_5 & we_4 & we_3 & we_2 & we_1 & we_0;

    process(state, current_selection, access_request,  i_access_grant)
    begin
        n_state <= state;
        select_next <= '0';
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
                end if;
        end case;
    end process;

    process(rst, clk)
    begin
        if rst = '1' then
            state <= SCAN_FOR_ACCESS_REQUEST;
            current_selection <= X"01";
            i_access_grant <= (others => '0');
            register_selection_0r <= (others => '0');
            register_selection_1r <= (others => '0');
            register_selection_2r <= (others => '0');
            register_selection_3r <= (others => '0');
            register_selection_4r <= (others => '0');
            register_selection_5r <= (others => '0');
            register_selection_6r <= (others => '0');
            register_selection_7r <= (others => '0');
            we_r <= '0';
            data_in_r <= (others => '0');
            
        elsif rising_edge(clk) then
            state <= n_state;

            register_selection_0r <= register_selection_0;
            register_selection_1r <= register_selection_1;
            register_selection_2r <= register_selection_2;
            register_selection_3r <= register_selection_3;
            register_selection_4r <= register_selection_4;
            register_selection_5r <= register_selection_5;
            register_selection_6r <= register_selection_6;
            register_selection_7r <= register_selection_7;
            

            current_selection <= n_current_selection;

            we_r <= we;
            data_in_r <= data_in;


            if we_r = '1' then
                registers(to_integer(unsigned(register_selection))) <= data_in_r;
            end if;

            i_access_grant <= current_selection and access_request; --n_access_grant;

        end if;
    end process;

    process(i_access_grant, 
    data_in_0, we_0, register_selection_0r, 
    data_in_1, we_1, register_selection_1r, 
    data_in_2, we_2, register_selection_2r, 
    data_in_3, we_3, register_selection_3r,
    data_in_4, we_4, register_selection_4r,
    data_in_5, we_5, register_selection_5r,
    data_in_6, we_6, register_selection_6r,
    data_in_7, we_7, register_selection_7r
    )
    begin
        data_in <= (others => '0');
        case i_access_grant is
            when X"01" =>
                if register_selection_0r /= "00000" then
                    data_in <= data_in_0;
                end if;
                we <= we_0;
                register_selection <= register_selection_0r;
            when X"02" =>
                if register_selection_1r /= "00000" then
                    data_in <= data_in_1;
                end if;
                we <= we_1;
                register_selection <= register_selection_1r;
            when X"04" =>
                if register_selection_2r /= "00000" then
                    data_in <= data_in_2;
                end if;
                we <= we_2;
                register_selection <= register_selection_2r;
            when X"08" =>
                if register_selection_3r /= "00000" then
                    data_in <= data_in_3;
                end if;
                we <= we_3;
                register_selection <= register_selection_3r;
            when X"10" =>
                if register_selection_4r /= "00000" then
                    data_in <= data_in_4;
                end if;
                we <= we_4;
                register_selection <= register_selection_4r;
            when X"20" =>
                if register_selection_5r /= "00000" then
                    data_in <= data_in_5;
                end if;
                we <= we_5;
                register_selection <= register_selection_5r;
            when X"40" =>
                if register_selection_6r /= "00000" then
                    data_in <= data_in_6;
                end if;
                we <= we_6;
                register_selection <= register_selection_6r;
            when X"80" =>
                if register_selection_7r /= "00000" then
                    data_in <= data_in_7;
                end if;
                we <= we_7;
                register_selection <= register_selection_7r;
            when others =>
                data_in <= (others => '0');
                we <= '0';
                register_selection <= (others => '0');
        end case;
    end process;

    process(select_next, access_request, current_selection)
    begin
        n_current_selection <= current_selection;
        if select_next = '1' then
            if (access_request(0) xor access_request(1) xor access_request(2) xor access_request(3) xor access_request(4) xor access_request(5) xor access_request(6) xor access_request(7)) = '1' then
                n_current_selection <= access_request;
            else
                n_current_selection <= current_selection(0) & current_selection(7 downto 1);
            end if;
        end if;
    end process;

    data_out_0 <= registers(to_integer(unsigned(register_selection_0r))) when register_selection_0r /= "00000" else data_in_0;
    data_out_1 <= registers(to_integer(unsigned(register_selection_1r))) when register_selection_1r /= "00000" else data_in_1;
    data_out_2 <= registers(to_integer(unsigned(register_selection_2r))) when register_selection_2r /= "00000" else data_in_2;
    data_out_3 <= registers(to_integer(unsigned(register_selection_3r))) when register_selection_3r /= "00000" else data_in_3;
    data_out_4 <= registers(to_integer(unsigned(register_selection_4r))) when register_selection_4r /= "00000" else data_in_4;
    data_out_5 <= registers(to_integer(unsigned(register_selection_5r))) when register_selection_5r /= "00000" else data_in_5;
    data_out_6 <= registers(to_integer(unsigned(register_selection_6r))) when register_selection_6r /= "00000" else data_in_6;
    data_out_7 <= registers(to_integer(unsigned(register_selection_7r))) when register_selection_7r /= "00000" else data_in_7;

    access_grant <= i_access_grant;

    register_selected_0 <= register_selection_0r;
    register_selected_1 <= register_selection_1r;
    register_selected_2 <= register_selection_2r;
    register_selected_3 <= register_selection_3r;
    register_selected_4 <= register_selection_4r;
    register_selected_5 <= register_selection_5r;
    register_selected_6 <= register_selection_6r;
    register_selected_7 <= register_selection_7r;
    



end behavioural;