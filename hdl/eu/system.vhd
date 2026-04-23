library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Handles FENCE (opcode 0001111) and the funct3=000 subset of opcode 1110011:
--   ECALL  (funct12 = 000000000000): trap to mtvec, mcause = 11
--   EBREAK (funct12 = 000000000001): trap to mtvec, mcause =  3
--   MRET   (funct12 = 001100000010): return from trap, next_pc = mepc
--   WFI    (funct12 = 000100000101): NOP (no hardware interrupt support yet)
--
-- CSR instructions (funct3 != 000) are decoded as CSR_TYPE by the opcode
-- decoder and handled by eu_csr, so they never reach this unit.
--
-- mtvec and mepc are supplied from cpu.vhd's CSR register signals.
-- mepc / mcause writes on trap are done in cpu.vhd's clocked process via
-- the trap_we / trap_cause outputs.
entity eu_system is
  Port (
    pc      : in std_logic_vector(31 downto 0);
    opcode7 : in std_logic_vector(6 downto 0);   -- instruction[6:0]
    funct3  : in std_logic_vector(2 downto 0);   -- instruction[14:12]
    funct12 : in std_logic_vector(11 downto 0);  -- instruction[31:20]
    mtvec   : in std_logic_vector(31 downto 0);
    mepc    : in std_logic_vector(31 downto 0);

    next_pc        : out std_logic_vector(31 downto 0);
    trap_we        : out std_logic;
    trap_cause     : out std_logic_vector(31 downto 0);
    execution_done : out std_logic;
    decode_error   : out std_logic
  );
end eu_system;

architecture behavioural of eu_system is
begin
    process(pc, opcode7, funct3, funct12, mtvec, mepc)
    begin
        -- Defaults
        next_pc        <= pc + X"00000004";
        trap_we        <= '0';
        trap_cause     <= (others => '0');
        execution_done <= '1';
        decode_error   <= '0';

        if opcode7 = "0001111" then
            -- FENCE / FENCE.I: NOP for this in-order CPU
            null;

        elsif opcode7 = "1110011" then
            -- funct3=000: ECALL / EBREAK / MRET / WFI
            -- (funct3 != 000 is CSR_TYPE and never reaches here)
            case funct12 is
                when "000000000000" =>  -- ECALL
                    next_pc    <= mtvec;
                    trap_we    <= '1';
                    trap_cause <= X"0000000B";  -- mcause 11: M-mode environment call

                when "000000000001" =>  -- EBREAK
                    next_pc    <= mtvec;
                    trap_we    <= '1';
                    trap_cause <= X"00000003";  -- mcause 3: breakpoint

                when "001100000010" =>  -- MRET
                    next_pc <= mepc;

                when "000100000101" =>  -- WFI (wait-for-interrupt): treat as NOP
                    null;

                when others =>
                    decode_error <= '1';
            end case;
        end if;
    end process;
end behavioural;
