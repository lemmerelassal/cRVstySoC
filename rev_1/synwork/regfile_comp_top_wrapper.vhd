--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Sep 29 12:57:57 2025
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_eu_r is
   port (
      reg_rs1 : in std_logic_vector(31 downto 0);
      reg_rs2 : in std_logic_vector(31 downto 0);
      pc : in std_logic_vector(31 downto 0);
      funct7 : in std_logic_vector(6 downto 0);
      funct3 : in std_logic_vector(2 downto 0);
      result : out std_logic_vector(31 downto 0);
      next_pc : out std_logic_vector(31 downto 0);
      use_rs1 : out std_logic;
      use_rs2 : out std_logic;
      use_rd : out std_logic;
      execution_done : out std_logic;
      decode_error : out std_logic
   );
end wrapper_for_eu_r;

architecture behavioural of wrapper_for_eu_r is

component eu_r
 port (
   reg_rs1 : in std_logic_vector (31 downto 0);
   reg_rs2 : in std_logic_vector (31 downto 0);
   pc : in std_logic_vector (31 downto 0);
   funct7 : in std_logic_vector (6 downto 0);
   funct3 : in std_logic_vector (2 downto 0);
   result : out std_logic_vector (31 downto 0);
   next_pc : out std_logic_vector (31 downto 0);
   use_rs1 : out std_logic;
   use_rs2 : out std_logic;
   use_rd : out std_logic;
   execution_done : out std_logic;
   decode_error : out std_logic
 );
end component;

signal tmp_reg_rs1 : std_logic_vector (31 downto 0);
signal tmp_reg_rs2 : std_logic_vector (31 downto 0);
signal tmp_pc : std_logic_vector (31 downto 0);
signal tmp_funct7 : std_logic_vector (6 downto 0);
signal tmp_funct3 : std_logic_vector (2 downto 0);
signal tmp_result : std_logic_vector (31 downto 0);
signal tmp_next_pc : std_logic_vector (31 downto 0);
signal tmp_use_rs1 : std_logic;
signal tmp_use_rs2 : std_logic;
signal tmp_use_rd : std_logic;
signal tmp_execution_done : std_logic;
signal tmp_decode_error : std_logic;

begin

tmp_reg_rs1 <= reg_rs1;

tmp_reg_rs2 <= reg_rs2;

tmp_pc <= pc;

tmp_funct7 <= funct7;

tmp_funct3 <= funct3;

result <= tmp_result;

next_pc <= tmp_next_pc;

use_rs1 <= tmp_use_rs1;

use_rs2 <= tmp_use_rs2;

use_rd <= tmp_use_rd;

execution_done <= tmp_execution_done;

decode_error <= tmp_decode_error;



u1:   eu_r port map (
		reg_rs1 => tmp_reg_rs1,
		reg_rs2 => tmp_reg_rs2,
		pc => tmp_pc,
		funct7 => tmp_funct7,
		funct3 => tmp_funct3,
		result => tmp_result,
		next_pc => tmp_next_pc,
		use_rs1 => tmp_use_rs1,
		use_rs2 => tmp_use_rs2,
		use_rd => tmp_use_rd,
		execution_done => tmp_execution_done,
		decode_error => tmp_decode_error
       );
end behavioural;
