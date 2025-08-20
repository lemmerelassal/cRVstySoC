-- WIP
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity eu_b is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    imm, reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

    next_pc : out std_logic_vector(31 downto 0)
  );
end eu_b;

architecture behavioural of eu_b is
        type word_t is array (natural range <>) of std_logic_vector(31 downto 0);
    signal i_next_pc : word_t(7 downto 0);

begin

    

    i_next_pc(0) <= pc + imm when  signed(reg_rs1) = signed(reg_rs2) else pc + X"00000004";
    i_next_pc(1) <= pc + imm when  signed(reg_rs1) /= signed(reg_rs2) else pc + X"00000004";
    i_next_pc(4) <= pc + imm when  signed(reg_rs1) < signed(reg_rs2) else pc + X"00000004";
    i_next_pc(5) <= pc + imm when  signed(reg_rs1) >= signed(reg_rs2) else pc + X"00000004";
    i_next_pc(6) <= pc + imm when  unsigned(reg_rs1) < unsigned(reg_rs2) else pc + X"00000004";
    i_next_pc(7) <= pc + imm when  unsigned(reg_rs1) >= unsigned(reg_rs2) else pc + X"00000004";

    next_pc <= i_next_pc(to_integer(unsigned(funct3)));
    
-- decode error not implemented yet


end behavioural;