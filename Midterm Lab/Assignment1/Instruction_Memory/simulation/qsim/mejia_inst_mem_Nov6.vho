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

-- DATE "11/10/2020 19:07:04"

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

ENTITY 	mejia_inst_mem_Nov6 IS
    PORT (
	address : IN std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	data : IN std_logic_vector(31 DOWNTO 0);
	wren : IN std_logic;
	q : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mejia_inst_mem_Nov6;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[16]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[18]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[19]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[20]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[22]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[23]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[24]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[25]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[26]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[27]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[29]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[30]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[31]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mejia_inst_mem_Nov6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
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

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data[11]~input_o\ & \data[10]~input_o\ & \data[9]~input_o\ & \data[8]~input_o\ & \data[7]~input_o\ & \data[6]~input_o\ & 
\data[5]~input_o\ & \data[4]~input_o\ & \data[3]~input_o\ & \data[2]~input_o\ & \data[1]~input_o\ & \data[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

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

\altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\data[31]~input_o\ & \data[30]~input_o\ & \data[29]~input_o\ & \data[28]~input_o\ & \data[27]~input_o\ & \data[26]~input_o\ & \data[25]~input_o\ & \data[24]~input_o\ & 
\data[23]~input_o\ & \data[22]~input_o\ & \data[21]~input_o\ & \data[20]~input_o\ & \data[19]~input_o\ & \data[18]~input_o\ & \data[17]~input_o\ & \data[16]~input_o\ & \data[15]~input_o\ & \data[14]~input_o\ & \data[13]~input_o\ & \data[12]~input_o\);

\altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(16) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(17) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(18) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(19) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(20) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(21) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(22) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(23) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(24) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(25) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(26) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(27) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(28) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(29) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(17);
\altsyncram_component|auto_generated|q_a\(30) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(18);
\altsyncram_component|auto_generated|q_a\(31) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(19);

-- Location: IOOBUF_X58_Y0_N76
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
	o => ww_q(0));

-- Location: IOOBUF_X60_Y0_N36
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
	o => ww_q(1));

-- Location: IOOBUF_X54_Y0_N19
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
	o => ww_q(2));

-- Location: IOOBUF_X62_Y0_N36
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
	o => ww_q(3));

-- Location: IOOBUF_X30_Y0_N2
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
	o => ww_q(4));

-- Location: IOOBUF_X26_Y0_N42
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
	o => ww_q(5));

-- Location: IOOBUF_X58_Y0_N93
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
	o => ww_q(6));

-- Location: IOOBUF_X60_Y0_N53
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
	o => ww_q(7));

-- Location: IOOBUF_X54_Y0_N53
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
	o => ww_q(8));

-- Location: IOOBUF_X8_Y0_N36
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
	o => ww_q(9));

-- Location: IOOBUF_X28_Y0_N36
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
	o => ww_q(10));

-- Location: IOOBUF_X26_Y0_N93
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
	o => ww_q(11));

-- Location: IOOBUF_X50_Y0_N59
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
	o => ww_q(12));

-- Location: IOOBUF_X60_Y0_N19
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
	o => ww_q(13));

-- Location: IOOBUF_X30_Y0_N53
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
	o => ww_q(14));

-- Location: IOOBUF_X34_Y0_N59
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
	o => ww_q(15));

-- Location: IOOBUF_X34_Y0_N93
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
	o => ww_q(16));

-- Location: IOOBUF_X40_Y0_N53
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
	o => ww_q(17));

-- Location: IOOBUF_X28_Y0_N19
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
	o => ww_q(18));

-- Location: IOOBUF_X38_Y0_N36
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
	o => ww_q(19));

-- Location: IOOBUF_X40_Y0_N19
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
	o => ww_q(20));

-- Location: IOOBUF_X60_Y0_N2
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
	o => ww_q(21));

-- Location: IOOBUF_X54_Y0_N36
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
	o => ww_q(22));

-- Location: IOOBUF_X58_Y0_N59
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
	o => ww_q(23));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_q(24));

-- Location: IOOBUF_X64_Y0_N53
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
	o => ww_q(25));

-- Location: IOOBUF_X36_Y0_N19
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
	o => ww_q(26));

-- Location: IOOBUF_X28_Y0_N2
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
	o => ww_q(27));

-- Location: IOOBUF_X40_Y0_N2
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
	o => ww_q(28));

-- Location: IOOBUF_X58_Y0_N42
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
	o => ww_q(29));

-- Location: IOOBUF_X36_Y0_N36
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
	o => ww_q(30));

-- Location: IOOBUF_X30_Y0_N36
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
	o => ww_q(31));

-- Location: IOIBUF_X50_Y0_N41
\wren~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

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

-- Location: IOIBUF_X26_Y0_N58
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: M10K_X38_Y2_N0
\altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001500008008250002400820",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_inst_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_kp24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X62_Y0_N52
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(20),
	o => \data[20]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(21),
	o => \data[21]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(22),
	o => \data[22]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(23),
	o => \data[23]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(24),
	o => \data[24]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(25),
	o => \data[25]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(26),
	o => \data[26]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(27),
	o => \data[27]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(28),
	o => \data[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(29),
	o => \data[29]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(30),
	o => \data[30]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(31),
	o => \data[31]~input_o\);

-- Location: M10K_X38_Y2_N0
\altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000311C08D110004530085200854",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mejia_inst_mem_Nov6.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_kp24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LABCELL_X22_Y79_N3
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


