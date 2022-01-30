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
-- Generated on "11/10/2020 23:55:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_addsub_mem_Nov8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_addsub_mem_Nov8_vhd_vec_tst IS
END mejia_addsub_mem_Nov8_vhd_vec_tst;
ARCHITECTURE mejia_addsub_mem_Nov8_arch OF mejia_addsub_mem_Nov8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL AddSub : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Clk : STD_LOGIC;
SIGNAL neg : STD_LOGIC;
SIGNAL Overflow : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL Sel : STD_LOGIC;
SIGNAL Z : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT mejia_addsub_mem_Nov8
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	AddSub : IN STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Clk : IN STD_LOGIC;
	neg : OUT STD_LOGIC;
	Overflow : OUT STD_LOGIC;
	Reset : IN STD_LOGIC;
	Sel : IN STD_LOGIC;
	Z : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mejia_addsub_mem_Nov8
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AddSub => AddSub,
	B => B,
	Clk => Clk,
	neg => neg,
	Overflow => Overflow,
	Reset => Reset,
	Sel => Sel,
	Z => Z,
	zero => zero
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Clk <= '0';
		WAIT FOR 5000 ps;
		Clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 4000 ps;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
	WAIT FOR 10000 ps;
	Sel <= '1';
	WAIT FOR 10000 ps;
	Sel <= '0';
WAIT;
END PROCESS t_prcs_Sel;

-- AddSub
t_prcs_AddSub: PROCESS
BEGIN
	AddSub <= '1';
	WAIT FOR 10000 ps;
	AddSub <= '0';
	WAIT FOR 10000 ps;
	AddSub <= '1';
	WAIT FOR 10000 ps;
	AddSub <= '0';
	WAIT FOR 10000 ps;
	AddSub <= '1';
	WAIT FOR 10000 ps;
	AddSub <= '0';
WAIT;
END PROCESS t_prcs_AddSub;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 20000 ps;
	A(2) <= '1';
	WAIT FOR 10000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
	WAIT FOR 20000 ps;
	A(1) <= '1';
	WAIT FOR 10000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 20000 ps;
	A(0) <= '1';
	WAIT FOR 10000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
	WAIT FOR 20000 ps;
	B(3) <= '1';
	WAIT FOR 10000 ps;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
	WAIT FOR 30000 ps;
	B(1) <= '1';
	WAIT FOR 10000 ps;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
	WAIT FOR 20000 ps;
	B(0) <= '0';
	WAIT FOR 10000 ps;
	B(0) <= '1';
	WAIT FOR 10000 ps;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
END mejia_addsub_mem_Nov8_arch;
