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

-- DATE "11/21/2020 18:38:08"

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

ENTITY 	mejia_accumulator_Nov14 IS
    PORT (
	clk : IN std_logic;
	ld : IN std_logic;
	clr : IN std_logic;
	add_sub : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Z : BUFFER std_logic_vector(7 DOWNTO 0);
	overflow : OUT std_logic
	);
END mejia_accumulator_Nov14;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_sub	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mejia_accumulator_Nov14 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_add_sub : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \add_sub~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \REGin_8bit|q[5]~feeder_combout\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ : std_logic;
SIGNAL \REGout_8bit|q[7]~feeder_combout\ : std_logic;
SIGNAL \REGout_8bit|f~q\ : std_logic;
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGout_8bit|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGin_8bit|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|overflow_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_add_sub~input_o\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;
SIGNAL \REGin_8bit|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGout_8bit|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\ : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_clk <= clk;
ww_ld <= ld;
ww_clr <= clr;
ww_add_sub <= add_sub;
ww_A <= A;
Z <= ww_Z;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_add_sub~input_o\ <= NOT \add_sub~input_o\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;
\REGin_8bit|ALT_INV_q\(6) <= NOT \REGin_8bit|q\(6);
\REGin_8bit|ALT_INV_q\(5) <= NOT \REGin_8bit|q\(5);
\REGin_8bit|ALT_INV_q\(4) <= NOT \REGin_8bit|q\(4);
\REGin_8bit|ALT_INV_q\(3) <= NOT \REGin_8bit|q\(3);
\REGin_8bit|ALT_INV_q\(2) <= NOT \REGin_8bit|q\(2);
\REGin_8bit|ALT_INV_q\(1) <= NOT \REGin_8bit|q\(1);
\REGin_8bit|ALT_INV_q\(0) <= NOT \REGin_8bit|q\(0);
\REGin_8bit|ALT_INV_q\(7) <= NOT \REGin_8bit|q\(7);
\REGout_8bit|ALT_INV_q\(7) <= NOT \REGout_8bit|q\(7);
\REGout_8bit|ALT_INV_q\(6) <= NOT \REGout_8bit|q\(6);
\REGout_8bit|ALT_INV_q\(5) <= NOT \REGout_8bit|q\(5);
\REGout_8bit|ALT_INV_q\(4) <= NOT \REGout_8bit|q\(4);
\REGout_8bit|ALT_INV_q\(3) <= NOT \REGout_8bit|q\(3);
\REGout_8bit|ALT_INV_q\(2) <= NOT \REGout_8bit|q\(2);
\REGout_8bit|ALT_INV_q\(1) <= NOT \REGout_8bit|q\(1);
\REGout_8bit|ALT_INV_q\(0) <= NOT \REGout_8bit|q\(0);
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(7) <= NOT \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(7);

-- Location: IOOBUF_X8_Y0_N19
\Z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(0),
	devoe => ww_devoe,
	o => ww_Z(0));

-- Location: IOOBUF_X12_Y0_N2
\Z[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(1),
	devoe => ww_devoe,
	o => ww_Z(1));

-- Location: IOOBUF_X8_Y0_N53
\Z[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(2),
	devoe => ww_devoe,
	o => ww_Z(2));

-- Location: IOOBUF_X8_Y0_N2
\Z[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(3),
	devoe => ww_devoe,
	o => ww_Z(3));

-- Location: IOOBUF_X8_Y0_N36
\Z[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(4),
	devoe => ww_devoe,
	o => ww_Z(4));

-- Location: IOOBUF_X6_Y0_N36
\Z[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(5),
	devoe => ww_devoe,
	o => ww_Z(5));

-- Location: IOOBUF_X10_Y0_N76
\Z[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(6),
	devoe => ww_devoe,
	o => ww_Z(6));

-- Location: IOOBUF_X10_Y0_N42
\Z[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|q\(7),
	devoe => ww_devoe,
	o => ww_Z(7));

-- Location: IOOBUF_X6_Y0_N2
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGout_8bit|f~q\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X14_Y0_N35
\add_sub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_sub,
	o => \add_sub~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\clr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\ld~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: FF_X11_Y1_N28
\REGin_8bit|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[0]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(0));

-- Location: LABCELL_X11_Y1_N0
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ = CARRY(( VCC ) + ( !\add_sub~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~input_o\,
	cin => GND,
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\);

-- Location: LABCELL_X11_Y1_N3
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(0) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(0)) ) + ( \REGin_8bit|q\(0) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(0)) ) + ( \REGin_8bit|q\(0) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(0),
	datad => \REGout_8bit|ALT_INV_q\(0),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~2_cout\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(0),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: FF_X11_Y1_N4
\REGout_8bit|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(0),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(0));

-- Location: IOIBUF_X16_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X11_Y1_N35
\REGin_8bit|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[1]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(1));

-- Location: LABCELL_X11_Y1_N6
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(1) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(1)) ) + ( \REGin_8bit|q\(1) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(1)) ) + ( \REGin_8bit|q\(1) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(1),
	datad => \REGout_8bit|ALT_INV_q\(1),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(1),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: FF_X11_Y1_N7
\REGout_8bit|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(1),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(1));

-- Location: IOIBUF_X14_Y0_N52
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X11_Y1_N44
\REGin_8bit|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[2]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(2));

-- Location: LABCELL_X11_Y1_N9
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(2) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(2)) ) + ( \REGin_8bit|q\(2) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(2)) ) + ( \REGin_8bit|q\(2) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(2),
	datad => \REGout_8bit|ALT_INV_q\(2),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(2),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: FF_X11_Y1_N10
\REGout_8bit|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(2),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(2));

-- Location: IOIBUF_X12_Y0_N35
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X11_Y1_N38
\REGin_8bit|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[3]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(3));

-- Location: LABCELL_X11_Y1_N12
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(3) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(3)) ) + ( \REGin_8bit|q\(3) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(3)) ) + ( \REGin_8bit|q\(3) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(3),
	datad => \REGout_8bit|ALT_INV_q\(3),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(3),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: FF_X11_Y1_N13
\REGout_8bit|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(3),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(3));

-- Location: IOIBUF_X12_Y0_N52
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X11_Y1_N41
\REGin_8bit|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[4]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(4));

-- Location: LABCELL_X11_Y1_N15
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(4) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(4)) ) + ( \REGin_8bit|q\(4) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(4)) ) + ( \REGin_8bit|q\(4) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(4),
	datad => \REGout_8bit|ALT_INV_q\(4),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(4),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: FF_X11_Y1_N16
\REGout_8bit|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(4),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(4));

-- Location: IOIBUF_X10_Y0_N58
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X11_Y1_N48
\REGin_8bit|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGin_8bit|q[5]~feeder_combout\ = ( \A[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \REGin_8bit|q[5]~feeder_combout\);

-- Location: FF_X11_Y1_N50
\REGin_8bit|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \REGin_8bit|q[5]~feeder_combout\,
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(5));

-- Location: LABCELL_X11_Y1_N18
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(5) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(5)) ) + ( \REGin_8bit|q\(5) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(5)) ) + ( \REGin_8bit|q\(5) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(5),
	datad => \REGout_8bit|ALT_INV_q\(5),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(5),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\);

-- Location: FF_X11_Y1_N19
\REGout_8bit|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(5),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(5));

-- Location: IOIBUF_X10_Y0_N92
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: FF_X11_Y1_N52
\REGin_8bit|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[6]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(6));

-- Location: LABCELL_X11_Y1_N21
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(6) = SUM(( !\add_sub~input_o\ $ (\REGout_8bit|q\(6)) ) + ( \REGin_8bit|q\(6) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\REGout_8bit|q\(6)) ) + ( \REGin_8bit|q\(6) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGin_8bit|ALT_INV_q\(6),
	datad => \REGout_8bit|ALT_INV_q\(6),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(6),
	cout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\);

-- Location: FF_X11_Y1_N23
\REGout_8bit|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(6),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(6));

-- Location: IOIBUF_X14_Y0_N1
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: FF_X11_Y1_N59
\REGin_8bit|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \A[7]~input_o\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGin_8bit|q\(7));

-- Location: LABCELL_X11_Y1_N24
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(7) = SUM(( \REGin_8bit|q\(7) ) + ( !\add_sub~input_o\ $ (\REGout_8bit|q\(7)) ) + ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGout_8bit|ALT_INV_q\(7),
	datad => \REGin_8bit|ALT_INV_q\(7),
	cin => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\,
	sumout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(7));

-- Location: LABCELL_X11_Y1_N54
\REGout_8bit|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGout_8bit|q[7]~feeder_combout\ = ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(7),
	combout => \REGout_8bit|q[7]~feeder_combout\);

-- Location: FF_X11_Y1_N56
\REGout_8bit|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \REGout_8bit|q[7]~feeder_combout\,
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|q\(7));

-- Location: LABCELL_X11_Y1_N30
\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|overflow_wire[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0) = ( !\REGin_8bit|q\(7) & ( \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(7) & ( !\add_sub~input_o\ $ (!\REGout_8bit|q\(7)) ) ) ) # ( \REGin_8bit|q\(7) & ( 
-- !\ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|result\(7) & ( !\add_sub~input_o\ $ (\REGout_8bit|q\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010101011010010110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \REGout_8bit|ALT_INV_q\(7),
	datae => \REGin_8bit|ALT_INV_q\(7),
	dataf => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|ALT_INV_result\(7),
	combout => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0));

-- Location: FF_X11_Y1_N31
\REGout_8bit|f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ADDSUB_8bit|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0),
	clrn => \ALT_INV_clr~input_o\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGout_8bit|f~q\);

-- Location: MLABCELL_X25_Y28_N0
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


