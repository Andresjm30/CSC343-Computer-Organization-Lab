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
-- Generated on "11/19/2020 22:51:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_divider_Nov19
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_divider_Nov19_vhd_vec_tst IS
END mejia_divider_Nov19_vhd_vec_tst;
ARCHITECTURE mejia_divider_Nov19_arch OF mejia_divider_Nov19_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ain : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Bin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL Qout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Rout : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT mejia_divider_Nov19
	PORT (
	Ain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Bin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	Qout : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Rout : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mejia_divider_Nov19
	PORT MAP (
-- list connections between master ports and signals
	Ain => Ain,
	Bin => Bin,
	clk => clk,
	clr => clr,
	ld => ld,
	Qout => Qout,
	Rout => Rout
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 70000 ps) THEN WAIT; END IF;
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
-- Ain[31]
t_prcs_Ain_31: PROCESS
BEGIN
	Ain(31) <= '0';
WAIT;
END PROCESS t_prcs_Ain_31;
-- Ain[30]
t_prcs_Ain_30: PROCESS
BEGIN
	Ain(30) <= '0';
WAIT;
END PROCESS t_prcs_Ain_30;
-- Ain[29]
t_prcs_Ain_29: PROCESS
BEGIN
	Ain(29) <= '0';
WAIT;
END PROCESS t_prcs_Ain_29;
-- Ain[28]
t_prcs_Ain_28: PROCESS
BEGIN
	Ain(28) <= '0';
WAIT;
END PROCESS t_prcs_Ain_28;
-- Ain[27]
t_prcs_Ain_27: PROCESS
BEGIN
	Ain(27) <= '0';
WAIT;
END PROCESS t_prcs_Ain_27;
-- Ain[26]
t_prcs_Ain_26: PROCESS
BEGIN
	Ain(26) <= '0';
WAIT;
END PROCESS t_prcs_Ain_26;
-- Ain[25]
t_prcs_Ain_25: PROCESS
BEGIN
	Ain(25) <= '0';
WAIT;
END PROCESS t_prcs_Ain_25;
-- Ain[24]
t_prcs_Ain_24: PROCESS
BEGIN
	Ain(24) <= '0';
WAIT;
END PROCESS t_prcs_Ain_24;
-- Ain[23]
t_prcs_Ain_23: PROCESS
BEGIN
	Ain(23) <= '0';
WAIT;
END PROCESS t_prcs_Ain_23;
-- Ain[22]
t_prcs_Ain_22: PROCESS
BEGIN
	Ain(22) <= '0';
WAIT;
END PROCESS t_prcs_Ain_22;
-- Ain[21]
t_prcs_Ain_21: PROCESS
BEGIN
	Ain(21) <= '0';
WAIT;
END PROCESS t_prcs_Ain_21;
-- Ain[20]
t_prcs_Ain_20: PROCESS
BEGIN
	Ain(20) <= '0';
WAIT;
END PROCESS t_prcs_Ain_20;
-- Ain[19]
t_prcs_Ain_19: PROCESS
BEGIN
	Ain(19) <= '0';
WAIT;
END PROCESS t_prcs_Ain_19;
-- Ain[18]
t_prcs_Ain_18: PROCESS
BEGIN
	Ain(18) <= '0';
WAIT;
END PROCESS t_prcs_Ain_18;
-- Ain[17]
t_prcs_Ain_17: PROCESS
BEGIN
	Ain(17) <= '0';
WAIT;
END PROCESS t_prcs_Ain_17;
-- Ain[16]
t_prcs_Ain_16: PROCESS
BEGIN
	Ain(16) <= '0';
WAIT;
END PROCESS t_prcs_Ain_16;
-- Ain[15]
t_prcs_Ain_15: PROCESS
BEGIN
	Ain(15) <= '0';
WAIT;
END PROCESS t_prcs_Ain_15;
-- Ain[14]
t_prcs_Ain_14: PROCESS
BEGIN
	Ain(14) <= '0';
WAIT;
END PROCESS t_prcs_Ain_14;
-- Ain[13]
t_prcs_Ain_13: PROCESS
BEGIN
	Ain(13) <= '0';
WAIT;
END PROCESS t_prcs_Ain_13;
-- Ain[12]
t_prcs_Ain_12: PROCESS
BEGIN
	Ain(12) <= '0';
WAIT;
END PROCESS t_prcs_Ain_12;
-- Ain[11]
t_prcs_Ain_11: PROCESS
BEGIN
	Ain(11) <= '0';
WAIT;
END PROCESS t_prcs_Ain_11;
-- Ain[10]
t_prcs_Ain_10: PROCESS
BEGIN
	Ain(10) <= '0';
WAIT;
END PROCESS t_prcs_Ain_10;
-- Ain[9]
t_prcs_Ain_9: PROCESS
BEGIN
	Ain(9) <= '0';
WAIT;
END PROCESS t_prcs_Ain_9;
-- Ain[8]
t_prcs_Ain_8: PROCESS
BEGIN
	Ain(8) <= '0';
WAIT;
END PROCESS t_prcs_Ain_8;
-- Ain[7]
t_prcs_Ain_7: PROCESS
BEGIN
	Ain(7) <= '0';
WAIT;
END PROCESS t_prcs_Ain_7;
-- Ain[6]
t_prcs_Ain_6: PROCESS
BEGIN
	Ain(6) <= '0';
WAIT;
END PROCESS t_prcs_Ain_6;
-- Ain[5]
t_prcs_Ain_5: PROCESS
BEGIN
	Ain(5) <= '0';
	WAIT FOR 10000 ps;
	Ain(5) <= '1';
	WAIT FOR 10000 ps;
	Ain(5) <= '0';
WAIT;
END PROCESS t_prcs_Ain_5;
-- Ain[4]
t_prcs_Ain_4: PROCESS
BEGIN
	Ain(4) <= '1';
	WAIT FOR 10000 ps;
	Ain(4) <= '0';
WAIT;
END PROCESS t_prcs_Ain_4;
-- Ain[3]
t_prcs_Ain_3: PROCESS
BEGIN
	Ain(3) <= '1';
	WAIT FOR 10000 ps;
	Ain(3) <= '0';
WAIT;
END PROCESS t_prcs_Ain_3;
-- Ain[2]
t_prcs_Ain_2: PROCESS
BEGIN
	Ain(2) <= '1';
	WAIT FOR 20000 ps;
	Ain(2) <= '0';
WAIT;
END PROCESS t_prcs_Ain_2;
-- Ain[1]
t_prcs_Ain_1: PROCESS
BEGIN
	Ain(1) <= '1';
	WAIT FOR 10000 ps;
	Ain(1) <= '0';
WAIT;
END PROCESS t_prcs_Ain_1;
-- Ain[0]
t_prcs_Ain_0: PROCESS
BEGIN
	Ain(0) <= '0';
WAIT;
END PROCESS t_prcs_Ain_0;
-- Bin[31]
t_prcs_Bin_31: PROCESS
BEGIN
	Bin(31) <= '0';
WAIT;
END PROCESS t_prcs_Bin_31;
-- Bin[30]
t_prcs_Bin_30: PROCESS
BEGIN
	Bin(30) <= '0';
WAIT;
END PROCESS t_prcs_Bin_30;
-- Bin[29]
t_prcs_Bin_29: PROCESS
BEGIN
	Bin(29) <= '0';
WAIT;
END PROCESS t_prcs_Bin_29;
-- Bin[28]
t_prcs_Bin_28: PROCESS
BEGIN
	Bin(28) <= '0';
WAIT;
END PROCESS t_prcs_Bin_28;
-- Bin[27]
t_prcs_Bin_27: PROCESS
BEGIN
	Bin(27) <= '0';
WAIT;
END PROCESS t_prcs_Bin_27;
-- Bin[26]
t_prcs_Bin_26: PROCESS
BEGIN
	Bin(26) <= '0';
WAIT;
END PROCESS t_prcs_Bin_26;
-- Bin[25]
t_prcs_Bin_25: PROCESS
BEGIN
	Bin(25) <= '0';
WAIT;
END PROCESS t_prcs_Bin_25;
-- Bin[24]
t_prcs_Bin_24: PROCESS
BEGIN
	Bin(24) <= '0';
WAIT;
END PROCESS t_prcs_Bin_24;
-- Bin[23]
t_prcs_Bin_23: PROCESS
BEGIN
	Bin(23) <= '0';
WAIT;
END PROCESS t_prcs_Bin_23;
-- Bin[22]
t_prcs_Bin_22: PROCESS
BEGIN
	Bin(22) <= '0';
WAIT;
END PROCESS t_prcs_Bin_22;
-- Bin[21]
t_prcs_Bin_21: PROCESS
BEGIN
	Bin(21) <= '0';
WAIT;
END PROCESS t_prcs_Bin_21;
-- Bin[20]
t_prcs_Bin_20: PROCESS
BEGIN
	Bin(20) <= '0';
WAIT;
END PROCESS t_prcs_Bin_20;
-- Bin[19]
t_prcs_Bin_19: PROCESS
BEGIN
	Bin(19) <= '0';
WAIT;
END PROCESS t_prcs_Bin_19;
-- Bin[18]
t_prcs_Bin_18: PROCESS
BEGIN
	Bin(18) <= '0';
WAIT;
END PROCESS t_prcs_Bin_18;
-- Bin[17]
t_prcs_Bin_17: PROCESS
BEGIN
	Bin(17) <= '0';
WAIT;
END PROCESS t_prcs_Bin_17;
-- Bin[16]
t_prcs_Bin_16: PROCESS
BEGIN
	Bin(16) <= '0';
WAIT;
END PROCESS t_prcs_Bin_16;
-- Bin[15]
t_prcs_Bin_15: PROCESS
BEGIN
	Bin(15) <= '0';
WAIT;
END PROCESS t_prcs_Bin_15;
-- Bin[14]
t_prcs_Bin_14: PROCESS
BEGIN
	Bin(14) <= '0';
WAIT;
END PROCESS t_prcs_Bin_14;
-- Bin[13]
t_prcs_Bin_13: PROCESS
BEGIN
	Bin(13) <= '0';
WAIT;
END PROCESS t_prcs_Bin_13;
-- Bin[12]
t_prcs_Bin_12: PROCESS
BEGIN
	Bin(12) <= '0';
WAIT;
END PROCESS t_prcs_Bin_12;
-- Bin[11]
t_prcs_Bin_11: PROCESS
BEGIN
	Bin(11) <= '0';
WAIT;
END PROCESS t_prcs_Bin_11;
-- Bin[10]
t_prcs_Bin_10: PROCESS
BEGIN
	Bin(10) <= '0';
WAIT;
END PROCESS t_prcs_Bin_10;
-- Bin[9]
t_prcs_Bin_9: PROCESS
BEGIN
	Bin(9) <= '0';
WAIT;
END PROCESS t_prcs_Bin_9;
-- Bin[8]
t_prcs_Bin_8: PROCESS
BEGIN
	Bin(8) <= '0';
WAIT;
END PROCESS t_prcs_Bin_8;
-- Bin[7]
t_prcs_Bin_7: PROCESS
BEGIN
	Bin(7) <= '0';
WAIT;
END PROCESS t_prcs_Bin_7;
-- Bin[6]
t_prcs_Bin_6: PROCESS
BEGIN
	Bin(6) <= '0';
WAIT;
END PROCESS t_prcs_Bin_6;
-- Bin[5]
t_prcs_Bin_5: PROCESS
BEGIN
	Bin(5) <= '0';
WAIT;
END PROCESS t_prcs_Bin_5;
-- Bin[4]
t_prcs_Bin_4: PROCESS
BEGIN
	Bin(4) <= '0';
WAIT;
END PROCESS t_prcs_Bin_4;
-- Bin[3]
t_prcs_Bin_3: PROCESS
BEGIN
	Bin(3) <= '0';
	WAIT FOR 10000 ps;
	Bin(3) <= '1';
	WAIT FOR 10000 ps;
	Bin(3) <= '0';
WAIT;
END PROCESS t_prcs_Bin_3;
-- Bin[2]
t_prcs_Bin_2: PROCESS
BEGIN
	Bin(2) <= '1';
	WAIT FOR 10000 ps;
	Bin(2) <= '0';
WAIT;
END PROCESS t_prcs_Bin_2;
-- Bin[1]
t_prcs_Bin_1: PROCESS
BEGIN
	Bin(1) <= '0';
WAIT;
END PROCESS t_prcs_Bin_1;
-- Bin[0]
t_prcs_Bin_0: PROCESS
BEGIN
	Bin(0) <= '1';
	WAIT FOR 10000 ps;
	Bin(0) <= '0';
WAIT;
END PROCESS t_prcs_Bin_0;
END mejia_divider_Nov19_arch;
