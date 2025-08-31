library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity cpunew is
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
    data_rdy, data_wack : in std_logic;

    -- Register file
    registerfile_register_selection : out std_logic_vector(4 downto 0);
    registerfile_register_selected : in std_logic_vector(4 downto 0);
    registerfile_wdata : out std_logic_vector(32 downto 0);
    registerfile_rdata : in std_logic_vector(32 downto 0);
    registerfile_we : out std_logic;

    err : out std_logic --;

    -- state_out : out std_logic_vector(2 downto 0);
    -- instr_out : out std_logic_vector(31 downto 0)
        
    --interrupt_error, exec_done : out std_logic
  );
end cpunew;

architecture behavioural of cpunew is

    type instruction_details_t is
        record
            selected, decode_error, execution_done, use_rs1, use_rs2, use_rd, decrement_counter : std_logic;
            result, next_pc, imm : std_logic_vector(31 downto 0);

            -- mmu interface
            data_width : std_logic_vector(1 downto 0);
            data_addr, data_wdata : std_logic_vector(31 downto 0);
            data_re, data_we : std_logic;
        end record;
    constant init_instruction_details: instruction_details_t := (selected => '0', imm => (others => '0'), execution_done => '0', decode_error => '1', result => (others => '0'), next_pc => (others => '0'), use_rs1 => '0', use_rs2 => '0', use_rd => '0', decrement_counter => '0',
                                                                    data_width => "10", data_addr => (others => '0'), data_wdata => (others => '0'), data_re => '0', data_we => '0');
    type instruction_details_array_t is array (natural range <>) of instruction_details_t;
    signal instruction_details_array : instruction_details_array_t(127 downto 0) := (others => init_instruction_details);


    signal opcode, funct7 : std_logic_vector(6 downto 0);
    signal instruction, n_instruction : std_logic_vector(31 downto 0);

    signal reg_rs1, reg_rs2, pc, n_pc, counter, n_counter, result_r : std_logic_vector(31 downto 0);
    signal rs1, rs2, rd : std_logic_vector(4 downto 0);
    signal funct3 : std_logic_vector(2 downto 0);


    signal imm_i, imm_s, imm_b, imm_u, imm_j, imm_jalr : std_logic_vector(31 downto 0);

    constant R_TYPE         : std_logic_vector(6 downto 0) := "0110011"; -- Register/Register (ADD, ...)
    constant I_TYPE         : std_logic_vector(6 downto 0) := "0010011"; -- Register/Immediate (ADDI, ...)
    constant I_TYPE_LOAD    : std_logic_vector(6 downto 0) := "0000011";
    constant S_TYPE         : std_logic_vector(6 downto 0) := "0100011"; -- Store (SB, SH, SW)
    constant B_TYPE         : std_logic_vector(6 downto 0) := "1100011"; -- Branch
    constant U_TYPE_LUI     : std_logic_vector(6 downto 0) := "0110111"; -- LUI
    constant U_TYPE_AUIPC   : std_logic_vector(6 downto 0) := "0010111"; -- AUIPC
    constant J_TYPE_JAL     : std_logic_vector(6 downto 0) := "1101111"; -- JAL
    constant J_TYPE_JALR    : std_logic_vector(6 downto 0) := "1100111"; -- JALR
    

    type state_t is (FETCH_INSTRUCTION, WAIT_UNTIL_RD_UNLOCKED, FETCH_RS1, FETCH_RS2, EXECUTE, WRITEBACK, INCREMENT_PC, PANIC);
    signal state, n_state : state_t;

    signal set_rs1, set_rs2, set_instruction, reset_instruction, decrement_counter, set_counter : std_logic;

    signal decode_error : std_logic_vector(127 downto 0) := (others => '1');
    signal use_rs1 : std_logic_vector(127 downto 0) := (others => '0');
    signal use_rs2 : std_logic_vector(127 downto 0) := (others => '0');
    signal use_rd : std_logic_vector(127 downto 0) := (others => '0');
    signal execution_done : std_logic_vector(127 downto 0) := (others => '1');
    signal dec_counter : std_logic_vector(127 downto 0) := (others => '0');
    signal dwe : std_logic_vector(127 downto 0) := (others => '0'); -- data_we
    signal selected : std_logic_vector(127 downto 0) := (others => '0');

    signal shift_rs1_left, shift_rs1_right_arithmetic, shift_rs1_right_logical, update_rs1_from_rd : std_logic_vector(127 downto 0) := (others => '0');


    type word_t is array (natural range <>) of std_logic_vector(31 downto 0);
    signal next_pc : word_t(127 downto 0) := (others => (others => '0'));
    signal result :  word_t(127 downto 0) := (others => (others => '0'));
    signal imm : word_t(127 downto 0) := (others => (others => '0'));
    signal wdata : word_t(127 downto 0) := (others => (others => '0'));
    signal daddr : word_t(127 downto 0) := (others => (others => '0'));

    signal state_out : std_logic_vector(2 downto 0);

    signal i_inst_addr, i_data_wdata, i_data_addr : std_logic_vector(31 downto 0);
    signal i_data_we, i_data_re : std_logic;

    component ila_0 PORT (
      clk : in std_logic;
      probe2, probe3, probe4, probe5, probe6, probe7, probe8 : in std_logic_vector(31 downto 0);
      probe0, probe9, probe10 : in std_logic;
      probe1 : in std_logic_vector(2 downto 0);
      probe11, probe12 : in std_logic_vector(127 downto 0)
    );
    end component;


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

        --while shamt > 0 loop
        --for i in shamt downto 0 loop
        --    if shleft = true then
        --        result := result(30 downto 0) & '0';
        --    else
        --        result := appendbit & result(31 downto 1);
        --    end if;
            --shamt := shamt - 1;
        --end loop;
        return result;
    end function;

    impure function DoDivision (
        dividend, divisor : std_logic_vector(31 downto 0)
    ) return std_logic_vector is
        variable temp, quotient : std_logic_vector(31 downto 0) := (others => '0');
    begin
        temp := dividend;
        while temp /= X"00000000" loop
            if temp > divisor then
                quotient := quotient + X"00000001";
                temp := temp - divisor;
            else
                temp := X"00000000";
            end if;
        end loop;
        return quotient;
    end function;




    component eu_auipc is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    next_pc, result : out std_logic_vector(31 downto 0)

  );
end component;

    component eu_lui is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    next_pc, result : out std_logic_vector(31 downto 0)

  );
end component;

    component eu_jal is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    pc, imm : in std_logic_vector(31 downto 0);
    use_rd, execution_done, decode_error : out std_logic;
    result, next_pc : out std_logic_vector(31 downto 0)

  );
end component;


component eu_jalr is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

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
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

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
    use_rs1,use_rs2,use_rd, execution_done, decode_error : out std_logic
    );
end component;

component eu_s is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    imm, pc, reg_rs1, reg_rs2 : in std_logic_vector(31 downto 0);
    data_wack, selected : in std_logic;

    result, next_pc, daddr, wdata : out std_logic_vector(31 downto 0);
    use_rs1, use_rs2, execution_done, decode_error, dwe : out std_logic
  );
end component;


component eu_l is
    generic (entry_point : std_logic_vector(31 downto 0) := X"80010000");

  Port (
    imm, pc, reg_rs1, data_rdata : in std_logic_vector(31 downto 0);
    data_rdy : in std_logic;
    funct3 : in std_logic_vector(2 downto 0);

    result, next_pc, daddr : out std_logic_vector(31 downto 0);
    use_rs1, use_rd, execution_done, decode_error, dwe : out std_logic




  );
end component;

begin
    i_inst_addr <= pc;
    inst_addr <= i_inst_addr;
    data_wdata <= i_data_wdata;
    data_re <= i_data_re;
    data_we <= i_data_we;
    data_addr <= i_data_addr;

    -- ila: ila_0 PORT MAP(
    --   clk => clk,
    --   probe0 => rst,
    --   probe1 => state_out,
    --   probe2 => pc,
    --   probe3 => i_inst_addr,
    --   probe4 => inst_rdata,
    --   probe5 => instruction,
    --   probe6 => data_rdata,
    --   probe7 => i_data_wdata,
    --   probe8 => i_data_addr,
    --   probe9 => i_data_we,
    --   probe10 => i_data_re,
    --   probe11 => selected,
    --   probe12 => execution_done
    -- );



    funct7 <= instruction(31 downto 25);
    rs2 <= instruction(24 downto 20);
    rs1 <= instruction(19 downto 15);
    funct3 <= instruction(14 downto 12);
    rd <= instruction(11 downto 7);
    opcode <= instruction(6 downto 0);

    fsm: process(state, instruction_details_array, pc, inst_rdy, opcode, rd, rs1, rs2, registerfile_register_selected, registerfile_rdata, decode_error, use_rs1, use_rs2, use_rd, execution_done, next_pc, result,daddr, dwe, result_r)
    begin
        n_state <= state;
        n_pc <= pc;
        registerfile_we <= '0';
        registerfile_wdata <= (others => '0');
        set_instruction <= '0';
        registerfile_register_selection <= (others => '0');
        inst_width <= "10";
        inst_re <= '0';
        set_rs1 <= '0';
        set_rs2 <= '0';
        reset_instruction <= '0';
        err <= '0';

        set_counter <= '0';

        state_out <= "000";
        selected <= (others => '0');


        data_width <= (others => '0');
        i_data_addr <= (others => '0');
        i_data_wdata <= (others => '0');
        i_data_re <= '0';
        i_data_we <= '0';

        case state is
            when FETCH_INSTRUCTION =>
                inst_width <= "10";
                set_instruction <= '1';
                if inst_rdy = '1' then
                    inst_re <= '1';
                    n_state <= WAIT_UNTIL_RD_UNLOCKED;
                end if;
            when WAIT_UNTIL_RD_UNLOCKED =>
                state_out <= "001";
                set_counter <= '1';
                if use_rd(to_integer(unsigned(opcode))) = '1' then
                    registerfile_register_selection <= rd;
                    if (registerfile_register_selected = rd) and (registerfile_rdata(32) = '0') then
                        if use_rs1(to_integer(unsigned(opcode))) = '1' then
                            n_state <= FETCH_RS1;
                        elsif use_rs2(to_integer(unsigned(opcode))) = '1' then
                            n_state <= FETCH_RS2;
                        else
                            n_state <= EXECUTE;
                        end if;
                    end if;
                else
                    if use_rs1(to_integer(unsigned(opcode))) = '1' then
                        n_state <= FETCH_RS1;
                    elsif use_rs2(to_integer(unsigned(opcode))) = '1' then
                        n_state <= FETCH_RS2;
                    else
                        n_state <= EXECUTE;
                    end if;
                end if;

            when FETCH_RS1 =>
                state_out <= "010";
                registerfile_register_selection <= rs1;
                set_rs1 <= '1';

                if (registerfile_register_selected = rs1) and (registerfile_rdata(32) = '0') then
                    if use_rs2(to_integer(unsigned(opcode))) = '1' then
                        n_state <= FETCH_RS2;
                    else
                        n_state <= EXECUTE;
                    end if;
                end if;

            when FETCH_RS2 =>
                state_out <= "011";
                registerfile_register_selection <= rs2;
                if (registerfile_register_selected = rs2) and (registerfile_rdata(32) = '0') then
                    set_rs2 <= '1';
                    n_state <= EXECUTE;
                end if;
            
            when EXECUTE =>

                data_width <= instruction_details_array(to_integer(unsigned(opcode))).data_width;
                i_data_addr <= daddr(to_integer(unsigned(opcode)));
                i_data_wdata <= wdata(to_integer(unsigned(opcode)));
                i_data_re <= instruction_details_array(to_integer(unsigned(opcode))).data_re;
                i_data_we <= dwe(to_integer(unsigned(opcode)));

                state_out <= "100";
                selected(to_integer(unsigned(opcode))) <= '1';

                if execution_done(to_integer(unsigned(opcode))) = '1' then
                    if use_rd(to_integer(unsigned(opcode))) = '1' then
                        n_state <= WRITEBACK;
                    else
                        n_state <= INCREMENT_PC;
                    end if;
                elsif decode_error(to_integer(unsigned(opcode))) = '1' then
                    n_state <= PANIC;
                end if;

            when WRITEBACK =>

            data_width <= instruction_details_array(to_integer(unsigned(opcode))).data_width;
            i_data_addr <= daddr(to_integer(unsigned(opcode)));
            i_data_wdata <= wdata(to_integer(unsigned(opcode)));
            i_data_re <= instruction_details_array(to_integer(unsigned(opcode))).data_re;
            i_data_we <= dwe(to_integer(unsigned(opcode)));


                state_out <= "101";
                registerfile_register_selection <= rd;
                registerfile_wdata <= '0' & result_r;
                registerfile_we <= '1';
                if (registerfile_register_selected = rd) and (registerfile_rdata(32) = '0') and (registerfile_rdata(31 downto 0) = result_r) then --result(to_integer(unsigned(opcode)))) then
                    n_state <= INCREMENT_PC;
                end if;

            when INCREMENT_PC =>
                state_out <= "110";
                reset_instruction <= '1';
                n_pc <= next_pc(to_integer(unsigned(opcode)));
                n_state <= FETCH_INSTRUCTION;
            when PANIC =>
                state_out <= "111";
                err <= '1';
            when others =>
                n_state <= FETCH_INSTRUCTION;
        end case;
    end process;

    synchronous: process(rst, clk)
    begin
        if rst = '1' then
            state <= FETCH_INSTRUCTION;
            instruction <= (others => '0');
            reg_rs1 <= (others => '0');
            reg_rs2 <= (others => '0');
            pc <= entry_point;
            counter <= (others => '0');
            result_r <= (others => '0');
        elsif rising_edge(clk) then
            pc <= n_pc;

            counter <= n_counter;

            if (execution_done(to_integer(unsigned(opcode))) = '1') and (state = EXECUTE) then
                result_r <= result(to_integer(unsigned(opcode)));
            end if;

            if set_instruction = '1' then
                instruction <= inst_rdata;
            end if;

            if reset_instruction = '1' then
                instruction <= (others => '0');
            end if;

            state <= n_state;

            if set_rs1 = '1' then
                reg_rs1 <= registerfile_rdata(31 downto 0);
            end if;

            if update_rs1_from_rd(to_integer(unsigned(opcode))) = '1' then
                reg_rs1 <= result(to_integer(unsigned(opcode)));
            end if;

            if set_rs2 = '1' then
                reg_rs2 <= registerfile_rdata(31 downto 0);
            end if;

        end if;
    end process;

    decrement_counter <= dec_counter(to_integer(unsigned(opcode)));
    n_counter <= imm(to_integer(unsigned(opcode))) when set_counter = '1' else counter - X"00000001" when decrement_counter = '1' else counter;


    eu_l_inst : eu_l PORT MAP(
            imm => imm_i, pc => pc, reg_rs1 => reg_rs1, data_rdata => data_rdata,
        data_rdy => data_rdy,
        funct3 => funct3,

        result => result(to_integer(unsigned(I_TYPE_LOAD))), next_pc => next_pc(to_integer(unsigned(I_TYPE_LOAD))), daddr => daddr(to_integer(unsigned(I_TYPE_LOAD))),
        use_rs1 => use_rs1(to_integer(unsigned(I_TYPE_LOAD))),
        use_rd => use_rd(to_integer(unsigned(I_TYPE_LOAD))),
        execution_done => execution_done(to_integer(unsigned(I_TYPE_LOAD))),
        decode_error => decode_error(to_integer(unsigned(I_TYPE_LOAD))),
        dwe => dwe(to_integer(unsigned(I_TYPE_LOAD)))
    );


    eu_lui_inst: eu_lui PORT MAP(
    pc => pc, imm => imm_u,
    use_rd => use_rd(to_integer(unsigned(U_TYPE_AUIPC))), execution_done => execution_done(to_integer(unsigned(U_TYPE_AUIPC))), decode_error => decode_error(to_integer(unsigned(U_TYPE_AUIPC))),
    next_pc => next_pc(to_integer(unsigned(U_TYPE_AUIPC))) , result => result(to_integer(unsigned(U_TYPE_AUIPC)))

    );

    
    eu_auipc_inst: eu_auipc PORT MAP(
    pc => pc, imm => imm_u,
    use_rd => use_rd(to_integer(unsigned(U_TYPE_AUIPC))), execution_done => execution_done(to_integer(unsigned(U_TYPE_AUIPC))), decode_error => decode_error(to_integer(unsigned(U_TYPE_AUIPC))),
    next_pc => next_pc(to_integer(unsigned(U_TYPE_AUIPC))) , result => result(to_integer(unsigned(U_TYPE_AUIPC)))

    );
    

    eu_jal_inst: eu_jal PORT MAP(
        pc => pc, imm => imm_j,
        use_rd => use_rd(to_integer(unsigned(J_TYPE_JAL))), execution_done => execution_done(to_integer(unsigned(J_TYPE_JAL))), decode_error => decode_error(to_integer(unsigned(J_TYPE_JAL))),

        result => result(to_integer(unsigned(J_TYPE_JAL))), next_pc => next_pc(to_integer(unsigned(J_TYPE_JAL)))
    );

    eu_jalr_inst: eu_jalr PORT MAP(
        reg_rs1 => reg_rs1, pc => pc, imm => imm_j,
        use_rd => use_rd(to_integer(unsigned(J_TYPE_JALR))), use_rs1 => use_rs1(to_integer(unsigned(J_TYPE_JALR))), execution_done => execution_done(to_integer(unsigned(J_TYPE_JALR))), decode_error => decode_error(to_integer(unsigned(J_TYPE_JALR))),

        result => result(to_integer(unsigned(J_TYPE_JALR))), next_pc => next_pc(to_integer(unsigned(J_TYPE_JALR)))
    );

    

    


        eu_r_inst: eu_r PORT MAP(
        reg_rs1 => reg_rs1, reg_rs2 => reg_rs2, pc => pc, funct7 => funct7, funct3 => funct3,
        use_rd => use_rd(to_integer(unsigned(R_TYPE))), use_rs1 => use_rs1(to_integer(unsigned(R_TYPE))),  use_rs2 => use_rs2(to_integer(unsigned(R_TYPE))), execution_done => execution_done(to_integer(unsigned(R_TYPE))), decode_error => decode_error(to_integer(unsigned(R_TYPE))),

        result => result(to_integer(unsigned(R_TYPE))), next_pc => next_pc(to_integer(unsigned(R_TYPE)))
    );

        eu_i_inst: eu_i PORT MAP(
        reg_rs1 => reg_rs1, imm => imm_i, pc => pc, funct7 => funct7, funct3 => funct3,
        use_rd => use_rd(to_integer(unsigned(I_TYPE))), use_rs1 => use_rs1(to_integer(unsigned(I_TYPE))),  use_rs2 => use_rs2(to_integer(unsigned(I_TYPE))), execution_done => execution_done(to_integer(unsigned(I_TYPE))), decode_error => decode_error(to_integer(unsigned(I_TYPE))),

        result => result(to_integer(unsigned(I_TYPE))), next_pc => next_pc(to_integer(unsigned(I_TYPE)))
    );
    

    eu_b_inst : eu_b PORT MAP (
        imm => imm_b,
        
        reg_rs1 => reg_rs1, reg_rs2 => reg_rs2, pc => pc,
    funct3 => funct3,

    next_pc => next_pc(to_integer(unsigned(B_TYPE)))
    );

    eu_s_inst : eu_s PORT MAP (

    imm => imm_s, pc => pc, reg_rs1 => reg_rs1, reg_rs2 => reg_rs2,
    data_wack => data_wack , selected => selected(to_integer(unsigned(S_TYPE))),

    result => result(to_integer(unsigned(S_TYPE))), next_pc => next_pc(to_integer(unsigned(S_TYPE))), daddr => daddr(to_integer(unsigned(S_TYPE))), wdata => wdata(to_integer(unsigned(S_TYPE))),
    use_rs1 => use_rs1(to_integer(unsigned(S_TYPE))), use_rs2 => use_rs2(to_integer(unsigned(S_TYPE))), execution_done => execution_done(to_integer(unsigned(S_TYPE))), decode_error => decode_error(to_integer(unsigned(S_TYPE))), dwe => dwe(to_integer(unsigned(S_TYPE)))

    );


    -- Immediate fields
    decode_imm: process(instruction)
    begin
        -- I-type
        imm_i(31 downto 11) <= (others => instruction(31));
        imm_i(10 downto 5) <= instruction(30 downto 25);
        imm_i(4 downto 1) <= instruction(24 downto 21);
        imm_i(0) <= instruction(20);

        -- S-type
        imm_s(31 downto 11) <= (others => instruction(31));
        imm_s(10 downto 5) <= instruction(30 downto 25);
        imm_s(4 downto 1) <= instruction(11 downto 8);
        imm_s(0) <= instruction(7);

        -- B-type
        imm_b(31 downto 12) <= (others => instruction(31));
        imm_b(11) <= instruction(7);
        imm_b(10 downto 5) <= instruction(30 downto 25);
        imm_b(4 downto 1) <= instruction(11 downto 8);
        imm_b(0) <= '0';

        -- U-type
        imm_u(31) <= instruction(31);
        imm_u(30 downto 20) <= instruction(30 downto 20);
        imm_u(19 downto 12) <= instruction(19 downto 12);
        imm_u(11 downto 0) <= (others => '0');

        -- J-type
        imm_j(31 downto 20) <= (others => instruction(31));
        imm_j(19 downto 12) <= instruction(19 downto 12);
        imm_j(11) <= instruction(20);
        imm_j(10 downto 5) <= instruction(30 downto 25);
        imm_j(4 downto 1) <= instruction(24 downto 21);
        imm_j(0) <= '0';

        -- JALR
        imm_jalr <= (others => '0');
        imm_jalr(11 downto 0) <= instruction(31 downto 20);

    end process;

    --interrupt_error <= instruction_details_array(to_integer(unsigned(opcode))).decode_error;
    --exec_done <= execution_done(to_integer(unsigned(opcode)));
end behavioural;