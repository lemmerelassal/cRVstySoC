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

signal imm_i, imm_s, imm_b, imm_u, imm_j, imm_jalr : std_logic_vector(31 downto 0);

begin



     decode_imm: process(instruction)
    begin
        -- I-type
        imm_i(31 downto 11) <= (others => instruction(31));
        imm_i(10 downto 5) <= instruction(30 downto 25);
        imm_i(4 downto 1) <= instruction(24 downto 21);
        imm_i(0) <= instruction(20);

        -- S-type
        imm_s(31 downto 11) <= (others => instruction(31));
        imm_s(10 downto 5) <= instruction(30 downto 25);
        imm_s(4 downto 1) <= instruction(11 downto 8);
        imm_s(0) <= instruction(7);

        -- B-type
        imm_b(31 downto 12) <= (others => instruction(31));
        imm_b(11) <= instruction(7);
        imm_b(10 downto 5) <= instruction(30 downto 25);
        imm_b(4 downto 1) <= instruction(11 downto 8);
        imm_b(0) <= '0';

        -- U-type
        imm_u(31) <= instruction(31);
        imm_u(30 downto 20) <= instruction(30 downto 20);
        imm_u(19 downto 12) <= instruction(19 downto 12);
        imm_u(11 downto 0) <= (others => '0');

        -- J-type
        imm_j(31 downto 20) <= (others => instruction(31));
        imm_j(19 downto 12) <= instruction(19 downto 12);
        imm_j(11) <= instruction(20);
        imm_j(10 downto 5) <= instruction(30 downto 25);
        imm_j(4 downto 1) <= instruction(24 downto 21);
        imm_j(0) <= '0';

        -- JALR
        imm_jalr <= (others => '0');
        imm_jalr(11 downto 0) <= instruction(31 downto 20);

    end process;


    PROCESS (instruction, imm_i, imm_s, imm_b, imm_u, imm_j, imm_jalr)
begin
        CASE instruction(6 downto 0) IS
            WHEN "0010011"  => imm <= imm_i;    -- Register/Immediate (ADDI, ...)
            WHEN "0000011"  => imm <= imm_i;    -- Load (LB, LH, LW)
            WHEN "0100011"  => imm <= imm_s;    -- Store (SB, SH, SW)
            WHEN "1100011"  => imm <= imm_b;    -- Branch
            WHEN "0110111"  => imm <= imm_u;    -- LUI
            WHEN "0010111"  => imm <= imm_u;    -- AUIPC
            WHEN "1101111"  => imm <= imm_j;    -- JAL
            WHEN "1100111"  => imm <= imm_jalr;    -- JALR
            WHEN OTHERS     => imm <= (others => '0');
        END CASE;
    END PROCESS;

END behavioural;