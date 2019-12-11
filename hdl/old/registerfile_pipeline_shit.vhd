library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity registerFile is
  Port (
    rst, clk : in std_logic;
    access_request : in std_logic_vector(7 downto 0);
    access_grant : out std_logic_vector(7 downto 0);

    data_out_stable : out std_logic_vector(7 downto 0);

    register_selection_0 : in std_logic_vector(4 downto 0);
    data_out_0 : out std_logic_vector(32 downto 0);
    data_in_0 : in std_logic_vector(32 downto 0);
    we_0 : in std_logic;

    register_selection_1 : in std_logic_vector(4 downto 0);
    data_out_1 : out std_logic_vector(32 downto 0);
    data_in_1 : in std_logic_vector(32 downto 0);
    we_1 : in std_logic;

    register_selection_2 : in std_logic_vector(4 downto 0);
    data_out_2 : out std_logic_vector(32 downto 0);
    data_in_2 : in std_logic_vector(32 downto 0);
    we_2 : in std_logic;

    register_selection_3 : in std_logic_vector(4 downto 0);
    data_out_3 : out std_logic_vector(32 downto 0);
    data_in_3 : in std_logic_vector(32 downto 0);
    we_3 : in std_logic;

    register_selection_4 : in std_logic_vector(4 downto 0);
    data_out_4 : out std_logic_vector(32 downto 0);
    data_in_4 : in std_logic_vector(32 downto 0);
    we_4 : in std_logic;

    register_selection_5 : in std_logic_vector(4 downto 0);
    data_out_5 : out std_logic_vector(32 downto 0);
    data_in_5 : in std_logic_vector(32 downto 0);
    we_5 : in std_logic

  );
end registerFile;

architecture behavioural of registerFile is
    -- Registers
    type registers_t is array (31 downto 0) of std_logic_vector(32 downto 0);
    signal registers : registers_t; -- := (others => (others => '0'));
    signal data_in : std_logic_vector(32 downto 0);
    signal we : std_logic;
    signal register_selection : std_logic_vector(4 downto 0);

    type state_t is (SCAN_FOR_ACCESS_REQUEST, ACCESS_GRANTED);
    signal state, n_state : state_t;

    signal current_selection, i_access_grant, n_access_grant : std_logic_vector(7 downto 0);
    signal select_next  : std_logic;

    signal data_out_r1_0, data_out_r1_1, data_out_r1_2, data_out_r1_3, data_out_r1_4, data_out_r1_5 : std_logic_vector(32 downto 0);
    signal data_out_r2_0, data_out_r2_1, data_out_r2_2, data_out_r2_3, data_out_r2_4, data_out_r2_5 : std_logic_vector(32 downto 0);



begin

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
        elsif rising_edge(clk) then
            state <= n_state;

            if register_selection_0 /= "00000" then
                data_out_r1_0 <= registers(to_integer(unsigned(register_selection_0)));
            else
                data_out_r1_0 <= (others => '0');
            end if;

            if register_selection_1 /= "00000" then
                data_out_r1_1 <= registers(to_integer(unsigned(register_selection_1)));
            else
                data_out_r1_1 <= (others => '0');
            end if;

            if register_selection_2 /= "00000" then
                data_out_r1_2 <= registers(to_integer(unsigned(register_selection_2)));
            else
                data_out_r1_2 <= (others => '0');
            end if;

            if register_selection_3 /= "00000" then
                data_out_r1_3 <= registers(to_integer(unsigned(register_selection_3)));
            else
                data_out_r1_3 <= (others => '0');
            end if;

            if register_selection_4 /= "00000" then
                data_out_r1_4 <= registers(to_integer(unsigned(register_selection_4)));
            else
                data_out_r1_4 <= (others => '0');
            end if;

            if register_selection_5 /= "00000" then
                data_out_r1_5 <= registers(to_integer(unsigned(register_selection_5)));
            else
                data_out_r1_5 <= (others => '0');
            end if;

            data_out_r2_0 <= data_out_r1_0;
            data_out_r2_1 <= data_out_r1_1;
            data_out_r2_2 <= data_out_r1_2;
            data_out_r2_3 <= data_out_r1_3;
            data_out_r2_4 <= data_out_r1_4;
            data_out_r2_5 <= data_out_r1_5;




            if select_next = '1' then
                if (access_request(0) xor access_request(1) xor access_request(2) xor access_request(3) xor access_request(4) xor access_request(5) xor access_request(6) xor access_request(7)) = '1' then
                    current_selection <= access_request;
                else
                    current_selection <= current_selection(0) & current_selection(7 downto 1);
                end if;
            end if;

            if we = '1' then
                registers(to_integer(unsigned(register_selection))) <= data_in;
            end if;

            i_access_grant <= current_selection and access_request; --n_access_grant;

        end if;
    end process;

    process(i_access_grant, 
    data_in_0, we_0, register_selection_0, 
    data_in_1, we_1, register_selection_1, 
    data_in_2, we_2, register_selection_2, 
    data_in_3, we_3, register_selection_3,
    data_in_4, we_4, register_selection_4,
    data_in_5, we_5, register_selection_5
    )
    begin
        case i_access_grant is
            when X"01" =>
                data_in <= data_in_0;
                we <= we_0;
                register_selection <= register_selection_0;
            when X"02" =>
                data_in <= data_in_1;
                we <= we_1;
                register_selection <= register_selection_1;
            when X"04" =>
                data_in <= data_in_2;
                we <= we_2;
                register_selection <= register_selection_2;
            when X"08" =>
                data_in <= data_in_3;
                we <= we_3;
                register_selection <= register_selection_3;
            when X"10" =>
                data_in <= data_in_4;
                we <= we_4;
                register_selection <= register_selection_4;
            when X"20" =>
                data_in <= data_in_5;
                we <= we_5;
                register_selection <= register_selection_5;
            when others =>
                data_in <= (others => '0');
                we <= '0';
                register_selection <= (others => '0');
        end case;
    end process;


    data_out_0 <= data_out_r2_0;
    data_out_1 <= data_out_r2_1;
    data_out_2 <= data_out_r2_2;
    data_out_3 <= data_out_r2_3;
    data_out_4 <= data_out_r2_4;
    data_out_5 <= data_out_r2_5;



    data_out_stable(0) <= '1' when data_out_r1_0 = data_out_r2_0 else '0';
    data_out_stable(1) <= '1' when data_out_r1_1 = data_out_r2_1 else '0';
    data_out_stable(2) <= '1' when data_out_r1_2 = data_out_r2_2 else '0';
    data_out_stable(3) <= '1' when data_out_r1_3 = data_out_r2_3 else '0';
    data_out_stable(4) <= '1' when data_out_r1_4 = data_out_r2_4 else '0';
    data_out_stable(5) <= '1' when data_out_r1_5 = data_out_r2_5 else '0';


    access_grant <= i_access_grant;

end behavioural;