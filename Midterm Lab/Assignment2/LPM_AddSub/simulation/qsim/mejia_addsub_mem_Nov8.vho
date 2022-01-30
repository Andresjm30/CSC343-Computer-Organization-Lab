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

-- DATE "11/09/2020 03:39:29"

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

ENTITY 	mejia_addsub_mem_Nov8 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Clk : IN std_logic;
	Reset : IN std_logic;
	Sel : IN std_logic;
	AddSub : IN std_logic;
	Z : BUFFER std_logic_vector(31 DOWNTO 0);
	Overflow : BUFFER std_logic;
	zero : BUFFER std_logic;
	neg : BUFFER std_logic
	);
END mejia_addsub_mem_Nov8;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[10]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[11]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[14]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[15]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[16]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[17]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[18]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[19]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[20]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[21]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[22]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[23]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[24]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[25]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[26]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[27]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[28]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[29]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[30]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[31]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddSub	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mejia_addsub_mem_Nov8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Sel : std_logic;
SIGNAL ww_AddSub : std_logic;
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_neg : std_logic;
SIGNAL \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \AddSub~input_o\ : std_logic;
SIGNAL \AddSubR~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \AddSubR~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \address_b[1]~feeder_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \address_b[2]~feeder_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \address_b[3]~feeder_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Sel~input_o\ : std_logic;
SIGNAL \SelR~q\ : std_logic;
SIGNAL \multiplexer|F[0]~1_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ : std_logic;
SIGNAL \Zreg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \multiplexer|F[1]~2_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \multiplexer|F[2]~3_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \multiplexer|F[3]~4_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \multiplexer|F[4]~5_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \multiplexer|F[5]~6_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \multiplexer|F[6]~7_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \multiplexer|F[7]~8_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ : std_logic;
SIGNAL \multiplexer|F[8]~9_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ : std_logic;
SIGNAL \multiplexer|F[9]~10_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ : std_logic;
SIGNAL \multiplexer|F[10]~11_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ : std_logic;
SIGNAL \multiplexer|F[11]~12_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ : std_logic;
SIGNAL \multiplexer|F[12]~13_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ : std_logic;
SIGNAL \multiplexer|F[13]~14_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ : std_logic;
SIGNAL \multiplexer|F[14]~15_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ : std_logic;
SIGNAL \Zreg[14]~feeder_combout\ : std_logic;
SIGNAL \multiplexer|F[15]~16_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ : std_logic;
SIGNAL \multiplexer|F[16]~17_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ : std_logic;
SIGNAL \multiplexer|F[17]~18_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ : std_logic;
SIGNAL \multiplexer|F[18]~19_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ : std_logic;
SIGNAL \Zreg[19]~DUPLICATE_q\ : std_logic;
SIGNAL \multiplexer|F[19]~20_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ : std_logic;
SIGNAL \multiplexer|F[20]~21_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ : std_logic;
SIGNAL \multiplexer|F[21]~22_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ : std_logic;
SIGNAL \multiplexer|F[22]~23_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ : std_logic;
SIGNAL \multiplexer|F[23]~24_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ : std_logic;
SIGNAL \multiplexer|F[24]~25_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ : std_logic;
SIGNAL \Zreg[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Zreg[25]~DUPLICATE_q\ : std_logic;
SIGNAL \multiplexer|F[25]~26_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ : std_logic;
SIGNAL \multiplexer|F[26]~27_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ : std_logic;
SIGNAL \multiplexer|F[27]~28_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ : std_logic;
SIGNAL \multiplexer|F[28]~29_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ : std_logic;
SIGNAL \multiplexer|F[29]~30_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ : std_logic;
SIGNAL \multiplexer|F[30]~31_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ : std_logic;
SIGNAL \multiplexer|F[31]~0_combout\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ : std_logic;
SIGNAL \Overflow~reg0_q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \zero~reg0_q\ : std_logic;
SIGNAL \neg~reg0_q\ : std_logic;
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL address_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL Zreg : std_logic_vector(31 DOWNTO 0);
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL address_a : std_logic_vector(3 DOWNTO 0);
SIGNAL \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\ : std_logic_vector(31 DOWNTO 0);
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
SIGNAL ALT_INV_Zreg : std_logic_vector(31 DOWNTO 0);
SIGNAL \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Zreg[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Zreg[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddSub~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \multiplexer|ALT_INV_F[30]~31_combout\ : std_logic;
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

BEGIN

ww_A <= A;
ww_B <= B;
ww_Clk <= Clk;
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

\input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\input_A|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (address_a(3) & address_a(2) & address_a(1) & address_a(0));

\input_A|altsyncram_component|auto_generated|q_a\(0) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\input_A|altsyncram_component|auto_generated|q_a\(1) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\input_A|altsyncram_component|auto_generated|q_a\(2) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\input_A|altsyncram_component|auto_generated|q_a\(3) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\input_A|altsyncram_component|auto_generated|q_a\(4) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\input_A|altsyncram_component|auto_generated|q_a\(5) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\input_A|altsyncram_component|auto_generated|q_a\(6) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\input_A|altsyncram_component|auto_generated|q_a\(7) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\input_A|altsyncram_component|auto_generated|q_a\(8) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\input_A|altsyncram_component|auto_generated|q_a\(9) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\input_A|altsyncram_component|auto_generated|q_a\(10) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\input_A|altsyncram_component|auto_generated|q_a\(31) <= \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\input_B|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (address_b(3) & address_b(2) & address_b(1) & address_b(0));

\input_B|altsyncram_component|auto_generated|q_a\(0) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\input_B|altsyncram_component|auto_generated|q_a\(1) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\input_B|altsyncram_component|auto_generated|q_a\(2) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\input_B|altsyncram_component|auto_generated|q_a\(3) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\input_B|altsyncram_component|auto_generated|q_a\(4) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\input_B|altsyncram_component|auto_generated|q_a\(5) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\input_B|altsyncram_component|auto_generated|q_a\(6) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\input_B|altsyncram_component|auto_generated|q_a\(7) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\input_B|altsyncram_component|auto_generated|q_a\(8) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\input_B|altsyncram_component|auto_generated|q_a\(9) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\input_B|altsyncram_component|auto_generated|q_a\(10) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\input_B|altsyncram_component|auto_generated|q_a\(31) <= \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\input_A|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (address_a(3) & address_a(2) & address_a(1) & address_a(0));

\input_A|altsyncram_component|auto_generated|q_a\(11) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\input_A|altsyncram_component|auto_generated|q_a\(12) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);
\input_A|altsyncram_component|auto_generated|q_a\(13) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(2);
\input_A|altsyncram_component|auto_generated|q_a\(14) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(3);
\input_A|altsyncram_component|auto_generated|q_a\(15) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(4);
\input_A|altsyncram_component|auto_generated|q_a\(16) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(5);
\input_A|altsyncram_component|auto_generated|q_a\(17) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(6);
\input_A|altsyncram_component|auto_generated|q_a\(18) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(7);
\input_A|altsyncram_component|auto_generated|q_a\(19) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(8);
\input_A|altsyncram_component|auto_generated|q_a\(20) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(9);
\input_A|altsyncram_component|auto_generated|q_a\(21) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(10);
\input_A|altsyncram_component|auto_generated|q_a\(22) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(11);
\input_A|altsyncram_component|auto_generated|q_a\(23) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(12);
\input_A|altsyncram_component|auto_generated|q_a\(24) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(13);
\input_A|altsyncram_component|auto_generated|q_a\(25) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(14);
\input_A|altsyncram_component|auto_generated|q_a\(26) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(15);
\input_A|altsyncram_component|auto_generated|q_a\(27) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(16);
\input_A|altsyncram_component|auto_generated|q_a\(28) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(17);
\input_A|altsyncram_component|auto_generated|q_a\(29) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(18);
\input_A|altsyncram_component|auto_generated|q_a\(30) <= \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(19);

\input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\input_B|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (address_b(3) & address_b(2) & address_b(1) & address_b(0));

\input_B|altsyncram_component|auto_generated|q_a\(11) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\input_B|altsyncram_component|auto_generated|q_a\(12) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);
\input_B|altsyncram_component|auto_generated|q_a\(13) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(2);
\input_B|altsyncram_component|auto_generated|q_a\(14) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(3);
\input_B|altsyncram_component|auto_generated|q_a\(15) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(4);
\input_B|altsyncram_component|auto_generated|q_a\(16) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(5);
\input_B|altsyncram_component|auto_generated|q_a\(17) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(6);
\input_B|altsyncram_component|auto_generated|q_a\(18) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(7);
\input_B|altsyncram_component|auto_generated|q_a\(19) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(8);
\input_B|altsyncram_component|auto_generated|q_a\(20) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(9);
\input_B|altsyncram_component|auto_generated|q_a\(21) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(10);
\input_B|altsyncram_component|auto_generated|q_a\(22) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(11);
\input_B|altsyncram_component|auto_generated|q_a\(23) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(12);
\input_B|altsyncram_component|auto_generated|q_a\(24) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(13);
\input_B|altsyncram_component|auto_generated|q_a\(25) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(14);
\input_B|altsyncram_component|auto_generated|q_a\(26) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(15);
\input_B|altsyncram_component|auto_generated|q_a\(27) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(16);
\input_B|altsyncram_component|auto_generated|q_a\(28) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(17);
\input_B|altsyncram_component|auto_generated|q_a\(29) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(18);
\input_B|altsyncram_component|auto_generated|q_a\(30) <= \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(19);
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
\multiplexer|ALT_INV_F[11]~12_combout\ <= NOT \multiplexer|F[11]~12_combout\;
\multiplexer|ALT_INV_F[10]~11_combout\ <= NOT \multiplexer|F[10]~11_combout\;
\multiplexer|ALT_INV_F[9]~10_combout\ <= NOT \multiplexer|F[9]~10_combout\;
\multiplexer|ALT_INV_F[8]~9_combout\ <= NOT \multiplexer|F[8]~9_combout\;
\multiplexer|ALT_INV_F[7]~8_combout\ <= NOT \multiplexer|F[7]~8_combout\;
\multiplexer|ALT_INV_F[6]~7_combout\ <= NOT \multiplexer|F[6]~7_combout\;
\multiplexer|ALT_INV_F[5]~6_combout\ <= NOT \multiplexer|F[5]~6_combout\;
\multiplexer|ALT_INV_F[4]~5_combout\ <= NOT \multiplexer|F[4]~5_combout\;
\multiplexer|ALT_INV_F[3]~4_combout\ <= NOT \multiplexer|F[3]~4_combout\;
\multiplexer|ALT_INV_F[2]~3_combout\ <= NOT \multiplexer|F[2]~3_combout\;
\multiplexer|ALT_INV_F[1]~2_combout\ <= NOT \multiplexer|F[1]~2_combout\;
\multiplexer|ALT_INV_F[0]~1_combout\ <= NOT \multiplexer|F[0]~1_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\multiplexer|ALT_INV_F[31]~0_combout\ <= NOT \multiplexer|F[31]~0_combout\;
\ALT_INV_SelR~q\ <= NOT \SelR~q\;
\ALT_INV_AddSubR~q\ <= NOT \AddSubR~q\;
ALT_INV_Zreg(31) <= NOT Zreg(31);
ALT_INV_Zreg(30) <= NOT Zreg(30);
ALT_INV_Zreg(29) <= NOT Zreg(29);
ALT_INV_Zreg(28) <= NOT Zreg(28);
ALT_INV_Zreg(27) <= NOT Zreg(27);
ALT_INV_Zreg(26) <= NOT Zreg(26);
ALT_INV_Zreg(24) <= NOT Zreg(24);
ALT_INV_Zreg(23) <= NOT Zreg(23);
ALT_INV_Zreg(22) <= NOT Zreg(22);
ALT_INV_Zreg(21) <= NOT Zreg(21);
ALT_INV_Zreg(20) <= NOT Zreg(20);
ALT_INV_Zreg(18) <= NOT Zreg(18);
ALT_INV_Zreg(17) <= NOT Zreg(17);
ALT_INV_Zreg(16) <= NOT Zreg(16);
ALT_INV_Zreg(15) <= NOT Zreg(15);
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
ALT_INV_Zreg(3) <= NOT Zreg(3);
ALT_INV_Zreg(2) <= NOT Zreg(2);
ALT_INV_Zreg(1) <= NOT Zreg(1);
ALT_INV_Zreg(0) <= NOT Zreg(0);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(12);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(13);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(14);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(15);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(16) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(16);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(17) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(17);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(18) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(18);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(19) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(19);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(20) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(20);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(21) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(21);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(22) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(22);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(23) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(23);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(24) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(24);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(25) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(25);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(26);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(27);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(28);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(29);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(30);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(11);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(12);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(13);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(14);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(15);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(16) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(16);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(17) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(17);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(18) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(18);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(19) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(19);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(20) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(20);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(21) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(21);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(22) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(22);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(23) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(23);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(24) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(24);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(25) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(25);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(26);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(27);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(28);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(29);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(30);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(11);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(1);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(2);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(3);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(4);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(5);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(6);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(7);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(8);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(9);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(10);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(31);
\input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \input_B|altsyncram_component|auto_generated|q_a\(0);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(1);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(2);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(3);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(4);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(5);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(6);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(7);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(8);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(9);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(10);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(31);
\input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \input_A|altsyncram_component|auto_generated|q_a\(0);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(31) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31);
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(30) <= NOT \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30);
\ALT_INV_Zreg[25]~DUPLICATE_q\ <= NOT \Zreg[25]~DUPLICATE_q\;
\ALT_INV_Zreg[19]~DUPLICATE_q\ <= NOT \Zreg[19]~DUPLICATE_q\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_AddSub~input_o\ <= NOT \AddSub~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\multiplexer|ALT_INV_F[30]~31_combout\ <= NOT \multiplexer|F[30]~31_combout\;
\multiplexer|ALT_INV_F[29]~30_combout\ <= NOT \multiplexer|F[29]~30_combout\;
\multiplexer|ALT_INV_F[28]~29_combout\ <= NOT \multiplexer|F[28]~29_combout\;
\multiplexer|ALT_INV_F[27]~28_combout\ <= NOT \multiplexer|F[27]~28_combout\;
\multiplexer|ALT_INV_F[26]~27_combout\ <= NOT \multiplexer|F[26]~27_combout\;
\multiplexer|ALT_INV_F[25]~26_combout\ <= NOT \multiplexer|F[25]~26_combout\;
\multiplexer|ALT_INV_F[24]~25_combout\ <= NOT \multiplexer|F[24]~25_combout\;
\multiplexer|ALT_INV_F[23]~24_combout\ <= NOT \multiplexer|F[23]~24_combout\;
\multiplexer|ALT_INV_F[22]~23_combout\ <= NOT \multiplexer|F[22]~23_combout\;
\multiplexer|ALT_INV_F[21]~22_combout\ <= NOT \multiplexer|F[21]~22_combout\;
\multiplexer|ALT_INV_F[20]~21_combout\ <= NOT \multiplexer|F[20]~21_combout\;
\multiplexer|ALT_INV_F[19]~20_combout\ <= NOT \multiplexer|F[19]~20_combout\;
\multiplexer|ALT_INV_F[18]~19_combout\ <= NOT \multiplexer|F[18]~19_combout\;
\multiplexer|ALT_INV_F[17]~18_combout\ <= NOT \multiplexer|F[17]~18_combout\;
\multiplexer|ALT_INV_F[16]~17_combout\ <= NOT \multiplexer|F[16]~17_combout\;
\multiplexer|ALT_INV_F[15]~16_combout\ <= NOT \multiplexer|F[15]~16_combout\;
\multiplexer|ALT_INV_F[14]~15_combout\ <= NOT \multiplexer|F[14]~15_combout\;
\multiplexer|ALT_INV_F[13]~14_combout\ <= NOT \multiplexer|F[13]~14_combout\;
\multiplexer|ALT_INV_F[12]~13_combout\ <= NOT \multiplexer|F[12]~13_combout\;

-- Location: IOOBUF_X40_Y0_N53
\Z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Zreg[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Z(0));

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X50_Y0_N76
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N2
\Z[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Zreg(12),
	devoe => ww_devoe,
	o => ww_Z(12));

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X50_Y0_N42
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N36
\Z[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Zreg[24]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Z(24));

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N36
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
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X50_Y0_N92
\AddSub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddSub,
	o => \AddSub~input_o\);

-- Location: LABCELL_X53_Y2_N0
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

-- Location: IOIBUF_X58_Y0_N92
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X59_Y2_N2
AddSubR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \AddSubR~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddSubR~q\);

-- Location: LABCELL_X57_Y1_N12
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X40_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: FF_X57_Y2_N20
\address_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \B[0]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(0));

-- Location: IOIBUF_X52_Y0_N35
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X57_Y2_N30
\address_b[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[1]~feeder_combout\ = ( \B[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \address_b[1]~feeder_combout\);

-- Location: FF_X57_Y2_N32
\address_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \address_b[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(1));

-- Location: IOIBUF_X68_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X61_Y2_N51
\address_b[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[2]~feeder_combout\ = ( \B[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \address_b[2]~feeder_combout\);

-- Location: FF_X61_Y2_N53
\address_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \address_b[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(2));

-- Location: IOIBUF_X68_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X61_Y2_N33
\address_b[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[3]~feeder_combout\ = ( \B[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \address_b[3]~feeder_combout\);

-- Location: FF_X61_Y2_N35
\address_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \address_b[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(3));

-- Location: M10K_X58_Y2_N0
\input_B|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000007FF00FFF00800007000080000FFF001110011100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mejia_data_mem_Nov8:input_B|altsyncram:altsyncram_component|altsyncram_jo24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clk~inputCLKENA0_outclk\,
	portadatain => \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \input_B|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X60_Y2_N47
\Zreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(0));

-- Location: IOIBUF_X64_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X60_Y1_N59
\address_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \A[0]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(0));

-- Location: IOIBUF_X60_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X60_Y1_N11
\address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \A[1]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(1));

-- Location: IOIBUF_X60_Y0_N52
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X60_Y1_N29
\address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \A[2]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(2));

-- Location: IOIBUF_X64_Y0_N18
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X60_Y1_N14
\address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \A[3]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(3));

-- Location: M10K_X58_Y1_N0
\input_A|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000007FF00FFF00800007000080000FFF001110011100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mejia_data_mem_Nov8:input_A|altsyncram:altsyncram_component|altsyncram_jo24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clk~inputCLKENA0_outclk\,
	portadatain => \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \input_A|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X60_Y0_N35
\Sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel,
	o => \Sel~input_o\);

-- Location: FF_X60_Y2_N26
SelR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Sel~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SelR~q\);

-- Location: LABCELL_X60_Y2_N27
\multiplexer|F[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[0]~1_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(0) & ( \SelR~q\ & ( Zreg(0) ) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(0) & ( \SelR~q\ & ( Zreg(0) ) ) ) # ( 
-- \input_A|altsyncram_component|auto_generated|q_a\(0) & ( !\SelR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(0),
	datae => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[0]~1_combout\);

-- Location: MLABCELL_X59_Y2_N0
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

-- Location: MLABCELL_X59_Y2_N3
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0) = SUM(( \multiplexer|F[0]~1_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(0)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ 
-- ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( \multiplexer|F[0]~1_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(0)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \multiplexer|ALT_INV_F[0]~1_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: FF_X60_Y2_N46
\Zreg[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[0]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y2_N36
\multiplexer|F[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[1]~2_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(1) & ( (!\SelR~q\) # (Zreg(1)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(1) & ( (\SelR~q\ & Zreg(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(1),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \multiplexer|F[1]~2_combout\);

-- Location: MLABCELL_X59_Y2_N6
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1) = SUM(( \multiplexer|F[1]~2_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(1)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( \multiplexer|F[1]~2_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(1)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \multiplexer|ALT_INV_F[1]~2_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: FF_X60_Y2_N56
\Zreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(1));

-- Location: LABCELL_X60_Y2_N57
\multiplexer|F[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[2]~3_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(2) & ( (!\SelR~q\) # (Zreg(2)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(2) & ( (\SelR~q\ & Zreg(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(2),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \multiplexer|F[2]~3_combout\);

-- Location: MLABCELL_X59_Y2_N9
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2) = SUM(( \multiplexer|F[2]~3_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(2)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( \multiplexer|F[2]~3_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(2)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \multiplexer|ALT_INV_F[2]~3_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: FF_X60_Y2_N35
\Zreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(2));

-- Location: LABCELL_X60_Y2_N30
\multiplexer|F[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[3]~4_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(3) & ( (!\SelR~q\) # (Zreg(3)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(3) & ( (\SelR~q\ & Zreg(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(3),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \multiplexer|F[3]~4_combout\);

-- Location: MLABCELL_X59_Y2_N12
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(3)) ) + ( \multiplexer|F[3]~4_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(3)) ) + ( \multiplexer|F[3]~4_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[3]~4_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: FF_X60_Y2_N50
\Zreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(3));

-- Location: LABCELL_X60_Y2_N15
\multiplexer|F[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[4]~5_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(4) & ( (!\SelR~q\) # (Zreg(4)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(4) & ( (\SelR~q\ & Zreg(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(4),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \multiplexer|F[4]~5_combout\);

-- Location: MLABCELL_X59_Y2_N15
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(4)) ) + ( \multiplexer|F[4]~5_combout\ ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(4)) ) + ( \multiplexer|F[4]~5_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[4]~5_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: FF_X60_Y2_N2
\Zreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(4));

-- Location: LABCELL_X60_Y2_N6
\multiplexer|F[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[5]~6_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(5) & ( (!\SelR~q\) # (Zreg(5)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(5) & ( (\SelR~q\ & Zreg(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(5),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \multiplexer|F[5]~6_combout\);

-- Location: MLABCELL_X59_Y2_N18
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5) = SUM(( \multiplexer|F[5]~6_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(5)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ = CARRY(( \multiplexer|F[5]~6_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(5)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \multiplexer|ALT_INV_F[5]~6_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\);

-- Location: FF_X60_Y2_N7
\Zreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(5));

-- Location: LABCELL_X60_Y2_N3
\multiplexer|F[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[6]~7_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(6) & ( (!\SelR~q\) # (Zreg(6)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(6) & ( (\SelR~q\ & Zreg(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(6),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \multiplexer|F[6]~7_combout\);

-- Location: MLABCELL_X59_Y2_N21
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6) = SUM(( \multiplexer|F[6]~7_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(6)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ = CARRY(( \multiplexer|F[6]~7_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(6)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \multiplexer|ALT_INV_F[6]~7_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\);

-- Location: FF_X60_Y2_N20
\Zreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(6));

-- Location: LABCELL_X60_Y2_N0
\multiplexer|F[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[7]~8_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(7) & ( (!\SelR~q\) # (Zreg(7)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(7) & ( (\SelR~q\ & Zreg(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(7),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \multiplexer|F[7]~8_combout\);

-- Location: MLABCELL_X59_Y2_N24
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7) = SUM(( \multiplexer|F[7]~8_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(7)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ = CARRY(( \multiplexer|F[7]~8_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(7)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \multiplexer|ALT_INV_F[7]~8_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\);

-- Location: FF_X60_Y2_N23
\Zreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(7));

-- Location: LABCELL_X60_Y2_N21
\multiplexer|F[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[8]~9_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(8) & ( (!\SelR~q\) # (Zreg(8)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(8) & ( (\SelR~q\ & Zreg(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(8),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \multiplexer|F[8]~9_combout\);

-- Location: MLABCELL_X59_Y2_N27
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8) = SUM(( \multiplexer|F[8]~9_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(8)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ = CARRY(( \multiplexer|F[8]~9_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(8)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datab => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \multiplexer|ALT_INV_F[8]~9_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\);

-- Location: FF_X60_Y2_N29
\Zreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(8));

-- Location: LABCELL_X60_Y2_N9
\multiplexer|F[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[9]~10_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(9) & ( (!\SelR~q\) # (Zreg(9)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(9) & ( (\SelR~q\ & Zreg(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(9),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \multiplexer|F[9]~10_combout\);

-- Location: MLABCELL_X59_Y2_N30
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9) = SUM(( \multiplexer|F[9]~10_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(9)) ) + ( \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ 
-- ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ = CARRY(( \multiplexer|F[9]~10_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(9)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datab => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \multiplexer|ALT_INV_F[9]~10_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\);

-- Location: FF_X60_Y2_N10
\Zreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(9));

-- Location: LABCELL_X57_Y2_N24
\multiplexer|F[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[10]~11_combout\ = ( \SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(10) & ( Zreg(10) ) ) ) # ( !\SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(10) ) ) # ( \SelR~q\ & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(10) & ( Zreg(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(10),
	datae => \ALT_INV_SelR~q\,
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \multiplexer|F[10]~11_combout\);

-- Location: MLABCELL_X59_Y2_N33
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10) = SUM(( \multiplexer|F[10]~11_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(10)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ = CARRY(( \multiplexer|F[10]~11_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(10)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datad => \multiplexer|ALT_INV_F[10]~11_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\);

-- Location: FF_X59_Y2_N35
\Zreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(10));

-- Location: M10K_X58_Y2_N0
\input_B|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000001F0001FE00000001F800007FFFF000020000200000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mejia_data_mem_Nov8:input_B|altsyncram:altsyncram_component|altsyncram_jo24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clk~inputCLKENA0_outclk\,
	portadatain => \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \input_B|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M10K_X58_Y1_N0
\input_A|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000001F0001FE00000001F800007FFFF000020000200000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mejia_data_mem_Nov8:input_A|altsyncram:altsyncram_component|altsyncram_jo24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clk~inputCLKENA0_outclk\,
	portadatain => \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \input_A|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LABCELL_X60_Y2_N48
\multiplexer|F[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[11]~12_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(11) & ( (!\SelR~q\) # (Zreg(11)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(11) & ( (\SelR~q\ & Zreg(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datab => ALT_INV_Zreg(11),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \multiplexer|F[11]~12_combout\);

-- Location: MLABCELL_X59_Y2_N36
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11) = SUM(( \multiplexer|F[11]~12_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(11)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ = CARRY(( \multiplexer|F[11]~12_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(11)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \multiplexer|ALT_INV_F[11]~12_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\);

-- Location: FF_X60_Y2_N17
\Zreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(11));

-- Location: LABCELL_X60_Y2_N33
\multiplexer|F[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[12]~13_combout\ = ( Zreg(12) & ( (\input_A|altsyncram_component|auto_generated|q_a\(12)) # (\SelR~q\) ) ) # ( !Zreg(12) & ( (!\SelR~q\ & \input_A|altsyncram_component|auto_generated|q_a\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => ALT_INV_Zreg(12),
	combout => \multiplexer|F[12]~13_combout\);

-- Location: MLABCELL_X59_Y2_N39
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12) = SUM(( \multiplexer|F[12]~13_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(12)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ = CARRY(( \multiplexer|F[12]~13_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(12)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \multiplexer|ALT_INV_F[12]~13_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\);

-- Location: FF_X60_Y2_N14
\Zreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(12));

-- Location: LABCELL_X60_Y2_N39
\multiplexer|F[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[13]~14_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(13) & ( (!\SelR~q\) # (Zreg(13)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(13) & ( (\SelR~q\ & Zreg(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => ALT_INV_Zreg(13),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \multiplexer|F[13]~14_combout\);

-- Location: MLABCELL_X59_Y2_N42
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(13)) ) + ( \multiplexer|F[13]~14_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(13)) ) + ( \multiplexer|F[13]~14_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[13]~14_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\);

-- Location: FF_X60_Y2_N40
\Zreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(13),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(13));

-- Location: LABCELL_X57_Y2_N48
\multiplexer|F[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[14]~15_combout\ = ( \SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(14) & ( Zreg(14) ) ) ) # ( !\SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(14) ) ) # ( \SelR~q\ & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(14) & ( Zreg(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Zreg(14),
	datae => \ALT_INV_SelR~q\,
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \multiplexer|F[14]~15_combout\);

-- Location: MLABCELL_X59_Y2_N45
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14) = SUM(( \multiplexer|F[14]~15_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(14)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ = CARRY(( \multiplexer|F[14]~15_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(14)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datad => \multiplexer|ALT_INV_F[14]~15_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(14),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\);

-- Location: LABCELL_X57_Y2_N6
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

-- Location: FF_X57_Y2_N8
\Zreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Zreg[14]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(14));

-- Location: LABCELL_X60_Y2_N12
\multiplexer|F[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[15]~16_combout\ = ( Zreg(15) & ( (\input_A|altsyncram_component|auto_generated|q_a\(15)) # (\SelR~q\) ) ) # ( !Zreg(15) & ( (!\SelR~q\ & \input_A|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => ALT_INV_Zreg(15),
	combout => \multiplexer|F[15]~16_combout\);

-- Location: MLABCELL_X59_Y2_N48
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15) = SUM(( \multiplexer|F[15]~16_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(15)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ = CARRY(( \multiplexer|F[15]~16_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(15)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datab => \multiplexer|ALT_INV_F[15]~16_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\);

-- Location: FF_X60_Y2_N32
\Zreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(15),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(15));

-- Location: LABCELL_X60_Y2_N54
\multiplexer|F[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[16]~17_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(16) & ( (!\SelR~q\) # (Zreg(16)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(16) & ( (\SelR~q\ & Zreg(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datac => ALT_INV_Zreg(16),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \multiplexer|F[16]~17_combout\);

-- Location: MLABCELL_X59_Y2_N51
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16) = SUM(( \multiplexer|F[16]~17_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(16)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ = CARRY(( \multiplexer|F[16]~17_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(16)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	datad => \multiplexer|ALT_INV_F[16]~17_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\);

-- Location: FF_X59_Y2_N53
\Zreg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(16));

-- Location: LABCELL_X60_Y2_N18
\multiplexer|F[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[17]~18_combout\ = (!\SelR~q\ & ((\input_A|altsyncram_component|auto_generated|q_a\(17)))) # (\SelR~q\ & (Zreg(17)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datab => ALT_INV_Zreg(17),
	datac => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \multiplexer|F[17]~18_combout\);

-- Location: MLABCELL_X59_Y2_N54
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(17)) ) + ( \multiplexer|F[17]~18_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(17)) ) + ( \multiplexer|F[17]~18_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[17]~18_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\);

-- Location: FF_X59_Y2_N56
\Zreg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(17));

-- Location: LABCELL_X60_Y2_N51
\multiplexer|F[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[18]~19_combout\ = ( Zreg(18) & ( (\input_A|altsyncram_component|auto_generated|q_a\(18)) # (\SelR~q\) ) ) # ( !Zreg(18) & ( (!\SelR~q\ & \input_A|altsyncram_component|auto_generated|q_a\(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelR~q\,
	datad => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	dataf => ALT_INV_Zreg(18),
	combout => \multiplexer|F[18]~19_combout\);

-- Location: MLABCELL_X59_Y2_N57
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(18)) ) + ( \multiplexer|F[18]~19_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(18)) ) + ( \multiplexer|F[18]~19_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	dataf => \multiplexer|ALT_INV_F[18]~19_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\);

-- Location: FF_X59_Y2_N59
\Zreg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(18));

-- Location: FF_X60_Y1_N35
\Zreg[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[19]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y1_N30
\multiplexer|F[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[19]~20_combout\ = ( \SelR~q\ & ( \Zreg[19]~DUPLICATE_q\ ) ) # ( !\SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Zreg[19]~DUPLICATE_q\,
	datad => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datae => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[19]~20_combout\);

-- Location: MLABCELL_X59_Y1_N0
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19) = SUM(( \multiplexer|F[19]~20_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(19)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ = CARRY(( \multiplexer|F[19]~20_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(19)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[19]~20_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\);

-- Location: FF_X60_Y1_N34
\Zreg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(19));

-- Location: LABCELL_X60_Y1_N21
\multiplexer|F[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[20]~21_combout\ = ( Zreg(20) & ( \input_A|altsyncram_component|auto_generated|q_a\(20) ) ) # ( !Zreg(20) & ( \input_A|altsyncram_component|auto_generated|q_a\(20) & ( !\SelR~q\ ) ) ) # ( Zreg(20) & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(20) & ( \SelR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelR~q\,
	datae => ALT_INV_Zreg(20),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	combout => \multiplexer|F[20]~21_combout\);

-- Location: MLABCELL_X59_Y1_N3
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20) = SUM(( \multiplexer|F[20]~21_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(20)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ = CARRY(( \multiplexer|F[20]~21_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(20)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datad => \multiplexer|ALT_INV_F[20]~21_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\);

-- Location: FF_X59_Y1_N5
\Zreg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(20));

-- Location: MLABCELL_X59_Y1_N51
\multiplexer|F[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[21]~22_combout\ = ( \SelR~q\ & ( Zreg(21) ) ) # ( !\SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	datad => ALT_INV_Zreg(21),
	dataf => \ALT_INV_SelR~q\,
	combout => \multiplexer|F[21]~22_combout\);

-- Location: MLABCELL_X59_Y1_N6
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21) = SUM(( \multiplexer|F[21]~22_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(21)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ = CARRY(( \multiplexer|F[21]~22_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(21)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[21]~22_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\);

-- Location: FF_X59_Y1_N56
\Zreg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(21));

-- Location: LABCELL_X60_Y1_N42
\multiplexer|F[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[22]~23_combout\ = ( \SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(22) & ( Zreg(22) ) ) ) # ( !\SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(22) ) ) # ( \SelR~q\ & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(22) & ( Zreg(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(22),
	datae => \ALT_INV_SelR~q\,
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	combout => \multiplexer|F[22]~23_combout\);

-- Location: MLABCELL_X59_Y1_N9
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(22)) ) + ( \multiplexer|F[22]~23_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(22)) ) + ( \multiplexer|F[22]~23_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[22]~23_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\);

-- Location: FF_X59_Y1_N44
\Zreg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(22));

-- Location: LABCELL_X60_Y1_N24
\multiplexer|F[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[23]~24_combout\ = ( Zreg(23) & ( (\SelR~q\) # (\input_A|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !Zreg(23) & ( (\input_A|altsyncram_component|auto_generated|q_a\(23) & !\SelR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datad => \ALT_INV_SelR~q\,
	datae => ALT_INV_Zreg(23),
	combout => \multiplexer|F[23]~24_combout\);

-- Location: MLABCELL_X59_Y1_N12
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(23)) ) + ( \multiplexer|F[23]~24_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(23)) ) + ( \multiplexer|F[23]~24_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datab => \multiplexer|ALT_INV_F[23]~24_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\);

-- Location: FF_X59_Y1_N53
\Zreg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(23));

-- Location: FF_X59_Y1_N47
\Zreg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(24));

-- Location: LABCELL_X60_Y1_N15
\multiplexer|F[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[24]~25_combout\ = ( \SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(24) & ( Zreg(24) ) ) ) # ( !\SelR~q\ & ( \input_A|altsyncram_component|auto_generated|q_a\(24) ) ) # ( \SelR~q\ & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(24) & ( Zreg(24) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Zreg(24),
	datae => \ALT_INV_SelR~q\,
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	combout => \multiplexer|F[24]~25_combout\);

-- Location: MLABCELL_X59_Y1_N15
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24) = SUM(( \multiplexer|F[24]~25_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(24)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ = CARRY(( \multiplexer|F[24]~25_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(24)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \multiplexer|ALT_INV_F[24]~25_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\);

-- Location: FF_X59_Y1_N46
\Zreg[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[24]~DUPLICATE_q\);

-- Location: FF_X59_Y1_N58
\Zreg[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zreg[25]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y1_N33
\multiplexer|F[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[25]~26_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(25) & ( \Zreg[25]~DUPLICATE_q\ ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(25) & ( \Zreg[25]~DUPLICATE_q\ & ( \SelR~q\ ) ) ) # ( 
-- \input_A|altsyncram_component|auto_generated|q_a\(25) & ( !\Zreg[25]~DUPLICATE_q\ & ( !\SelR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelR~q\,
	datae => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	dataf => \ALT_INV_Zreg[25]~DUPLICATE_q\,
	combout => \multiplexer|F[25]~26_combout\);

-- Location: MLABCELL_X59_Y1_N18
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(25)) ) + ( \multiplexer|F[25]~26_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(25)) ) + ( \multiplexer|F[25]~26_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[25]~26_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\);

-- Location: FF_X59_Y1_N59
\Zreg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(25));

-- Location: LABCELL_X60_Y1_N6
\multiplexer|F[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[26]~27_combout\ = ( Zreg(26) & ( \input_A|altsyncram_component|auto_generated|q_a\(26) ) ) # ( !Zreg(26) & ( \input_A|altsyncram_component|auto_generated|q_a\(26) & ( !\SelR~q\ ) ) ) # ( Zreg(26) & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(26) & ( \SelR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelR~q\,
	datae => ALT_INV_Zreg(26),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \multiplexer|F[26]~27_combout\);

-- Location: MLABCELL_X59_Y1_N21
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26) = SUM(( \multiplexer|F[26]~27_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(26)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ = CARRY(( \multiplexer|F[26]~27_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(26)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \multiplexer|ALT_INV_F[26]~27_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\);

-- Location: FF_X59_Y1_N23
\Zreg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(26));

-- Location: LABCELL_X57_Y1_N39
\multiplexer|F[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[27]~28_combout\ = ( \SelR~q\ & ( Zreg(27) ) ) # ( !\SelR~q\ & ( Zreg(27) & ( \input_A|altsyncram_component|auto_generated|q_a\(27) ) ) ) # ( !\SelR~q\ & ( !Zreg(27) & ( \input_A|altsyncram_component|auto_generated|q_a\(27) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datae => \ALT_INV_SelR~q\,
	dataf => ALT_INV_Zreg(27),
	combout => \multiplexer|F[27]~28_combout\);

-- Location: MLABCELL_X59_Y1_N24
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(27)) ) + ( \multiplexer|F[27]~28_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(27)) ) + ( \multiplexer|F[27]~28_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[27]~28_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\);

-- Location: FF_X59_Y1_N26
\Zreg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(27));

-- Location: LABCELL_X57_Y1_N9
\multiplexer|F[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[28]~29_combout\ = ( \SelR~q\ & ( Zreg(28) ) ) # ( !\SelR~q\ & ( Zreg(28) & ( \input_A|altsyncram_component|auto_generated|q_a\(28) ) ) ) # ( !\SelR~q\ & ( !Zreg(28) & ( \input_A|altsyncram_component|auto_generated|q_a\(28) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datae => \ALT_INV_SelR~q\,
	dataf => ALT_INV_Zreg(28),
	combout => \multiplexer|F[28]~29_combout\);

-- Location: MLABCELL_X59_Y1_N27
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28) = SUM(( \multiplexer|F[28]~29_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(28)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ = CARRY(( \multiplexer|F[28]~29_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(28)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[28]~29_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\);

-- Location: FF_X59_Y1_N29
\Zreg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(28));

-- Location: LABCELL_X57_Y1_N48
\multiplexer|F[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[29]~30_combout\ = ( \input_A|altsyncram_component|auto_generated|q_a\(29) & ( (!\SelR~q\) # (Zreg(29)) ) ) # ( !\input_A|altsyncram_component|auto_generated|q_a\(29) & ( (Zreg(29) & \SelR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Zreg(29),
	datad => \ALT_INV_SelR~q\,
	datae => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \multiplexer|F[29]~30_combout\);

-- Location: MLABCELL_X59_Y1_N30
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29) = SUM(( \multiplexer|F[29]~30_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(29)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ = CARRY(( \multiplexer|F[29]~30_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(29)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \multiplexer|ALT_INV_F[29]~30_combout\,
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\);

-- Location: FF_X59_Y1_N32
\Zreg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(29));

-- Location: LABCELL_X57_Y1_N57
\multiplexer|F[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[30]~31_combout\ = ( Zreg(30) & ( \input_A|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !Zreg(30) & ( \input_A|altsyncram_component|auto_generated|q_a\(30) & ( !\SelR~q\ ) ) ) # ( Zreg(30) & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(30) & ( \SelR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelR~q\,
	datae => ALT_INV_Zreg(30),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \multiplexer|F[30]~31_combout\);

-- Location: MLABCELL_X59_Y1_N33
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30) = SUM(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(30)) ) + ( \multiplexer|F[30]~31_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ ))
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ = CARRY(( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(30)) ) + ( \multiplexer|F[30]~31_combout\ ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddSubR~q\,
	datac => \multiplexer|ALT_INV_F[30]~31_combout\,
	datad => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30),
	cout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\);

-- Location: FF_X59_Y1_N35
\Zreg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(30));

-- Location: LABCELL_X57_Y1_N24
\multiplexer|F[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexer|F[31]~0_combout\ = ( Zreg(31) & ( \input_A|altsyncram_component|auto_generated|q_a\(31) ) ) # ( !Zreg(31) & ( \input_A|altsyncram_component|auto_generated|q_a\(31) & ( !\SelR~q\ ) ) ) # ( Zreg(31) & ( 
-- !\input_A|altsyncram_component|auto_generated|q_a\(31) & ( \SelR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelR~q\,
	datae => ALT_INV_Zreg(31),
	dataf => \input_A|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \multiplexer|F[31]~0_combout\);

-- Location: MLABCELL_X59_Y1_N36
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31) = SUM(( \multiplexer|F[31]~0_combout\ ) + ( !\AddSubR~q\ $ (\input_B|altsyncram_component|auto_generated|q_a\(31)) ) + ( 
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddSubR~q\,
	datad => \multiplexer|ALT_INV_F[31]~0_combout\,
	dataf => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	cin => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\,
	sumout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31));

-- Location: FF_X59_Y1_N2
\Zreg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Zreg(31));

-- Location: MLABCELL_X59_Y1_N48
\nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0) = (!\multiplexer|F[31]~0_combout\ & (\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31) & (!\input_B|altsyncram_component|auto_generated|q_a\(31) $ (!\AddSubR~q\)))) # 
-- (\multiplexer|F[31]~0_combout\ & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31) & (!\input_B|altsyncram_component|auto_generated|q_a\(31) $ (\AddSubR~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100000100001010010000010000101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_B|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datab => \multiplexer|ALT_INV_F[31]~0_combout\,
	datac => \ALT_INV_AddSubR~q\,
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(31),
	combout => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0));

-- Location: FF_X59_Y1_N49
\Overflow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0),
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Overflow~reg0_q\);

-- Location: LABCELL_X60_Y1_N36
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(10) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(9) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(6) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(7) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(11) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(6),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(7),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(11),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(8),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(10),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(9),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X60_Y1_N0
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(17) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(17),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(18),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X60_Y1_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~5_combout\ & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(27) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(21) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(19) & 
-- (\Equal0~4_combout\ & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(21),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(19),
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(20),
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(27),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X60_Y2_N42
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(3) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(0) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(1) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(5) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(2) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(1),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(5),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(2),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(4),
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(3),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(0),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X59_Y1_N42
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(16) & ( !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(26) & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(12) & 
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
	datae => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(16),
	dataf => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(26),
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X59_Y1_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( \Equal0~6_combout\ & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(25) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(24) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(22) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(25),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(24),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(22),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(23),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X60_Y1_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(29) & (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(30) & 
-- (!\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31) & !\nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(29),
	datab => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(30),
	datac => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(31),
	datad => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(28),
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X60_Y1_N49
\zero~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Equal0~3_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zero~reg0_q\);

-- Location: FF_X59_Y1_N38
\neg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \nbit_addsub|LPM_ADD_SUB_component|auto_generated|result\(31),
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \neg~reg0_q\);
END structure;


