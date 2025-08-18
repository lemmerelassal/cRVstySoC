library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_i is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    instruction, registerfile_rdata_rs1, registerfile_rdata_rs2,pc : in std_logic_vector(31 downto 0);
    data_wack, selected : in std_logic;
    funct3 : in std_logic_vector(2 downto 0);
        funct7 : in std_logic_vector(6 downto 0);


    imm, daddr, wdata, result : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error, dwe : out std_logic






  );
end eu_i;

architecture behavioural of eu_i is
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


        type word_t is array (natural range <>) of std_logic_vector(31 downto 0);
    signal i_result : word_t(7 downto 0);


begin
    decode_i_type: process(instruction, funct3, funct7, registerfile_rdata_rs1, pc) --clk, pc)
    begin
        imm <= decode_imm(instruction);

        decode_error <= '0';
        execution_done <= '1';
        -- next_pc <= pc + X"00000004";

        use_rs1 <= '1'; 
        use_rs2 <= '1'; 
        use_rd <= '1';

            result <= (others => '0');

        dec_counter <= '0';


            -- case funct3 is
            --      when "000" => -- ADDI
            --         result <= registerfile_rdata_rs1 + decode_imm(instruction);

            --      when "001" =>
            --         case funct7 is
            --             when "0000000" => -- SLLI
            --                 execution_done <= '1';
            --                 result <=  DoShift(registerfile_rdata_rs1, to_integer(unsigned(decode_imm(instruction)(4 downto 0))), false, true);

            --             when others =>
            --                 decode_error <= '1';
            --         end case;
            --      when "010" => -- SLTI
            --         if signed(registerfile_rdata_rs1) < signed(decode_imm(instruction)) then
            --             result <= X"00000001";
            --         else
            --             result <= (others => '0');
            --         end if;

            --      when "011" => -- SLTIU
            --         if unsigned(registerfile_rdata_rs1) < unsigned(decode_imm(instruction)) then
            --             result <= X"00000001";
            --         else
            --             result <= (others => '0');
            --         end if;

            --      when "100" => -- XORI
            --         result <= registerfile_rdata_rs1 xor decode_imm(instruction);

            --      when "101" =>
                
            --         case funct7 is
            --             when "0000000" => -- SRLI
            --                 result <=  DoShift(registerfile_rdata_rs1, to_integer(unsigned(decode_imm(instruction)(4 downto 0))), false, false);

            --             when "0100000" => -- SRAI
            --                 result <=  DoShift(registerfile_rdata_rs1, to_integer(unsigned(decode_imm(instruction)(4 downto 0))), true, false);

            --             when others =>
            --                 decode_error <= '1';
            --         end case;
            --      when "110" => -- ORI
            --         result <= registerfile_rdata_rs1 or decode_imm(instruction);

            --      when "111" => -- ANDI
            --         result <= registerfile_rdata_rs1 and decode_imm(instruction);

            --      when others =>
            --          decode_error <= '1';

            -- end case;
        --end if;
    end process;



    i_result(0) <= registerfile_rdata_rs1 + decode_imm(instruction);
    i_result(1) <=  DoShift(registerfile_rdata_rs1, to_integer(unsigned(decode_imm(instruction)(4 downto 0))), false, true);
    i_result(2) <= X"00000001" when  signed(registerfile_rdata_rs1) < signed(decode_imm(instruction)) else X"00000000";
    i_result(3) <= X"00000001" when   unsigned(registerfile_rdata_rs1) < unsigned(decode_imm(instruction)) else X"00000000";
    i_result(4) <= registerfile_rdata_rs1 xor decode_imm(instruction);

    i_result(6) <= registerfile_rdata_rs1 or decode_imm(instruction);
    i_result(7) <= registerfile_rdata_rs1 and decode_imm(instruction);

    i_result(5) <=  DoShift(registerfile_rdata_rs1, to_integer(unsigned(decode_imm(instruction)(4 downto 0))), false, false) when funct7 = "0000000" else  DoShift(registerfile_rdata_rs1, to_integer(unsigned(decode_imm(instruction)(4 downto 0))), true, false) when funct7 = "0100000" else (others => '0');


    result <= i_result(to_integer(unsigned(funct3)));






end behavioural;