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

-- DATE "11/29/2020 18:04:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mejia_reg_file_Nov7 IS
    PORT (
	address_a : IN std_logic_vector(4 DOWNTO 0);
	address_b : IN std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	data_a : IN std_logic_vector(31 DOWNTO 0);
	data_b : IN std_logic_vector(31 DOWNTO 0);
	wren_a : IN std_logic;
	wren_b : IN std_logic;
	q_a : OUT std_logic_vector(31 DOWNTO 0);
	q_b : OUT std_logic_vector(31 DOWNTO 0)
	);
END mejia_reg_file_Nov7;

-- Design Ports Information
-- q_a[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[11]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[16]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[17]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[18]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[19]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[20]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[22]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[23]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[24]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[25]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[26]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[27]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[28]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[29]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[30]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[31]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[16]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[17]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[18]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[19]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[20]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[23]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[24]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[25]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[26]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[27]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[28]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[29]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[30]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_a	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_b	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[9]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[10]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[11]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[11]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[12]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[13]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[16]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[16]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[17]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[17]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[18]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[18]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[19]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[19]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[20]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[21]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[22]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[23]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[23]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[24]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[25]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[26]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[26]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[27]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[27]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[28]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[28]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[29]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[29]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[30]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[30]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[31]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[31]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mejia_reg_file_Nov7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren_a : std_logic;
SIGNAL ww_wren_b : std_logic;
SIGNAL ww_q_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(31 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \wren_a~input_o\ : std_logic;
SIGNAL \wren_b~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_a[0]~input_o\ : std_logic;
SIGNAL \address_a[0]~input_o\ : std_logic;
SIGNAL \address_a[1]~input_o\ : std_logic;
SIGNAL \address_a[2]~input_o\ : std_logic;
SIGNAL \address_a[3]~input_o\ : std_logic;
SIGNAL \address_a[4]~input_o\ : std_logic;
SIGNAL \data_b[0]~input_o\ : std_logic;
SIGNAL \address_b[0]~input_o\ : std_logic;
SIGNAL \address_b[1]~input_o\ : std_logic;
SIGNAL \address_b[2]~input_o\ : std_logic;
SIGNAL \address_b[3]~input_o\ : std_logic;
SIGNAL \address_b[4]~input_o\ : std_logic;
SIGNAL \data_a[1]~input_o\ : std_logic;
SIGNAL \data_a[2]~input_o\ : std_logic;
SIGNAL \data_a[3]~input_o\ : std_logic;
SIGNAL \data_a[4]~input_o\ : std_logic;
SIGNAL \data_a[5]~input_o\ : std_logic;
SIGNAL \data_a[6]~input_o\ : std_logic;
SIGNAL \data_a[7]~input_o\ : std_logic;
SIGNAL \data_a[8]~input_o\ : std_logic;
SIGNAL \data_a[9]~input_o\ : std_logic;
SIGNAL \data_a[10]~input_o\ : std_logic;
SIGNAL \data_a[11]~input_o\ : std_logic;
SIGNAL \data_a[12]~input_o\ : std_logic;
SIGNAL \data_a[13]~input_o\ : std_logic;
SIGNAL \data_a[14]~input_o\ : std_logic;
SIGNAL \data_a[15]~input_o\ : std_logic;
SIGNAL \data_a[16]~input_o\ : std_logic;
SIGNAL \data_a[17]~input_o\ : std_logic;
SIGNAL \data_a[18]~input_o\ : std_logic;
SIGNAL \data_a[19]~input_o\ : std_logic;
SIGNAL \data_b[1]~input_o\ : std_logic;
SIGNAL \data_b[2]~input_o\ : std_logic;
SIGNAL \data_b[3]~input_o\ : std_logic;
SIGNAL \data_b[4]~input_o\ : std_logic;
SIGNAL \data_b[5]~input_o\ : std_logic;
SIGNAL \data_b[6]~input_o\ : std_logic;
SIGNAL \data_b[7]~input_o\ : std_logic;
SIGNAL \data_b[8]~input_o\ : std_logic;
SIGNAL \data_b[9]~input_o\ : std_logic;
SIGNAL \data_b[10]~input_o\ : std_logic;
SIGNAL \data_b[11]~input_o\ : std_logic;
SIGNAL \data_b[12]~input_o\ : std_logic;
SIGNAL \data_b[13]~input_o\ : std_logic;
SIGNAL \data_b[14]~input_o\ : std_logic;
SIGNAL \data_b[15]~input_o\ : std_logic;
SIGNAL \data_b[16]~input_o\ : std_logic;
SIGNAL \data_b[17]~input_o\ : std_logic;
SIGNAL \data_b[18]~input_o\ : std_logic;
SIGNAL \data_b[19]~input_o\ : std_logic;
SIGNAL \data_a[20]~input_o\ : std_logic;
SIGNAL \data_b[20]~input_o\ : std_logic;
SIGNAL \data_a[21]~input_o\ : std_logic;
SIGNAL \data_a[22]~input_o\ : std_logic;
SIGNAL \data_a[23]~input_o\ : std_logic;
SIGNAL \data_a[24]~input_o\ : std_logic;
SIGNAL \data_a[25]~input_o\ : std_logic;
SIGNAL \data_a[26]~input_o\ : std_logic;
SIGNAL \data_a[27]~input_o\ : std_logic;
SIGNAL \data_a[28]~input_o\ : std_logic;
SIGNAL \data_a[29]~input_o\ : std_logic;
SIGNAL \data_a[30]~input_o\ : std_logic;
SIGNAL \data_a[31]~input_o\ : std_logic;
SIGNAL \data_b[21]~input_o\ : std_logic;
SIGNAL \data_b[22]~input_o\ : std_logic;
SIGNAL \data_b[23]~input_o\ : std_logic;
SIGNAL \data_b[24]~input_o\ : std_logic;
SIGNAL \data_b[25]~input_o\ : std_logic;
SIGNAL \data_b[26]~input_o\ : std_logic;
SIGNAL \data_b[27]~input_o\ : std_logic;
SIGNAL \data_b[28]~input_o\ : std_logic;
SIGNAL \data_b[29]~input_o\ : std_logic;
SIGNAL \data_b[30]~input_o\ : std_logic;
SIGNAL \data_b[31]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|q_b\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_address_a <= address_a;
ww_address_b <= address_b;
ww_clock <= clock;
ww_data_a <= data_a;
ww_data_b <= data_b;
ww_wren_a <= wren_a;
ww_wren_b <= wren_b;
q_a <= ww_q_a;
q_b <= ww_q_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\data_a[19]~input_o\ & \data_a[18]~input_o\ & \data_a[17]~input_o\ & \data_a[16]~input_o\ & \data_a[15]~input_o\ & \data_a[14]~input_o\ & \data_a[13]~input_o\ & \data_a[12]~input_o\ & 
\data_a[11]~input_o\ & \data_a[10]~input_o\ & \data_a[9]~input_o\ & \data_a[8]~input_o\ & \data_a[7]~input_o\ & \data_a[6]~input_o\ & \data_a[5]~input_o\ & \data_a[4]~input_o\ & \data_a[3]~input_o\ & \data_a[2]~input_o\ & \data_a[1]~input_o\ & 
\data_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\data_b[19]~input_o\ & \data_b[18]~input_o\ & \data_b[17]~input_o\ & \data_b[16]~input_o\ & \data_b[15]~input_o\ & \data_b[14]~input_o\ & \data_b[13]~input_o\ & \data_b[12]~input_o\ & 
\data_b[11]~input_o\ & \data_b[10]~input_o\ & \data_b[9]~input_o\ & \data_b[8]~input_o\ & \data_b[7]~input_o\ & \data_b[6]~input_o\ & \data_b[5]~input_o\ & \data_b[4]~input_o\ & \data_b[3]~input_o\ & \data_b[2]~input_o\ & \data_b[1]~input_o\ & 
\data_b[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address_a[4]~input_o\ & \address_a[3]~input_o\ & \address_a[2]~input_o\ & \address_a[1]~input_o\ & \address_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\address_b[4]~input_o\ & \address_b[3]~input_o\ & \address_b[2]~input_o\ & \address_b[1]~input_o\ & \address_b[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(16) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(17) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\altsyncram_component|auto_generated|q_a\(18) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\altsyncram_component|auto_generated|q_a\(19) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);

\altsyncram_component|auto_generated|q_b\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_b\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_b\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_b\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_b\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_b\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_b\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_b\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_b\(8) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_b\(9) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_b\(10) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_b\(11) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_b\(12) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_b\(13) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_b\(14) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_b\(15) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_b\(16) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_b\(17) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\altsyncram_component|auto_generated|q_b\(18) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\altsyncram_component|auto_generated|q_b\(19) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);

\altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_a[31]~input_o\ & \data_a[30]~input_o\ & \data_a[29]~input_o\ & \data_a[28]~input_o\ & \data_a[27]~input_o\ & \data_a[26]~input_o\
& \data_a[25]~input_o\ & \data_a[24]~input_o\ & \data_a[23]~input_o\ & \data_a[22]~input_o\ & \data_a[21]~input_o\ & \data_a[20]~input_o\);

\altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_b[31]~input_o\ & \data_b[30]~input_o\ & \data_b[29]~input_o\ & \data_b[28]~input_o\ & \data_b[27]~input_o\ & \data_b[26]~input_o\
& \data_b[25]~input_o\ & \data_b[24]~input_o\ & \data_b[23]~input_o\ & \data_b[22]~input_o\ & \data_b[21]~input_o\ & \data_b[20]~input_o\);

\altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\address_a[4]~input_o\ & \address_a[3]~input_o\ & \address_a[2]~input_o\ & \address_a[1]~input_o\ & \address_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\address_b[4]~input_o\ & \address_b[3]~input_o\ & \address_b[2]~input_o\ & \address_b[1]~input_o\ & \address_b[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(20) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(21) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(22) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(23) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(24) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(25) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(26) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(27) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(28) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(29) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(30) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(31) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(11);

\altsyncram_component|auto_generated|q_b\(20) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_b\(21) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_b\(22) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_b\(23) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_b\(24) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_b\(25) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_b\(26) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_b\(27) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_b\(28) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_b\(29) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_b\(30) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_b\(31) <= \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(11);

-- Location: IOOBUF_X52_Y0_N36
\q_a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_q_a(0));

-- Location: IOOBUF_X60_Y0_N36
\q_a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_q_a(1));

-- Location: IOOBUF_X56_Y0_N53
\q_a[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_q_a(2));

-- Location: IOOBUF_X58_Y0_N93
\q_a[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_q_a(3));

-- Location: IOOBUF_X89_Y35_N79
\q_a[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_q_a(4));

-- Location: IOOBUF_X58_Y0_N42
\q_a[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_q_a(5));

-- Location: IOOBUF_X54_Y0_N53
\q_a[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_q_a(6));

-- Location: IOOBUF_X89_Y9_N56
\q_a[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_q_a(7));

-- Location: IOOBUF_X52_Y0_N53
\q_a[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_q_a(8));

-- Location: IOOBUF_X56_Y0_N19
\q_a[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_q_a(9));

-- Location: IOOBUF_X2_Y0_N42
\q_a[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_q_a(10));

-- Location: IOOBUF_X64_Y0_N53
\q_a[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_q_a(11));

-- Location: IOOBUF_X50_Y81_N76
\q_a[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_q_a(12));

-- Location: IOOBUF_X54_Y81_N36
\q_a[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_q_a(13));

-- Location: IOOBUF_X54_Y0_N2
\q_a[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_q_a(14));

-- Location: IOOBUF_X62_Y0_N19
\q_a[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_q_a(15));

-- Location: IOOBUF_X36_Y81_N2
\q_a[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_q_a(16));

-- Location: IOOBUF_X89_Y8_N56
\q_a[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_q_a(17));

-- Location: IOOBUF_X52_Y81_N2
\q_a[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_q_a(18));

-- Location: IOOBUF_X89_Y9_N22
\q_a[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_q_a(19));

-- Location: IOOBUF_X4_Y0_N2
\q_a[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_q_a(20));

-- Location: IOOBUF_X40_Y0_N36
\q_a[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_q_a(21));

-- Location: IOOBUF_X26_Y0_N76
\q_a[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_q_a(22));

-- Location: IOOBUF_X34_Y0_N59
\q_a[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_q_a(23));

-- Location: IOOBUF_X89_Y37_N39
\q_a[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_q_a(24));

-- Location: IOOBUF_X30_Y0_N2
\q_a[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_q_a(25));

-- Location: IOOBUF_X6_Y0_N19
\q_a[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_q_a(26));

-- Location: IOOBUF_X89_Y9_N39
\q_a[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_q_a(27));

-- Location: IOOBUF_X6_Y0_N36
\q_a[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_q_a(28));

-- Location: IOOBUF_X40_Y81_N2
\q_a[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_q_a(29));

-- Location: IOOBUF_X50_Y0_N42
\q_a[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_q_a(30));

-- Location: IOOBUF_X38_Y81_N2
\q_a[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_q_a(31));

-- Location: IOOBUF_X6_Y0_N53
\q_b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => ww_q_b(0));

-- Location: IOOBUF_X2_Y0_N93
\q_b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => ww_q_b(1));

-- Location: IOOBUF_X4_Y0_N19
\q_b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => ww_q_b(2));

-- Location: IOOBUF_X52_Y0_N19
\q_b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => ww_q_b(3));

-- Location: IOOBUF_X52_Y0_N2
\q_b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(4),
	devoe => ww_devoe,
	o => ww_q_b(4));

-- Location: IOOBUF_X89_Y8_N22
\q_b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(5),
	devoe => ww_devoe,
	o => ww_q_b(5));

-- Location: IOOBUF_X58_Y81_N42
\q_b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(6),
	devoe => ww_devoe,
	o => ww_q_b(6));

-- Location: IOOBUF_X89_Y36_N5
\q_b[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(7),
	devoe => ww_devoe,
	o => ww_q_b(7));

-- Location: IOOBUF_X2_Y0_N59
\q_b[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(8),
	devoe => ww_devoe,
	o => ww_q_b(8));

-- Location: IOOBUF_X56_Y0_N2
\q_b[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(9),
	devoe => ww_devoe,
	o => ww_q_b(9));

-- Location: IOOBUF_X60_Y0_N19
\q_b[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(10),
	devoe => ww_devoe,
	o => ww_q_b(10));

-- Location: IOOBUF_X62_Y0_N53
\q_b[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(11),
	devoe => ww_devoe,
	o => ww_q_b(11));

-- Location: IOOBUF_X40_Y81_N36
\q_b[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(12),
	devoe => ww_devoe,
	o => ww_q_b(12));

-- Location: IOOBUF_X50_Y0_N59
\q_b[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(13),
	devoe => ww_devoe,
	o => ww_q_b(13));

-- Location: IOOBUF_X89_Y6_N39
\q_b[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(14),
	devoe => ww_devoe,
	o => ww_q_b(14));

-- Location: IOOBUF_X89_Y8_N5
\q_b[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(15),
	devoe => ww_devoe,
	o => ww_q_b(15));

-- Location: IOOBUF_X4_Y0_N36
\q_b[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(16),
	devoe => ww_devoe,
	o => ww_q_b(16));

-- Location: IOOBUF_X26_Y0_N59
\q_b[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(17),
	devoe => ww_devoe,
	o => ww_q_b(17));

-- Location: IOOBUF_X62_Y0_N2
\q_b[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(18),
	devoe => ww_devoe,
	o => ww_q_b(18));

-- Location: IOOBUF_X60_Y0_N2
\q_b[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(19),
	devoe => ww_devoe,
	o => ww_q_b(19));

-- Location: IOOBUF_X72_Y0_N2
\q_b[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(20),
	devoe => ww_devoe,
	o => ww_q_b(20));

-- Location: IOOBUF_X32_Y0_N53
\q_b[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(21),
	devoe => ww_devoe,
	o => ww_q_b(21));

-- Location: IOOBUF_X32_Y0_N36
\q_b[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(22),
	devoe => ww_devoe,
	o => ww_q_b(22));

-- Location: IOOBUF_X30_Y0_N19
\q_b[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(23),
	devoe => ww_devoe,
	o => ww_q_b(23));

-- Location: IOOBUF_X34_Y81_N42
\q_b[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(24),
	devoe => ww_devoe,
	o => ww_q_b(24));

-- Location: IOOBUF_X26_Y0_N42
\q_b[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(25),
	devoe => ww_devoe,
	o => ww_q_b(25));

-- Location: IOOBUF_X32_Y81_N19
\q_b[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(26),
	devoe => ww_devoe,
	o => ww_q_b(26));

-- Location: IOOBUF_X89_Y8_N39
\q_b[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(27),
	devoe => ww_devoe,
	o => ww_q_b(27));

-- Location: IOOBUF_X36_Y81_N19
\q_b[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(28),
	devoe => ww_devoe,
	o => ww_q_b(28));

-- Location: IOOBUF_X34_Y0_N93
\q_b[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(29),
	devoe => ww_devoe,
	o => ww_q_b(29));

-- Location: IOOBUF_X8_Y0_N2
\q_b[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(30),
	devoe => ww_devoe,
	o => ww_q_b(30));

-- Location: IOOBUF_X28_Y0_N53
\q_b[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(31),
	devoe => ww_devoe,
	o => ww_q_b(31));

-- Location: IOIBUF_X28_Y0_N1
\wren_a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_a,
	o => \wren_a~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\wren_b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_b,
	o => \wren_b~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X70_Y0_N35
\data_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(0),
	o => \data_a[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\address_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(0),
	o => \address_a[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\address_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(1),
	o => \address_a[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\address_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(2),
	o => \address_a[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\address_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(3),
	o => \address_a[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\address_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(4),
	o => \address_a[4]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\data_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(0),
	o => \data_b[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\address_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(0),
	o => \address_b[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\address_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(1),
	o => \address_b[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\address_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(2),
	o => \address_b[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\address_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(3),
	o => \address_b[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\address_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(4),
	o => \address_b[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\data_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(1),
	o => \data_a[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\data_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(2),
	o => \data_a[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\data_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(3),
	o => \data_a[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\data_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(4),
	o => \data_a[4]~input_o\);

-- Location: IOIBUF_X58_Y81_N58
\data_a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(5),
	o => \data_a[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\data_a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(6),
	o => \data_a[6]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\data_a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(7),
	o => \data_a[7]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\data_a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(8),
	o => \data_a[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\data_a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(9),
	o => \data_a[9]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\data_a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(10),
	o => \data_a[10]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\data_a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(11),
	o => \data_a[11]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\data_a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(12),
	o => \data_a[12]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\data_a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(13),
	o => \data_a[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\data_a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(14),
	o => \data_a[14]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\data_a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(15),
	o => \data_a[15]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\data_a[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(16),
	o => \data_a[16]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\data_a[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(17),
	o => \data_a[17]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\data_a[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(18),
	o => \data_a[18]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\data_a[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(19),
	o => \data_a[19]~input_o\);

-- Location: IOIBUF_X52_Y81_N18
\data_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(1),
	o => \data_b[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\data_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(2),
	o => \data_b[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\data_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(3),
	o => \data_b[3]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\data_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(4),
	o => \data_b[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\data_b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(5),
	o => \data_b[5]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\data_b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(6),
	o => \data_b[6]~input_o\);

-- Location: IOIBUF_X56_Y81_N35
\data_b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(7),
	o => \data_b[7]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\data_b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(8),
	o => \data_b[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\data_b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(9),
	o => \data_b[9]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\data_b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(10),
	o => \data_b[10]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\data_b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(11),
	o => \data_b[11]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\data_b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(12),
	o => \data_b[12]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\data_b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(13),
	o => \data_b[13]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\data_b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(14),
	o => \data_b[14]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\data_b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(15),
	o => \data_b[15]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\data_b[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(16),
	o => \data_b[16]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\data_b[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(17),
	o => \data_b[17]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\data_b[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(18),
	o => \data_b[18]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\data_b[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(19),
	o => \data_b[19]~input_o\);

-- Location: M10K_X58_Y1_N0
\altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0001F0001E0001D0001C0001B0001A000190001800017000160001500014000130001200011000100000F0000E0000D0000C0000B0000A00009000080000700006000050000400003000020000100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_reg_file_Nov7.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ks24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_a~input_o\,
	portare => VCC,
	portbwe => \wren_b~input_o\,
	portbre => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X34_Y81_N58
\data_a[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(20),
	o => \data_a[20]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\data_b[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(20),
	o => \data_b[20]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\data_a[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(21),
	o => \data_a[21]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\data_a[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(22),
	o => \data_a[22]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\data_a[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(23),
	o => \data_a[23]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\data_a[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(24),
	o => \data_a[24]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\data_a[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(25),
	o => \data_a[25]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\data_a[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(26),
	o => \data_a[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\data_a[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(27),
	o => \data_a[27]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\data_a[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(28),
	o => \data_a[28]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\data_a[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(29),
	o => \data_a[29]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\data_a[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(30),
	o => \data_a[30]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\data_a[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(31),
	o => \data_a[31]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\data_b[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(21),
	o => \data_b[21]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\data_b[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(22),
	o => \data_b[22]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\data_b[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(23),
	o => \data_b[23]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\data_b[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(24),
	o => \data_b[24]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\data_b[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(25),
	o => \data_b[25]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\data_b[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(26),
	o => \data_b[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\data_b[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(27),
	o => \data_b[27]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\data_b[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(28),
	o => \data_b[28]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\data_b[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(29),
	o => \data_b[29]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\data_b[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(30),
	o => \data_b[30]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\data_b[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(31),
	o => \data_b[31]~input_o\);

-- Location: M10K_X41_Y1_N0
\altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_reg_file_Nov7.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ks24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_a~input_o\,
	portare => VCC,
	portbwe => \wren_b~input_o\,
	portbre => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portbdatain => \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\,
	portbdataout => \altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LABCELL_X53_Y51_N0
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


