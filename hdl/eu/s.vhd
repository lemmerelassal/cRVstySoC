
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_s is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    imm, pc, reg_rs1, reg_rs2 : in std_logic_vector(31 downto 0);
    data_wack, selected : in std_logic;

    result, next_pc, daddr, wdata : out std_logic_vector(31 downto 0);
    use_rs1, use_rs2, execution_done, decode_error, dwe : out std_logic




  );
end eu_s;

architecture behavioural of eu_s is
    constant R_TYPE         : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)
    constant I_TYPE         : std_logic_vector(6 downto 0) := "0010011"; -- Register/Immediate (ADDI, ...)
    constant I_TYPE_LOAD    : std_logic_vector(6 downto 0) := "0000011";
    constant S_TYPE         : std_logic_vector(6 downto 0) := "0100011"; -- Store (SB, SH, SW)
    constant B_TYPE         : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    constant U_TYPE_LUI     : std_logic_vector(6 downto 0) := "0110111"; -- LUI
    constant U_TYPE_AUIPC   : std_logic_vector(6 downto 0) := "0010111"; -- AUIPC
    constant J_TYPE_JAL     : std_logic_vector(6 downto 0) := "1101111"; -- JAL
    constant J_TYPE_JALR    : std_logic_vector(6 downto 0) := "1100111"; -- JALR
        function decode_imm (
        instruction : std_logic_vector(31 downto 0)
    ) return std_logic_vector is
        variable imm : std_logic_vector(31 downto 0);
    begin
        --imm := (others => '0');
        case instruction(6 downto 0) is
            when I_TYPE | I_TYPE_LOAD =>
                -- I-type
                imm(31 downto 11) := (others => instruction(31));
                imm(10 downto 5) := instruction(30 downto 25);
                imm(4 downto 1) := instruction(24 downto 21);
                imm(0) := instruction(20);

            when S_TYPE =>
                -- S-type
                imm(31 downto 11) := (others => instruction(31));
                imm(10 downto 5) := instruction(30 downto 25);
                imm(4 downto 1) := instruction(11 downto 8);
                imm(0) := instruction(7);

            when B_TYPE =>
                -- B-type
                imm(31 downto 12) := (others => instruction(31));
                imm(11) := instruction(7);
                imm(10 downto 5) := instruction(30 downto 25);
                imm(4 downto 1) := instruction(11 downto 8);
                imm(0) := '0';

            when U_TYPE_AUIPC | U_TYPE_LUI =>
                -- U-type
                imm(31) := instruction(31);
                imm(30 downto 20) := instruction(30 downto 20);
                imm(19 downto 12) := instruction(19 downto 12);
                imm(11 downto 0) := (others => '0');

            when J_TYPE_JAL =>
                -- J-type
                imm(31 downto 20) := (others => instruction(31));
                imm(19 downto 12) := instruction(19 downto 12);
                imm(11) := instruction(20);
                imm(10 downto 5) := instruction(30 downto 25);
                imm(4 downto 1) := instruction(24 downto 21);
                imm(0) := '0';
            when J_TYPE_JALR =>
                -- JALR
                imm := (others => '0');
                imm(11 downto 0) := instruction(31 downto 20);
            when others =>
                imm := (others => '0');
        end case;
        return imm;
    end function;


begin
    decode_store: process(imm, pc, reg_rs1, reg_rs2, data_wack, selected)
    begin
        result <= imm;
        use_rs1 <= '1';
        use_rs2 <= '1';
        next_pc <= pc + X"00000004";
        execution_done <= data_wack;
        decode_error <= '0';

        daddr <= reg_rs1 + imm;
        wdata<= reg_rs2;
        dwe <= selected;
    end process;

end behavioural;