-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/27/2020 21:26:46"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1 IS
    PORT (
	clk : IN std_logic;
	\in\ : IN std_logic;
	ind0 : OUT std_logic_vector(7 DOWNTO 0);
	ind1 : OUT std_logic_vector(7 DOWNTO 0);
	out_outclk : OUT std_logic;
	out_pulse : OUT std_logic
	);
END lab1;

-- Design Ports Information
-- ind0[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[1]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[5]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[6]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind0[7]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_outclk	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pulse	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1 IS
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
SIGNAL \ww_in\ : std_logic;
SIGNAL ww_ind0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ind1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_outclk : std_logic;
SIGNAL ww_out_pulse : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_vsm|pulse_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \my_vsm|state.load_count1~q\ : std_logic;
SIGNAL \my_vsm|time_count[1]~4_combout\ : std_logic;
SIGNAL \my_vsm|Selector4~4_combout\ : std_logic;
SIGNAL \my_vsm|pulse_reg~clkctrl_outclk\ : std_logic;
SIGNAL \ind0[0]~output_o\ : std_logic;
SIGNAL \ind0[1]~output_o\ : std_logic;
SIGNAL \ind0[2]~output_o\ : std_logic;
SIGNAL \ind0[3]~output_o\ : std_logic;
SIGNAL \ind0[4]~output_o\ : std_logic;
SIGNAL \ind0[5]~output_o\ : std_logic;
SIGNAL \ind0[6]~output_o\ : std_logic;
SIGNAL \ind0[7]~output_o\ : std_logic;
SIGNAL \ind1[0]~output_o\ : std_logic;
SIGNAL \ind1[1]~output_o\ : std_logic;
SIGNAL \ind1[2]~output_o\ : std_logic;
SIGNAL \ind1[3]~output_o\ : std_logic;
SIGNAL \ind1[4]~output_o\ : std_logic;
SIGNAL \ind1[5]~output_o\ : std_logic;
SIGNAL \ind1[6]~output_o\ : std_logic;
SIGNAL \ind1[7]~output_o\ : std_logic;
SIGNAL \out_outclk~output_o\ : std_logic;
SIGNAL \out_pulse~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~21_combout\ : std_logic;
SIGNAL \counter[1]~7_combout\ : std_logic;
SIGNAL \counter[1]~8\ : std_logic;
SIGNAL \counter[2]~9_combout\ : std_logic;
SIGNAL \counter[2]~10\ : std_logic;
SIGNAL \counter[3]~11_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \counter[3]~12\ : std_logic;
SIGNAL \counter[4]~13_combout\ : std_logic;
SIGNAL \counter[4]~14\ : std_logic;
SIGNAL \counter[5]~16\ : std_logic;
SIGNAL \counter[6]~17_combout\ : std_logic;
SIGNAL \counter[6]~18\ : std_logic;
SIGNAL \counter[7]~19_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \counter[5]~15_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\ : std_logic;
SIGNAL \in~input_o\ : std_logic;
SIGNAL \my_vsm|Selector1~0_combout\ : std_logic;
SIGNAL \my_vsm|Selector1~1_combout\ : std_logic;
SIGNAL \my_vsm|state.idle~q\ : std_logic;
SIGNAL \my_vsm|time_count[2]~2_combout\ : std_logic;
SIGNAL \my_vsm|time_count[2]~3_combout\ : std_logic;
SIGNAL \my_vsm|time_count[0]~7_combout\ : std_logic;
SIGNAL \my_vsm|time_count[1]~6_combout\ : std_logic;
SIGNAL \my_vsm|Add0~0_combout\ : std_logic;
SIGNAL \my_vsm|time_count[2]~5_combout\ : std_logic;
SIGNAL \my_vsm|Equal0~0_combout\ : std_logic;
SIGNAL \my_vsm|Selector3~0_combout\ : std_logic;
SIGNAL \my_vsm|state.wait_time1~q\ : std_logic;
SIGNAL \my_vsm|Selector4~2_combout\ : std_logic;
SIGNAL \my_vsm|Selector4~0_combout\ : std_logic;
SIGNAL \my_vsm|Selector4~1_combout\ : std_logic;
SIGNAL \my_vsm|Selector4~3_combout\ : std_logic;
SIGNAL \my_vsm|state.wait_sw~q\ : std_logic;
SIGNAL \my_vsm|Selector5~0_combout\ : std_logic;
SIGNAL \my_vsm|state.load_count2~q\ : std_logic;
SIGNAL \my_vsm|Selector6~0_combout\ : std_logic;
SIGNAL \my_vsm|state.wait_time2~q\ : std_logic;
SIGNAL \my_vsm|state.out_pulse~0_combout\ : std_logic;
SIGNAL \my_vsm|state.out_pulse~q\ : std_logic;
SIGNAL \my_vsm|Selector0~0_combout\ : std_logic;
SIGNAL \my_vsm|pulse_reg~feeder_combout\ : std_logic;
SIGNAL \my_vsm|pulse_reg~q\ : std_logic;
SIGNAL inner_ind1 : std_logic_vector(7 DOWNTO 0);
SIGNAL inner_ind0 : std_logic_vector(7 DOWNTO 0);
SIGNAL counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \my_vsm|time_count\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
\ww_in\ <= \in\;
ind0 <= ww_ind0;
ind1 <= ww_ind1;
out_outclk <= ww_out_outclk;
out_pulse <= ww_out_pulse;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

\my_vsm|pulse_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_vsm|pulse_reg~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X33_Y12_N12
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X33_Y12_N22
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X33_Y12_N26
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X33_Y12_N27
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: FF_X33_Y12_N23
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: FF_X33_Y12_N13
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X33_Y9_N3
\my_vsm|state.load_count1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.load_count1~q\);

-- Location: LCCOMB_X33_Y9_N30
\my_vsm|time_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|time_count[1]~4_combout\ = (!\my_vsm|state.load_count2~q\ & !\my_vsm|state.load_count1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_vsm|state.load_count2~q\,
	datad => \my_vsm|state.load_count1~q\,
	combout => \my_vsm|time_count[1]~4_combout\);

-- Location: LCCOMB_X33_Y9_N2
\my_vsm|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector4~4_combout\ = (!\in~input_o\ & !\my_vsm|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in~input_o\,
	datad => \my_vsm|state.idle~q\,
	combout => \my_vsm|Selector4~4_combout\);

-- Location: CLKCTRL_G7
\my_vsm|pulse_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \my_vsm|pulse_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \my_vsm|pulse_reg~clkctrl_outclk\);

-- Location: IOOBUF_X0_Y18_N16
\ind0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(0),
	devoe => ww_devoe,
	o => \ind0[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\ind0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(1),
	devoe => ww_devoe,
	o => \ind0[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\ind0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(2),
	devoe => ww_devoe,
	o => \ind0[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\ind0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(3),
	devoe => ww_devoe,
	o => \ind0[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\ind0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(4),
	devoe => ww_devoe,
	o => \ind0[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\ind0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(5),
	devoe => ww_devoe,
	o => \ind0[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\ind0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind0(6),
	devoe => ww_devoe,
	o => \ind0[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\ind0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ind0[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\ind1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(0),
	devoe => ww_devoe,
	o => \ind1[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\ind1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(1),
	devoe => ww_devoe,
	o => \ind1[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\ind1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(2),
	devoe => ww_devoe,
	o => \ind1[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\ind1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(3),
	devoe => ww_devoe,
	o => \ind1[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\ind1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(4),
	devoe => ww_devoe,
	o => \ind1[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\ind1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(5),
	devoe => ww_devoe,
	o => \ind1[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\ind1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inner_ind1(6),
	devoe => ww_devoe,
	o => \ind1[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\ind1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ind1[7]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\out_outclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \out_outclk~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\out_pulse~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_vsm|pulse_reg~q\,
	devoe => ww_devoe,
	o => \out_pulse~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y22_N6
\counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~21_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~21_combout\);

-- Location: FF_X16_Y22_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X16_Y22_N14
\counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~7_combout\ = (counter(0) & (counter(1) $ (VCC))) # (!counter(0) & (counter(1) & VCC))
-- \counter[1]~8\ = CARRY((counter(0) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => VCC,
	combout => \counter[1]~7_combout\,
	cout => \counter[1]~8\);

-- Location: FF_X16_Y22_N15
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X16_Y22_N16
\counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~9_combout\ = (counter(2) & (!\counter[1]~8\)) # (!counter(2) & ((\counter[1]~8\) # (GND)))
-- \counter[2]~10\ = CARRY((!\counter[1]~8\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~8\,
	combout => \counter[2]~9_combout\,
	cout => \counter[2]~10\);

-- Location: FF_X16_Y22_N17
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X16_Y22_N18
\counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~11_combout\ = (counter(3) & (\counter[2]~10\ $ (GND))) # (!counter(3) & (!\counter[2]~10\ & VCC))
-- \counter[3]~12\ = CARRY((counter(3) & !\counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~10\,
	combout => \counter[3]~11_combout\,
	cout => \counter[3]~12\);

-- Location: FF_X16_Y22_N19
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X17_Y22_N16
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (counter(2) & ((counter(1)) # (counter(0) $ (counter(3))))) # (!counter(2) & ((counter(1) $ (counter(3))) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => counter(3),
	combout => \WideOr6~0_combout\);

-- Location: FF_X17_Y22_N17
\inner_ind0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(0));

-- Location: LCCOMB_X16_Y22_N0
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (counter(1) & ((counter(0) & ((!counter(3)))) # (!counter(0) & (!counter(2))))) # (!counter(1) & ((counter(0) $ (!counter(3))) # (!counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(1),
	datad => counter(3),
	combout => \WideOr5~0_combout\);

-- Location: FF_X16_Y22_N1
\inner_ind0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(1));

-- Location: LCCOMB_X17_Y22_N30
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (counter(3) & (((counter(0) & !counter(1))) # (!counter(2)))) # (!counter(3) & ((counter(0)) # ((counter(2)) # (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \WideOr4~0_combout\);

-- Location: FF_X17_Y22_N31
\inner_ind0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(2));

-- Location: LCCOMB_X17_Y22_N20
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (counter(1) & ((counter(0) & (!counter(2))) # (!counter(0) & ((counter(2)) # (!counter(3)))))) # (!counter(1) & ((counter(3)) # (counter(0) $ (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => counter(3),
	combout => \WideOr3~0_combout\);

-- Location: FF_X17_Y22_N21
\inner_ind0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(3));

-- Location: LCCOMB_X16_Y22_N2
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (counter(1) & (((counter(3))) # (!counter(0)))) # (!counter(1) & ((counter(2) & ((counter(3)))) # (!counter(2) & (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(1),
	datad => counter(3),
	combout => \WideOr2~0_combout\);

-- Location: FF_X16_Y22_N3
\inner_ind0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(4));

-- Location: LCCOMB_X17_Y22_N26
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (counter(0) & (counter(3) $ (((counter(2) & !counter(1)))))) # (!counter(0) & ((counter(3)) # ((counter(2)) # (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \WideOr1~0_combout\);

-- Location: FF_X17_Y22_N27
\inner_ind0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(5));

-- Location: LCCOMB_X17_Y22_N4
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (counter(0) & ((counter(3)) # (counter(1) $ (counter(2))))) # (!counter(0) & ((counter(1)) # (counter(2) $ (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => counter(3),
	combout => \WideOr0~0_combout\);

-- Location: FF_X17_Y22_N5
\inner_ind0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind0(6));

-- Location: LCCOMB_X16_Y22_N20
\counter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~13_combout\ = (counter(4) & (!\counter[3]~12\)) # (!counter(4) & ((\counter[3]~12\) # (GND)))
-- \counter[4]~14\ = CARRY((!\counter[3]~12\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~12\,
	combout => \counter[4]~13_combout\,
	cout => \counter[4]~14\);

-- Location: FF_X16_Y22_N21
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X16_Y22_N22
\counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~15_combout\ = (counter(5) & (\counter[4]~14\ $ (GND))) # (!counter(5) & (!\counter[4]~14\ & VCC))
-- \counter[5]~16\ = CARRY((counter(5) & !\counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~14\,
	combout => \counter[5]~15_combout\,
	cout => \counter[5]~16\);

-- Location: LCCOMB_X16_Y22_N24
\counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~17_combout\ = (counter(6) & (!\counter[5]~16\)) # (!counter(6) & ((\counter[5]~16\) # (GND)))
-- \counter[6]~18\ = CARRY((!\counter[5]~16\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~16\,
	combout => \counter[6]~17_combout\,
	cout => \counter[6]~18\);

-- Location: FF_X16_Y22_N25
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X16_Y22_N26
\counter[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~19_combout\ = counter(7) $ (!\counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	cin => \counter[6]~18\,
	combout => \counter[7]~19_combout\);

-- Location: FF_X16_Y22_N27
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X16_Y22_N28
\WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (counter(7) & ((counter(5) $ (!counter(6))) # (!counter(4)))) # (!counter(7) & ((counter(5)) # (counter(4) $ (!counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => counter(7),
	datad => counter(6),
	combout => \WideOr13~0_combout\);

-- Location: FF_X16_Y22_N29
\inner_ind1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(0));

-- Location: FF_X16_Y22_N23
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_vsm|pulse_reg~clkctrl_outclk\,
	d => \counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X16_Y22_N30
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (counter(7) & ((counter(4) & (!counter(5))) # (!counter(4) & ((!counter(6)))))) # (!counter(7) & ((counter(4) $ (!counter(5))) # (!counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(4),
	datac => counter(5),
	datad => counter(6),
	combout => \WideOr12~0_combout\);

-- Location: FF_X16_Y22_N31
\inner_ind1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(1));

-- Location: LCCOMB_X16_Y22_N8
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (counter(7) & (((counter(4) & !counter(5))) # (!counter(6)))) # (!counter(7) & ((counter(4)) # ((counter(6)) # (!counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(4),
	datac => counter(5),
	datad => counter(6),
	combout => \WideOr11~0_combout\);

-- Location: FF_X16_Y22_N9
\inner_ind1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(2));

-- Location: LCCOMB_X16_Y22_N10
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (counter(5) & ((counter(6) & ((!counter(4)))) # (!counter(6) & ((counter(4)) # (!counter(7)))))) # (!counter(5) & ((counter(7)) # (counter(6) $ (!counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => counter(4),
	combout => \WideOr10~0_combout\);

-- Location: FF_X16_Y22_N11
\inner_ind1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(3));

-- Location: LCCOMB_X16_Y22_N12
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (counter(5) & ((counter(7)) # ((!counter(4))))) # (!counter(5) & ((counter(6) & (counter(7))) # (!counter(6) & ((!counter(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => counter(4),
	combout => \WideOr9~0_combout\);

-- Location: FF_X16_Y22_N13
\inner_ind1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(4));

-- Location: LCCOMB_X16_Y22_N4
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (counter(6) & ((counter(7) $ (!counter(5))) # (!counter(4)))) # (!counter(6) & ((counter(7)) # ((!counter(5) & !counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => counter(4),
	combout => \WideOr8~0_combout\);

-- Location: FF_X16_Y22_N5
\inner_ind1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(5));

-- Location: LCCOMB_X17_Y22_N18
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (counter(4) & ((counter(7)) # (counter(5) $ (counter(6))))) # (!counter(4) & ((counter(5)) # (counter(7) $ (counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => counter(7),
	datad => counter(6),
	combout => \WideOr7~0_combout\);

-- Location: FF_X17_Y22_N19
\inner_ind1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inner_ind1(6));

-- Location: LCCOMB_X33_Y12_N8
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X33_Y12_N9
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X33_Y12_N10
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X33_Y12_N11
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X33_Y12_N14
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X33_Y12_N15
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X33_Y12_N16
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X33_Y12_N17
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X33_Y12_N18
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X33_Y12_N19
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X33_Y12_N20
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X33_Y12_N21
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X33_Y12_N24
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X33_Y12_N25
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X33_Y12_N28
\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) $ (!\my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	cin => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\);

-- Location: FF_X33_Y12_N29
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: CLKCTRL_G8
\my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y9_N1
\in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\,
	o => \in~input_o\);

-- Location: LCCOMB_X32_Y9_N22
\my_vsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector1~0_combout\ = (\in~input_o\ & (!\my_vsm|state.idle~q\)) # (!\in~input_o\ & (((\my_vsm|state.wait_sw~q\) # (\my_vsm|state.load_count2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \my_vsm|state.idle~q\,
	datac => \my_vsm|state.wait_sw~q\,
	datad => \my_vsm|state.load_count2~q\,
	combout => \my_vsm|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y9_N14
\my_vsm|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector1~1_combout\ = (!\my_vsm|state.out_pulse~q\ & !\my_vsm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_vsm|state.out_pulse~q\,
	datad => \my_vsm|Selector1~0_combout\,
	combout => \my_vsm|Selector1~1_combout\);

-- Location: FF_X32_Y9_N15
\my_vsm|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.idle~q\);

-- Location: LCCOMB_X32_Y9_N4
\my_vsm|time_count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|time_count[2]~2_combout\ = (\my_vsm|state.wait_sw~q\) # ((\my_vsm|state.out_pulse~q\) # (!\my_vsm|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_vsm|state.wait_sw~q\,
	datac => \my_vsm|state.idle~q\,
	datad => \my_vsm|state.out_pulse~q\,
	combout => \my_vsm|time_count[2]~2_combout\);

-- Location: LCCOMB_X32_Y9_N6
\my_vsm|time_count[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|time_count[2]~3_combout\ = (\my_vsm|time_count[2]~2_combout\) # ((\my_vsm|Equal0~0_combout\ & ((\my_vsm|state.wait_time1~q\) # (\my_vsm|state.wait_time2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|state.wait_time1~q\,
	datab => \my_vsm|state.wait_time2~q\,
	datac => \my_vsm|time_count[2]~2_combout\,
	datad => \my_vsm|Equal0~0_combout\,
	combout => \my_vsm|time_count[2]~3_combout\);

-- Location: LCCOMB_X32_Y9_N8
\my_vsm|time_count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|time_count[0]~7_combout\ = (\my_vsm|time_count\(0) & (((\my_vsm|time_count[2]~3_combout\)))) # (!\my_vsm|time_count\(0) & (!\my_vsm|state.load_count1~q\ & (!\my_vsm|state.load_count2~q\ & !\my_vsm|time_count[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|state.load_count1~q\,
	datab => \my_vsm|state.load_count2~q\,
	datac => \my_vsm|time_count\(0),
	datad => \my_vsm|time_count[2]~3_combout\,
	combout => \my_vsm|time_count[0]~7_combout\);

-- Location: FF_X32_Y9_N9
\my_vsm|time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|time_count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|time_count\(0));

-- Location: LCCOMB_X32_Y9_N26
\my_vsm|time_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|time_count[1]~6_combout\ = (\my_vsm|time_count[2]~3_combout\ & (((\my_vsm|time_count\(1))))) # (!\my_vsm|time_count[2]~3_combout\ & ((\my_vsm|time_count\(0) $ (!\my_vsm|time_count\(1))) # (!\my_vsm|time_count[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|time_count[1]~4_combout\,
	datab => \my_vsm|time_count\(0),
	datac => \my_vsm|time_count\(1),
	datad => \my_vsm|time_count[2]~3_combout\,
	combout => \my_vsm|time_count[1]~6_combout\);

-- Location: FF_X32_Y9_N27
\my_vsm|time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|time_count[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|time_count\(1));

-- Location: LCCOMB_X32_Y9_N28
\my_vsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Add0~0_combout\ = \my_vsm|time_count\(2) $ (((\my_vsm|time_count\(1)) # (\my_vsm|time_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_vsm|time_count\(2),
	datac => \my_vsm|time_count\(1),
	datad => \my_vsm|time_count\(0),
	combout => \my_vsm|Add0~0_combout\);

-- Location: LCCOMB_X32_Y9_N20
\my_vsm|time_count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|time_count[2]~5_combout\ = (\my_vsm|time_count[2]~3_combout\ & (((\my_vsm|time_count\(2))))) # (!\my_vsm|time_count[2]~3_combout\ & (\my_vsm|time_count[1]~4_combout\ & (!\my_vsm|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|time_count[1]~4_combout\,
	datab => \my_vsm|Add0~0_combout\,
	datac => \my_vsm|time_count\(2),
	datad => \my_vsm|time_count[2]~3_combout\,
	combout => \my_vsm|time_count[2]~5_combout\);

-- Location: FF_X32_Y9_N21
\my_vsm|time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|time_count[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|time_count\(2));

-- Location: LCCOMB_X32_Y9_N10
\my_vsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Equal0~0_combout\ = (!\my_vsm|time_count\(0) & (!\my_vsm|time_count\(1) & !\my_vsm|time_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_vsm|time_count\(0),
	datac => \my_vsm|time_count\(1),
	datad => \my_vsm|time_count\(2),
	combout => \my_vsm|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y9_N30
\my_vsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector3~0_combout\ = (\my_vsm|state.load_count1~q\) # ((\my_vsm|state.wait_time1~q\ & !\my_vsm|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|state.load_count1~q\,
	datac => \my_vsm|state.wait_time1~q\,
	datad => \my_vsm|Equal0~0_combout\,
	combout => \my_vsm|Selector3~0_combout\);

-- Location: FF_X32_Y9_N31
\my_vsm|state.wait_time1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.wait_time1~q\);

-- Location: LCCOMB_X32_Y9_N18
\my_vsm|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector4~2_combout\ = (!\my_vsm|state.wait_time2~q\ & (\my_vsm|state.wait_time1~q\ & \my_vsm|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|state.wait_time2~q\,
	datac => \my_vsm|state.wait_time1~q\,
	datad => \my_vsm|Equal0~0_combout\,
	combout => \my_vsm|Selector4~2_combout\);

-- Location: LCCOMB_X32_Y9_N0
\my_vsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector4~0_combout\ = (\my_vsm|state.idle~q\ & (((\my_vsm|state.wait_time1~q\) # (\my_vsm|state.wait_time2~q\)))) # (!\my_vsm|state.idle~q\ & (\in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \my_vsm|state.idle~q\,
	datac => \my_vsm|state.wait_time1~q\,
	datad => \my_vsm|state.wait_time2~q\,
	combout => \my_vsm|Selector4~0_combout\);

-- Location: LCCOMB_X32_Y9_N2
\my_vsm|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector4~1_combout\ = (\my_vsm|Selector4~0_combout\ & (((!\my_vsm|state.wait_time2~q\ & !\my_vsm|state.wait_time1~q\)) # (!\my_vsm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|state.wait_time2~q\,
	datab => \my_vsm|Selector4~0_combout\,
	datac => \my_vsm|state.wait_time1~q\,
	datad => \my_vsm|Equal0~0_combout\,
	combout => \my_vsm|Selector4~1_combout\);

-- Location: LCCOMB_X32_Y9_N24
\my_vsm|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector4~3_combout\ = (\my_vsm|Selector4~2_combout\) # ((\my_vsm|state.wait_sw~q\ & \my_vsm|Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_vsm|Selector4~2_combout\,
	datac => \my_vsm|state.wait_sw~q\,
	datad => \my_vsm|Selector4~1_combout\,
	combout => \my_vsm|Selector4~3_combout\);

-- Location: FF_X32_Y9_N25
\my_vsm|state.wait_sw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.wait_sw~q\);

-- Location: LCCOMB_X33_Y9_N22
\my_vsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector5~0_combout\ = (\in~input_o\ & \my_vsm|state.wait_sw~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in~input_o\,
	datad => \my_vsm|state.wait_sw~q\,
	combout => \my_vsm|Selector5~0_combout\);

-- Location: FF_X33_Y9_N23
\my_vsm|state.load_count2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.load_count2~q\);

-- Location: LCCOMB_X32_Y9_N12
\my_vsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector6~0_combout\ = (\in~input_o\ & ((\my_vsm|state.load_count2~q\) # ((\my_vsm|state.wait_time2~q\ & !\my_vsm|Equal0~0_combout\)))) # (!\in~input_o\ & (((\my_vsm|state.wait_time2~q\ & !\my_vsm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \my_vsm|state.load_count2~q\,
	datac => \my_vsm|state.wait_time2~q\,
	datad => \my_vsm|Equal0~0_combout\,
	combout => \my_vsm|Selector6~0_combout\);

-- Location: FF_X32_Y9_N13
\my_vsm|state.wait_time2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.wait_time2~q\);

-- Location: LCCOMB_X32_Y9_N16
\my_vsm|state.out_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|state.out_pulse~0_combout\ = (\my_vsm|Equal0~0_combout\ & ((\my_vsm|state.wait_time2~q\) # ((\my_vsm|state.out_pulse~q\ & \my_vsm|Selector4~1_combout\)))) # (!\my_vsm|Equal0~0_combout\ & (((\my_vsm|state.out_pulse~q\ & 
-- \my_vsm|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_vsm|Equal0~0_combout\,
	datab => \my_vsm|state.wait_time2~q\,
	datac => \my_vsm|state.out_pulse~q\,
	datad => \my_vsm|Selector4~1_combout\,
	combout => \my_vsm|state.out_pulse~0_combout\);

-- Location: FF_X32_Y9_N17
\my_vsm|state.out_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|state.out_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|state.out_pulse~q\);

-- Location: LCCOMB_X33_Y9_N8
\my_vsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|Selector0~0_combout\ = (\my_vsm|state.out_pulse~q\) # ((\my_vsm|pulse_reg~q\ & \my_vsm|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_vsm|pulse_reg~q\,
	datac => \my_vsm|state.out_pulse~q\,
	datad => \my_vsm|state.idle~q\,
	combout => \my_vsm|Selector0~0_combout\);

-- Location: LCCOMB_X33_Y9_N24
\my_vsm|pulse_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_vsm|pulse_reg~feeder_combout\ = \my_vsm|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_vsm|Selector0~0_combout\,
	combout => \my_vsm|pulse_reg~feeder_combout\);

-- Location: FF_X33_Y9_N25
\my_vsm|pulse_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~clkctrl_outclk\,
	d => \my_vsm|pulse_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_vsm|pulse_reg~q\);

ww_ind0(0) <= \ind0[0]~output_o\;

ww_ind0(1) <= \ind0[1]~output_o\;

ww_ind0(2) <= \ind0[2]~output_o\;

ww_ind0(3) <= \ind0[3]~output_o\;

ww_ind0(4) <= \ind0[4]~output_o\;

ww_ind0(5) <= \ind0[5]~output_o\;

ww_ind0(6) <= \ind0[6]~output_o\;

ww_ind0(7) <= \ind0[7]~output_o\;

ww_ind1(0) <= \ind1[0]~output_o\;

ww_ind1(1) <= \ind1[1]~output_o\;

ww_ind1(2) <= \ind1[2]~output_o\;

ww_ind1(3) <= \ind1[3]~output_o\;

ww_ind1(4) <= \ind1[4]~output_o\;

ww_ind1(5) <= \ind1[5]~output_o\;

ww_ind1(6) <= \ind1[6]~output_o\;

ww_ind1(7) <= \ind1[7]~output_o\;

ww_out_outclk <= \out_outclk~output_o\;

ww_out_pulse <= \out_pulse~output_o\;
END structure;


