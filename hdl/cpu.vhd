library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

LIBRARY work;
USE work.mylibrary.ALL;

entity cpu is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

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
    data_rdy, data_wack : in std_logic
  );
end cpu;

architecture behavioural of cpu is

    



    signal pc, reg_rs1, reg_rs2 : std_logic_vector(31 downto 0);

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


  

    i_result <= result(opcode);
    inst_addr <= pc;
    inst_re <= '1';
    inst_width <= "10";

    data_addr <= daddr(opcode);
    data_wdata <= wdata(opcode);
    data_we <= dwe(opcode);

    funct7 <= inst_rdata(31 downto 25);
    rs2 <= inst_rdata(24 downto 20);
    rs1 <= inst_rdata(19 downto 15);
    funct3 <= inst_rdata(14 downto 12);
    rd <= inst_rdata(11 downto 7);


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
        elsif rising_edge(clk) then
            if execution_done(opcode) = '1' then
                pc <= next_pc(opcode);
            end if;
            
        end if;
    end process;






   




    eu_l_inst : entity work.eu_l(behavioural) PORT MAP(
        imm => imm,
        pc => pc,
        reg_rs1 => reg_rs1,
        data_rdata => data_rdata,
        data_rdy => data_rdy,
        funct3 => funct3,
        result => result(I_TYPE_LOAD),
        next_pc => next_pc(I_TYPE_LOAD),
        daddr => daddr(I_TYPE_LOAD),
        use_rs1 => use_rs1(I_TYPE_LOAD),
        use_rd => use_rd(I_TYPE_LOAD),
        execution_done => execution_done(I_TYPE_LOAD),
        decode_error => decode_error(I_TYPE_LOAD)
    );

        eu_s_inst : entity work.eu_s(behavioural) PORT MAP (

        imm => imm,
        pc => pc,
        reg_rs1 => reg_rs1,
        reg_rs2 => reg_rs2,
        data_wack => data_wack ,
        selected => selected(S_TYPE),

        result => result(S_TYPE),
        next_pc => next_pc(S_TYPE),
        daddr => daddr(S_TYPE),
        wdata => wdata(S_TYPE),
        use_rs1 => use_rs1(S_TYPE),
        use_rs2 => use_rs2(S_TYPE),
        execution_done => execution_done(S_TYPE),
        decode_error => decode_error(S_TYPE),
        dwe => dwe(S_TYPE)

    );


    eu_lui_inst: entity work.eu_lui(behavioural) PORT MAP(
        pc => pc,
        imm => imm,
        use_rd => use_rd(U_TYPE_LUI),
        execution_done => execution_done(U_TYPE_LUI),
        decode_error => decode_error(U_TYPE_LUI),
        next_pc => next_pc(U_TYPE_LUI) ,
        result => result(U_TYPE_LUI)

    );

    
    eu_auipc_inst: entity work.eu_auipc(behavioural) PORT MAP(
        pc => pc,
        imm => imm,
        use_rd => use_rd(U_TYPE_AUIPC),
        execution_done => execution_done(U_TYPE_AUIPC),
        decode_error => decode_error(U_TYPE_AUIPC),
        next_pc => next_pc(U_TYPE_AUIPC) ,
        result => result(U_TYPE_AUIPC)

    );
    

    eu_jal_inst: entity work.eu_jal(behavioural) PORT MAP(
        pc => pc,
        imm => imm,
        use_rd => use_rd(J_TYPE_JAL),
        execution_done => execution_done(J_TYPE_JAL),
        decode_error => decode_error(J_TYPE_JAL),

        result => result(J_TYPE_JAL),
        next_pc => next_pc(J_TYPE_JAL)
    );

    eu_jalr_inst: entity work.eu_jalr(behavioural) PORT MAP(
        reg_rs1 => reg_rs1,
        pc => pc,
        imm => imm,
        use_rd => use_rd(J_TYPE_JALR),
        use_rs1 => use_rs1(J_TYPE_JALR),
        execution_done => execution_done(J_TYPE_JALR),
        decode_error => decode_error(J_TYPE_JALR),

        result => result(J_TYPE_JALR),
        next_pc => next_pc(J_TYPE_JALR)
    );

    

    


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

        next_pc => next_pc(B_TYPE)
    );







end behavioural;