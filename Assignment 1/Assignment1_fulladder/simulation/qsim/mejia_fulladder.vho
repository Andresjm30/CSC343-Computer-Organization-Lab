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

-- DATE "09/13/2020 16:33:04"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	mejia_fulladder IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	Cin : IN std_logic;
	S : OUT std_logic;
	Cout : OUT std_logic
	);
END mejia_fulladder;

-- Design Ports Information
-- S	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mejia_fulladder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;

-- Location: IOOBUF_X89_Y9_N56
\S~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => ww_S);

-- Location: IOOBUF_X89_Y6_N56
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X89_Y6_N4
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LABCELL_X88_Y6_N0
\S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Cin~input_o\ & ( \B~input_o\ & ( \A~input_o\ ) ) ) # ( !\Cin~input_o\ & ( \B~input_o\ & ( !\A~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\B~input_o\ & ( !\A~input_o\ ) ) ) # ( !\Cin~input_o\ & ( !\B~input_o\ & ( \A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B~input_o\,
	combout => \S~0_combout\);

-- Location: LABCELL_X88_Y6_N9
\Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = ( \Cin~input_o\ & ( \B~input_o\ ) ) # ( !\Cin~input_o\ & ( \B~input_o\ & ( \A~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\B~input_o\ & ( \A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B~input_o\,
	combout => \Cout~0_combout\);

-- Location: MLABCELL_X15_Y64_N3
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


