LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_unsigned.ALL;

LIBRARY work;
USE work.mylibrary.ALL;
ENTITY opcodedecoder IS
    PORT (

        instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        opcode : OUT opcode_t
    );
END opcodedecoder;

ARCHITECTURE behavioural OF opcodedecoder IS
begin
    PROCESS (instruction)
begin
        CASE instruction(6 downto 0) IS
            WHEN "0110011" => opcode <= R_TYPE;

            WHEN "0010011"  => opcode <= I_TYPE;         -- Register/Immediate (ADDI, ...)
            WHEN "0000011"  => opcode <= I_TYPE_LOAD;    -- Load (LB, LH, LW)
            WHEN "0100011"  => opcode <= S_TYPE;         -- Store (SB, SH, SW)
            WHEN "1100011"  => opcode <= B_TYPE;         -- Branch
            WHEN "0110111"  => opcode <= U_TYPE_LUI;     -- LUI
            WHEN "0010111"  => opcode <= U_TYPE_AUIPC;   -- AUIPC
            WHEN "1101111"  => opcode <= J_TYPE_JAL;     -- JAL
            WHEN "1100111"  => opcode <= J_TYPE_JALR;    -- JALR
            WHEN OTHERS     => opcode <= INVALID;
        END CASE;
    END PROCESS;

END behavioural;