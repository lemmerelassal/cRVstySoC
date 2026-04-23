
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_r is

  Port (
    reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);

    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic

  );
end eu_r;

architecture behavioural of eu_r is

    type word_t is array (natural range <>) of std_logic_vector(31 downto 0);
    signal i_result : word_t(7 downto 0);

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

    -- M-extension: 66-bit products (33-bit operands) to capture full signed result
    -- Lower 64 bits hold the mathematical product; upper 2 bits are sign extension.
    signal product_ss  : signed(65 downto 0);   -- signed   × signed   (MUL, MULH)
    signal product_uu  : unsigned(63 downto 0);  -- unsigned × unsigned (MULHU)
    signal product_su  : signed(65 downto 0);    -- signed   × unsigned (MULHSU)

    -- M-extension: division and remainder with special-case handling
    signal quot_s  : signed(31 downto 0);
    signal rem_s   : signed(31 downto 0);
    signal quot_u  : unsigned(31 downto 0);
    signal rem_u   : unsigned(31 downto 0);

    constant INT_MIN : signed(31 downto 0) := x"80000000";
    constant NEG_ONE : signed(31 downto 0) := x"FFFFFFFF";

begin

    -- -----------------------------------------------------------------------
    -- Multiplications (combinational)
    -- -----------------------------------------------------------------------
    -- Extend operands to 33 bits so the 66-bit product holds the exact result
    -- for all signed-×-signed and signed-×-unsigned combinations.
    product_ss <= resize(signed(reg_rs1), 33) * resize(signed(reg_rs2), 33);
    product_uu <= unsigned(reg_rs1) * unsigned(reg_rs2);
    -- For MULHSU: sign-extend rs1, zero-extend rs2 (MSB=0 keeps it non-negative)
    product_su <= resize(signed(reg_rs1), 33) * signed(resize(unsigned(reg_rs2), 33));

    -- -----------------------------------------------------------------------
    -- Signed division / remainder (handles divide-by-zero and overflow)
    -- -----------------------------------------------------------------------
    process(reg_rs1, reg_rs2)
    begin
        if signed(reg_rs2) = 0 then
            quot_s <= (others => '1');    -- DIV  x/0 = -1
            rem_s  <= signed(reg_rs1);   -- REM  x/0 = x
        elsif signed(reg_rs1) = INT_MIN and signed(reg_rs2) = NEG_ONE then
            quot_s <= INT_MIN;           -- overflow: INT_MIN / -1 = INT_MIN
            rem_s  <= (others => '0');   -- INT_MIN rem -1 = 0
        else
            quot_s <= signed(reg_rs1) / signed(reg_rs2);
            rem_s  <= signed(reg_rs1) rem signed(reg_rs2);
        end if;
    end process;

    -- -----------------------------------------------------------------------
    -- Unsigned division / remainder (handles divide-by-zero)
    -- -----------------------------------------------------------------------
    process(reg_rs1, reg_rs2)
    begin
        if unsigned(reg_rs2) = 0 then
            quot_u <= (others => '1');         -- DIVU  x/0 = 0xFFFFFFFF
            rem_u  <= unsigned(reg_rs1);       -- REMU  x/0 = x
        else
            quot_u <= unsigned(reg_rs1) / unsigned(reg_rs2);
            rem_u  <= unsigned(reg_rs1) rem unsigned(reg_rs2);
        end if;
    end process;

    -- -----------------------------------------------------------------------
    -- Result mux: funct3 selects column, funct7 selects base vs M-extension
    -- -----------------------------------------------------------------------
    -- funct3=000  ADD / SUB / MUL
    i_result(0) <= std_logic_vector(product_ss(31 downto 0))  when funct7 = "0000001"  -- MUL
              else reg_rs1 + reg_rs2                           when funct7 = "0000000"  -- ADD
              else reg_rs1 - reg_rs2                           when funct7 = "0100000"  -- SUB
              else (others => '0');

    -- funct3=001  SLL / MULH
    i_result(1) <= std_logic_vector(product_ss(63 downto 32)) when funct7 = "0000001"  -- MULH
              else DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, true);  -- SLL

    -- funct3=010  SLT / MULHSU
    i_result(2) <= std_logic_vector(product_su(63 downto 32)) when funct7 = "0000001"  -- MULHSU
              else X"00000001"                                  when signed(reg_rs1) < signed(reg_rs2)  -- SLT
              else (others => '0');

    -- funct3=011  SLTU / MULHU
    i_result(3) <= std_logic_vector(product_uu(63 downto 32)) when funct7 = "0000001"  -- MULHU
              else X"00000001"                                  when unsigned(reg_rs1) < unsigned(reg_rs2)  -- SLTU
              else (others => '0');

    -- funct3=100  XOR / DIV
    i_result(4) <= std_logic_vector(quot_s) when funct7 = "0000001"  -- DIV
              else reg_rs1 xor reg_rs2;                               -- XOR

    -- funct3=101  SRL / SRA / DIVU
    i_result(5) <= std_logic_vector(quot_u)                                                              when funct7 = "0000001"  -- DIVU
              else DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), false, false)             when funct7 = "0000000"  -- SRL
              else DoShift(reg_rs1, to_integer(unsigned(reg_rs2(4 downto 0))), true,  false)             when funct7 = "0100000"  -- SRA
              else (others => '0');

    -- funct3=110  OR / REM
    i_result(6) <= std_logic_vector(rem_s) when funct7 = "0000001"  -- REM (signed)
              else reg_rs1 or reg_rs2;                               -- OR

    -- funct3=111  AND / REMU
    i_result(7) <= std_logic_vector(rem_u) when funct7 = "0000001"  -- REMU (unsigned)
              else reg_rs1 and reg_rs2;                              -- AND

    result <= i_result(to_integer(unsigned(funct3)));

    use_rs1 <= '1';
    use_rs2 <= '1';
    use_rd <= '1';
    next_pc <= pc + X"00000004";
    decode_error <= '0';
    execution_done <= '1';

end behavioural;
