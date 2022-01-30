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
-- Generated on "12/09/2020 13:10:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_pcadder_Dec5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_pcadder_Dec5_vhd_vec_tst IS
END mejia_pcadder_Dec5_vhd_vec_tst;
ARCHITECTURE mejia_pcadder_Dec5_arch OF mejia_pcadder_Dec5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL dataa : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL datab : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT mejia_pcadder_Dec5
	PORT (
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mejia_pcadder_Dec5
	PORT MAP (
-- list connections between master ports and signals
	cin => cin,
	cout => cout,
	dataa => dataa,
	datab => datab,
	result => result
	);

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '0';
WAIT;
END PROCESS t_prcs_cin;
-- dataa[7]
t_prcs_dataa_7: PROCESS
BEGIN
	dataa(7) <= '0';
WAIT;
END PROCESS t_prcs_dataa_7;
-- dataa[6]
t_prcs_dataa_6: PROCESS
BEGIN
	dataa(6) <= '0';
WAIT;
END PROCESS t_prcs_dataa_6;
-- dataa[5]
t_prcs_dataa_5: PROCESS
BEGIN
	dataa(5) <= '1';
	WAIT FOR 10000 ps;
	dataa(5) <= '0';
WAIT;
END PROCESS t_prcs_dataa_5;
-- dataa[4]
t_prcs_dataa_4: PROCESS
BEGIN
	dataa(4) <= '1';
	WAIT FOR 10000 ps;
	dataa(4) <= '0';
WAIT;
END PROCESS t_prcs_dataa_4;
-- dataa[3]
t_prcs_dataa_3: PROCESS
BEGIN
	dataa(3) <= '1';
	WAIT FOR 10000 ps;
	dataa(3) <= '0';
WAIT;
END PROCESS t_prcs_dataa_3;
-- dataa[2]
t_prcs_dataa_2: PROCESS
BEGIN
	dataa(2) <= '1';
	WAIT FOR 10000 ps;
	dataa(2) <= '0';
WAIT;
END PROCESS t_prcs_dataa_2;
-- dataa[1]
t_prcs_dataa_1: PROCESS
BEGIN
	dataa(1) <= '0';
WAIT;
END PROCESS t_prcs_dataa_1;
-- dataa[0]
t_prcs_dataa_0: PROCESS
BEGIN
	dataa(0) <= '0';
WAIT;
END PROCESS t_prcs_dataa_0;
-- datab[7]
t_prcs_datab_7: PROCESS
BEGIN
	datab(7) <= '1';
	WAIT FOR 10000 ps;
	datab(7) <= '0';
WAIT;
END PROCESS t_prcs_datab_7;
-- datab[6]
t_prcs_datab_6: PROCESS
BEGIN
	datab(6) <= '1';
	WAIT FOR 10000 ps;
	datab(6) <= '0';
WAIT;
END PROCESS t_prcs_datab_6;
-- datab[5]
t_prcs_datab_5: PROCESS
BEGIN
	datab(5) <= '0';
WAIT;
END PROCESS t_prcs_datab_5;
-- datab[4]
t_prcs_datab_4: PROCESS
BEGIN
	datab(4) <= '1';
	WAIT FOR 10000 ps;
	datab(4) <= '0';
WAIT;
END PROCESS t_prcs_datab_4;
-- datab[3]
t_prcs_datab_3: PROCESS
BEGIN
	datab(3) <= '1';
	WAIT FOR 10000 ps;
	datab(3) <= '0';
WAIT;
END PROCESS t_prcs_datab_3;
-- datab[2]
t_prcs_datab_2: PROCESS
BEGIN
	datab(2) <= '1';
	WAIT FOR 10000 ps;
	datab(2) <= '0';
WAIT;
END PROCESS t_prcs_datab_2;
-- datab[1]
t_prcs_datab_1: PROCESS
BEGIN
	datab(1) <= '0';
WAIT;
END PROCESS t_prcs_datab_1;
-- datab[0]
t_prcs_datab_0: PROCESS
BEGIN
	datab(0) <= '0';
WAIT;
END PROCESS t_prcs_datab_0;
END mejia_pcadder_Dec5_arch;
