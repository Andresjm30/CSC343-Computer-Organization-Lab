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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "11/10/2020 22:56:09"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mejia_addersubtractor2_Nov8 IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Clock : IN std_logic;
	Reset : IN std_logic;
	Sel : IN std_logic;
	AddSub : IN std_logic;
	Z : BUFFER std_logic_vector(31 DOWNTO 0);
	Overflow : BUFFER std_logic;
	zero : BUFFER std_logic;
	neg : BUFFER std_logic
	);
END mejia_addersubtractor2_Nov8;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[9]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[10]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[11]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[12]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[13]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[15]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[16]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[17]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[18]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[20]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[21]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[22]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[23]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[24]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[25]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[26]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[27]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[28]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[29]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[30]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[31]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddSub	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mejia_addersubtractor2_Nov8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Sel : std_logic;
SIGNAL ww_AddSub : std_logic;
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_neg : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \AddSub~input_o\ : std_logic;
SIGNAL \AddSubR~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \AddSubR~q\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Zreg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Sel~input_o\ : std_logic;
SIGNAL \SelR~q\ : std_logic;
SIGNAL \multiplexer|F[0]~1_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Areg[1]~feeder_combout\ : std_logic;
SIGNAL \multiplexer|F[1]~2_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Zreg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \multiplexer|F[2]~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Zreg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \multiplexer|F[3]~4_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Breg[4]~feeder_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \multiplexer|F[4]~5_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \multiplexer|F[5]~6_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Breg[5]~feeder_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Breg[6]~feeder_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Areg[6]~feeder_combout\ : std_logic;
SIGNAL \multiplexer|F[6]~7_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \multiplexer|F[7]~8_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Areg[8]~feeder_combout\ : std_logic;
SIGNAL \multiplexer|F[8]~9_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \multiplexer|F[9]~10_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Breg[9]~feeder_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \multiplexer|F[10]~11_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \multiplexer|F[11]~12_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Breg[11]~feeder_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \multiplexer|F[12]~13_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ : std_logic;
SIGNAL \Zreg[12]~DUPLICATE_q\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \multiplexer|F[13]~14_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \multiplexer|F[14]~15_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ : std_logic;
SIGNAL \Zreg[14]~feeder_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Breg[15]~feeder_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Zreg[15]~DUPLICATE_q\ : std_logic;
SIGNAL \multiplexer|F[15]~16_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ : std_logic;
SIGNAL \Zreg[15]~feeder_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \multiplexer|F[16]~17_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \multiplexer|F[17]~18_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ : std_logic;
SIGNAL \Zreg[17]~feeder_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Areg[18]~feeder_combout\ : std_logic;
SIGNAL \multiplexer|F[18]~19_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \multiplexer|F[19]~20_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \multiplexer|F[20]~21_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \multiplexer|F[21]~22_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \multiplexer|F[22]~23_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \multiplexer|F[23]~24_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \multiplexer|F[24]~25_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \multiplexer|F[25]~26_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \multiplexer|F[26]~27_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \multiplexer|F[27]~28_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \multiplexer|F[28]~29_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \multiplexer|F[29]~30_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Breg[30]~feeder_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \multiplexer|F[30]~31_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \multiplexer|F[31]~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Breg[31]~feeder_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ : std_logic;
SIGNAL \Overflow~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \zero~reg0_q\ : std_logic;
SIGNAL \neg~reg0_q\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL Zreg : std_logic_vector(31 DOWNTO 0);
SIGNAL Areg : std_logic_vector(31 DOWNTO 0);
SIGNAL Breg : std_logic_vector(31 DOWNTO 0);
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_Zreg : std_logic_vector(31 DOWNTO 1);
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL ALT_INV_Breg : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplexer|ALT_INV_F[30]~31_combout\ : std_logic;
SIGNAL ALT_INV_Areg : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplexer|ALT_INV_F[29]~30_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[28]~29_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[27]~28_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[26]~27_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[25]~26_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[24]~25_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[23]~24_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[22]~23_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[21]~22_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[20]~21_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[19]~20_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[18]~19_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[17]~18_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[16]~17_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[15]~16_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[14]~15_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[13]~14_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[12]~13_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[11]~12_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[10]~11_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[9]~10_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[8]~9_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[7]~8_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[6]~7_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[5]~6_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[4]~5_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[3]~4_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[2]~3_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[1]~2_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_SelR~q\ : std_logic;
SIGNAL \ALT_INV_AddSubR~q\ : std_logic;
SIGNAL \ALT_INV_Zreg[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Zreg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Zreg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Zreg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddSub~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Sel <= Sel;
ww_AddSub <= AddSub;
Z <= ww_Z;
Overflow <= ww_Overflow;
zero <= ww_zero;
neg <= ww_neg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_Zreg(14) <= NOT Zreg(14);
ALT_INV_Zreg(13) <= NOT Zreg(13);
ALT_INV_Zreg(12) <= NOT Zreg(12);
ALT_INV_Zreg(11) <= NOT Zreg(11);
ALT_INV_Zreg(10) <= NOT Zreg(10);
ALT_INV_Zreg(9) <= NOT Zreg(9);
ALT_INV_Zreg(8) <= NOT Zreg(8);
ALT_INV_Zreg(7) <= NOT Zreg(7);
ALT_INV_Zreg(6) <= NOT Zreg(6);
ALT_INV_Zreg(5) <= NOT Zreg(5);
ALT_INV_Zreg(4) <= NOT Zreg(4);
ALT_INV_Zreg(1) <= NOT Zreg(1);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(31) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(30) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(29) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(28) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(27) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(26) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(25) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(24) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(23) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(22) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(21) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(20) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(19) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(18) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(17) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(16) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(15) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(14) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(13) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(12) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(11) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(10) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(9) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(8) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(7) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(6) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(5) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(4) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(3) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(2) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(1) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(0) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0);
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_Breg(30) <= NOT Breg(30);
\multiplexer|ALT_INV_F[30]~31_combout\ <= NOT \multiplexer|F[30]~31_combout\;
ALT_INV_Areg(30) <= NOT Areg(30);
ALT_INV_Breg(29) <= NOT Breg(29);
\multiplexer|ALT_INV_F[29]~30_combout\ <= NOT \multiplexer|F[29]~30_combout\;
ALT_INV_Areg(29) <= NOT Areg(29);
ALT_INV_Breg(28) <= NOT Breg(28);
\multiplexer|ALT_INV_F[28]~29_combout\ <= NOT \multiplexer|F[28]~29_combout\;
ALT_INV_Areg(28) <= NOT Areg(28);
ALT_INV_Breg(27) <= NOT Breg(27);
\multiplexer|ALT_INV_F[27]~28_combout\ <= NOT \multiplexer|F[27]~28_combout\;
ALT_INV_Areg(27) <= NOT Areg(27);
ALT_INV_Breg(26) <= NOT Breg(26);
\multiplexer|ALT_INV_F[26]~27_combout\ <= NOT \multiplexer|F[26]~27_combout\;
ALT_INV_Areg(26) <= NOT Areg(26);
ALT_INV_Breg(25) <= NOT Breg(25);
\multiplexer|ALT_INV_F[25]~26_combout\ <= NOT \multiplexer|F[25]~26_combout\;
ALT_INV_Areg(25) <= NOT Areg(25);
ALT_INV_Breg(24) <= NOT Breg(24);
\multiplexer|ALT_INV_F[24]~25_combout\ <= NOT \multiplexer|F[24]~25_combout\;
ALT_INV_Areg(24) <= NOT Areg(24);
ALT_INV_Breg(23) <= NOT Breg(23);
\multiplexer|ALT_INV_F[23]~24_combout\ <= NOT \multiplexer|F[23]~24_combout\;
ALT_INV_Areg(23) <= NOT Areg(23);
ALT_INV_Breg(22) <= NOT Breg(22);
\multiplexer|ALT_INV_F[22]~23_combout\ <= NOT \multiplexer|F[22]~23_combout\;
ALT_INV_Areg(22) <= NOT Areg(22);
ALT_INV_Breg(21) <= NOT Breg(21);
\multiplexer|ALT_INV_F[21]~22_combout\ <= NOT \multiplexer|F[21]~22_combout\;
ALT_INV_Areg(21) <= NOT Areg(21);
ALT_INV_Breg(20) <= NOT Breg(20);
\multiplexer|ALT_INV_F[20]~21_combout\ <= NOT \multiplexer|F[20]~21_combout\;
ALT_INV_Areg(20) <= NOT Areg(20);
ALT_INV_Breg(19) <= NOT Breg(19);
\multiplexer|ALT_INV_F[19]~20_combout\ <= NOT \multiplexer|F[19]~20_combout\;
ALT_INV_Areg(19) <= NOT Areg(19);
ALT_INV_Breg(18) <= NOT Breg(18);
\multiplexer|ALT_INV_F[18]~19_combout\ <= NOT \multiplexer|F[18]~19_combout\;
ALT_INV_Areg(18) <= NOT Areg(18);
ALT_INV_Breg(17) <= NOT Breg(17);
\multiplexer|ALT_INV_F[17]~18_combout\ <= NOT \multiplexer|F[17]~18_combout\;
ALT_INV_Areg(17) <= NOT Areg(17);
ALT_INV_Breg(16) <= NOT Breg(16);
\multiplexer|ALT_INV_F[16]~17_combout\ <= NOT \multiplexer|F[16]~17_combout\;
ALT_INV_Areg(16) <= NOT Areg(16);
ALT_INV_Breg(15) <= NOT Breg(15);
\multiplexer|ALT_INV_F[15]~16_combout\ <= NOT \multiplexer|F[15]~16_combout\;
ALT_INV_Areg(15) <= NOT Areg(15);
ALT_INV_Breg(14) <= NOT Breg(14);
\multiplexer|ALT_INV_F[14]~15_combout\ <= NOT \multiplexer|F[14]~15_combout\;
ALT_INV_Areg(14) <= NOT Areg(14);
ALT_INV_Breg(13) <= NOT Breg(13);
\multiplexer|ALT_INV_F[13]~14_combout\ <= NOT \multiplexer|F[13]~14_combout\;
ALT_INV_Areg(13) <= NOT Areg(13);
ALT_INV_Breg(12) <= NOT Breg(12);
\multiplexer|ALT_INV_F[12]~13_combout\ <= NOT \multiplexer|F[12]~13_combout\;
ALT_INV_Areg(12) <= NOT Areg(12);
ALT_INV_Breg(11) <= NOT Breg(11);
\multiplexer|ALT_INV_F[11]~12_combout\ <= NOT \multiplexer|F[11]~12_combout\;
ALT_INV_Areg(11) <= NOT Areg(11);
ALT_INV_Breg(10) <= NOT Breg(10);
\multiplexer|ALT_INV_F[10]~11_combout\ <= NOT \multiplexer|F[10]~11_combout\;
ALT_INV_Areg(10) <= NOT Areg(10);
ALT_INV_Breg(9) <= NOT Breg(9);
\multiplexer|ALT_INV_F[9]~10_combout\ <= NOT \multiplexer|F[9]~10_combout\;
ALT_INV_Areg(9) <= NOT Areg(9);
ALT_INV_Breg(8) <= NOT Breg(8);
\multiplexer|ALT_INV_F[8]~9_combout\ <= NOT \multiplexer|F[8]~9_combout\;
ALT_INV_Areg(8) <= NOT Areg(8);
ALT_INV_Breg(7) <= NOT Breg(7);
\multiplexer|ALT_INV_F[7]~8_combout\ <= NOT \multiplexer|F[7]~8_combout\;
ALT_INV_Areg(7) <= NOT Areg(7);
ALT_INV_Breg(6) <= NOT Breg(6);
\multiplexer|ALT_INV_F[6]~7_combout\ <= NOT \multiplexer|F[6]~7_combout\;
ALT_INV_Areg(6) <= NOT Areg(6);
ALT_INV_Breg(5) <= NOT Breg(5);
\multiplexer|ALT_INV_F[5]~6_combout\ <= NOT \multiplexer|F[5]~6_combout\;
ALT_INV_Areg(5) <= NOT Areg(5);
ALT_INV_Breg(4) <= NOT Breg(4);
\multiplexer|ALT_INV_F[4]~5_combout\ <= NOT \multiplexer|F[4]~5_combout\;
ALT_INV_Areg(4) <= NOT Areg(4);
ALT_INV_Breg(3) <= NOT Breg(3);
\multiplexer|ALT_INV_F[3]~4_combout\ <= NOT \multiplexer|F[3]~4_combout\;
ALT_INV_Areg(3) <= NOT Areg(3);
ALT_INV_Breg(2) <= NOT Breg(2);
\multiplexer|ALT_INV_F[2]~3_combout\ <= NOT \multiplexer|F[2]~3_combout\;
ALT_INV_Areg(2) <= NOT Areg(2);
ALT_INV_Breg(1) <= NOT Breg(1);
\multiplexer|ALT_INV_F[1]~2_combout\ <= NOT \multiplexer|F[1]~2_combout\;
ALT_INV_Areg(1) <= NOT Areg(1);
ALT_INV_Breg(0) <= NOT Breg(0);
\multiplexer|ALT_INV_F[0]~1_combout\ <= NOT \multiplexer|F[0]~1_combout\;
ALT_INV_Areg(0) <= NOT Areg(0);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_Breg(31) <= NOT Breg(31);
\multiplexer|ALT_INV_F[31]~0_combout\ <= NOT \multiplexer|F[31]~0_combout\;
ALT_INV_Areg(31) <= NOT Areg(31);
\ALT_INV_SelR~q\ <= NOT \SelR~q\;
\ALT_INV_AddSubR~q\ <= NOT \AddSubR~q\;
ALT_INV_Zreg(31) <= NOT Zreg(31);
ALT_INV_Zreg(30) <= NOT Zreg(30);
ALT_INV_Zreg(29) <= NOT Zreg(29);
ALT_INV_Zreg(28) <= NOT Zreg(28);
ALT_INV_Zreg(27) <= NOT Zreg(27);
ALT_INV_Zreg(26) <= NOT Zreg(26);
ALT_INV_Zreg(25) <= NOT Zreg(25);
ALT_INV_Zreg(24) <= NOT Zreg(24);
ALT_INV_Zreg(23) <= NOT Zreg(23);
ALT_INV_Zreg(22) <= NOT Zreg(22);
ALT_INV_Zreg(21) <= NOT Zreg(21);
ALT_INV_Zreg(20) <= NOT Zreg(20);
ALT_INV_Zreg(19) <= NOT Zreg(19);
ALT_INV_Zreg(18) <= NOT Zreg(18);
ALT_INV_Zreg(17) <= NOT Zreg(17);
ALT_INV_Zreg(16) <= NOT Zreg(16);
\ALT_INV_Zreg[15]~DUPLICATE_q\ <= NOT \Zreg[15]~DUPLICATE_q\;
\ALT_INV_Zreg[3]~DUPLICATE_q\ <= NOT \Zreg[3]~DUPLICATE_q\;
\ALT_INV_Zreg[2]~DUPLICATE_q\ <= NOT \Zreg[2]~DUPLICATE_q\;
\ALT_INV_Zreg[0]~DUPLICATE_q\ <= NOT \Zreg[0]~DUPLICATE_q\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_AddSub~input_o\ <= NOT \AddSub~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;

-- Location: IOOBUF_X62_Y0_N19
\Z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(0),
	devoe => ww_devoe,
	o => ww_Z(0));

-- Location: IOOBUF_X62_Y0_N36
\Z[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(1),
	devoe => ww_devoe,
	o => ww_Z(1));

-- Location: IOOBUF_X50_Y0_N93
\Z[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(2),
	devoe => ww_devoe,
	o => ww_Z(2));

-- Location: IOOBUF_X60_Y0_N53
\Z[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(3),
	devoe => ww_devoe,
	o => ww_Z(3));

-- Location: IOOBUF_X52_Y0_N36
\Z[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(4),
	devoe => ww_devoe,
	o => ww_Z(4));

-- Location: IOOBUF_X56_Y0_N19
\Z[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(5),
	devoe => ww_devoe,
	o => ww_Z(5));

-- Location: IOOBUF_X72_Y0_N53
\Z[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(6),
	devoe => ww_devoe,
	o => ww_Z(6));

-- Location: IOOBUF_X70_Y0_N2
\Z[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(7),
	devoe => ww_devoe,
	o => ww_Z(7));

-- Location: IOOBUF_X18_Y0_N76
\Z[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(8),
	devoe => ww_devoe,
	o => ww_Z(8));

-- Location: IOOBUF_X18_Y0_N93
\Z[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(9),
	devoe => ww_devoe,
	o => ww_Z(9));

-- Location: IOOBUF_X16_Y0_N2
\Z[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(10),
	devoe => ww_devoe,
	o => ww_Z(10));

-- Location: IOOBUF_X14_Y0_N19
\Z[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(11),
	devoe => ww_devoe,
	o => ww_Z(11));

-- Location: IOOBUF_X58_Y0_N93
\Z[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Zreg[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Z(12));

-- Location: IOOBUF_X54_Y0_N19
\Z[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(13),
	devoe => ww_devoe,
	o => ww_Z(13));

-- Location: IOOBUF_X12_Y0_N19
\Z[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(14),
	devoe => ww_devoe,
	o => ww_Z(14));

-- Location: IOOBUF_X60_Y0_N2
\Z[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(15),
	devoe => ww_devoe,
	o => ww_Z(15));

-- Location: IOOBUF_X62_Y0_N2
\Z[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(16),
	devoe => ww_devoe,
	o => ww_Z(16));

-- Location: IOOBUF_X60_Y0_N19
\Z[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(17),
	devoe => ww_devoe,
	o => ww_Z(17));

-- Location: IOOBUF_X22_Y0_N53
\Z[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(18),
	devoe => ww_devoe,
	o => ww_Z(18));

-- Location: IOOBUF_X20_Y0_N19
\Z[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(19),
	devoe => ww_devoe,
	o => ww_Z(19));

-- Location: IOOBUF_X50_Y0_N42
\Z[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(20),
	devoe => ww_devoe,
	o => ww_Z(20));

-- Location: IOOBUF_X14_Y0_N53
\Z[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(21),
	devoe => ww_devoe,
	o => ww_Z(21));

-- Location: IOOBUF_X26_Y0_N93
\Z[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(22),
	devoe => ww_devoe,
	o => ww_Z(22));

-- Location: IOOBUF_X34_Y0_N76
\Z[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(23),
	devoe => ww_devoe,
	o => ww_Z(23));

-- Location: IOOBUF_X32_Y0_N36
\Z[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(24),
	devoe => ww_devoe,
	o => ww_Z(24));

-- Location: IOOBUF_X30_Y0_N36
\Z[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(25),
	devoe => ww_devoe,
	o => ww_Z(25));

-- Location: IOOBUF_X64_Y0_N19
\Z[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(26),
	devoe => ww_devoe,
	o => ww_Z(26));

-- Location: IOOBUF_X32_Y0_N2
\Z[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(27),
	devoe => ww_devoe,
	o => ww_Z(27));

-- Location: IOOBUF_X30_Y0_N2
\Z[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(28),
	devoe => ww_devoe,
	o => ww_Z(28));

-- Location: IOOBUF_X26_Y0_N59
\Z[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(29),
	devoe => ww_devoe,
	o => ww_Z(29));

-- Location: IOOBUF_X28_Y0_N2
\Z[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(30),
	devoe => ww_devoe,
	o => ww_Z(30));

-- Location: IOOBUF_X38_Y0_N19
\Z[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(31),
	devoe => ww_devoe,
	o => ww_Z(31));

-- Location: IOOBUF_X66_Y0_N42
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Overflow~reg0_q\,
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOOBUF_X58_Y0_N76
\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \zero~reg0_q\,
	devoe => ww_devoe,
	o => ww_zero);

-- Location: IOOBUF_X8_Y0_N2
\neg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \neg~reg0_q\,
	devoe => ww_devoe,
	o => ww_neg);

-- Location: IOIBUF_X89_Y25_N21
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N35
\AddSub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddSub,
	o => \AddSub~input_o\);

-- Location: LABCELL_X31_Y4_N51
\AddSubR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSubR~0_combout\ = ( !\AddSub~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_AddSub~input_o\,
	combout => \AddSubR~0_combout\);

-- Location: IOIBUF_X28_Y0_N52
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X31_Y4_N53
AddSubR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \AddSubR~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddSubR~q\);

-- Location: IOIBUF_X64_Y0_N35
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: FF_X30_Y4_N47
\Breg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[0]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(0));

-- Location: IOIBUF_X54_Y0_N52
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X31_Y4_N14
\Areg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[0]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(0));

-- Location: FF_X31_Y4_N5
\Zreg[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[0]~DUPLICATE_q\);

-- Location: IOIBUF_X30_Y0_N52
\Sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel,
	o => \Sel~input_o\);

-- Location: FF_X30_Y3_N50
SelR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Sel~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SelR~q\);

-- Location: LABCELL_X31_Y4_N0
\multiplexer|F[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[0]~1_combout\ = ( \Zreg[0]~DUPLICATE_q\ & ( \SelR~q\ ) ) # ( \Zreg[0]~DUPLICATE_q\ & ( !\SelR~q\ & ( Areg(0) ) ) ) # ( !\Zreg[0]~DUPLICATE_q\ & ( !\SelR~q\ & ( Areg(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Areg(0),
	datae => \ALT_INV_Zreg[0]~DUPLICATE_q\,
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[0]~1_combout\);

-- Location: LABCELL_X30_Y4_N0
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ = CARRY(( VCC ) + ( !\AddSubR~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddSubR~q\,
	cin => GND,
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\);

-- Location: LABCELL_X30_Y4_N3
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0) = SUM(( \multiplexer|F[0]~1_combout\ ) + ( !\AddSubR~q\ $ (Breg(0)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( \multiplexer|F[0]~1_combout\ ) + ( !\AddSubR~q\ $ (Breg(0)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(0),
	datad => \multiplexer|ALT_INV_F[0]~1_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: FF_X31_Y4_N4
\Zreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(0));

-- Location: IOIBUF_X58_Y0_N58
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: FF_X30_Y4_N44
\Breg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[1]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(1));

-- Location: IOIBUF_X54_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X31_Y4_N24
\Areg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Areg[1]~feeder_combout\ = ( \A[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Areg[1]~feeder_combout\);

-- Location: FF_X31_Y4_N26
\Areg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Areg[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(1));

-- Location: LABCELL_X31_Y4_N39
\multiplexer|F[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[1]~2_combout\ = ( Zreg(1) & ( \SelR~q\ ) ) # ( Zreg(1) & ( !\SelR~q\ & ( Areg(1) ) ) ) # ( !Zreg(1) & ( !\SelR~q\ & ( Areg(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Areg(1),
	datae => ALT_INV_Zreg(1),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[1]~2_combout\);

-- Location: LABCELL_X30_Y4_N6
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1) = SUM(( \multiplexer|F[1]~2_combout\ ) + ( !\AddSubR~q\ $ (Breg(1)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( \multiplexer|F[1]~2_combout\ ) + ( !\AddSubR~q\ $ (Breg(1)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datab => ALT_INV_Breg(1),
	datad => \multiplexer|ALT_INV_F[1]~2_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: FF_X31_Y4_N38
\Zreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(1));

-- Location: IOIBUF_X52_Y0_N18
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X31_Y4_N44
\Areg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[2]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(2));

-- Location: FF_X31_Y4_N56
\Zreg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[2]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N15
\multiplexer|F[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[2]~3_combout\ = ( \Zreg[2]~DUPLICATE_q\ & ( \SelR~q\ ) ) # ( \Zreg[2]~DUPLICATE_q\ & ( !\SelR~q\ & ( Areg(2) ) ) ) # ( !\Zreg[2]~DUPLICATE_q\ & ( !\SelR~q\ & ( Areg(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Areg(2),
	datae => \ALT_INV_Zreg[2]~DUPLICATE_q\,
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[2]~3_combout\);

-- Location: IOIBUF_X54_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: FF_X30_Y4_N8
\Breg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[2]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(2));

-- Location: LABCELL_X30_Y4_N9
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2) = SUM(( !\AddSubR~q\ $ (Breg(2)) ) + ( \multiplexer|F[2]~3_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(2)) ) + ( \multiplexer|F[2]~3_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[2]~3_combout\,
	datad => ALT_INV_Breg(2),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: FF_X31_Y4_N55
\Zreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(2));

-- Location: IOIBUF_X50_Y0_N75
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: FF_X31_Y4_N11
\Breg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[3]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(3));

-- Location: FF_X31_Y4_N35
\Zreg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[3]~DUPLICATE_q\);

-- Location: IOIBUF_X40_Y0_N35
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X31_Y4_N59
\Areg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[3]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(3));

-- Location: LABCELL_X31_Y4_N57
\multiplexer|F[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[3]~4_combout\ = ( Areg(3) & ( \SelR~q\ & ( \Zreg[3]~DUPLICATE_q\ ) ) ) # ( !Areg(3) & ( \SelR~q\ & ( \Zreg[3]~DUPLICATE_q\ ) ) ) # ( Areg(3) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Zreg[3]~DUPLICATE_q\,
	datae => ALT_INV_Areg(3),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[3]~4_combout\);

-- Location: LABCELL_X30_Y4_N12
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3) = SUM(( \multiplexer|F[3]~4_combout\ ) + ( !\AddSubR~q\ $ (Breg(3)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( \multiplexer|F[3]~4_combout\ ) + ( !\AddSubR~q\ $ (Breg(3)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(3),
	datad => \multiplexer|ALT_INV_F[3]~4_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: FF_X31_Y4_N34
\Zreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(3));

-- Location: IOIBUF_X62_Y0_N52
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X31_Y4_N21
\Breg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[4]~feeder_combout\ = ( \B[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Breg[4]~feeder_combout\);

-- Location: FF_X31_Y4_N22
\Breg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(4));

-- Location: IOIBUF_X64_Y0_N1
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X31_Y4_N29
\Areg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[4]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(4));

-- Location: LABCELL_X31_Y4_N27
\multiplexer|F[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[4]~5_combout\ = ( \SelR~q\ & ( Zreg(4) ) ) # ( !\SelR~q\ & ( Areg(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(4),
	datad => ALT_INV_Areg(4),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[4]~5_combout\);

-- Location: LABCELL_X30_Y4_N15
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4) = SUM(( \multiplexer|F[4]~5_combout\ ) + ( !\AddSubR~q\ $ (Breg(4)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( \multiplexer|F[4]~5_combout\ ) + ( !\AddSubR~q\ $ (Breg(4)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(4),
	datad => \multiplexer|ALT_INV_F[4]~5_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: FF_X31_Y4_N41
\Zreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(4));

-- Location: IOIBUF_X56_Y0_N52
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: FF_X31_Y4_N2
\Areg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[5]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(5));

-- Location: LABCELL_X31_Y4_N48
\multiplexer|F[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[5]~6_combout\ = ( \SelR~q\ & ( Zreg(5) ) ) # ( !\SelR~q\ & ( Areg(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Zreg(5),
	datac => ALT_INV_Areg(5),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[5]~6_combout\);

-- Location: IOIBUF_X38_Y0_N35
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X31_Y4_N30
\Breg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[5]~feeder_combout\ = ( \B[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Breg[5]~feeder_combout\);

-- Location: FF_X31_Y4_N31
\Breg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(5));

-- Location: LABCELL_X30_Y4_N18
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5) = SUM(( !\AddSubR~q\ $ (Breg(5)) ) + ( \multiplexer|F[5]~6_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(5)) ) + ( \multiplexer|F[5]~6_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[5]~6_combout\,
	datad => ALT_INV_Breg(5),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\);

-- Location: FF_X31_Y4_N17
\Zreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(5));

-- Location: IOIBUF_X68_Y0_N1
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X31_Y4_N18
\Breg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[6]~feeder_combout\ = ( \B[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Breg[6]~feeder_combout\);

-- Location: FF_X31_Y4_N20
\Breg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(6));

-- Location: IOIBUF_X18_Y0_N41
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X29_Y4_N30
\Areg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Areg[6]~feeder_combout\ = ( \A[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Areg[6]~feeder_combout\);

-- Location: FF_X29_Y4_N32
\Areg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Areg[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(6));

-- Location: LABCELL_X29_Y4_N48
\multiplexer|F[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[6]~7_combout\ = ( \SelR~q\ & ( Zreg(6) ) ) # ( !\SelR~q\ & ( Areg(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Zreg(6),
	datad => ALT_INV_Areg(6),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[6]~7_combout\);

-- Location: LABCELL_X30_Y4_N21
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6) = SUM(( \multiplexer|F[6]~7_combout\ ) + ( !\AddSubR~q\ $ (Breg(6)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ = CARRY(( \multiplexer|F[6]~7_combout\ ) + ( !\AddSubR~q\ $ (Breg(6)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(6),
	datad => \multiplexer|ALT_INV_F[6]~7_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\);

-- Location: FF_X29_Y4_N14
\Zreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(6));

-- Location: IOIBUF_X20_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: FF_X29_Y4_N4
\Breg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[7]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(7));

-- Location: IOIBUF_X26_Y0_N75
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: FF_X29_Y3_N2
\Areg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[7]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(7));

-- Location: LABCELL_X29_Y3_N21
\multiplexer|F[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[7]~8_combout\ = ( Areg(7) & ( \SelR~q\ & ( Zreg(7) ) ) ) # ( !Areg(7) & ( \SelR~q\ & ( Zreg(7) ) ) ) # ( Areg(7) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Zreg(7),
	datae => ALT_INV_Areg(7),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[7]~8_combout\);

-- Location: LABCELL_X30_Y4_N24
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7) = SUM(( \multiplexer|F[7]~8_combout\ ) + ( !\AddSubR~q\ $ (Breg(7)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ = CARRY(( \multiplexer|F[7]~8_combout\ ) + ( !\AddSubR~q\ $ (Breg(7)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datab => ALT_INV_Breg(7),
	datac => \multiplexer|ALT_INV_F[7]~8_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\);

-- Location: FF_X29_Y3_N53
\Zreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(7));

-- Location: IOIBUF_X16_Y0_N52
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: FF_X29_Y4_N16
\Breg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[8]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(8));

-- Location: IOIBUF_X18_Y0_N58
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X29_Y4_N15
\Areg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Areg[8]~feeder_combout\ = ( \A[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Areg[8]~feeder_combout\);

-- Location: FF_X29_Y4_N17
\Areg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Areg[8]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(8));

-- Location: LABCELL_X29_Y4_N57
\multiplexer|F[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[8]~9_combout\ = ( Zreg(8) & ( \SelR~q\ ) ) # ( Zreg(8) & ( !\SelR~q\ & ( Areg(8) ) ) ) # ( !Zreg(8) & ( !\SelR~q\ & ( Areg(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Areg(8),
	datae => ALT_INV_Zreg(8),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[8]~9_combout\);

-- Location: LABCELL_X30_Y4_N27
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8) = SUM(( \multiplexer|F[8]~9_combout\ ) + ( !\AddSubR~q\ $ (Breg(8)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ = CARRY(( \multiplexer|F[8]~9_combout\ ) + ( !\AddSubR~q\ $ (Breg(8)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(8),
	datad => \multiplexer|ALT_INV_F[8]~9_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\);

-- Location: FF_X29_Y4_N59
\Zreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(8));

-- Location: IOIBUF_X10_Y0_N92
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: FF_X29_Y4_N41
\Areg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[9]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(9));

-- Location: LABCELL_X29_Y4_N0
\multiplexer|F[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[9]~10_combout\ = ( \SelR~q\ & ( Zreg(9) ) ) # ( !\SelR~q\ & ( Areg(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Areg(9),
	datad => ALT_INV_Zreg(9),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[9]~10_combout\);

-- Location: IOIBUF_X12_Y0_N52
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X29_Y4_N33
\Breg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[9]~feeder_combout\ = \B[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[9]~input_o\,
	combout => \Breg[9]~feeder_combout\);

-- Location: FF_X29_Y4_N34
\Breg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[9]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(9));

-- Location: LABCELL_X30_Y4_N30
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9) = SUM(( !\AddSubR~q\ $ (Breg(9)) ) + ( \multiplexer|F[9]~10_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(9)) ) + ( \multiplexer|F[9]~10_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|ALT_INV_F[9]~10_combout\,
	datac => \ALT_INV_AddSubR~q\,
	datad => ALT_INV_Breg(9),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\);

-- Location: FF_X29_Y4_N2
\Zreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(9));

-- Location: IOIBUF_X26_Y0_N41
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: FF_X29_Y3_N59
\Areg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[10]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(10));

-- Location: LABCELL_X29_Y3_N39
\multiplexer|F[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[10]~11_combout\ = ( Areg(10) & ( \SelR~q\ & ( Zreg(10) ) ) ) # ( !Areg(10) & ( \SelR~q\ & ( Zreg(10) ) ) ) # ( Areg(10) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(10),
	datae => ALT_INV_Areg(10),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[10]~11_combout\);

-- Location: IOIBUF_X70_Y0_N18
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: FF_X29_Y4_N43
\Breg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[10]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(10));

-- Location: LABCELL_X30_Y4_N33
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10) = SUM(( !\AddSubR~q\ $ (Breg(10)) ) + ( \multiplexer|F[10]~11_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(10)) ) + ( \multiplexer|F[10]~11_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[10]~11_combout\,
	datad => ALT_INV_Breg(10),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\);

-- Location: FF_X29_Y3_N17
\Zreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(10));

-- Location: IOIBUF_X89_Y4_N95
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: FF_X29_Y4_N26
\Areg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[11]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(11));

-- Location: LABCELL_X29_Y4_N24
\multiplexer|F[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[11]~12_combout\ = ( \SelR~q\ & ( Zreg(11) ) ) # ( !\SelR~q\ & ( Areg(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(11),
	datad => ALT_INV_Areg(11),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[11]~12_combout\);

-- Location: IOIBUF_X22_Y0_N1
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X29_Y4_N39
\Breg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[11]~feeder_combout\ = \B[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[11]~input_o\,
	combout => \Breg[11]~feeder_combout\);

-- Location: FF_X29_Y4_N40
\Breg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[11]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(11));

-- Location: LABCELL_X30_Y4_N36
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11) = SUM(( \multiplexer|F[11]~12_combout\ ) + ( !\AddSubR~q\ $ (Breg(11)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ = CARRY(( \multiplexer|F[11]~12_combout\ ) + ( !\AddSubR~q\ $ (Breg(11)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|ALT_INV_F[11]~12_combout\,
	datac => \ALT_INV_AddSubR~q\,
	dataf => ALT_INV_Breg(11),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\);

-- Location: FF_X29_Y4_N35
\Zreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(11));

-- Location: IOIBUF_X56_Y0_N1
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: FF_X31_Y4_N19
\Breg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[12]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(12));

-- Location: FF_X29_Y4_N38
\Zreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(12));

-- Location: IOIBUF_X16_Y0_N35
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: FF_X29_Y4_N29
\Areg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[12]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(12));

-- Location: LABCELL_X29_Y4_N27
\multiplexer|F[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[12]~13_combout\ = ( \SelR~q\ & ( Zreg(12) ) ) # ( !\SelR~q\ & ( Areg(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Zreg(12),
	datad => ALT_INV_Areg(12),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[12]~13_combout\);

-- Location: LABCELL_X30_Y4_N39
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12) = SUM(( \multiplexer|F[12]~13_combout\ ) + ( !\AddSubR~q\ $ (Breg(12)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ = CARRY(( \multiplexer|F[12]~13_combout\ ) + ( !\AddSubR~q\ $ (Breg(12)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(12),
	datad => \multiplexer|ALT_INV_F[12]~13_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\);

-- Location: FF_X29_Y4_N37
\Zreg[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[12]~DUPLICATE_q\);

-- Location: IOIBUF_X52_Y0_N52
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: FF_X31_Y4_N47
\Breg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[13]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(13));

-- Location: IOIBUF_X74_Y0_N75
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: FF_X31_Y4_N8
\Areg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[13]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(13));

-- Location: LABCELL_X31_Y4_N6
\multiplexer|F[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[13]~14_combout\ = ( Areg(13) & ( \SelR~q\ & ( Zreg(13) ) ) ) # ( !Areg(13) & ( \SelR~q\ & ( Zreg(13) ) ) ) # ( Areg(13) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(13),
	datae => ALT_INV_Areg(13),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[13]~14_combout\);

-- Location: LABCELL_X30_Y4_N42
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13) = SUM(( \multiplexer|F[13]~14_combout\ ) + ( !\AddSubR~q\ $ (Breg(13)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ = CARRY(( \multiplexer|F[13]~14_combout\ ) + ( !\AddSubR~q\ $ (Breg(13)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(13),
	datad => \multiplexer|ALT_INV_F[13]~14_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\);

-- Location: FF_X31_Y4_N50
\Zreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(13));

-- Location: IOIBUF_X32_Y0_N52
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: FF_X29_Y4_N20
\Breg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[14]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(14));

-- Location: IOIBUF_X14_Y0_N35
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: FF_X29_Y4_N23
\Areg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[14]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(14));

-- Location: LABCELL_X29_Y4_N21
\multiplexer|F[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[14]~15_combout\ = ( \SelR~q\ & ( Zreg(14) ) ) # ( !\SelR~q\ & ( Areg(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(14),
	datad => ALT_INV_Areg(14),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[14]~15_combout\);

-- Location: LABCELL_X30_Y4_N45
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14) = SUM(( \multiplexer|F[14]~15_combout\ ) + ( !\AddSubR~q\ $ (Breg(14)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ = CARRY(( \multiplexer|F[14]~15_combout\ ) + ( !\AddSubR~q\ $ (Breg(14)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(14),
	datad => \multiplexer|ALT_INV_F[14]~15_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\);

-- Location: LABCELL_X29_Y4_N9
\Zreg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Zreg[14]~feeder_combout\ = ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(14),
	combout => \Zreg[14]~feeder_combout\);

-- Location: FF_X29_Y4_N11
\Zreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Zreg[14]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(14));

-- Location: IOIBUF_X20_Y0_N1
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X29_Y4_N6
\Breg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[15]~feeder_combout\ = ( \B[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Breg[15]~feeder_combout\);

-- Location: FF_X29_Y4_N8
\Breg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[15]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(15));

-- Location: IOIBUF_X34_Y0_N41
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: FF_X31_Y3_N50
\Areg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[15]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(15));

-- Location: FF_X31_Y3_N59
\Zreg[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Zreg[15]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[15]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y3_N6
\multiplexer|F[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[15]~16_combout\ = ( \Zreg[15]~DUPLICATE_q\ & ( \SelR~q\ ) ) # ( \Zreg[15]~DUPLICATE_q\ & ( !\SelR~q\ & ( Areg(15) ) ) ) # ( !\Zreg[15]~DUPLICATE_q\ & ( !\SelR~q\ & ( Areg(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Areg(15),
	datae => \ALT_INV_Zreg[15]~DUPLICATE_q\,
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[15]~16_combout\);

-- Location: LABCELL_X30_Y4_N48
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15) = SUM(( \multiplexer|F[15]~16_combout\ ) + ( !\AddSubR~q\ $ (Breg(15)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ = CARRY(( \multiplexer|F[15]~16_combout\ ) + ( !\AddSubR~q\ $ (Breg(15)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(15),
	datad => \multiplexer|ALT_INV_F[15]~16_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\);

-- Location: LABCELL_X31_Y3_N57
\Zreg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Zreg[15]~feeder_combout\ = ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(15),
	combout => \Zreg[15]~feeder_combout\);

-- Location: FF_X31_Y3_N58
\Zreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Zreg[15]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(15));

-- Location: IOIBUF_X38_Y0_N1
\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: FF_X31_Y3_N26
\Areg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[16]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(16));

-- Location: LABCELL_X31_Y3_N33
\multiplexer|F[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[16]~17_combout\ = ( Zreg(16) & ( \SelR~q\ ) ) # ( Zreg(16) & ( !\SelR~q\ & ( Areg(16) ) ) ) # ( !Zreg(16) & ( !\SelR~q\ & ( Areg(16) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Areg(16),
	datae => ALT_INV_Zreg(16),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[16]~17_combout\);

-- Location: IOIBUF_X12_Y0_N1
\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: FF_X29_Y4_N55
\Breg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[16]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(16));

-- Location: LABCELL_X30_Y4_N51
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16) = SUM(( \multiplexer|F[16]~17_combout\ ) + ( !\AddSubR~q\ $ (Breg(16)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ = CARRY(( \multiplexer|F[16]~17_combout\ ) + ( !\AddSubR~q\ $ (Breg(16)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datad => \multiplexer|ALT_INV_F[16]~17_combout\,
	dataf => ALT_INV_Breg(16),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\);

-- Location: FF_X31_Y3_N5
\Zreg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(16));

-- Location: IOIBUF_X28_Y81_N1
\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: FF_X29_Y4_N47
\Areg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[17]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(17));

-- Location: LABCELL_X29_Y4_N45
\multiplexer|F[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[17]~18_combout\ = ( Areg(17) & ( \SelR~q\ & ( Zreg(17) ) ) ) # ( !Areg(17) & ( \SelR~q\ & ( Zreg(17) ) ) ) # ( Areg(17) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Zreg(17),
	datae => ALT_INV_Areg(17),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[17]~18_combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: FF_X31_Y4_N25
\Breg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[17]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(17));

-- Location: LABCELL_X30_Y4_N54
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17) = SUM(( !\AddSubR~q\ $ (Breg(17)) ) + ( \multiplexer|F[17]~18_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(17)) ) + ( \multiplexer|F[17]~18_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[17]~18_combout\,
	datad => ALT_INV_Breg(17),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\);

-- Location: LABCELL_X29_Y4_N3
\Zreg[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Zreg[17]~feeder_combout\ = ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(17),
	combout => \Zreg[17]~feeder_combout\);

-- Location: FF_X29_Y4_N5
\Zreg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Zreg[17]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(17));

-- Location: IOIBUF_X22_Y0_N35
\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X28_Y4_N36
\Areg[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Areg[18]~feeder_combout\ = ( \A[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Areg[18]~feeder_combout\);

-- Location: FF_X28_Y4_N37
\Areg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Areg[18]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(18));

-- Location: LABCELL_X29_Y4_N18
\multiplexer|F[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[18]~19_combout\ = ( Zreg(18) & ( (Areg(18)) # (\SelR~q\) ) ) # ( !Zreg(18) & ( (!\SelR~q\ & Areg(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Areg(18),
	dataf => ALT_INV_Zreg(18),
	combout => \multiplexer|F[18]~19_combout\);

-- Location: IOIBUF_X89_Y4_N78
\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: FF_X29_Y4_N52
\Breg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[18]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(18));

-- Location: LABCELL_X30_Y4_N57
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18) = SUM(( \multiplexer|F[18]~19_combout\ ) + ( !\AddSubR~q\ $ (Breg(18)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ = CARRY(( \multiplexer|F[18]~19_combout\ ) + ( !\AddSubR~q\ $ (Breg(18)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[18]~19_combout\,
	dataf => ALT_INV_Breg(18),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\);

-- Location: FF_X29_Y4_N50
\Zreg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(18));

-- Location: IOIBUF_X58_Y0_N41
\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: FF_X30_Y3_N56
\Breg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[19]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(19));

-- Location: IOIBUF_X24_Y0_N35
\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: FF_X29_Y3_N38
\Areg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[19]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(19));

-- Location: LABCELL_X29_Y3_N6
\multiplexer|F[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[19]~20_combout\ = ( Zreg(19) & ( (Areg(19)) # (\SelR~q\) ) ) # ( !Zreg(19) & ( (!\SelR~q\ & Areg(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Areg(19),
	dataf => ALT_INV_Zreg(19),
	combout => \multiplexer|F[19]~20_combout\);

-- Location: LABCELL_X30_Y3_N0
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19) = SUM(( \multiplexer|F[19]~20_combout\ ) + ( !\AddSubR~q\ $ (Breg(19)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ = CARRY(( \multiplexer|F[19]~20_combout\ ) + ( !\AddSubR~q\ $ (Breg(19)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(19),
	datad => \multiplexer|ALT_INV_F[19]~20_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\);

-- Location: FF_X29_Y3_N20
\Zreg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(19));

-- Location: IOIBUF_X30_Y0_N18
\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: FF_X30_Y3_N59
\Breg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[20]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(20));

-- Location: IOIBUF_X60_Y0_N35
\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: FF_X31_Y3_N31
\Areg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[20]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(20));

-- Location: LABCELL_X31_Y3_N27
\multiplexer|F[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[20]~21_combout\ = ( Zreg(20) & ( (\SelR~q\) # (Areg(20)) ) ) # ( !Zreg(20) & ( (Areg(20) & !\SelR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Areg(20),
	datad => \ALT_INV_SelR~q\,
	dataf => ALT_INV_Zreg(20),
	combout => \multiplexer|F[20]~21_combout\);

-- Location: LABCELL_X30_Y3_N3
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20) = SUM(( \multiplexer|F[20]~21_combout\ ) + ( !\AddSubR~q\ $ (Breg(20)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ = CARRY(( \multiplexer|F[20]~21_combout\ ) + ( !\AddSubR~q\ $ (Breg(20)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(20),
	datad => \multiplexer|ALT_INV_F[20]~21_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\);

-- Location: FF_X30_Y3_N5
\Zreg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(20));

-- Location: IOIBUF_X56_Y0_N35
\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: FF_X31_Y3_N41
\Breg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[21]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(21));

-- Location: IOIBUF_X28_Y0_N18
\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: FF_X29_Y3_N56
\Areg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[21]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(21));

-- Location: LABCELL_X29_Y3_N54
\multiplexer|F[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[21]~22_combout\ = ( Areg(21) & ( \SelR~q\ & ( Zreg(21) ) ) ) # ( !Areg(21) & ( \SelR~q\ & ( Zreg(21) ) ) ) # ( Areg(21) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Zreg(21),
	datae => ALT_INV_Areg(21),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[21]~22_combout\);

-- Location: LABCELL_X30_Y3_N6
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21) = SUM(( !\AddSubR~q\ $ (Breg(21)) ) + ( \multiplexer|F[21]~22_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(21)) ) + ( \multiplexer|F[21]~22_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(21),
	dataf => \multiplexer|ALT_INV_F[21]~22_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\);

-- Location: FF_X29_Y3_N44
\Zreg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(21));

-- Location: IOIBUF_X36_Y0_N18
\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: FF_X31_Y3_N13
\Breg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[22]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(22));

-- Location: IOIBUF_X24_Y0_N18
\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: FF_X29_Y3_N50
\Areg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[22]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(22));

-- Location: LABCELL_X29_Y3_N48
\multiplexer|F[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[22]~23_combout\ = ( Areg(22) & ( (!\SelR~q\) # (Zreg(22)) ) ) # ( !Areg(22) & ( (\SelR~q\ & Zreg(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(22),
	datae => ALT_INV_Areg(22),
	combout => \multiplexer|F[22]~23_combout\);

-- Location: LABCELL_X30_Y3_N9
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22) = SUM(( \multiplexer|F[22]~23_combout\ ) + ( !\AddSubR~q\ $ (Breg(22)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ = CARRY(( \multiplexer|F[22]~23_combout\ ) + ( !\AddSubR~q\ $ (Breg(22)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(22),
	datad => \multiplexer|ALT_INV_F[22]~23_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\);

-- Location: FF_X30_Y3_N11
\Zreg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(22));

-- Location: IOIBUF_X38_Y0_N52
\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: FF_X31_Y3_N2
\Areg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[23]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(23));

-- Location: LABCELL_X31_Y3_N0
\multiplexer|F[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[23]~24_combout\ = ( Areg(23) & ( (!\SelR~q\) # (Zreg(23)) ) ) # ( !Areg(23) & ( (Zreg(23) & \SelR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Zreg(23),
	datac => \ALT_INV_SelR~q\,
	datae => ALT_INV_Areg(23),
	combout => \multiplexer|F[23]~24_combout\);

-- Location: IOIBUF_X36_Y0_N1
\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: FF_X31_Y3_N43
\Breg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[23]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(23));

-- Location: LABCELL_X30_Y3_N12
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23) = SUM(( \multiplexer|F[23]~24_combout\ ) + ( !\AddSubR~q\ $ (Breg(23)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ = CARRY(( \multiplexer|F[23]~24_combout\ ) + ( !\AddSubR~q\ $ (Breg(23)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[23]~24_combout\,
	dataf => ALT_INV_Breg(23),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\);

-- Location: FF_X30_Y3_N2
\Zreg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(23));

-- Location: IOIBUF_X50_Y0_N58
\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: FF_X31_Y3_N46
\Breg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[24]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(24));

-- Location: IOIBUF_X40_Y0_N52
\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: FF_X31_Y3_N17
\Areg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[24]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(24));

-- Location: LABCELL_X31_Y3_N15
\multiplexer|F[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[24]~25_combout\ = ( Areg(24) & ( \SelR~q\ & ( Zreg(24) ) ) ) # ( !Areg(24) & ( \SelR~q\ & ( Zreg(24) ) ) ) # ( Areg(24) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(24),
	datae => ALT_INV_Areg(24),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[24]~25_combout\);

-- Location: LABCELL_X30_Y3_N15
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24) = SUM(( \multiplexer|F[24]~25_combout\ ) + ( !\AddSubR~q\ $ (Breg(24)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ = CARRY(( \multiplexer|F[24]~25_combout\ ) + ( !\AddSubR~q\ $ (Breg(24)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(24),
	datad => \multiplexer|ALT_INV_F[24]~25_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\);

-- Location: FF_X30_Y3_N17
\Zreg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(24));

-- Location: IOIBUF_X24_Y0_N1
\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: FF_X29_Y3_N41
\Areg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[25]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(25));

-- Location: LABCELL_X29_Y3_N9
\multiplexer|F[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[25]~26_combout\ = ( Zreg(25) & ( (Areg(25)) # (\SelR~q\) ) ) # ( !Zreg(25) & ( (!\SelR~q\ & Areg(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Areg(25),
	dataf => ALT_INV_Zreg(25),
	combout => \multiplexer|F[25]~26_combout\);

-- Location: IOIBUF_X28_Y0_N35
\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: FF_X29_Y3_N34
\Breg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[25]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(25));

-- Location: LABCELL_X30_Y3_N18
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25) = SUM(( !\AddSubR~q\ $ (Breg(25)) ) + ( \multiplexer|F[25]~26_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(25)) ) + ( \multiplexer|F[25]~26_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|ALT_INV_F[25]~26_combout\,
	datac => \ALT_INV_AddSubR~q\,
	datad => ALT_INV_Breg(25),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\);

-- Location: FF_X30_Y3_N20
\Zreg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(25));

-- Location: IOIBUF_X8_Y0_N35
\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: FF_X30_Y3_N8
\Areg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[26]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(26));

-- Location: LABCELL_X30_Y3_N48
\multiplexer|F[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[26]~27_combout\ = ( Areg(26) & ( (!\SelR~q\) # (Zreg(26)) ) ) # ( !Areg(26) & ( (Zreg(26) & \SelR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(26),
	datad => \ALT_INV_SelR~q\,
	dataf => ALT_INV_Areg(26),
	combout => \multiplexer|F[26]~27_combout\);

-- Location: IOIBUF_X40_Y0_N1
\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: FF_X31_Y3_N10
\Breg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[26]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(26));

-- Location: LABCELL_X30_Y3_N21
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26) = SUM(( \multiplexer|F[26]~27_combout\ ) + ( !\AddSubR~q\ $ (Breg(26)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ = CARRY(( \multiplexer|F[26]~27_combout\ ) + ( !\AddSubR~q\ $ (Breg(26)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[26]~27_combout\,
	dataf => ALT_INV_Breg(26),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\);

-- Location: FF_X30_Y3_N23
\Zreg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(26));

-- Location: IOIBUF_X20_Y0_N52
\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: FF_X31_Y3_N53
\Areg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[27]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(27));

-- Location: LABCELL_X31_Y3_N51
\multiplexer|F[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[27]~28_combout\ = ( Zreg(27) & ( (Areg(27)) # (\SelR~q\) ) ) # ( !Zreg(27) & ( (!\SelR~q\ & Areg(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Areg(27),
	dataf => ALT_INV_Zreg(27),
	combout => \multiplexer|F[27]~28_combout\);

-- Location: IOIBUF_X40_Y0_N18
\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: FF_X31_Y3_N23
\Breg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[27]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(27));

-- Location: LABCELL_X30_Y3_N24
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27) = SUM(( !\AddSubR~q\ $ (Breg(27)) ) + ( \multiplexer|F[27]~28_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(27)) ) + ( \multiplexer|F[27]~28_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[27]~28_combout\,
	datad => ALT_INV_Breg(27),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\);

-- Location: FF_X30_Y3_N26
\Zreg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(27));

-- Location: IOIBUF_X24_Y0_N52
\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: FF_X29_Y3_N5
\Areg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[28]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(28));

-- Location: LABCELL_X29_Y3_N3
\multiplexer|F[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[28]~29_combout\ = ( Areg(28) & ( \SelR~q\ & ( Zreg(28) ) ) ) # ( !Areg(28) & ( \SelR~q\ & ( Zreg(28) ) ) ) # ( Areg(28) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(28),
	datae => ALT_INV_Areg(28),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[28]~29_combout\);

-- Location: IOIBUF_X16_Y0_N18
\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: FF_X28_Y3_N28
\Breg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[28]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(28));

-- Location: LABCELL_X30_Y3_N27
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28) = SUM(( \multiplexer|F[28]~29_combout\ ) + ( !\AddSubR~q\ $ (Breg(28)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ = CARRY(( \multiplexer|F[28]~29_combout\ ) + ( !\AddSubR~q\ $ (Breg(28)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[28]~29_combout\,
	dataf => ALT_INV_Breg(28),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\);

-- Location: FF_X30_Y3_N29
\Zreg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(28));

-- Location: IOIBUF_X36_Y0_N52
\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: FF_X31_Y3_N28
\Breg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \B[29]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(29));

-- Location: IOIBUF_X22_Y0_N18
\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: FF_X29_Y3_N14
\Areg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[29]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(29));

-- Location: LABCELL_X29_Y3_N12
\multiplexer|F[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[29]~30_combout\ = ( Areg(29) & ( (!\SelR~q\) # (Zreg(29)) ) ) # ( !Areg(29) & ( (\SelR~q\ & Zreg(29)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(29),
	datae => ALT_INV_Areg(29),
	combout => \multiplexer|F[29]~30_combout\);

-- Location: LABCELL_X30_Y3_N30
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29) = SUM(( \multiplexer|F[29]~30_combout\ ) + ( !\AddSubR~q\ $ (Breg(29)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ = CARRY(( \multiplexer|F[29]~30_combout\ ) + ( !\AddSubR~q\ $ (Breg(29)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(29),
	datad => \multiplexer|ALT_INV_F[29]~30_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\);

-- Location: FF_X30_Y3_N32
\Zreg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(29));

-- Location: IOIBUF_X32_Y0_N18
\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X31_Y2_N15
\Breg[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[30]~feeder_combout\ = ( \B[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \Breg[30]~feeder_combout\);

-- Location: FF_X31_Y2_N16
\Breg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[30]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(30));

-- Location: IOIBUF_X14_Y0_N1
\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: FF_X29_Y3_N29
\Areg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[30]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(30));

-- Location: LABCELL_X29_Y3_N27
\multiplexer|F[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[30]~31_combout\ = ( Zreg(30) & ( (Areg(30)) # (\SelR~q\) ) ) # ( !Zreg(30) & ( (!\SelR~q\ & Areg(30)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Areg(30),
	dataf => ALT_INV_Zreg(30),
	combout => \multiplexer|F[30]~31_combout\);

-- Location: LABCELL_X30_Y3_N33
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30) = SUM(( !\AddSubR~q\ $ (Breg(30)) ) + ( \multiplexer|F[30]~31_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ = CARRY(( !\AddSubR~q\ $ (Breg(30)) ) + ( \multiplexer|F[30]~31_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => ALT_INV_Breg(30),
	dataf => \multiplexer|ALT_INV_F[30]~31_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\);

-- Location: FF_X30_Y3_N35
\Zreg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(30));

-- Location: IOIBUF_X34_Y0_N92
\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: FF_X31_Y3_N8
\Areg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \A[31]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Areg(31));

-- Location: LABCELL_X31_Y3_N48
\multiplexer|F[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[31]~0_combout\ = ( Areg(31) & ( (!\SelR~q\) # (Zreg(31)) ) ) # ( !Areg(31) & ( (\SelR~q\ & Zreg(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(31),
	dataf => ALT_INV_Areg(31),
	combout => \multiplexer|F[31]~0_combout\);

-- Location: IOIBUF_X34_Y0_N58
\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X31_Y3_N54
\Breg[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Breg[31]~feeder_combout\ = ( \B[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Breg[31]~feeder_combout\);

-- Location: FF_X31_Y3_N56
\Breg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Breg[31]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Breg(31));

-- Location: LABCELL_X30_Y3_N36
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31) = SUM(( !\AddSubR~q\ $ (Breg(31)) ) + ( \multiplexer|F[31]~0_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[31]~0_combout\,
	datad => ALT_INV_Breg(31),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31));

-- Location: FF_X30_Y3_N14
\Zreg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(31));

-- Location: LABCELL_X30_Y3_N51
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0) = ( \AddSubR~q\ & ( (!\multiplexer|F[31]~0_combout\ & (!Breg(31) & \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31))) # (\multiplexer|F[31]~0_combout\ & (Breg(31) & 
-- !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31))) ) ) # ( !\AddSubR~q\ & ( (!\multiplexer|F[31]~0_combout\ & (Breg(31) & \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31))) # (\multiplexer|F[31]~0_combout\ & (!Breg(31) & 
-- !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|ALT_INV_F[31]~0_combout\,
	datac => ALT_INV_Breg(31),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(31),
	dataf => \ALT_INV_AddSubR~q\,
	combout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0));

-- Location: FF_X30_Y3_N52
\Overflow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Overflow~reg0_q\);

-- Location: LABCELL_X31_Y4_N45
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(0),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(5),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(2),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(3),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(1),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(4),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X31_Y3_N18
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(12),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(14),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(13),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(15),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(26),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(16),
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X30_Y3_N57
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22) & ( \Equal0~6_combout\ & ( (\Equal0~0_combout\ & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(24),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(23),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(25),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(22),
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X29_Y3_N30
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(6),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(8),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(7),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(9),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(11),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(10),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X29_Y3_N24
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(17),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(18),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X29_Y3_N45
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27) & ( \Equal0~5_combout\ & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21) & (\Equal0~4_combout\ & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(21),
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(20),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(19),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(27),
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X30_Y3_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(30),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(28),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(31),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(29),
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X30_Y3_N43
\zero~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Equal0~3_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zero~reg0_q\);

-- Location: FF_X30_Y3_N37
\neg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31),
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \neg~reg0_q\);

-- Location: LABCELL_X12_Y4_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


