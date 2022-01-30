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
-- Generated on "12/02/2020 01:57:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_lw_Nov29
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_lw_Nov29_vhd_vec_tst IS
END mejia_lw_Nov29_vhd_vec_tst;
ARCHITECTURE mejia_lw_Nov29_arch OF mejia_lw_Nov29_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ALUctr : STD_LOGIC;
SIGNAL ALUsrc : STD_LOGIC;
SIGNAL BusA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BusB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data_mem : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ExtOP : STD_LOGIC;
SIGNAL IMin : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Inst : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Instin : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL MemW : STD_LOGIC;
SIGNAL mux_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL NF : STD_LOGIC;
SIGNAL OVF : STD_LOGIC;
SIGNAL RegW : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL RSin : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RTin : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Stored : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL W_src : STD_LOGIC;
SIGNAL ZF : STD_LOGIC;
COMPONENT mejia_lw_Nov29
	PORT (
	address : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ALUctr : IN STD_LOGIC;
	ALUsrc : IN STD_LOGIC;
	BusA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	BusB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	clock : IN STD_LOGIC;
	data_mem : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ExtOP : IN STD_LOGIC;
	IMin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Inst : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Instin : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	MemW : IN STD_LOGIC;
	mux_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	NF : BUFFER STD_LOGIC;
	OVF : BUFFER STD_LOGIC;
	RegW : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	RSin : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	RTin : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Stored : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	W_src : IN STD_LOGIC;
	ZF : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mejia_lw_Nov29
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	ALUctr => ALUctr,
	ALUsrc => ALUsrc,
	BusA => BusA,
	BusB => BusB,
	clock => clock,
	data_mem => data_mem,
	ExtOP => ExtOP,
	IMin => IMin,
	Inst => Inst,
	Instin => Instin,
	MemW => MemW,
	mux_out => mux_out,
	NF => NF,
	OVF => OVF,
	RegW => RegW,
	reset => reset,
	RSin => RSin,
	RTin => RTin,
	Stored => Stored,
	W_src => W_src,
	ZF => ZF
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 100000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- Instin[4]
t_prcs_Instin_4: PROCESS
BEGIN
	Instin(4) <= '0';
WAIT;
END PROCESS t_prcs_Instin_4;
-- Instin[3]
t_prcs_Instin_3: PROCESS
BEGIN
	Instin(3) <= '0';
WAIT;
END PROCESS t_prcs_Instin_3;
-- Instin[2]
t_prcs_Instin_2: PROCESS
BEGIN
	Instin(2) <= '1';
	WAIT FOR 30000 ps;
	Instin(2) <= '0';
WAIT;
END PROCESS t_prcs_Instin_2;
-- Instin[1]
t_prcs_Instin_1: PROCESS
BEGIN
	Instin(1) <= '1';
	WAIT FOR 30000 ps;
	Instin(1) <= '0';
WAIT;
END PROCESS t_prcs_Instin_1;
-- Instin[0]
t_prcs_Instin_0: PROCESS
BEGIN
	Instin(0) <= '1';
	WAIT FOR 30000 ps;
	Instin(0) <= '0';
WAIT;
END PROCESS t_prcs_Instin_0;

-- RegW
t_prcs_RegW: PROCESS
BEGIN
	RegW <= '1';
	WAIT FOR 70000 ps;
	RegW <= '0';
WAIT;
END PROCESS t_prcs_RegW;

-- ALUsrc
t_prcs_ALUsrc: PROCESS
BEGIN
	ALUsrc <= '0';
WAIT;
END PROCESS t_prcs_ALUsrc;

-- ALUctr
t_prcs_ALUctr: PROCESS
BEGIN
	ALUctr <= '1';
	WAIT FOR 30000 ps;
	ALUctr <= '0';
WAIT;
END PROCESS t_prcs_ALUctr;

-- ExtOP
t_prcs_ExtOP: PROCESS
BEGIN
	ExtOP <= '1';
	WAIT FOR 10000 ps;
	ExtOP <= '0';
WAIT;
END PROCESS t_prcs_ExtOP;

-- MemW
t_prcs_MemW: PROCESS
BEGIN
	MemW <= '0';
WAIT;
END PROCESS t_prcs_MemW;

-- W_src
t_prcs_W_src: PROCESS
BEGIN
	W_src <= '0';
WAIT;
END PROCESS t_prcs_W_src;
-- RTin[4]
t_prcs_RTin_4: PROCESS
BEGIN
	RTin(4) <= '0';
WAIT;
END PROCESS t_prcs_RTin_4;
-- RTin[3]
t_prcs_RTin_3: PROCESS
BEGIN
	RTin(3) <= '1';
	WAIT FOR 10000 ps;
	RTin(3) <= '0';
WAIT;
END PROCESS t_prcs_RTin_3;
-- RTin[2]
t_prcs_RTin_2: PROCESS
BEGIN
	RTin(2) <= '0';
WAIT;
END PROCESS t_prcs_RTin_2;
-- RTin[1]
t_prcs_RTin_1: PROCESS
BEGIN
	RTin(1) <= '1';
	WAIT FOR 10000 ps;
	RTin(1) <= '0';
WAIT;
END PROCESS t_prcs_RTin_1;
-- RTin[0]
t_prcs_RTin_0: PROCESS
BEGIN
	RTin(0) <= '0';
WAIT;
END PROCESS t_prcs_RTin_0;
-- RSin[4]
t_prcs_RSin_4: PROCESS
BEGIN
	RSin(4) <= '0';
WAIT;
END PROCESS t_prcs_RSin_4;
-- RSin[3]
t_prcs_RSin_3: PROCESS
BEGIN
	RSin(3) <= '1';
	WAIT FOR 10000 ps;
	RSin(3) <= '0';
WAIT;
END PROCESS t_prcs_RSin_3;
-- RSin[2]
t_prcs_RSin_2: PROCESS
BEGIN
	RSin(2) <= '1';
	WAIT FOR 10000 ps;
	RSin(2) <= '0';
WAIT;
END PROCESS t_prcs_RSin_2;
-- RSin[1]
t_prcs_RSin_1: PROCESS
BEGIN
	RSin(1) <= '1';
	WAIT FOR 10000 ps;
	RSin(1) <= '0';
WAIT;
END PROCESS t_prcs_RSin_1;
-- RSin[0]
t_prcs_RSin_0: PROCESS
BEGIN
	RSin(0) <= '1';
	WAIT FOR 10000 ps;
	RSin(0) <= '0';
WAIT;
END PROCESS t_prcs_RSin_0;
-- IMin[15]
t_prcs_IMin_15: PROCESS
BEGIN
	IMin(15) <= '0';
WAIT;
END PROCESS t_prcs_IMin_15;
-- IMin[14]
t_prcs_IMin_14: PROCESS
BEGIN
	IMin(14) <= '0';
WAIT;
END PROCESS t_prcs_IMin_14;
-- IMin[13]
t_prcs_IMin_13: PROCESS
BEGIN
	IMin(13) <= '0';
WAIT;
END PROCESS t_prcs_IMin_13;
-- IMin[12]
t_prcs_IMin_12: PROCESS
BEGIN
	IMin(12) <= '0';
WAIT;
END PROCESS t_prcs_IMin_12;
-- IMin[11]
t_prcs_IMin_11: PROCESS
BEGIN
	IMin(11) <= '0';
WAIT;
END PROCESS t_prcs_IMin_11;
-- IMin[10]
t_prcs_IMin_10: PROCESS
BEGIN
	IMin(10) <= '0';
WAIT;
END PROCESS t_prcs_IMin_10;
-- IMin[9]
t_prcs_IMin_9: PROCESS
BEGIN
	IMin(9) <= '0';
WAIT;
END PROCESS t_prcs_IMin_9;
-- IMin[8]
t_prcs_IMin_8: PROCESS
BEGIN
	IMin(8) <= '0';
WAIT;
END PROCESS t_prcs_IMin_8;
-- IMin[7]
t_prcs_IMin_7: PROCESS
BEGIN
	IMin(7) <= '0';
WAIT;
END PROCESS t_prcs_IMin_7;
-- IMin[6]
t_prcs_IMin_6: PROCESS
BEGIN
	IMin(6) <= '0';
WAIT;
END PROCESS t_prcs_IMin_6;
-- IMin[5]
t_prcs_IMin_5: PROCESS
BEGIN
	IMin(5) <= '0';
WAIT;
END PROCESS t_prcs_IMin_5;
-- IMin[4]
t_prcs_IMin_4: PROCESS
BEGIN
	IMin(4) <= '0';
WAIT;
END PROCESS t_prcs_IMin_4;
-- IMin[3]
t_prcs_IMin_3: PROCESS
BEGIN
	IMin(3) <= '0';
	WAIT FOR 10000 ps;
	IMin(3) <= '1';
	WAIT FOR 10000 ps;
	IMin(3) <= '0';
WAIT;
END PROCESS t_prcs_IMin_3;
-- IMin[2]
t_prcs_IMin_2: PROCESS
BEGIN
	IMin(2) <= '0';
	WAIT FOR 10000 ps;
	IMin(2) <= '1';
	WAIT FOR 10000 ps;
	IMin(2) <= '0';
WAIT;
END PROCESS t_prcs_IMin_2;
-- IMin[1]
t_prcs_IMin_1: PROCESS
BEGIN
	IMin(1) <= '0';
	WAIT FOR 10000 ps;
	IMin(1) <= '1';
	WAIT FOR 10000 ps;
	IMin(1) <= '0';
WAIT;
END PROCESS t_prcs_IMin_1;
-- IMin[0]
t_prcs_IMin_0: PROCESS
BEGIN
	IMin(0) <= '0';
	WAIT FOR 10000 ps;
	IMin(0) <= '1';
	WAIT FOR 10000 ps;
	IMin(0) <= '0';
WAIT;
END PROCESS t_prcs_IMin_0;
END mejia_lw_Nov29_arch;
