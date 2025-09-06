LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_unsigned.ALL;

LIBRARY work;
USE work.mylibrary.ALL;
ENTITY immdecoder IS
    PORT (

        instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        imm : OUT std_logic_vector(31 downto 0)
    );
END immdecoder;

ARCHITECTURE behavioural OF immdecoder IS

signal opcode : opcode_t;

signal temp : opcode_array_t;

begin


    opcodedecoder_inst : entity work.opcodedecoder(behavioural) PORT MAP(
        instruction => instruction,
        opcode => opcode
    );

     decode_imm: process(instruction)
    begin
        -- I-type
        temp(I_TYPE)(31 downto 11) <= (others => instruction(31));
        temp(I_TYPE)(10 downto 5) <= instruction(30 downto 25);
        temp(I_TYPE)(4 downto 1) <= instruction(24 downto 21);
        temp(I_TYPE)(0) <= instruction(20);

                temp(I_TYPE_LOAD)(31 downto 11) <= (others => instruction(31));
        temp(I_TYPE_LOAD)(10 downto 5) <= instruction(30 downto 25);
        temp(I_TYPE_LOAD)(4 downto 1) <= instruction(24 downto 21);
        temp(I_TYPE_LOAD)(0) <= instruction(20);

        -- S-type
        temp(S_TYPE)(31 downto 11) <= (others => instruction(31));
        temp(S_TYPE)(10 downto 5) <= instruction(30 downto 25);
        temp(S_TYPE)(4 downto 1) <= instruction(11 downto 8);
        temp(S_TYPE)(0) <= instruction(7);

        -- B-type
        temp(B_TYPE)(31 downto 12) <= (others => instruction(31));
        temp(B_TYPE)(11) <= instruction(7);
        temp(B_TYPE)(10 downto 5) <= instruction(30 downto 25);
        temp(B_TYPE)(4 downto 1) <= instruction(11 downto 8);
        temp(B_TYPE)(0) <= '0';

        -- U-type
        temp(U_TYPE_LUI)(31) <= instruction(31);
        temp(U_TYPE_LUI)(30 downto 20) <= instruction(30 downto 20);
        temp(U_TYPE_LUI)(19 downto 12) <= instruction(19 downto 12);
        temp(U_TYPE_LUI)(11 downto 0) <= (others => '0');

        temp(U_TYPE_AUIPC)(31) <= instruction(31);
        temp(U_TYPE_AUIPC)(30 downto 20) <= instruction(30 downto 20);
        temp(U_TYPE_AUIPC)(19 downto 12) <= instruction(19 downto 12);
        temp(U_TYPE_AUIPC)(11 downto 0) <= (others => '0');

        -- J-type
        temp(J_TYPE_JAL)(31 downto 20) <= (others => instruction(31));
        temp(J_TYPE_JAL)(19 downto 12) <= instruction(19 downto 12);
        temp(J_TYPE_JAL)(11) <= instruction(20);
        temp(J_TYPE_JAL)(10 downto 5) <= instruction(30 downto 25);
        temp(J_TYPE_JAL)(4 downto 1) <= instruction(24 downto 21);
        temp(J_TYPE_JAL)(0) <= '0';

        -- JALR
        temp(J_TYPE_JALR) <= (others => '0');
        temp(J_TYPE_JALR)(11 downto 0) <= instruction(31 downto 20);

    end process;

    
    imm <= temp(opcode);



END behavioural;