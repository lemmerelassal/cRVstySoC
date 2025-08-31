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


    component regfile is
        Port (
            rst, clk, we : in std_logic;
            rd, rs1, rs2 : in std_logic_vector(4 downto 0);
            result : in std_logic_vector(31 downto 0);
            rs1_out, rs2_out : out std_logic_vector(31 downto 0)
        );
    end component;


        type opcode_bit_t is array (opcode_t) of std_logic;


    signal execution_done, use_rd, use_rs1, use_rs2, decode_error, dwe, selected : opcode_bit_t := (others => '0');
   
   
   
   
   
    signal next_pc : opcode_array_t := (others => (others => '0'));
    signal result :  opcode_array_t := (others => (others => '0'));
    signal wdata : opcode_array_t := (others => (others => '0'));
    signal daddr : opcode_array_t := (others => (others => '0'));
    signal i_result : std_logic_vector(31 downto 0);


attribute keep : string;
attribute keep of result, i_result, execution_done, use_rd, use_rs1, use_rs2, decode_error, dwe, selected, next_pc, wdata, daddr : signal is "true";

    -- type opcode_t is (R_TYPE, I_TYPE, I_TYPE_LOAD, S_TYPE, B_TYPE, U_TYPE_LUI, U_TYPE_AUIPC, J_TYPE_JAL, J_TYPE_JALR);
    -- type opcode_array_t is array (opcode_t) of std_logic_vector(31 downto 0);
    -- signal res : opcode_array_t;


    -- constant R_TYPE         : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)
    -- constant I_TYPE         : std_logic_vector(6 downto 0) := "0010011"; -- Register/Immediate (ADDI, ...)
    -- constant I_TYPE_LOAD    : std_logic_vector(6 downto 0) := "0000011";
    -- constant S_TYPE         : std_logic_vector(6 downto 0) := "0100011"; -- Store (SB, SH, SW)
    -- constant B_TYPE         : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    -- constant U_TYPE_LUI     : std_logic_vector(6 downto 0) := "0110111"; -- LUI
    -- constant U_TYPE_AUIPC   : std_logic_vector(6 downto 0) := "0010111"; -- AUIPC
    -- constant J_TYPE_JAL     : std_logic_vector(6 downto 0) := "1101111"; -- JAL
    -- constant J_TYPE_JALR    : std_logic_vector(6 downto 0) := "1100111"; -- JALR

    -- components
   component eu_auipc is

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    next_pc, result : out std_logic_vector(31 downto 0)

  );
end component;

    component eu_lui is

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    next_pc, result : out std_logic_vector(31 downto 0)

  );
end component;

    component eu_jal is

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    result, next_pc : out std_logic_vector(31 downto 0)

  );
end component;


component eu_jalr is

  Port (
    reg_rs1,pc, imm : in std_logic_vector(31 downto 0);

    use_rd, use_rs1, execution_done, decode_error : out std_logic;

    result, next_pc : out std_logic_vector(31 downto 0)
  );
end component;


component eu_r is

    PORT (

        reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);
    
    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic
    );
end component;


component eu_b is

  Port (
    imm, reg_rs1, reg_rs2, pc : in std_logic_vector(31 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

    next_pc : out std_logic_vector(31 downto 0)
  );
end component;

component eu_i is

    PORT (

        reg_rs1, imm, pc : in std_logic_vector(31 downto 0);
    
    funct7 : in std_logic_vector(6 downto 0);
    funct3 : in std_logic_vector(2 downto 0);

     result, next_pc : out std_logic_vector(31 downto 0);
    use_rs1,use_rd, execution_done, decode_error : out std_logic
    );
end component;

component eu_s is

  Port (
    imm, pc, reg_rs1, reg_rs2 : in std_logic_vector(31 downto 0);
    data_wack, selected : in std_logic;

    result, next_pc, daddr, wdata : out std_logic_vector(31 downto 0);
    use_rs1, use_rs2, execution_done, decode_error, dwe : out std_logic
  );
end component;


component eu_l is

  Port (
    imm, pc, reg_rs1, data_rdata : in std_logic_vector(31 downto 0);
    data_rdy : in std_logic;
    funct3 : in std_logic_vector(2 downto 0);

    result, next_pc, daddr : out std_logic_vector(31 downto 0);
    use_rs1, use_rd, execution_done, decode_error : out std_logic




  );
end component;


component opcodedecoder IS
    PORT (
        instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        opcode : OUT opcode_t
    );
END component;


component immdecoder IS
    PORT (
        instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        imm : OUT STD_LOGIC_VECTOR(31 downto 0)
    );
END component;




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

    opcodedecoder_inst : opcodedecoder PORT MAP(
        instruction => inst_rdata,
        opcode => opcode
    );


    immdecoder_inst : immdecoder PORT MAP(
        instruction => inst_rdata,
        imm => imm
    );

    regfile_inst : regfile PORT MAP(
                rst => rst, clk => clk, we => regfile_we,
            rd => rd, rs1 => rs1, rs2 => rs2,
            result => i_result,
            rs1_out => reg_rs1, rs2_out => reg_rs2
    );
    


    process(rst, clk)
    begin
        if rst = '1' then
            pc <= entry_point;
        elsif rising_edge(clk) then
            if execution_done(opcode) = '1' then
                pc <= next_pc(opcode);
            end if;
            
        end if;
    end process;






   




    -- eu_l_inst : eu_l PORT MAP(
    --     imm => imm,
    --     pc => pc,
    --     reg_rs1 => reg_rs1,
    --     data_rdata => data_rdata,
    --     data_rdy => data_rdy,
    --     funct3 => funct3,
    --     result => result(to_integer(unsigned(I_TYPE_LOAD))),
    --     next_pc => next_pc(to_integer(unsigned(I_TYPE_LOAD))),
    --     daddr => daddr(to_integer(unsigned(I_TYPE_LOAD))),
    --     use_rs1 => use_rs1(to_integer(unsigned(I_TYPE_LOAD))),
    --     use_rd => use_rd(to_integer(unsigned(I_TYPE_LOAD))),
    --     execution_done => execution_done(to_integer(unsigned(I_TYPE_LOAD))),
    --     decode_error => decode_error(to_integer(unsigned(I_TYPE_LOAD)))
    -- );

        -- eu_s_inst : eu_s PORT MAP (

    --     imm => imm_s,
    --     pc => pc,
    --     reg_rs1 => reg_rs1,
    --     reg_rs2 => reg_rs2,
    --     data_wack => data_wack ,
    --     selected => selected(to_integer(unsigned(S_TYPE))),

    --     result => result(to_integer(unsigned(S_TYPE))),
    --     next_pc => next_pc(to_integer(unsigned(S_TYPE))),
    --     daddr => daddr(to_integer(unsigned(S_TYPE))),
    --     wdata => wdata(to_integer(unsigned(S_TYPE))),
    --     use_rs1 => use_rs1(to_integer(unsigned(S_TYPE))),
    --     use_rs2 => use_rs2(to_integer(unsigned(S_TYPE))),
    --     execution_done => execution_done(to_integer(unsigned(S_TYPE))),
    --     decode_error => decode_error(to_integer(unsigned(S_TYPE))),
    --     dwe => dwe(to_integer(unsigned(S_TYPE)))

    -- );


    eu_lui_inst: eu_lui PORT MAP(
        pc => pc,
        imm => imm,
        use_rd => use_rd(U_TYPE_LUI),
        execution_done => execution_done(U_TYPE_LUI),
        decode_error => decode_error(U_TYPE_LUI),
        next_pc => next_pc(U_TYPE_LUI) ,
        result => result(U_TYPE_LUI)

    );

    
    eu_auipc_inst: eu_auipc PORT MAP(
        pc => pc,
        imm => imm,
        use_rd => use_rd(U_TYPE_AUIPC),
        execution_done => execution_done(U_TYPE_AUIPC),
        decode_error => decode_error(U_TYPE_AUIPC),
        next_pc => next_pc(U_TYPE_AUIPC) ,
        result => result(U_TYPE_AUIPC)

    );
    

    eu_jal_inst: eu_jal PORT MAP(
        pc => pc,
        imm => imm,
        use_rd => use_rd(J_TYPE_JAL),
        execution_done => execution_done(J_TYPE_JAL),
        decode_error => decode_error(J_TYPE_JAL),

        result => result(J_TYPE_JAL),
        next_pc => next_pc(J_TYPE_JAL)
    );

    eu_jalr_inst: eu_jalr PORT MAP(
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

    

    


    eu_r_inst: eu_r PORT MAP(
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

        eu_i_inst: eu_i PORT MAP(
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
    

    eu_b_inst : eu_b PORT MAP (
        imm => imm,
        
        reg_rs1 => reg_rs1,
        reg_rs2 => reg_rs2,
        pc => pc,
        funct3 => funct3,

        next_pc => next_pc(B_TYPE)
    );







end behavioural;