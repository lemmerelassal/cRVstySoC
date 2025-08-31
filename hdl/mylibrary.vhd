library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package mylibrary is




    type opcode_t is (R_TYPE, I_TYPE, I_TYPE_LOAD, S_TYPE, B_TYPE, U_TYPE_LUI, U_TYPE_AUIPC, J_TYPE_JAL, J_TYPE_JALR, INVALID);
    type opcode_array_t is array (opcode_t) of std_logic_vector(31 downto 0);


end mylibrary;
