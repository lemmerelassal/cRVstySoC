library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

LIBRARY work;
USE work.mylibrary.ALL;

entity cpu is
    generic (
        entry_point : std_logic_vector(31 downto 0) := X"80010000";
        mtvec_init  : std_logic_vector(31 downto 0) := X"80010000"  -- trap vector base
    );

  Port (
    rst, clk : in std_logic;

    -- Instruction memory bus
    inst_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    inst_addr : out std_logic_vector(31 downto 0);
    inst_rdata : in std_logic_vector(31 downto 0);
    inst_re : out std_logic;
    inst_rdy : in std_logic;

    -- Data memory bus
    data_width : out std_logic_vector(1 downto 0); -- "00" -> 1 byte, "01" -> 2 bytes, "10" -> 4 bytes, "11" -> invalid / 8 bytes for RV64
    data_addr, data_wdata : out std_logic_vector(31 downto 0);
    data_rdata : in std_logic_vector(31 downto 0);
    data_re, data_we : out std_logic;
    data_rdy, data_wack : in std_logic;

    fifo_we : out std_logic;
    fifo_full : in std_logic;
    fifo_wdata : out std_logic_vector(63 downto 0)

  );
end cpu;

architecture behavioural of cpu is

    



    signal pc, reg_rs1, reg_rs2 : std_logic_vector(31 downto 0);

    -- -----------------------------------------------------------------------
    -- CSR register file (M-mode, minimal set)
    -- -----------------------------------------------------------------------
    signal csr_mstatus  : std_logic_vector(31 downto 0) := (others => '0');
    signal csr_mtvec    : std_logic_vector(31 downto 0) := mtvec_init;
    signal csr_mscratch : std_logic_vector(31 downto 0) := (others => '0');
    signal csr_mepc     : std_logic_vector(31 downto 0) := (others => '0');
    signal csr_mcause   : std_logic_vector(31 downto 0) := (others => '0');
    signal csr_mtval    : std_logic_vector(31 downto 0) := (others => '0');

    -- CSR read mux output (combinational, fed to eu_csr)
    signal csr_rdata : std_logic_vector(31 downto 0);
    signal csr_addr  : std_logic_vector(11 downto 0);  -- instruction[31:20]

    -- eu_csr write outputs
    signal eu_csr_wdata : std_logic_vector(31 downto 0);
    signal eu_csr_we    : std_logic;

    -- eu_system trap outputs
    signal system_trap_we    : std_logic;
    signal system_trap_cause : std_logic_vector(31 downto 0);

    -- -----------------------------------------------------------------------
    -- RV32A: LR/SC reservation register
    -- -----------------------------------------------------------------------
    signal lr_valid : std_logic := '0';
    signal lr_addr  : std_logic_vector(31 downto 0) := (others => '0');

    -- eu_a control signals
    signal eu_a_data_re    : std_logic;
    signal eu_a_data_we    : std_logic;
    signal eu_a_lr_we      : std_logic;
    signal eu_a_lr_valid   : std_logic;
    signal eu_a_lr_addr    : std_logic_vector(31 downto 0);

    signal funct7 : std_logic_vector(6 downto 0);
    signal funct3 : std_logic_vector(2 downto 0);
    signal rs1, rs2, rd : std_logic_vector(4 downto 0);

    signal regfile_we : std_logic;


    


        type opcode_bit_t is array (opcode_t) of std_logic;


    signal execution_done, use_rd, use_rs1, use_rs2, decode_error, dwe, selected : opcode_bit_t := (others => '0');
   
   
   
   
   
    signal next_pc : opcode_array_t := (others => (others => '0'));
    signal result :  opcode_array_t := (others => (others => '0'));
    signal wdata : opcode_array_t := (others => (others => '0'));
    signal daddr : opcode_array_t := (others => (others => '0'));
    signal i_result : std_logic_vector(31 downto 0);


attribute keep : string;
attribute keep of result, i_result, execution_done, use_rd, use_rs1, use_rs2, decode_error, dwe, selected, next_pc, wdata, daddr : signal is "true";





signal opcode : opcode_t;
signal imm : std_logic_vector(31 downto 0);

begin

    fifo_wdata <= inst_rdata & pc;
    
    
  

    i_result <= result(opcode);
    inst_addr <= pc;
    inst_re <= '1';
    inst_width <= "10";

    data_addr  <= daddr(opcode);
    data_wdata <= wdata(opcode);
    data_we    <= dwe(opcode);
    -- data_re: eu_a during AMO; eu_l will join here when uncommented
    data_re    <= eu_a_data_re when opcode = A_TYPE else '0';

    -- Route eu_a's write-enable into the shared dwe array
    dwe(A_TYPE) <= eu_a_data_we;

    -- selected: tells eu_a when it is the active EU
    selected(A_TYPE) <= '1' when opcode = A_TYPE else '0';

    funct7   <= inst_rdata(31 downto 25);
    csr_addr <= inst_rdata(31 downto 20);
    rs2      <= inst_rdata(24 downto 20);
    rs1      <= inst_rdata(19 downto 15);
    funct3   <= inst_rdata(14 downto 12);
    rd       <= inst_rdata(11 downto 7);

    -- CSR read mux (combinational)
    process(csr_addr, csr_mstatus, csr_mtvec, csr_mscratch, csr_mepc, csr_mcause, csr_mtval)
    begin
        case csr_addr is
            when X"300" => csr_rdata <= csr_mstatus;
            when X"305" => csr_rdata <= csr_mtvec;
            when X"340" => csr_rdata <= csr_mscratch;
            when X"341" => csr_rdata <= csr_mepc;
            when X"342" => csr_rdata <= csr_mcause;
            when X"343" => csr_rdata <= csr_mtval;
            when others => csr_rdata <= (others => '0');
        end case;
    end process;


    regfile_we <= execution_done(opcode) and use_rd(opcode);

    opcodedecoder_inst : entity work.opcodedecoder(behavioural) PORT MAP(
        instruction => inst_rdata,
        opcode => opcode
    );


    immdecoder_inst : entity work.immdecoder(behavioural) PORT MAP(
        instruction => inst_rdata,
        imm => imm
    );

    regfile_inst : entity work.regfile(behavioural) PORT MAP(
                rst => rst, clk => clk, we => regfile_we,
            rd => rd, rs1 => rs1, rs2 => rs2,
            result => i_result,
            rs1_out => reg_rs1, rs2_out => reg_rs2
    );
    


    process(rst, clk,execution_done, next_pc, opcode)
    begin
        if rst = '1' then
            pc <= entry_point;
                fifo_we <= '1';
        elsif rising_edge(clk) then

-- if (opcode = B_TYPE) or (opcode = J_TYPE_JAL) or (opcode = J_TYPE_JALR) then
--     fifo_we <= '1';
--     end if;

            -- LR/SC reservation: updated mid-AMO (before execution_done)
            if eu_a_lr_we = '1' then
                lr_valid <= eu_a_lr_valid;
                lr_addr  <= eu_a_lr_addr;
            end if;

            if execution_done(opcode) = '1' then
                pc <= next_pc(opcode);

                -- ECALL / EBREAK: save trap state
                if system_trap_we = '1' and opcode = SYSTEM then
                    csr_mepc   <= pc;
                    csr_mcause <= system_trap_cause;
                end if;

                -- CSR instruction write
                if eu_csr_we = '1' and opcode = CSR_TYPE then
                    case csr_addr is
                        when X"300" => csr_mstatus  <= eu_csr_wdata;
                        when X"305" => csr_mtvec    <= eu_csr_wdata;
                        when X"340" => csr_mscratch <= eu_csr_wdata;
                        when X"341" => csr_mepc     <= eu_csr_wdata;
                        when X"342" => csr_mcause   <= eu_csr_wdata;
                        when X"343" => csr_mtval    <= eu_csr_wdata;
                        when others => null;
                    end case;
                end if;
            end if;


            fifo_we <= '0';
            if fifo_full = '0' then
                fifo_we <= '1';
            end if;
            
        end if;
    end process;





   




    -- eu_l_inst : entity work.eu_l(behavioural) PORT MAP(
    --     imm => imm,
    --     pc => pc,
    --     reg_rs1 => reg_rs1,
    --     data_rdata => data_rdata,
    --     data_rdy => data_rdy,
    --     funct3 => funct3,
    --     result => result(I_TYPE_LOAD),
    --     next_pc => next_pc(I_TYPE_LOAD),
    --     daddr => daddr(I_TYPE_LOAD),
    --     use_rs1 => use_rs1(I_TYPE_LOAD),
    --     use_rd => use_rd(I_TYPE_LOAD),
    --     execution_done => execution_done(I_TYPE_LOAD),
    --     decode_error => decode_error(I_TYPE_LOAD)
    -- );

    --     eu_s_inst : entity work.eu_s(behavioural) PORT MAP (

    --     imm => imm,
    --     pc => pc,
    --     reg_rs1 => reg_rs1,
    --     reg_rs2 => reg_rs2,
    --     data_wack => data_wack ,
    --     selected => selected(S_TYPE),

    --     result => result(S_TYPE),
    --     next_pc => next_pc(S_TYPE),
    --     daddr => daddr(S_TYPE),
    --     wdata => wdata(S_TYPE),
    --     use_rs1 => use_rs1(S_TYPE),
    --     use_rs2 => use_rs2(S_TYPE),
    --     execution_done => execution_done(S_TYPE),
    --     decode_error => decode_error(S_TYPE),
    --     dwe => dwe(S_TYPE)

    -- );


    -- eu_lui_inst: entity work.eu_lui(behavioural) PORT MAP(
    --     pc => pc,
    --     imm => imm,
    --     use_rd => use_rd(U_TYPE_LUI),
    --     execution_done => execution_done(U_TYPE_LUI),
    --     decode_error => decode_error(U_TYPE_LUI),
    --     next_pc => next_pc(U_TYPE_LUI) ,
    --     result => result(U_TYPE_LUI)

    -- );

    
    -- eu_auipc_inst: entity work.eu_auipc(behavioural) PORT MAP(
    --     pc => pc,
    --     imm => imm,
    --     use_rd => use_rd(U_TYPE_AUIPC),
    --     execution_done => execution_done(U_TYPE_AUIPC),
    --     decode_error => decode_error(U_TYPE_AUIPC),
    --     next_pc => next_pc(U_TYPE_AUIPC) ,
    --     result => result(U_TYPE_AUIPC)

    -- );
    



    

    


    eu_r_inst: entity work.eu_r(behavioural) PORT MAP(
        reg_rs1 => reg_rs1,
        reg_rs2 => reg_rs2,
        pc => pc,
        funct7 => funct7,
        funct3 => funct3,
        use_rd => use_rd(R_TYPE),
        use_rs1 => use_rs1(R_TYPE),
         use_rs2 => use_rs2(R_TYPE),
        execution_done => execution_done(R_TYPE),
        decode_error => decode_error(R_TYPE),

        result => result(R_TYPE),
        next_pc => next_pc(R_TYPE)
    );

        eu_i_inst: entity work.eu_i(behavioural) PORT MAP(
        reg_rs1 => reg_rs1,
        imm => imm,
        pc => pc,
        funct7 => funct7,
        funct3 => funct3,
        use_rd => use_rd(I_TYPE),
        use_rs1 => use_rs1(I_TYPE),
        execution_done => execution_done(I_TYPE),
        decode_error => decode_error(I_TYPE),

        result => result(I_TYPE),
        next_pc => next_pc(I_TYPE)
    );
    

    eu_b_inst :  entity work.eu_b(behavioural) PORT MAP (
        imm => imm,

        reg_rs1 => reg_rs1,
        reg_rs2 => reg_rs2,
        pc => pc,
        funct3 => funct3,
        execution_done => execution_done(B_TYPE),

        next_pc => next_pc(B_TYPE)
    );

    eu_system_inst : entity work.eu_system(behavioural) PORT MAP (
        pc             => pc,
        opcode7        => inst_rdata(6 downto 0),
        funct3         => funct3,
        funct12        => csr_addr,
        mtvec          => csr_mtvec,
        mepc           => csr_mepc,
        next_pc        => next_pc(SYSTEM),
        trap_we        => system_trap_we,
        trap_cause     => system_trap_cause,
        execution_done => execution_done(SYSTEM),
        decode_error   => decode_error(SYSTEM)
    );

    eu_a_inst : entity work.eu_a(behavioural) PORT MAP (
        clk            => clk,
        rst            => rst,
        selected       => selected(A_TYPE),
        reg_rs1        => reg_rs1,
        reg_rs2        => reg_rs2,
        pc             => pc,
        funct5         => inst_rdata(31 downto 27),
        data_rdata     => data_rdata,
        data_rdy       => data_rdy,
        data_wack      => data_wack,
        lr_valid_in    => lr_valid,
        lr_addr_in     => lr_addr,
        lr_we          => eu_a_lr_we,
        lr_valid_out   => eu_a_lr_valid,
        lr_addr_out    => eu_a_lr_addr,
        result         => result(A_TYPE),
        next_pc        => next_pc(A_TYPE),
        daddr          => daddr(A_TYPE),
        wdata          => wdata(A_TYPE),
        data_re        => eu_a_data_re,
        data_we        => eu_a_data_we,
        use_rs1        => use_rs1(A_TYPE),
        use_rs2        => use_rs2(A_TYPE),
        use_rd         => use_rd(A_TYPE),
        execution_done => execution_done(A_TYPE),
        decode_error   => decode_error(A_TYPE)
    );

    eu_csr_inst : entity work.eu_csr(behavioural) PORT MAP (
        reg_rs1        => reg_rs1,
        rs1_addr       => rs1,
        funct3         => funct3,
        pc             => pc,
        csr_rdata      => csr_rdata,
        result         => result(CSR_TYPE),
        next_pc        => next_pc(CSR_TYPE),
        csr_wdata      => eu_csr_wdata,
        csr_we         => eu_csr_we,
        use_rs1        => use_rs1(CSR_TYPE),
        use_rd         => use_rd(CSR_TYPE),
        execution_done => execution_done(CSR_TYPE),
        decode_error   => decode_error(CSR_TYPE)
    );

    --     eu_jal_inst: entity work.eu_jal(behavioural) PORT MAP(
    --     pc => pc,
    --     imm => imm,
    --     use_rd => use_rd(J_TYPE_JAL),
    --     execution_done => execution_done(J_TYPE_JAL),
    --     decode_error => decode_error(J_TYPE_JAL),

    --     result => result(J_TYPE_JAL),
    --     next_pc => next_pc(J_TYPE_JAL)
    -- );

    -- eu_jalr_inst: entity work.eu_jalr(behavioural) PORT MAP(
    --     reg_rs1 => reg_rs1,
    --     pc => pc,
    --     imm => imm,
    --     use_rd => use_rd(J_TYPE_JALR),
    --     use_rs1 => use_rs1(J_TYPE_JALR),
    --     execution_done => execution_done(J_TYPE_JALR),
    --     decode_error => decode_error(J_TYPE_JALR),

    --     result => result(J_TYPE_JALR),
    --     next_pc => next_pc(J_TYPE_JALR)
    -- );






end behavioural;