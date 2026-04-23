library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- CSR instruction execution unit.
-- Handles: CSRRW, CSRRS, CSRRC (register variants, funct3 bit2=0)
--          CSRRWI, CSRRSI, CSRRCI (immediate variants, funct3 bit2=1)
--
-- result    = old CSR value  → written to rd by the register file
-- csr_wdata = new CSR value  → written to the CSR register file in cpu.vhd
--
-- The actual CSR register read and write happen externally:
--   - csr_rdata is supplied combinatorially by cpu.vhd's read mux
--   - csr_wdata / csr_we are consumed by cpu.vhd's clocked process
entity eu_csr is
  Port (
    reg_rs1   : in std_logic_vector(31 downto 0);
    rs1_addr  : in std_logic_vector(4 downto 0);  -- instruction[19:15]; doubles as zimm
    funct3    : in std_logic_vector(2 downto 0);
    pc        : in std_logic_vector(31 downto 0);
    csr_rdata : in std_logic_vector(31 downto 0);

    result         : out std_logic_vector(31 downto 0);  -- old CSR value → rd
    next_pc        : out std_logic_vector(31 downto 0);
    csr_wdata      : out std_logic_vector(31 downto 0);  -- new CSR value
    csr_we         : out std_logic;
    use_rs1        : out std_logic;
    use_rd         : out std_logic;
    execution_done : out std_logic;
    decode_error   : out std_logic
  );
end eu_csr;

architecture behavioural of eu_csr is
    signal zimm : std_logic_vector(31 downto 0);
begin

    -- Zero-extend the 5-bit rs1 field to form the immediate operand
    zimm <= X"000000" & "000" & rs1_addr;

    -- rd always receives the old CSR value (before modification)
    result <= csr_rdata;

    next_pc        <= pc + X"00000004";
    execution_done <= '1';
    decode_error   <= '0';
    use_rd         <= '1';

    process(funct3, csr_rdata, reg_rs1, zimm, rs1_addr)
    begin
        csr_we  <= '1';
        use_rs1 <= '0';

        case funct3 is
            -- Register variants (operand = rs1)
            when "001" =>  -- CSRRW: CSR = rs1
                csr_wdata <= reg_rs1;
                use_rs1   <= '1';

            when "010" =>  -- CSRRS: CSR = CSR | rs1
                csr_wdata <= csr_rdata or reg_rs1;
                use_rs1   <= '1';
                -- spec: don't write if rs1 = x0 (no side-effect write)
                if rs1_addr = "00000" then csr_we <= '0'; end if;

            when "011" =>  -- CSRRC: CSR = CSR & ~rs1
                csr_wdata <= csr_rdata and not reg_rs1;
                use_rs1   <= '1';
                if rs1_addr = "00000" then csr_we <= '0'; end if;

            -- Immediate variants (operand = zimm)
            when "101" =>  -- CSRRWI: CSR = zimm
                csr_wdata <= zimm;

            when "110" =>  -- CSRRSI: CSR = CSR | zimm
                csr_wdata <= csr_rdata or zimm;
                if rs1_addr = "00000" then csr_we <= '0'; end if;

            when "111" =>  -- CSRRCI: CSR = CSR & ~zimm
                csr_wdata <= csr_rdata and not zimm;
                if rs1_addr = "00000" then csr_we <= '0'; end if;

            when others =>
                csr_wdata <= (others => '0');
                csr_we    <= '0';
        end case;
    end process;

end behavioural;
