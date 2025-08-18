-- WIP
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_jalr is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    instruction, registerfile_rdata_rs1, registerfile_rdata_rs2,pc : in std_logic_vector(31 downto 0);
    
    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

    data_wack, selected : in std_logic;

    imm, daddr, wdata, result : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error, dwe : out std_logic
  );
end eu_jalr;

architecture behavioural of eu_jalr is

    signal dec_counter : std_logic;

    

    impure function DoShift (
        value : std_logic_vector(31 downto 0); 
        shamt : integer range 0 to 31;
        arithmetic_shift : boolean; 
        shleft : boolean
    ) return std_logic_vector is
        variable result : std_logic_vector(31 downto 0);
        variable appendbit : std_logic;
    begin
        if arithmetic_shift = true then
            appendbit := value(31);
        else
            appendbit := '0';
        end if;

        if shamt > 31 then
            result := (others => appendbit);
            return result;
        elsif shamt = 0 then
            return value;
        end if;

        if shleft = true then
            result := (others => '0');
            result(31 downto shamt) := value(31-shamt downto 0);
        else
            result := (others => appendbit);
            result(31-shamt downto 0) := value(31 downto shamt);
        end if;
        return result;
    end function;


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

 execution_done(99) <= '1';
    decode_b_type: process(funct3, registerfile_rdata_rs1, registerfile_rdata_rs2, instruction, pc)
    begin
        imm(to_integer(unsigned(B_TYPE))) <= decode_imm(instruction);

        for i in 0 to 7 loop
            result(to_integer(unsigned(B_TYPE))) <= (others => '0');
        end loop;
        use_rs1(to_integer(unsigned(B_TYPE))) <= '1';
        use_rs2(to_integer(unsigned(B_TYPE))) <= '1';
        -- next_pc(to_integer(unsigned(B_TYPE))) <= pc + X"00000004";
        n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_FOUR;

        decode_error(to_integer(unsigned(B_TYPE))) <= '0';
        --execution_done(to_integer(unsigned(B_TYPE))) <= '1';

        case funct3 is
            when "000" => -- BEQ
                if signed(registerfile_rdata_rs1) = signed(registerfile_rdata_rs2) then
                    n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_IMM;
                end if;
            when "001" => -- BNE
                if signed(registerfile_rdata_rs1) /= signed(registerfile_rdata_rs2) then
                    n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_IMM;
                end if;
            when "100" => -- BLT
                if signed(registerfile_rdata_rs1) < signed(registerfile_rdata_rs2) then
                    n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_IMM;
                end if;
            when "101" => -- BGE
                if signed(registerfile_rdata_rs1) >= signed(registerfile_rdata_rs2) then
                    n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_IMM;
                end if;
            when "110" => -- BLTU
                if unsigned(registerfile_rdata_rs1) < unsigned(registerfile_rdata_rs2) then
                    n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_IMM;
                end if;
            when "111" => -- BGEU
                if unsigned(registerfile_rdata_rs1) >= unsigned(registerfile_rdata_rs2) then
                    n_pc_sel_array(to_integer(unsigned(B_TYPE))) <= PC_PLUS_IMM;
                end if;
            when others =>
                decode_error(to_integer(unsigned(B_TYPE))) <= '1';
        end case;
    end process;



end behavioural;