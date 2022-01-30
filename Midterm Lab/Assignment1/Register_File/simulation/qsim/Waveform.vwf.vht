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
-- Generated on "11/29/2020 18:04:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mejia_reg_file_Nov7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mejia_reg_file_Nov7_vhd_vec_tst IS
END mejia_reg_file_Nov7_vhd_vec_tst;
ARCHITECTURE mejia_reg_file_Nov7_arch OF mejia_reg_file_Nov7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address_a : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL address_b : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data_a : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL q_a : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL q_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wren_a : STD_LOGIC;
SIGNAL wren_b : STD_LOGIC;
COMPONENT mejia_reg_file_Nov7
	PORT (
	address_a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	address_b : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clock : IN STD_LOGIC;
	data_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	data_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	q_a : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	q_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	wren_a : IN STD_LOGIC;
	wren_b : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mejia_reg_file_Nov7
	PORT MAP (
-- list connections between master ports and signals
	address_a => address_a,
	address_b => address_b,
	clock => clock,
	data_a => data_a,
	data_b => data_b,
	q_a => q_a,
	q_b => q_b,
	wren_a => wren_a,
	wren_b => wren_b
	);
-- address_a[4]
t_prcs_address_a_4: PROCESS
BEGIN
	address_a(4) <= '0';
WAIT;
END PROCESS t_prcs_address_a_4;
-- address_a[3]
t_prcs_address_a_3: PROCESS
BEGIN
	address_a(3) <= '0';
WAIT;
END PROCESS t_prcs_address_a_3;
-- address_a[2]
t_prcs_address_a_2: PROCESS
BEGIN
	address_a(2) <= '1';
	WAIT FOR 10000 ps;
	address_a(2) <= '0';
WAIT;
END PROCESS t_prcs_address_a_2;
-- address_a[1]
t_prcs_address_a_1: PROCESS
BEGIN
	address_a(1) <= '0';
	WAIT FOR 20000 ps;
	address_a(1) <= '1';
	WAIT FOR 10000 ps;
	address_a(1) <= '0';
WAIT;
END PROCESS t_prcs_address_a_1;
-- address_a[0]
t_prcs_address_a_0: PROCESS
BEGIN
	address_a(0) <= '0';
	WAIT FOR 10000 ps;
	address_a(0) <= '1';
	WAIT FOR 20000 ps;
	address_a(0) <= '0';
WAIT;
END PROCESS t_prcs_address_a_0;
-- address_b[4]
t_prcs_address_b_4: PROCESS
BEGIN
	address_b(4) <= '0';
WAIT;
END PROCESS t_prcs_address_b_4;
-- address_b[3]
t_prcs_address_b_3: PROCESS
BEGIN
	address_b(3) <= '0';
WAIT;
END PROCESS t_prcs_address_b_3;
-- address_b[2]
t_prcs_address_b_2: PROCESS
BEGIN
	address_b(2) <= '1';
	WAIT FOR 10000 ps;
	address_b(2) <= '0';
	WAIT FOR 10000 ps;
	address_b(2) <= '1';
	WAIT FOR 10000 ps;
	address_b(2) <= '0';
WAIT;
END PROCESS t_prcs_address_b_2;
-- address_b[1]
t_prcs_address_b_1: PROCESS
BEGIN
	address_b(1) <= '1';
	WAIT FOR 20000 ps;
	address_b(1) <= '0';
WAIT;
END PROCESS t_prcs_address_b_1;
-- address_b[0]
t_prcs_address_b_0: PROCESS
BEGIN
	address_b(0) <= '1';
	WAIT FOR 10000 ps;
	address_b(0) <= '0';
WAIT;
END PROCESS t_prcs_address_b_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 50000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- data_a[31]
t_prcs_data_a_31: PROCESS
BEGIN
	data_a(31) <= '0';
WAIT;
END PROCESS t_prcs_data_a_31;
-- data_a[30]
t_prcs_data_a_30: PROCESS
BEGIN
	data_a(30) <= '0';
WAIT;
END PROCESS t_prcs_data_a_30;
-- data_a[29]
t_prcs_data_a_29: PROCESS
BEGIN
	data_a(29) <= '0';
WAIT;
END PROCESS t_prcs_data_a_29;
-- data_a[28]
t_prcs_data_a_28: PROCESS
BEGIN
	data_a(28) <= '0';
WAIT;
END PROCESS t_prcs_data_a_28;
-- data_a[27]
t_prcs_data_a_27: PROCESS
BEGIN
	data_a(27) <= '0';
WAIT;
END PROCESS t_prcs_data_a_27;
-- data_a[26]
t_prcs_data_a_26: PROCESS
BEGIN
	data_a(26) <= '0';
WAIT;
END PROCESS t_prcs_data_a_26;
-- data_a[25]
t_prcs_data_a_25: PROCESS
BEGIN
	data_a(25) <= '0';
WAIT;
END PROCESS t_prcs_data_a_25;
-- data_a[24]
t_prcs_data_a_24: PROCESS
BEGIN
	data_a(24) <= '0';
WAIT;
END PROCESS t_prcs_data_a_24;
-- data_a[23]
t_prcs_data_a_23: PROCESS
BEGIN
	data_a(23) <= '0';
WAIT;
END PROCESS t_prcs_data_a_23;
-- data_a[22]
t_prcs_data_a_22: PROCESS
BEGIN
	data_a(22) <= '0';
WAIT;
END PROCESS t_prcs_data_a_22;
-- data_a[21]
t_prcs_data_a_21: PROCESS
BEGIN
	data_a(21) <= '0';
WAIT;
END PROCESS t_prcs_data_a_21;
-- data_a[20]
t_prcs_data_a_20: PROCESS
BEGIN
	data_a(20) <= '0';
WAIT;
END PROCESS t_prcs_data_a_20;
-- data_a[19]
t_prcs_data_a_19: PROCESS
BEGIN
	data_a(19) <= '0';
WAIT;
END PROCESS t_prcs_data_a_19;
-- data_a[18]
t_prcs_data_a_18: PROCESS
BEGIN
	data_a(18) <= '0';
WAIT;
END PROCESS t_prcs_data_a_18;
-- data_a[17]
t_prcs_data_a_17: PROCESS
BEGIN
	data_a(17) <= '0';
WAIT;
END PROCESS t_prcs_data_a_17;
-- data_a[16]
t_prcs_data_a_16: PROCESS
BEGIN
	data_a(16) <= '0';
WAIT;
END PROCESS t_prcs_data_a_16;
-- data_a[15]
t_prcs_data_a_15: PROCESS
BEGIN
	data_a(15) <= '0';
WAIT;
END PROCESS t_prcs_data_a_15;
-- data_a[14]
t_prcs_data_a_14: PROCESS
BEGIN
	data_a(14) <= '0';
WAIT;
END PROCESS t_prcs_data_a_14;
-- data_a[13]
t_prcs_data_a_13: PROCESS
BEGIN
	data_a(13) <= '0';
WAIT;
END PROCESS t_prcs_data_a_13;
-- data_a[12]
t_prcs_data_a_12: PROCESS
BEGIN
	data_a(12) <= '0';
WAIT;
END PROCESS t_prcs_data_a_12;
-- data_a[11]
t_prcs_data_a_11: PROCESS
BEGIN
	data_a(11) <= '0';
WAIT;
END PROCESS t_prcs_data_a_11;
-- data_a[10]
t_prcs_data_a_10: PROCESS
BEGIN
	data_a(10) <= '0';
WAIT;
END PROCESS t_prcs_data_a_10;
-- data_a[9]
t_prcs_data_a_9: PROCESS
BEGIN
	data_a(9) <= '0';
WAIT;
END PROCESS t_prcs_data_a_9;
-- data_a[8]
t_prcs_data_a_8: PROCESS
BEGIN
	data_a(8) <= '0';
WAIT;
END PROCESS t_prcs_data_a_8;
-- data_a[7]
t_prcs_data_a_7: PROCESS
BEGIN
	data_a(7) <= '1';
	WAIT FOR 10000 ps;
	data_a(7) <= '0';
	WAIT FOR 10000 ps;
	data_a(7) <= '1';
	WAIT FOR 10000 ps;
	data_a(7) <= '0';
WAIT;
END PROCESS t_prcs_data_a_7;
-- data_a[6]
t_prcs_data_a_6: PROCESS
BEGIN
	data_a(6) <= '0';
	WAIT FOR 20000 ps;
	data_a(6) <= '1';
	WAIT FOR 10000 ps;
	data_a(6) <= '0';
WAIT;
END PROCESS t_prcs_data_a_6;
-- data_a[5]
t_prcs_data_a_5: PROCESS
BEGIN
	data_a(5) <= '1';
	WAIT FOR 10000 ps;
	data_a(5) <= '0';
	WAIT FOR 10000 ps;
	data_a(5) <= '1';
	WAIT FOR 10000 ps;
	data_a(5) <= '0';
WAIT;
END PROCESS t_prcs_data_a_5;
-- data_a[4]
t_prcs_data_a_4: PROCESS
BEGIN
	data_a(4) <= '0';
	WAIT FOR 20000 ps;
	data_a(4) <= '1';
	WAIT FOR 10000 ps;
	data_a(4) <= '0';
WAIT;
END PROCESS t_prcs_data_a_4;
-- data_a[3]
t_prcs_data_a_3: PROCESS
BEGIN
	data_a(3) <= '1';
	WAIT FOR 10000 ps;
	data_a(3) <= '0';
	WAIT FOR 10000 ps;
	data_a(3) <= '1';
	WAIT FOR 10000 ps;
	data_a(3) <= '0';
WAIT;
END PROCESS t_prcs_data_a_3;
-- data_a[2]
t_prcs_data_a_2: PROCESS
BEGIN
	data_a(2) <= '0';
	WAIT FOR 20000 ps;
	data_a(2) <= '1';
	WAIT FOR 10000 ps;
	data_a(2) <= '0';
WAIT;
END PROCESS t_prcs_data_a_2;
-- data_a[1]
t_prcs_data_a_1: PROCESS
BEGIN
	data_a(1) <= '1';
	WAIT FOR 10000 ps;
	data_a(1) <= '0';
	WAIT FOR 10000 ps;
	data_a(1) <= '1';
	WAIT FOR 10000 ps;
	data_a(1) <= '0';
WAIT;
END PROCESS t_prcs_data_a_1;
-- data_a[0]
t_prcs_data_a_0: PROCESS
BEGIN
	data_a(0) <= '0';
	WAIT FOR 20000 ps;
	data_a(0) <= '1';
	WAIT FOR 10000 ps;
	data_a(0) <= '0';
WAIT;
END PROCESS t_prcs_data_a_0;

-- wren_a
t_prcs_wren_a: PROCESS
BEGIN
	wren_a <= '1';
	WAIT FOR 10000 ps;
	wren_a <= '0';
	WAIT FOR 10000 ps;
	wren_a <= '1';
	WAIT FOR 10000 ps;
	wren_a <= '0';
WAIT;
END PROCESS t_prcs_wren_a;
-- data_b[31]
t_prcs_data_b_31: PROCESS
BEGIN
	data_b(31) <= '0';
WAIT;
END PROCESS t_prcs_data_b_31;
-- data_b[30]
t_prcs_data_b_30: PROCESS
BEGIN
	data_b(30) <= '0';
WAIT;
END PROCESS t_prcs_data_b_30;
-- data_b[29]
t_prcs_data_b_29: PROCESS
BEGIN
	data_b(29) <= '0';
WAIT;
END PROCESS t_prcs_data_b_29;
-- data_b[28]
t_prcs_data_b_28: PROCESS
BEGIN
	data_b(28) <= '0';
WAIT;
END PROCESS t_prcs_data_b_28;
-- data_b[27]
t_prcs_data_b_27: PROCESS
BEGIN
	data_b(27) <= '0';
WAIT;
END PROCESS t_prcs_data_b_27;
-- data_b[26]
t_prcs_data_b_26: PROCESS
BEGIN
	data_b(26) <= '0';
WAIT;
END PROCESS t_prcs_data_b_26;
-- data_b[25]
t_prcs_data_b_25: PROCESS
BEGIN
	data_b(25) <= '0';
WAIT;
END PROCESS t_prcs_data_b_25;
-- data_b[24]
t_prcs_data_b_24: PROCESS
BEGIN
	data_b(24) <= '0';
WAIT;
END PROCESS t_prcs_data_b_24;
-- data_b[23]
t_prcs_data_b_23: PROCESS
BEGIN
	data_b(23) <= '0';
WAIT;
END PROCESS t_prcs_data_b_23;
-- data_b[22]
t_prcs_data_b_22: PROCESS
BEGIN
	data_b(22) <= '0';
WAIT;
END PROCESS t_prcs_data_b_22;
-- data_b[21]
t_prcs_data_b_21: PROCESS
BEGIN
	data_b(21) <= '0';
WAIT;
END PROCESS t_prcs_data_b_21;
-- data_b[20]
t_prcs_data_b_20: PROCESS
BEGIN
	data_b(20) <= '0';
WAIT;
END PROCESS t_prcs_data_b_20;
-- data_b[19]
t_prcs_data_b_19: PROCESS
BEGIN
	data_b(19) <= '0';
WAIT;
END PROCESS t_prcs_data_b_19;
-- data_b[18]
t_prcs_data_b_18: PROCESS
BEGIN
	data_b(18) <= '0';
WAIT;
END PROCESS t_prcs_data_b_18;
-- data_b[17]
t_prcs_data_b_17: PROCESS
BEGIN
	data_b(17) <= '0';
WAIT;
END PROCESS t_prcs_data_b_17;
-- data_b[16]
t_prcs_data_b_16: PROCESS
BEGIN
	data_b(16) <= '0';
WAIT;
END PROCESS t_prcs_data_b_16;
-- data_b[15]
t_prcs_data_b_15: PROCESS
BEGIN
	data_b(15) <= '0';
WAIT;
END PROCESS t_prcs_data_b_15;
-- data_b[14]
t_prcs_data_b_14: PROCESS
BEGIN
	data_b(14) <= '0';
WAIT;
END PROCESS t_prcs_data_b_14;
-- data_b[13]
t_prcs_data_b_13: PROCESS
BEGIN
	data_b(13) <= '0';
WAIT;
END PROCESS t_prcs_data_b_13;
-- data_b[12]
t_prcs_data_b_12: PROCESS
BEGIN
	data_b(12) <= '0';
WAIT;
END PROCESS t_prcs_data_b_12;
-- data_b[11]
t_prcs_data_b_11: PROCESS
BEGIN
	data_b(11) <= '0';
WAIT;
END PROCESS t_prcs_data_b_11;
-- data_b[10]
t_prcs_data_b_10: PROCESS
BEGIN
	data_b(10) <= '0';
WAIT;
END PROCESS t_prcs_data_b_10;
-- data_b[9]
t_prcs_data_b_9: PROCESS
BEGIN
	data_b(9) <= '0';
WAIT;
END PROCESS t_prcs_data_b_9;
-- data_b[8]
t_prcs_data_b_8: PROCESS
BEGIN
	data_b(8) <= '0';
WAIT;
END PROCESS t_prcs_data_b_8;
-- data_b[7]
t_prcs_data_b_7: PROCESS
BEGIN
	data_b(7) <= '0';
	WAIT FOR 10000 ps;
	data_b(7) <= '1';
	WAIT FOR 10000 ps;
	data_b(7) <= '0';
WAIT;
END PROCESS t_prcs_data_b_7;
-- data_b[6]
t_prcs_data_b_6: PROCESS
BEGIN
	data_b(6) <= '0';
	WAIT FOR 10000 ps;
	data_b(6) <= '1';
	WAIT FOR 10000 ps;
	data_b(6) <= '0';
WAIT;
END PROCESS t_prcs_data_b_6;
-- data_b[5]
t_prcs_data_b_5: PROCESS
BEGIN
	data_b(5) <= '0';
WAIT;
END PROCESS t_prcs_data_b_5;
-- data_b[4]
t_prcs_data_b_4: PROCESS
BEGIN
	data_b(4) <= '0';
WAIT;
END PROCESS t_prcs_data_b_4;
-- data_b[3]
t_prcs_data_b_3: PROCESS
BEGIN
	data_b(3) <= '0';
	WAIT FOR 10000 ps;
	data_b(3) <= '1';
	WAIT FOR 10000 ps;
	data_b(3) <= '0';
WAIT;
END PROCESS t_prcs_data_b_3;
-- data_b[2]
t_prcs_data_b_2: PROCESS
BEGIN
	data_b(2) <= '0';
	WAIT FOR 10000 ps;
	data_b(2) <= '1';
	WAIT FOR 10000 ps;
	data_b(2) <= '0';
WAIT;
END PROCESS t_prcs_data_b_2;
-- data_b[1]
t_prcs_data_b_1: PROCESS
BEGIN
	data_b(1) <= '0';
WAIT;
END PROCESS t_prcs_data_b_1;
-- data_b[0]
t_prcs_data_b_0: PROCESS
BEGIN
	data_b(0) <= '0';
WAIT;
END PROCESS t_prcs_data_b_0;

-- wren_b
t_prcs_wren_b: PROCESS
BEGIN
	wren_b <= '0';
	WAIT FOR 10000 ps;
	wren_b <= '1';
	WAIT FOR 10000 ps;
	wren_b <= '0';
WAIT;
END PROCESS t_prcs_wren_b;
END mejia_reg_file_Nov7_arch;
