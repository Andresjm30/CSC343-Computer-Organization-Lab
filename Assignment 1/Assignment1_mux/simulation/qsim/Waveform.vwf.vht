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
-- Generated on "09/12/2020 22:33:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_2to1_mux
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_2to1_mux_vhd_vec_tst IS
END mejia_2to1_mux_vhd_vec_tst;
ARCHITECTURE mejia_2to1_mux_arch OF mejia_2to1_mux_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
COMPONENT mejia_2to1_mux
	PORT (
	f : OUT STD_LOGIC;
	s : IN STD_LOGIC;
	x1 : IN STD_LOGIC;
	x2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mejia_2to1_mux
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	s => s,
	x1 => x1,
	x2 => x2
	);

-- s
t_prcs_s: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		s <= '0';
		WAIT FOR 1000 ps;
		s <= '1';
		WAIT FOR 1000 ps;
	END LOOP;
	s <= '0';
	WAIT FOR 1000 ps;
	s <= '1';
WAIT;
END PROCESS t_prcs_s;

-- x2
t_prcs_x2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		x2 <= '0';
		WAIT FOR 2000 ps;
		x2 <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	x2 <= '0';
WAIT;
END PROCESS t_prcs_x2;

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 4000 ps;
	x1 <= '1';
	WAIT FOR 4000 ps;
	x1 <= '0';
WAIT;
END PROCESS t_prcs_x1;
END mejia_2to1_mux_arch;
