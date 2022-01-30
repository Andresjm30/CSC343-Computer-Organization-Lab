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
-- Generated on "11/21/2020 18:38:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_accumulator_Nov14
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_accumulator_Nov14_vhd_vec_tst IS
END mejia_accumulator_Nov14_vhd_vec_tst;
ARCHITECTURE mejia_accumulator_Nov14_arch OF mejia_accumulator_Nov14_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL add_sub : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL overflow : STD_LOGIC;
SIGNAL Z : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT mejia_accumulator_Nov14
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	add_sub : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	overflow : OUT STD_LOGIC;
	Z : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mejia_accumulator_Nov14
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	add_sub => add_sub,
	clk => clk,
	clr => clr,
	ld => ld,
	overflow => overflow,
	Z => Z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 100000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- ld
t_prcs_ld: PROCESS
BEGIN
	ld <= '1';
WAIT;
END PROCESS t_prcs_ld;

-- add_sub
t_prcs_add_sub: PROCESS
BEGIN
	add_sub <= '1';
	WAIT FOR 10000 ps;
	add_sub <= '0';
	WAIT FOR 10000 ps;
	add_sub <= '1';
WAIT;
END PROCESS t_prcs_add_sub;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
	WAIT FOR 30000 ps;
	A(7) <= '1';
	WAIT FOR 20000 ps;
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
	WAIT FOR 30000 ps;
	A(5) <= '1';
	WAIT FOR 10000 ps;
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
	WAIT FOR 30000 ps;
	A(4) <= '1';
	WAIT FOR 10000 ps;
	A(4) <= '0';
	WAIT FOR 10000 ps;
	A(4) <= '1';
	WAIT FOR 10000 ps;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
	WAIT FOR 20000 ps;
	A(3) <= '0';
	WAIT FOR 10000 ps;
	A(3) <= '1';
	WAIT FOR 10000 ps;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '1';
	WAIT FOR 20000 ps;
	A(2) <= '0';
	WAIT FOR 10000 ps;
	A(2) <= '1';
	WAIT FOR 10000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
	WAIT FOR 20000 ps;
	A(1) <= '0';
	WAIT FOR 10000 ps;
	A(1) <= '1';
	WAIT FOR 10000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
	WAIT FOR 20000 ps;
	A(0) <= '0';
	WAIT FOR 10000 ps;
	A(0) <= '1';
	WAIT FOR 10000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
END mejia_accumulator_Nov14_arch;
