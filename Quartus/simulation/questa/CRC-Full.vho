-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "02/26/2023 09:19:28"

-- 
-- Device: Altera 10CL016YM164C8G Package MBGA164
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\CRC-Full\ IS
    PORT (
	DOT : OUT std_logic;
	CLK : IN std_logic;
	RED : IN std_logic;
	DIN : IN std_logic
	);
END \CRC-Full\;

-- Design Ports Information
-- DOT	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \CRC-Full\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DOT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RED : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RED~input_o\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \D1~q\ : std_logic;
SIGNAL \D2~feeder_combout\ : std_logic;
SIGNAL \D2~q\ : std_logic;
SIGNAL \D3~feeder_combout\ : std_logic;
SIGNAL \D3~q\ : std_logic;
SIGNAL \D4~feeder_combout\ : std_logic;
SIGNAL \D4~q\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \D5~q\ : std_logic;
SIGNAL \D6~feeder_combout\ : std_logic;
SIGNAL \D6~q\ : std_logic;
SIGNAL \D7~feeder_combout\ : std_logic;
SIGNAL \D7~q\ : std_logic;
SIGNAL \D8~feeder_combout\ : std_logic;
SIGNAL \D8~q\ : std_logic;
SIGNAL \D9~feeder_combout\ : std_logic;
SIGNAL \D9~q\ : std_logic;
SIGNAL \D10~feeder_combout\ : std_logic;
SIGNAL \D10~q\ : std_logic;
SIGNAL \D11~feeder_combout\ : std_logic;
SIGNAL \D11~q\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \D12~q\ : std_logic;
SIGNAL \D13~feeder_combout\ : std_logic;
SIGNAL \D13~q\ : std_logic;
SIGNAL \D14~feeder_combout\ : std_logic;
SIGNAL \D14~q\ : std_logic;
SIGNAL \D15~feeder_combout\ : std_logic;
SIGNAL \D15~q\ : std_logic;
SIGNAL \D16~feeder_combout\ : std_logic;
SIGNAL \D16~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DOT <= ww_DOT;
ww_CLK <= CLK;
ww_RED <= RED;
ww_DIN <= DIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y11_N9
\DOT~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D16~q\,
	devoe => ww_devoe,
	o => \DOT~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N15
\RED~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RED,
	o => \RED~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\DIN~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: LCCOMB_X1_Y14_N30
inst20 : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst20~combout\ = \DIN~input_o\ $ (((!\RED~input_o\ & \D16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RED~input_o\,
	datab => \DIN~input_o\,
	datad => \D16~q\,
	combout => \inst20~combout\);

-- Location: FF_X1_Y14_N31
D1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1~q\);

-- Location: LCCOMB_X1_Y14_N4
\D2~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D2~feeder_combout\ = \D1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D1~q\,
	combout => \D2~feeder_combout\);

-- Location: FF_X1_Y14_N5
D2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2~q\);

-- Location: LCCOMB_X1_Y14_N10
\D3~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D3~feeder_combout\ = \D2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D2~q\,
	combout => \D3~feeder_combout\);

-- Location: FF_X1_Y14_N11
D3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3~q\);

-- Location: LCCOMB_X1_Y14_N8
\D4~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D4~feeder_combout\ = \D3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D3~q\,
	combout => \D4~feeder_combout\);

-- Location: FF_X1_Y14_N9
D4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4~q\);

-- Location: LCCOMB_X1_Y14_N2
inst19 : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst19~combout\ = \D4~q\ $ (((!\RED~input_o\ & \D16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RED~input_o\,
	datac => \D4~q\,
	datad => \D16~q\,
	combout => \inst19~combout\);

-- Location: FF_X1_Y14_N3
D5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5~q\);

-- Location: LCCOMB_X1_Y14_N12
\D6~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D6~feeder_combout\ = \D5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D5~q\,
	combout => \D6~feeder_combout\);

-- Location: FF_X1_Y14_N13
D6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6~q\);

-- Location: LCCOMB_X1_Y14_N14
\D7~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D7~feeder_combout\ = \D6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D6~q\,
	combout => \D7~feeder_combout\);

-- Location: FF_X1_Y14_N15
D7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D7~q\);

-- Location: LCCOMB_X1_Y14_N0
\D8~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D8~feeder_combout\ = \D7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D7~q\,
	combout => \D8~feeder_combout\);

-- Location: FF_X1_Y14_N1
D8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D8~q\);

-- Location: LCCOMB_X1_Y14_N6
\D9~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D9~feeder_combout\ = \D8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D8~q\,
	combout => \D9~feeder_combout\);

-- Location: FF_X1_Y14_N7
D9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D9~q\);

-- Location: LCCOMB_X1_Y14_N28
\D10~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D10~feeder_combout\ = \D9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D9~q\,
	combout => \D10~feeder_combout\);

-- Location: FF_X1_Y14_N29
D10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D10~q\);

-- Location: LCCOMB_X1_Y14_N26
\D11~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D11~feeder_combout\ = \D10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D10~q\,
	combout => \D11~feeder_combout\);

-- Location: FF_X1_Y14_N27
D11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D11~q\);

-- Location: LCCOMB_X1_Y14_N20
inst18 : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst18~combout\ = \D11~q\ $ (((!\RED~input_o\ & \D16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RED~input_o\,
	datac => \D11~q\,
	datad => \D16~q\,
	combout => \inst18~combout\);

-- Location: FF_X1_Y14_N21
D12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D12~q\);

-- Location: LCCOMB_X1_Y14_N22
\D13~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D13~feeder_combout\ = \D12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D12~q\,
	combout => \D13~feeder_combout\);

-- Location: FF_X1_Y14_N23
D13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D13~q\);

-- Location: LCCOMB_X1_Y14_N16
\D14~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D14~feeder_combout\ = \D13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D13~q\,
	combout => \D14~feeder_combout\);

-- Location: FF_X1_Y14_N17
D14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D14~q\);

-- Location: LCCOMB_X1_Y14_N18
\D15~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D15~feeder_combout\ = \D14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D14~q\,
	combout => \D15~feeder_combout\);

-- Location: FF_X1_Y14_N19
D15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D15~q\);

-- Location: LCCOMB_X1_Y14_N24
\D16~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D16~feeder_combout\ = \D15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D15~q\,
	combout => \D16~feeder_combout\);

-- Location: FF_X1_Y14_N25
D16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \D16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D16~q\);

ww_DOT <= \DOT~output_o\;
END structure;


