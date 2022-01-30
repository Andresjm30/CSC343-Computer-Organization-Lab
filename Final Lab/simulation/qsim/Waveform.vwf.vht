-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/13/2020 18:43:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_sc_cpu_Dec5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_sc_cpu_Dec5_vhd_vec_tst IS
END mejia_sc_cpu_Dec5_vhd_vec_tst;
ARCHITECTURE mejia_sc_cpu_Dec5_arch OF mejia_sc_cpu_Dec5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Imme : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instr : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL OPCODE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL prog_count : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RD : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RS : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL stored : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT mejia_sc_cpu_Dec5
	PORT (
	clock : IN STD_LOGIC;
	Imme : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	instr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	OPCODE : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	prog_count : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RD : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	result : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RS : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	stored : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mejia_sc_cpu_Dec5
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Imme => Imme,
	instr => instr,
	OPCODE => OPCODE,
	prog_count => prog_count,
	RD => RD,
	result => result,
	RS => RS,
	RT => RT,
	stored => stored
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1100000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- instr[8]
t_prcs_instr_8: PROCESS
BEGIN
	instr(8) <= '0';
WAIT;
END PROCESS t_prcs_instr_8;
-- instr[7]
t_prcs_instr_7: PROCESS
BEGIN
	instr(7) <= '0';
WAIT;
END PROCESS t_prcs_instr_7;
-- instr[6]
t_prcs_instr_6: PROCESS
BEGIN
	instr(6) <= '0';
WAIT;
END PROCESS t_prcs_instr_6;
-- instr[5]
t_prcs_instr_5: PROCESS
BEGIN
	instr(5) <= '0';
	WAIT FOR 560000 ps;
	instr(5) <= '1';
	WAIT FOR 400000 ps;
	instr(5) <= '0';
WAIT;
END PROCESS t_prcs_instr_5;
-- instr[4]
t_prcs_instr_4: PROCESS
BEGIN
	instr(4) <= '0';
	WAIT FOR 240000 ps;
	instr(4) <= '1';
	WAIT FOR 320000 ps;
	instr(4) <= '0';
WAIT;
END PROCESS t_prcs_instr_4;
-- instr[3]
t_prcs_instr_3: PROCESS
BEGIN
	instr(3) <= '0';
	WAIT FOR 80000 ps;
	instr(3) <= '1';
	WAIT FOR 160000 ps;
	instr(3) <= '0';
	WAIT FOR 160000 ps;
	instr(3) <= '1';
	WAIT FOR 160000 ps;
	instr(3) <= '0';
	WAIT FOR 160000 ps;
	instr(3) <= '1';
	WAIT FOR 160000 ps;
	instr(3) <= '0';
WAIT;
END PROCESS t_prcs_instr_3;
-- instr[2]
t_prcs_instr_2: PROCESS
BEGIN
	instr(2) <= '1';
	WAIT FOR 80000 ps;
	instr(2) <= '0';
	WAIT FOR 80000 ps;
	instr(2) <= '1';
	WAIT FOR 80000 ps;
	instr(2) <= '0';
	WAIT FOR 80000 ps;
	instr(2) <= '1';
	WAIT FOR 80000 ps;
	instr(2) <= '0';
	WAIT FOR 80000 ps;
	instr(2) <= '1';
	WAIT FOR 80000 ps;
	instr(2) <= '0';
	WAIT FOR 80000 ps;
	instr(2) <= '1';
	WAIT FOR 80000 ps;
	instr(2) <= '0';
	WAIT FOR 80000 ps;
	instr(2) <= '1';
	WAIT FOR 80000 ps;
	instr(2) <= '0';
WAIT;
END PROCESS t_prcs_instr_2;
-- instr[1]
t_prcs_instr_1: PROCESS
BEGIN
	instr(1) <= '0';
WAIT;
END PROCESS t_prcs_instr_1;
-- instr[0]
t_prcs_instr_0: PROCESS
BEGIN
	instr(0) <= '0';
WAIT;
END PROCESS t_prcs_instr_0;
END mejia_sc_cpu_Dec5_arch;
