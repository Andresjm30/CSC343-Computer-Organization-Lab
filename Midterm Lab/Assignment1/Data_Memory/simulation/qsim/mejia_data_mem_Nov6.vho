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

-- DATE "11/29/2020 17:58:00"

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

ENTITY 	mejia_data_mem_Nov6 IS
    PORT (
	address : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	data : IN std_logic_vector(31 DOWNTO 0);
	wren : IN std_logic;
	q : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mejia_data_mem_Nov6;

ARCHITECTURE structure OF mejia_data_mem_Nov6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \data[16]~input_o\ : std_logic;
SIGNAL \data[17]~input_o\ : std_logic;
SIGNAL \data[18]~input_o\ : std_logic;
SIGNAL \data[19]~input_o\ : std_logic;
SIGNAL \data[20]~input_o\ : std_logic;
SIGNAL \data[21]~input_o\ : std_logic;
SIGNAL \data[22]~input_o\ : std_logic;
SIGNAL \data[23]~input_o\ : std_logic;
SIGNAL \data[24]~input_o\ : std_logic;
SIGNAL \data[25]~input_o\ : std_logic;
SIGNAL \data[26]~input_o\ : std_logic;
SIGNAL \data[27]~input_o\ : std_logic;
SIGNAL \data[28]~input_o\ : std_logic;
SIGNAL \data[29]~input_o\ : std_logic;
SIGNAL \data[30]~input_o\ : std_logic;
SIGNAL \data[31]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_address <= address;
ww_clock <= clock;
ww_data <= data;
ww_wren <= wren;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \data[0]~input_o\;

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \data[1]~input_o\;

\altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \data[2]~input_o\;

\altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \data[3]~input_o\;

\altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \data[4]~input_o\;

\altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \data[5]~input_o\;

\altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \data[6]~input_o\;

\altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \data[7]~input_o\;

\altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \data[8]~input_o\;

\altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \data[9]~input_o\;

\altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \data[10]~input_o\;

\altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \data[11]~input_o\;

\altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \data[12]~input_o\;

\altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \data[13]~input_o\;

\altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \data[14]~input_o\;

\altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \data[15]~input_o\;

\altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \data[16]~input_o\;

\altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(16) <= \altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \data[17]~input_o\;

\altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(17) <= \altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \data[18]~input_o\;

\altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(18) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \data[19]~input_o\;

\altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(19) <= \altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \data[20]~input_o\;

\altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(20) <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \data[21]~input_o\;

\altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(21) <= \altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \data[22]~input_o\;

\altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(22) <= \altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \data[23]~input_o\;

\altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(23) <= \altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \data[24]~input_o\;

\altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(24) <= \altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \data[25]~input_o\;

\altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(25) <= \altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \data[26]~input_o\;

\altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(26) <= \altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \data[27]~input_o\;

\altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(27) <= \altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \data[28]~input_o\;

\altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(28) <= \altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \data[29]~input_o\;

\altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(29) <= \altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \data[30]~input_o\;

\altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(30) <= \altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \data[31]~input_o\;

\altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(31) <= \altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

\q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

\q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \q[11]~output_o\);

\q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \q[12]~output_o\);

\q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \q[13]~output_o\);

\q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \q[14]~output_o\);

\q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \q[15]~output_o\);

\q[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \q[16]~output_o\);

\q[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \q[17]~output_o\);

\q[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \q[18]~output_o\);

\q[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \q[19]~output_o\);

\q[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \q[20]~output_o\);

\q[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \q[21]~output_o\);

\q[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \q[22]~output_o\);

\q[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \q[23]~output_o\);

\q[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \q[24]~output_o\);

\q[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \q[25]~output_o\);

\q[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \q[26]~output_o\);

\q[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \q[27]~output_o\);

\q[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \q[28]~output_o\);

\q[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \q[29]~output_o\);

\q[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \q[30]~output_o\);

\q[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \q[31]~output_o\);

\wren~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "AAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

\altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "CCCC",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

\altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "F0F0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

\altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "FF00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

\altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

\altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

\altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

\altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

\altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

\altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

\altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

\altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

\altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

\altsyncram_component|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

\altsyncram_component|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

\altsyncram_component|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

\altsyncram_component|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

\data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

\altsyncram_component|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

\data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

\altsyncram_component|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

\data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

\altsyncram_component|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

\data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(20),
	o => \data[20]~input_o\);

\altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

\data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(21),
	o => \data[21]~input_o\);

\altsyncram_component|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

\data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(22),
	o => \data[22]~input_o\);

\altsyncram_component|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

\data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(23),
	o => \data[23]~input_o\);

\altsyncram_component|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

\data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(24),
	o => \data[24]~input_o\);

\altsyncram_component|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

\data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(25),
	o => \data[25]~input_o\);

\altsyncram_component|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

\data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(26),
	o => \data[26]~input_o\);

\altsyncram_component|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

\data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(27),
	o => \data[27]~input_o\);

\altsyncram_component|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

\data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(28),
	o => \data[28]~input_o\);

\altsyncram_component|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

\data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(29),
	o => \data[29]~input_o\);

\altsyncram_component|auto_generated|ram_block1a29\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

\data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(30),
	o => \data[30]~input_o\);

\altsyncram_component|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

\data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(31),
	o => \data[31]~input_o\);

\altsyncram_component|auto_generated|ram_block1a31\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_data_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_ho24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(16) <= \q[16]~output_o\;

ww_q(17) <= \q[17]~output_o\;

ww_q(18) <= \q[18]~output_o\;

ww_q(19) <= \q[19]~output_o\;

ww_q(20) <= \q[20]~output_o\;

ww_q(21) <= \q[21]~output_o\;

ww_q(22) <= \q[22]~output_o\;

ww_q(23) <= \q[23]~output_o\;

ww_q(24) <= \q[24]~output_o\;

ww_q(25) <= \q[25]~output_o\;

ww_q(26) <= \q[26]~output_o\;

ww_q(27) <= \q[27]~output_o\;

ww_q(28) <= \q[28]~output_o\;

ww_q(29) <= \q[29]~output_o\;

ww_q(30) <= \q[30]~output_o\;

ww_q(31) <= \q[31]~output_o\;
END structure;


