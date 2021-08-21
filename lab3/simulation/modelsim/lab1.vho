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

-- DATE "11/10/2020 19:06:58"

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
	miso : IN std_logic;
	sclk : OUT std_logic;
	mosi : OUT std_logic;
	ssb : OUT std_logic;
	accel : OUT std_logic_vector(23 DOWNTO 0);
	temp : OUT std_logic_vector(13 DOWNTO 0);
	ready : OUT std_logic
	);
END lab1;

-- Design Ports Information
-- sclk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssb	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[9]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[10]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[11]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[12]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[13]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[14]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[15]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[16]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[17]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[18]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[19]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[20]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[21]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[22]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accel[23]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[8]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[9]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[10]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[11]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[12]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[13]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_miso : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_ssb : std_logic;
SIGNAL ww_accel : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_temp : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider|Add0~0_combout\ : std_logic;
SIGNAL \divider|Add0~13\ : std_logic;
SIGNAL \divider|Add0~14_combout\ : std_logic;
SIGNAL \spi|Add2~8_combout\ : std_logic;
SIGNAL \spi|inner_data[38]~9_combout\ : std_logic;
SIGNAL \spi|Add1~0_combout\ : std_logic;
SIGNAL \spi|Add1~1\ : std_logic;
SIGNAL \spi|Add1~2_combout\ : std_logic;
SIGNAL \spi|Add1~3\ : std_logic;
SIGNAL \spi|Add1~4_combout\ : std_logic;
SIGNAL \spi|Add1~5\ : std_logic;
SIGNAL \spi|Add1~6_combout\ : std_logic;
SIGNAL \spi|Add1~7\ : std_logic;
SIGNAL \spi|Add1~8_combout\ : std_logic;
SIGNAL \spi|Add1~9\ : std_logic;
SIGNAL \spi|Add1~10_combout\ : std_logic;
SIGNAL \spi|Add1~11\ : std_logic;
SIGNAL \spi|Add1~12_combout\ : std_logic;
SIGNAL \spi|Add1~13\ : std_logic;
SIGNAL \spi|Add1~14_combout\ : std_logic;
SIGNAL \spi|Add1~15\ : std_logic;
SIGNAL \spi|Add1~16_combout\ : std_logic;
SIGNAL \spi|Add1~17\ : std_logic;
SIGNAL \spi|Add1~18_combout\ : std_logic;
SIGNAL \spi|Add1~19\ : std_logic;
SIGNAL \spi|Add1~20_combout\ : std_logic;
SIGNAL \spi|Add1~21\ : std_logic;
SIGNAL \spi|Add1~22_combout\ : std_logic;
SIGNAL \spi|Add1~23\ : std_logic;
SIGNAL \spi|Add1~24_combout\ : std_logic;
SIGNAL \spi|Add1~25\ : std_logic;
SIGNAL \spi|Add1~26_combout\ : std_logic;
SIGNAL \spi|Add1~27\ : std_logic;
SIGNAL \spi|Add1~28_combout\ : std_logic;
SIGNAL \spi|hold[0]~0_combout\ : std_logic;
SIGNAL \spi|hold[3]~1_combout\ : std_logic;
SIGNAL \spi|hold[4]~2_combout\ : std_logic;
SIGNAL \spi|hold[13]~3_combout\ : std_logic;
SIGNAL \spi|inner_data[37]~33_combout\ : std_logic;
SIGNAL \spi|inner_data[36]~34_combout\ : std_logic;
SIGNAL \spi|inner_data[35]~35_combout\ : std_logic;
SIGNAL \spi|inner_data[34]~36_combout\ : std_logic;
SIGNAL \spi|inner_data[33]~37_combout\ : std_logic;
SIGNAL \spi|inner_data[32]~38_combout\ : std_logic;
SIGNAL \spi|state~11_combout\ : std_logic;
SIGNAL \spi|inner_data~69_combout\ : std_logic;
SIGNAL \spi|inner_data~76_combout\ : std_logic;
SIGNAL \spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi|Equal1~1_combout\ : std_logic;
SIGNAL \spi|Equal1~2_combout\ : std_logic;
SIGNAL \spi|Equal1~3_combout\ : std_logic;
SIGNAL \spi|Equal1~4_combout\ : std_logic;
SIGNAL \spi|always0~1_combout\ : std_logic;
SIGNAL \divider|counter~0_combout\ : std_logic;
SIGNAL \divider|counter~1_combout\ : std_logic;
SIGNAL \spi|inner_data~102_combout\ : std_logic;
SIGNAL \spi|inner_data~103_combout\ : std_logic;
SIGNAL \spi|inner_data~104_combout\ : std_logic;
SIGNAL \spi|inner_data~105_combout\ : std_logic;
SIGNAL \spi|inner_data~106_combout\ : std_logic;
SIGNAL \spi|Selector0~0_combout\ : std_logic;
SIGNAL \spi|inner_data~114_combout\ : std_logic;
SIGNAL \spi|inner_data~120_combout\ : std_logic;
SIGNAL \spi|inner_data~122_combout\ : std_logic;
SIGNAL \spi|hold[1]~4_combout\ : std_logic;
SIGNAL \spi|always0~3_combout\ : std_logic;
SIGNAL \spi|hold[1]~5_combout\ : std_logic;
SIGNAL \spi|hold[2]~6_combout\ : std_logic;
SIGNAL \spi|hold[5]~7_combout\ : std_logic;
SIGNAL \spi|hold[6]~8_combout\ : std_logic;
SIGNAL \spi|hold[7]~9_combout\ : std_logic;
SIGNAL \spi|hold[8]~10_combout\ : std_logic;
SIGNAL \spi|hold[9]~11_combout\ : std_logic;
SIGNAL \spi|hold[10]~12_combout\ : std_logic;
SIGNAL \spi|hold[11]~13_combout\ : std_logic;
SIGNAL \spi|hold[12]~14_combout\ : std_logic;
SIGNAL \spi|hold[14]~15_combout\ : std_logic;
SIGNAL \spi|hold[3]~16_combout\ : std_logic;
SIGNAL \spi|hold[3]~17_combout\ : std_logic;
SIGNAL \spi|inner_data~129_combout\ : std_logic;
SIGNAL \spi|inner_data~147_combout\ : std_logic;
SIGNAL \spi|inner_data~152_combout\ : std_logic;
SIGNAL \spi|inner_data~154_combout\ : std_logic;
SIGNAL \spi|inner_data~159_combout\ : std_logic;
SIGNAL \spi|inner_data~164_combout\ : std_logic;
SIGNAL \spi|inner_data~170_combout\ : std_logic;
SIGNAL \spi|inner_data~216_combout\ : std_logic;
SIGNAL \spi|inner_data~230_combout\ : std_logic;
SIGNAL \spi|inner_data~235_combout\ : std_logic;
SIGNAL \spi|inner_data~245_combout\ : std_logic;
SIGNAL \spi|inner_data~249_combout\ : std_logic;
SIGNAL \spi|inner_data~250_combout\ : std_logic;
SIGNAL \spi|inner_data~251_combout\ : std_logic;
SIGNAL \spi|inner_data~252_combout\ : std_logic;
SIGNAL \spi|inner_data~253_combout\ : std_logic;
SIGNAL \spi|inner_data~254_combout\ : std_logic;
SIGNAL \spi|inner_data~255_combout\ : std_logic;
SIGNAL \spi|inner_data~256_combout\ : std_logic;
SIGNAL \spi|Selector1~0_combout\ : std_logic;
SIGNAL \spi|inner_data~257_combout\ : std_logic;
SIGNAL \spi|inner_data~258_combout\ : std_logic;
SIGNAL \spi|inner_data~259_combout\ : std_logic;
SIGNAL \spi|inner_data~260_combout\ : std_logic;
SIGNAL \spi|inner_data~261_combout\ : std_logic;
SIGNAL \spi|inner_data~262_combout\ : std_logic;
SIGNAL \spi|inner_data~263_combout\ : std_logic;
SIGNAL \spi|inner_data~264_combout\ : std_logic;
SIGNAL \spi|inner_data~265_combout\ : std_logic;
SIGNAL \spi|inner_data~266_combout\ : std_logic;
SIGNAL \spi|inner_data~267_combout\ : std_logic;
SIGNAL \spi|inner_data~268_combout\ : std_logic;
SIGNAL \spi|inner_data~269_combout\ : std_logic;
SIGNAL \spi|inner_data~270_combout\ : std_logic;
SIGNAL \spi|inner_data~271_combout\ : std_logic;
SIGNAL \spi|inner_data~272_combout\ : std_logic;
SIGNAL \spi|inner_data~273_combout\ : std_logic;
SIGNAL \spi|inner_data~274_combout\ : std_logic;
SIGNAL \spi|temp[0]~5_combout\ : std_logic;
SIGNAL \spi|inner_data~281_combout\ : std_logic;
SIGNAL \spi|inner_data~282_combout\ : std_logic;
SIGNAL \spi|inner_data~283_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \ssb~output_o\ : std_logic;
SIGNAL \accel[0]~output_o\ : std_logic;
SIGNAL \accel[1]~output_o\ : std_logic;
SIGNAL \accel[2]~output_o\ : std_logic;
SIGNAL \accel[3]~output_o\ : std_logic;
SIGNAL \accel[4]~output_o\ : std_logic;
SIGNAL \accel[5]~output_o\ : std_logic;
SIGNAL \accel[6]~output_o\ : std_logic;
SIGNAL \accel[7]~output_o\ : std_logic;
SIGNAL \accel[8]~output_o\ : std_logic;
SIGNAL \accel[9]~output_o\ : std_logic;
SIGNAL \accel[10]~output_o\ : std_logic;
SIGNAL \accel[11]~output_o\ : std_logic;
SIGNAL \accel[12]~output_o\ : std_logic;
SIGNAL \accel[13]~output_o\ : std_logic;
SIGNAL \accel[14]~output_o\ : std_logic;
SIGNAL \accel[15]~output_o\ : std_logic;
SIGNAL \accel[16]~output_o\ : std_logic;
SIGNAL \accel[17]~output_o\ : std_logic;
SIGNAL \accel[18]~output_o\ : std_logic;
SIGNAL \accel[19]~output_o\ : std_logic;
SIGNAL \accel[20]~output_o\ : std_logic;
SIGNAL \accel[21]~output_o\ : std_logic;
SIGNAL \accel[22]~output_o\ : std_logic;
SIGNAL \accel[23]~output_o\ : std_logic;
SIGNAL \temp[0]~output_o\ : std_logic;
SIGNAL \temp[1]~output_o\ : std_logic;
SIGNAL \temp[2]~output_o\ : std_logic;
SIGNAL \temp[3]~output_o\ : std_logic;
SIGNAL \temp[4]~output_o\ : std_logic;
SIGNAL \temp[5]~output_o\ : std_logic;
SIGNAL \temp[6]~output_o\ : std_logic;
SIGNAL \temp[7]~output_o\ : std_logic;
SIGNAL \temp[8]~output_o\ : std_logic;
SIGNAL \temp[9]~output_o\ : std_logic;
SIGNAL \temp[10]~output_o\ : std_logic;
SIGNAL \temp[11]~output_o\ : std_logic;
SIGNAL \temp[12]~output_o\ : std_logic;
SIGNAL \temp[13]~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \divider|Add0~1\ : std_logic;
SIGNAL \divider|Add0~3\ : std_logic;
SIGNAL \divider|Add0~5\ : std_logic;
SIGNAL \divider|Add0~6_combout\ : std_logic;
SIGNAL \divider|Add0~7\ : std_logic;
SIGNAL \divider|Add0~8_combout\ : std_logic;
SIGNAL \divider|Add0~9\ : std_logic;
SIGNAL \divider|Add0~11\ : std_logic;
SIGNAL \divider|Add0~12_combout\ : std_logic;
SIGNAL \divider|Add0~10_combout\ : std_logic;
SIGNAL \divider|Add0~4_combout\ : std_logic;
SIGNAL \divider|Add0~2_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~1_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~feeder_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~q\ : std_logic;
SIGNAL \spi|bit_number[0]~10\ : std_logic;
SIGNAL \spi|bit_number[1]~12\ : std_logic;
SIGNAL \spi|bit_number[2]~13_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \spi|bit_count[3]~2_combout\ : std_logic;
SIGNAL \spi|bit_number[1]~11_combout\ : std_logic;
SIGNAL \spi|Equal2~0_combout\ : std_logic;
SIGNAL \spi|bit_count[4]~4_combout\ : std_logic;
SIGNAL \spi|bit_count[5]~6_combout\ : std_logic;
SIGNAL \spi|Add0~0_combout\ : std_logic;
SIGNAL \spi|Add0~1_combout\ : std_logic;
SIGNAL \spi|Equal2~2_combout\ : std_logic;
SIGNAL \spi|Equal2~3_combout\ : std_logic;
SIGNAL \spi|inner_data~284_combout\ : std_logic;
SIGNAL \spi|Equal2~1_combout\ : std_logic;
SIGNAL \spi|state~10_combout\ : std_logic;
SIGNAL \spi|always1~1_combout\ : std_logic;
SIGNAL \spi|bit_number~21_combout\ : std_logic;
SIGNAL \spi|bit_number[2]~14\ : std_logic;
SIGNAL \spi|bit_number[3]~15_combout\ : std_logic;
SIGNAL \spi|bit_number[3]~16\ : std_logic;
SIGNAL \spi|bit_number[4]~17_combout\ : std_logic;
SIGNAL \spi|bit_number[4]~18\ : std_logic;
SIGNAL \spi|bit_number[5]~19_combout\ : std_logic;
SIGNAL \spi|always0~0_combout\ : std_logic;
SIGNAL \spi|always0~2_combout\ : std_logic;
SIGNAL \spi|start_hold~2_combout\ : std_logic;
SIGNAL \spi|start_hold~q\ : std_logic;
SIGNAL \spi|start~0_combout\ : std_logic;
SIGNAL \spi|start~q\ : std_logic;
SIGNAL \spi|always1~0_combout\ : std_logic;
SIGNAL \spi|bit_count[5]~3_combout\ : std_logic;
SIGNAL \spi|bit_count[4]~5_combout\ : std_logic;
SIGNAL \spi|WideOr0~0_combout\ : std_logic;
SIGNAL \spi|LessThan0~0_combout\ : std_logic;
SIGNAL \spi|state~9_combout\ : std_logic;
SIGNAL \spi|bit_number[2]~8_combout\ : std_logic;
SIGNAL \spi|state~12_combout\ : std_logic;
SIGNAL \spi|state.read_temp~q\ : std_logic;
SIGNAL \spi|state.command_read_accel~0_combout\ : std_logic;
SIGNAL \spi|state.command_read_accel~q\ : std_logic;
SIGNAL \spi|state.read_accel~0_combout\ : std_logic;
SIGNAL \spi|state.read_accel~q\ : std_logic;
SIGNAL \spi|state.command_read_temp~q\ : std_logic;
SIGNAL \spi|inner_ready~0_combout\ : std_logic;
SIGNAL \spi|clk_sync~2_combout\ : std_logic;
SIGNAL \spi|clk_sync~q\ : std_logic;
SIGNAL \spi|sclk~combout\ : std_logic;
SIGNAL \spi|inner_data~85_combout\ : std_logic;
SIGNAL \spi|Add2~0_combout\ : std_logic;
SIGNAL \spi|Add2~2_combout\ : std_logic;
SIGNAL \spi|bit_number[0]~9_combout\ : std_logic;
SIGNAL \spi|Add2~14_combout\ : std_logic;
SIGNAL \spi|Add2~3\ : std_logic;
SIGNAL \spi|Add2~4_combout\ : std_logic;
SIGNAL \spi|Add2~5\ : std_logic;
SIGNAL \spi|Add2~7\ : std_logic;
SIGNAL \spi|Add2~9\ : std_logic;
SIGNAL \spi|Add2~10_combout\ : std_logic;
SIGNAL \spi|Add2~6_combout\ : std_logic;
SIGNAL \spi|inner_data~88_combout\ : std_logic;
SIGNAL \spi|inner_data~89_combout\ : std_logic;
SIGNAL \spi|inner_data~90_combout\ : std_logic;
SIGNAL \spi|Add2~12_combout\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \spi|inner_data~277_combout\ : std_logic;
SIGNAL \spi|inner_data~77_combout\ : std_logic;
SIGNAL \spi|inner_data~78_combout\ : std_logic;
SIGNAL \spi|inner_data~86_combout\ : std_logic;
SIGNAL \spi|inner_data~91_combout\ : std_logic;
SIGNAL \spi|inner_data[31]~2_combout\ : std_logic;
SIGNAL \spi|inner_data~87_combout\ : std_logic;
SIGNAL \spi|inner_data~92_combout\ : std_logic;
SIGNAL \spi|inner_data~95_combout\ : std_logic;
SIGNAL \spi|inner_data~190_combout\ : std_logic;
SIGNAL \spi|inner_data~156_combout\ : std_logic;
SIGNAL \spi|inner_data~173_combout\ : std_logic;
SIGNAL \spi|inner_data~186_combout\ : std_logic;
SIGNAL \spi|inner_data~81_combout\ : std_logic;
SIGNAL \spi|inner_data~115_combout\ : std_logic;
SIGNAL \spi|inner_data~187_combout\ : std_logic;
SIGNAL \spi|inner_data~188_combout\ : std_logic;
SIGNAL \spi|inner_data~189_combout\ : std_logic;
SIGNAL \spi|inner_data[20]~20_combout\ : std_logic;
SIGNAL \spi|Selector3~0_combout\ : std_logic;
SIGNAL \spi|inner_data~191_combout\ : std_logic;
SIGNAL \spi|inner_data~192_combout\ : std_logic;
SIGNAL \spi|inner_data~193_combout\ : std_logic;
SIGNAL \spi|inner_data[21]~21_combout\ : std_logic;
SIGNAL \spi|inner_data~194_combout\ : std_logic;
SIGNAL \spi|inner_data~121_combout\ : std_logic;
SIGNAL \spi|inner_data~123_combout\ : std_logic;
SIGNAL \spi|inner_data~124_combout\ : std_logic;
SIGNAL \spi|inner_data[22]~6_combout\ : std_logic;
SIGNAL \spi|Selector2~0_combout\ : std_logic;
SIGNAL \spi|inner_data~93_combout\ : std_logic;
SIGNAL \spi|inner_data~94_combout\ : std_logic;
SIGNAL \spi|inner_data~97_combout\ : std_logic;
SIGNAL \spi|inner_data[23]~1_combout\ : std_logic;
SIGNAL \spi|Mux0~0_combout\ : std_logic;
SIGNAL \spi|inner_data~98_combout\ : std_logic;
SIGNAL \spi|inner_data~96_combout\ : std_logic;
SIGNAL \spi|inner_data~70_combout\ : std_logic;
SIGNAL \spi|inner_data~99_combout\ : std_logic;
SIGNAL \spi|inner_data~82_combout\ : std_logic;
SIGNAL \spi|inner_data~101_combout\ : std_logic;
SIGNAL \spi|inner_data[7]~3_combout\ : std_logic;
SIGNAL \spi|inner_data~100_combout\ : std_logic;
SIGNAL \spi|mosi~1_combout\ : std_logic;
SIGNAL \spi|inner_data~72_combout\ : std_logic;
SIGNAL \spi|inner_data~73_combout\ : std_logic;
SIGNAL \spi|inner_data~71_combout\ : std_logic;
SIGNAL \spi|inner_data~74_combout\ : std_logic;
SIGNAL \spi|inner_data~275_combout\ : std_logic;
SIGNAL \spi|inner_data~276_combout\ : std_logic;
SIGNAL \spi|inner_data~75_combout\ : std_logic;
SIGNAL \spi|inner_data[39]~4_combout\ : std_logic;
SIGNAL \spi|mosi~0_combout\ : std_logic;
SIGNAL \spi|mosi~2_combout\ : std_logic;
SIGNAL \spi|mosi_on~3_combout\ : std_logic;
SIGNAL \spi|mosi_on~2_combout\ : std_logic;
SIGNAL \spi|mosi_on~q\ : std_logic;
SIGNAL \spi|mosi~3_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \spi|inner_data~108_combout\ : std_logic;
SIGNAL \spi|inner_data~134_combout\ : std_logic;
SIGNAL \spi|inner_data~130_combout\ : std_logic;
SIGNAL \spi|inner_data~131_combout\ : std_logic;
SIGNAL \spi|inner_data~133_combout\ : std_logic;
SIGNAL \spi|inner_data~135_combout\ : std_logic;
SIGNAL \spi|inner_data[8]~10_combout\ : std_logic;
SIGNAL \spi|accel[0]~feeder_combout\ : std_logic;
SIGNAL \spi|accel[0]~0_combout\ : std_logic;
SIGNAL \spi|inner_data~136_combout\ : std_logic;
SIGNAL \spi|inner_data~137_combout\ : std_logic;
SIGNAL \spi|inner_data~138_combout\ : std_logic;
SIGNAL \spi|inner_data~139_combout\ : std_logic;
SIGNAL \spi|inner_data~140_combout\ : std_logic;
SIGNAL \spi|inner_data~141_combout\ : std_logic;
SIGNAL \spi|inner_data[9]~11_combout\ : std_logic;
SIGNAL \spi|accel[1]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~142_combout\ : std_logic;
SIGNAL \spi|inner_data~132_combout\ : std_logic;
SIGNAL \spi|inner_data~111_combout\ : std_logic;
SIGNAL \spi|inner_data~144_combout\ : std_logic;
SIGNAL \spi|inner_data~146_combout\ : std_logic;
SIGNAL \spi|inner_data[10]~12_combout\ : std_logic;
SIGNAL \spi|inner_data~145_combout\ : std_logic;
SIGNAL \spi|accel[2]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~150_combout\ : std_logic;
SIGNAL \spi|inner_data~148_combout\ : std_logic;
SIGNAL \spi|inner_data~149_combout\ : std_logic;
SIGNAL \spi|inner_data~151_combout\ : std_logic;
SIGNAL \spi|inner_data[11]~13_combout\ : std_logic;
SIGNAL \spi|accel[3]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~157_combout\ : std_logic;
SIGNAL \spi|inner_data~158_combout\ : std_logic;
SIGNAL \spi|inner_data[12]~14_combout\ : std_logic;
SIGNAL \spi|inner_data~155_combout\ : std_logic;
SIGNAL \spi|accel[4]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~160_combout\ : std_logic;
SIGNAL \spi|inner_data~161_combout\ : std_logic;
SIGNAL \spi|inner_data~162_combout\ : std_logic;
SIGNAL \spi|inner_data~163_combout\ : std_logic;
SIGNAL \spi|inner_data[13]~15_combout\ : std_logic;
SIGNAL \spi|accel[5]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~107_combout\ : std_logic;
SIGNAL \spi|inner_data~109_combout\ : std_logic;
SIGNAL \spi|inner_data~110_combout\ : std_logic;
SIGNAL \spi|inner_data~112_combout\ : std_logic;
SIGNAL \spi|inner_data~113_combout\ : std_logic;
SIGNAL \spi|inner_data[14]~5_combout\ : std_logic;
SIGNAL \spi|accel[6]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~79_combout\ : std_logic;
SIGNAL \spi|inner_data~83_combout\ : std_logic;
SIGNAL \spi|inner_data~84_combout\ : std_logic;
SIGNAL \spi|inner_data[15]~0_combout\ : std_logic;
SIGNAL \spi|inner_data~80_combout\ : std_logic;
SIGNAL \spi|inner_data~165_combout\ : std_logic;
SIGNAL \spi|inner_data~166_combout\ : std_logic;
SIGNAL \spi|inner_data~168_combout\ : std_logic;
SIGNAL \spi|inner_data~278_combout\ : std_logic;
SIGNAL \spi|inner_data~169_combout\ : std_logic;
SIGNAL \spi|inner_data[16]~16_combout\ : std_logic;
SIGNAL \spi|inner_data~167_combout\ : std_logic;
SIGNAL \spi|accel[8]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~171_combout\ : std_logic;
SIGNAL \spi|inner_data~172_combout\ : std_logic;
SIGNAL \spi|inner_data~174_combout\ : std_logic;
SIGNAL \spi|inner_data[17]~17_combout\ : std_logic;
SIGNAL \spi|inner_data~175_combout\ : std_logic;
SIGNAL \spi|accel[9]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~176_combout\ : std_logic;
SIGNAL \spi|inner_data~177_combout\ : std_logic;
SIGNAL \spi|inner_data~178_combout\ : std_logic;
SIGNAL \spi|inner_data~179_combout\ : std_logic;
SIGNAL \spi|inner_data~180_combout\ : std_logic;
SIGNAL \spi|inner_data[18]~18_combout\ : std_logic;
SIGNAL \spi|Selector4~0_combout\ : std_logic;
SIGNAL \spi|accel[10]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~181_combout\ : std_logic;
SIGNAL \spi|inner_data~182_combout\ : std_logic;
SIGNAL \spi|inner_data~183_combout\ : std_logic;
SIGNAL \spi|inner_data~185_combout\ : std_logic;
SIGNAL \spi|inner_data[19]~19_combout\ : std_logic;
SIGNAL \spi|inner_data~184_combout\ : std_logic;
SIGNAL \spi|accel[11]~feeder_combout\ : std_logic;
SIGNAL \spi|accel[12]~feeder_combout\ : std_logic;
SIGNAL \spi|accel[13]~feeder_combout\ : std_logic;
SIGNAL \spi|accel[14]~feeder_combout\ : std_logic;
SIGNAL \spi|accel[15]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~195_combout\ : std_logic;
SIGNAL \spi|inner_data~197_combout\ : std_logic;
SIGNAL \spi|inner_data~279_combout\ : std_logic;
SIGNAL \spi|inner_data~198_combout\ : std_logic;
SIGNAL \spi|inner_data[24]~22_combout\ : std_logic;
SIGNAL \spi|inner_data~196_combout\ : std_logic;
SIGNAL \spi|accel[16]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~199_combout\ : std_logic;
SIGNAL \spi|inner_data~200_combout\ : std_logic;
SIGNAL \spi|inner_data~201_combout\ : std_logic;
SIGNAL \spi|inner_data~202_combout\ : std_logic;
SIGNAL \spi|inner_data[25]~23_combout\ : std_logic;
SIGNAL \spi|inner_data~203_combout\ : std_logic;
SIGNAL \spi|accel[17]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~204_combout\ : std_logic;
SIGNAL \spi|inner_data~143_combout\ : std_logic;
SIGNAL \spi|inner_data~206_combout\ : std_logic;
SIGNAL \spi|inner_data~205_combout\ : std_logic;
SIGNAL \spi|inner_data~207_combout\ : std_logic;
SIGNAL \spi|inner_data[26]~24_combout\ : std_logic;
SIGNAL \spi|inner_data~208_combout\ : std_logic;
SIGNAL \spi|accel[18]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~209_combout\ : std_logic;
SIGNAL \spi|inner_data~211_combout\ : std_logic;
SIGNAL \spi|inner_data~210_combout\ : std_logic;
SIGNAL \spi|inner_data~212_combout\ : std_logic;
SIGNAL \spi|inner_data[27]~25_combout\ : std_logic;
SIGNAL \spi|accel[19]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~213_combout\ : std_logic;
SIGNAL \spi|inner_data~153_combout\ : std_logic;
SIGNAL \spi|inner_data~214_combout\ : std_logic;
SIGNAL \spi|inner_data~217_combout\ : std_logic;
SIGNAL \spi|inner_data[28]~26_combout\ : std_logic;
SIGNAL \spi|inner_data~215_combout\ : std_logic;
SIGNAL \spi|accel[20]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~218_combout\ : std_logic;
SIGNAL \spi|inner_data~219_combout\ : std_logic;
SIGNAL \spi|inner_data~220_combout\ : std_logic;
SIGNAL \spi|inner_data~221_combout\ : std_logic;
SIGNAL \spi|inner_data[29]~27_combout\ : std_logic;
SIGNAL \spi|inner_data~222_combout\ : std_logic;
SIGNAL \spi|accel[21]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~117_combout\ : std_logic;
SIGNAL \spi|inner_data~118_combout\ : std_logic;
SIGNAL \spi|inner_data~116_combout\ : std_logic;
SIGNAL \spi|inner_data~119_combout\ : std_logic;
SIGNAL \spi|inner_data[30]~7_combout\ : std_logic;
SIGNAL \spi|accel[22]~feeder_combout\ : std_logic;
SIGNAL \spi|accel[23]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~223_combout\ : std_logic;
SIGNAL \spi|inner_data~224_combout\ : std_logic;
SIGNAL \spi|inner_data~280_combout\ : std_logic;
SIGNAL \spi|temp~4_combout\ : std_logic;
SIGNAL \spi|temp[0]~6_combout\ : std_logic;
SIGNAL \spi|inner_data~225_combout\ : std_logic;
SIGNAL \spi|inner_data~226_combout\ : std_logic;
SIGNAL \spi|inner_data~228_combout\ : std_logic;
SIGNAL \spi|inner_data~229_combout\ : std_logic;
SIGNAL \spi|inner_data[1]~28_combout\ : std_logic;
SIGNAL \spi|inner_data~227_combout\ : std_logic;
SIGNAL \spi|temp[1]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~232_combout\ : std_logic;
SIGNAL \spi|inner_data~231_combout\ : std_logic;
SIGNAL \spi|inner_data~233_combout\ : std_logic;
SIGNAL \spi|inner_data[2]~29_combout\ : std_logic;
SIGNAL \spi|inner_data~234_combout\ : std_logic;
SIGNAL \spi|temp[2]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~237_combout\ : std_logic;
SIGNAL \spi|inner_data~236_combout\ : std_logic;
SIGNAL \spi|inner_data~238_combout\ : std_logic;
SIGNAL \spi|inner_data[3]~30_combout\ : std_logic;
SIGNAL \spi|temp[3]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~239_combout\ : std_logic;
SIGNAL \spi|inner_data~240_combout\ : std_logic;
SIGNAL \spi|inner_data~241_combout\ : std_logic;
SIGNAL \spi|inner_data~242_combout\ : std_logic;
SIGNAL \spi|inner_data~243_combout\ : std_logic;
SIGNAL \spi|inner_data[4]~31_combout\ : std_logic;
SIGNAL \spi|temp[4]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~244_combout\ : std_logic;
SIGNAL \spi|inner_data~247_combout\ : std_logic;
SIGNAL \spi|inner_data~248_combout\ : std_logic;
SIGNAL \spi|inner_data[5]~32_combout\ : std_logic;
SIGNAL \spi|inner_data~246_combout\ : std_logic;
SIGNAL \spi|temp[5]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_data~125_combout\ : std_logic;
SIGNAL \spi|inner_data~126_combout\ : std_logic;
SIGNAL \spi|inner_data~128_combout\ : std_logic;
SIGNAL \spi|inner_data[6]~8_combout\ : std_logic;
SIGNAL \spi|inner_data~127_combout\ : std_logic;
SIGNAL \spi|temp[6]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[7]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[8]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[9]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[10]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[11]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[12]~feeder_combout\ : std_logic;
SIGNAL \spi|temp[13]~feeder_combout\ : std_logic;
SIGNAL \spi|inner_ready~1_combout\ : std_logic;
SIGNAL \spi|inner_ready~q\ : std_logic;
SIGNAL \divider|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi|temp\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \spi|inner_data\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \spi|hold\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \spi|bit_number\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi|bit_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi|accel\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \divider|ALT_INV_out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \spi|ALT_INV_state~12_combout\ : std_logic;
SIGNAL \spi|ALT_INV_start~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_miso <= miso;
sclk <= ww_sclk;
mosi <= ww_mosi;
ssb <= ww_ssb;
accel <= ww_accel;
temp <= ww_temp;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|out_clk_inner~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divider|out_clk_inner~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\divider|ALT_INV_out_clk_inner~clkctrl_outclk\ <= NOT \divider|out_clk_inner~clkctrl_outclk\;
\spi|ALT_INV_state~12_combout\ <= NOT \spi|state~12_combout\;
\spi|ALT_INV_start~q\ <= NOT \spi|start~q\;

-- Location: LCCOMB_X1_Y11_N4
\divider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~0_combout\ = \divider|counter\(0) $ (VCC)
-- \divider|Add0~1\ = CARRY(\divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(0),
	datad => VCC,
	combout => \divider|Add0~0_combout\,
	cout => \divider|Add0~1\);

-- Location: LCCOMB_X1_Y11_N16
\divider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~12_combout\ = (\divider|counter\(6) & (\divider|Add0~11\ $ (GND))) # (!\divider|counter\(6) & (!\divider|Add0~11\ & VCC))
-- \divider|Add0~13\ = CARRY((\divider|counter\(6) & !\divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(6),
	datad => VCC,
	cin => \divider|Add0~11\,
	combout => \divider|Add0~12_combout\,
	cout => \divider|Add0~13\);

-- Location: LCCOMB_X1_Y11_N18
\divider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~14_combout\ = \divider|counter\(7) $ (\divider|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(7),
	cin => \divider|Add0~13\,
	combout => \divider|Add0~14_combout\);

-- Location: LCCOMB_X17_Y9_N12
\spi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~8_combout\ = (\spi|WideOr0~0_combout\ & (\spi|Add2~7\ & VCC)) # (!\spi|WideOr0~0_combout\ & (!\spi|Add2~7\))
-- \spi|Add2~9\ = CARRY((!\spi|WideOr0~0_combout\ & !\spi|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|WideOr0~0_combout\,
	datad => VCC,
	cin => \spi|Add2~7\,
	combout => \spi|Add2~8_combout\,
	cout => \spi|Add2~9\);

-- Location: FF_X13_Y9_N29
\spi|inner_data[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[38]~9_combout\,
	asdata => \spi|Selector0~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(38));

-- Location: FF_X19_Y10_N5
\spi|hold[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[1]~4_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(1));

-- Location: FF_X19_Y10_N31
\spi|hold[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[2]~6_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(2));

-- Location: FF_X19_Y10_N13
\spi|hold[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[5]~7_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(5));

-- Location: FF_X19_Y10_N7
\spi|hold[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[6]~8_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(6));

-- Location: FF_X19_Y10_N25
\spi|hold[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[7]~9_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(7));

-- Location: FF_X19_Y10_N11
\spi|hold[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[8]~10_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(8));

-- Location: FF_X19_Y10_N17
\spi|hold[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[9]~11_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(9));

-- Location: FF_X19_Y10_N19
\spi|hold[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[10]~12_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(10));

-- Location: FF_X19_Y10_N29
\spi|hold[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[11]~13_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(11));

-- Location: FF_X19_Y10_N15
\spi|hold[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[12]~14_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(12));

-- Location: FF_X19_Y10_N21
\spi|hold[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[14]~15_combout\,
	sclr => \spi|start_hold~q\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(14));

-- Location: FF_X17_Y10_N23
\spi|hold[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[0]~0_combout\,
	asdata => \spi|hold\(0),
	sload => \spi|hold[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(0));

-- Location: FF_X17_Y10_N25
\spi|hold[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[3]~1_combout\,
	asdata => \spi|hold\(3),
	sload => \spi|hold[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(3));

-- Location: FF_X17_Y10_N31
\spi|hold[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[4]~2_combout\,
	asdata => \spi|hold\(4),
	sload => \spi|hold[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(4));

-- Location: FF_X17_Y10_N21
\spi|hold[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|hold[13]~3_combout\,
	asdata => \spi|hold\(13),
	sload => \spi|hold[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|hold\(13));

-- Location: FF_X14_Y9_N29
\spi|inner_data[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[37]~33_combout\,
	asdata => \spi|inner_data~250_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(37));

-- Location: LCCOMB_X13_Y9_N28
\spi|inner_data[38]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[38]~9_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~106_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~102_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~106_combout\,
	combout => \spi|inner_data[38]~9_combout\);

-- Location: LCCOMB_X18_Y10_N0
\spi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~0_combout\ = \spi|hold\(0) $ (VCC)
-- \spi|Add1~1\ = CARRY(\spi|hold\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(0),
	datad => VCC,
	combout => \spi|Add1~0_combout\,
	cout => \spi|Add1~1\);

-- Location: LCCOMB_X18_Y10_N2
\spi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~2_combout\ = (\spi|hold\(1) & (\spi|Add1~1\ & VCC)) # (!\spi|hold\(1) & (!\spi|Add1~1\))
-- \spi|Add1~3\ = CARRY((!\spi|hold\(1) & !\spi|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(1),
	datad => VCC,
	cin => \spi|Add1~1\,
	combout => \spi|Add1~2_combout\,
	cout => \spi|Add1~3\);

-- Location: LCCOMB_X18_Y10_N4
\spi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~4_combout\ = (\spi|hold\(2) & ((GND) # (!\spi|Add1~3\))) # (!\spi|hold\(2) & (\spi|Add1~3\ $ (GND)))
-- \spi|Add1~5\ = CARRY((\spi|hold\(2)) # (!\spi|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(2),
	datad => VCC,
	cin => \spi|Add1~3\,
	combout => \spi|Add1~4_combout\,
	cout => \spi|Add1~5\);

-- Location: LCCOMB_X18_Y10_N6
\spi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~6_combout\ = (\spi|hold\(3) & (\spi|Add1~5\ & VCC)) # (!\spi|hold\(3) & (!\spi|Add1~5\))
-- \spi|Add1~7\ = CARRY((!\spi|hold\(3) & !\spi|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(3),
	datad => VCC,
	cin => \spi|Add1~5\,
	combout => \spi|Add1~6_combout\,
	cout => \spi|Add1~7\);

-- Location: LCCOMB_X18_Y10_N8
\spi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~8_combout\ = (\spi|hold\(4) & ((GND) # (!\spi|Add1~7\))) # (!\spi|hold\(4) & (\spi|Add1~7\ $ (GND)))
-- \spi|Add1~9\ = CARRY((\spi|hold\(4)) # (!\spi|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(4),
	datad => VCC,
	cin => \spi|Add1~7\,
	combout => \spi|Add1~8_combout\,
	cout => \spi|Add1~9\);

-- Location: LCCOMB_X18_Y10_N10
\spi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~10_combout\ = (\spi|hold\(5) & (\spi|Add1~9\ & VCC)) # (!\spi|hold\(5) & (!\spi|Add1~9\))
-- \spi|Add1~11\ = CARRY((!\spi|hold\(5) & !\spi|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(5),
	datad => VCC,
	cin => \spi|Add1~9\,
	combout => \spi|Add1~10_combout\,
	cout => \spi|Add1~11\);

-- Location: LCCOMB_X18_Y10_N12
\spi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~12_combout\ = (\spi|hold\(6) & ((GND) # (!\spi|Add1~11\))) # (!\spi|hold\(6) & (\spi|Add1~11\ $ (GND)))
-- \spi|Add1~13\ = CARRY((\spi|hold\(6)) # (!\spi|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(6),
	datad => VCC,
	cin => \spi|Add1~11\,
	combout => \spi|Add1~12_combout\,
	cout => \spi|Add1~13\);

-- Location: LCCOMB_X18_Y10_N14
\spi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~14_combout\ = (\spi|hold\(7) & (\spi|Add1~13\ & VCC)) # (!\spi|hold\(7) & (!\spi|Add1~13\))
-- \spi|Add1~15\ = CARRY((!\spi|hold\(7) & !\spi|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(7),
	datad => VCC,
	cin => \spi|Add1~13\,
	combout => \spi|Add1~14_combout\,
	cout => \spi|Add1~15\);

-- Location: LCCOMB_X18_Y10_N16
\spi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~16_combout\ = (\spi|hold\(8) & ((GND) # (!\spi|Add1~15\))) # (!\spi|hold\(8) & (\spi|Add1~15\ $ (GND)))
-- \spi|Add1~17\ = CARRY((\spi|hold\(8)) # (!\spi|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(8),
	datad => VCC,
	cin => \spi|Add1~15\,
	combout => \spi|Add1~16_combout\,
	cout => \spi|Add1~17\);

-- Location: LCCOMB_X18_Y10_N18
\spi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~18_combout\ = (\spi|hold\(9) & (\spi|Add1~17\ & VCC)) # (!\spi|hold\(9) & (!\spi|Add1~17\))
-- \spi|Add1~19\ = CARRY((!\spi|hold\(9) & !\spi|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(9),
	datad => VCC,
	cin => \spi|Add1~17\,
	combout => \spi|Add1~18_combout\,
	cout => \spi|Add1~19\);

-- Location: LCCOMB_X18_Y10_N20
\spi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~20_combout\ = (\spi|hold\(10) & ((GND) # (!\spi|Add1~19\))) # (!\spi|hold\(10) & (\spi|Add1~19\ $ (GND)))
-- \spi|Add1~21\ = CARRY((\spi|hold\(10)) # (!\spi|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(10),
	datad => VCC,
	cin => \spi|Add1~19\,
	combout => \spi|Add1~20_combout\,
	cout => \spi|Add1~21\);

-- Location: LCCOMB_X18_Y10_N22
\spi|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~22_combout\ = (\spi|hold\(11) & (\spi|Add1~21\ & VCC)) # (!\spi|hold\(11) & (!\spi|Add1~21\))
-- \spi|Add1~23\ = CARRY((!\spi|hold\(11) & !\spi|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(11),
	datad => VCC,
	cin => \spi|Add1~21\,
	combout => \spi|Add1~22_combout\,
	cout => \spi|Add1~23\);

-- Location: LCCOMB_X18_Y10_N24
\spi|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~24_combout\ = (\spi|hold\(12) & ((GND) # (!\spi|Add1~23\))) # (!\spi|hold\(12) & (\spi|Add1~23\ $ (GND)))
-- \spi|Add1~25\ = CARRY((\spi|hold\(12)) # (!\spi|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(12),
	datad => VCC,
	cin => \spi|Add1~23\,
	combout => \spi|Add1~24_combout\,
	cout => \spi|Add1~25\);

-- Location: LCCOMB_X18_Y10_N26
\spi|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~26_combout\ = (\spi|hold\(13) & (\spi|Add1~25\ & VCC)) # (!\spi|hold\(13) & (!\spi|Add1~25\))
-- \spi|Add1~27\ = CARRY((!\spi|hold\(13) & !\spi|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(13),
	datad => VCC,
	cin => \spi|Add1~25\,
	combout => \spi|Add1~26_combout\,
	cout => \spi|Add1~27\);

-- Location: LCCOMB_X18_Y10_N28
\spi|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add1~28_combout\ = \spi|hold\(14) $ (\spi|Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(14),
	cin => \spi|Add1~27\,
	combout => \spi|Add1~28_combout\);

-- Location: LCCOMB_X17_Y10_N22
\spi|hold[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[0]~0_combout\ = (\spi|hold[3]~16_combout\ & (!\spi|state.command_read_accel~q\)) # (!\spi|hold[3]~16_combout\ & ((\spi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|Add1~0_combout\,
	datad => \spi|hold[3]~16_combout\,
	combout => \spi|hold[0]~0_combout\);

-- Location: LCCOMB_X17_Y10_N24
\spi|hold[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[3]~1_combout\ = (\spi|hold[3]~16_combout\ & (!\spi|state.command_read_accel~q\)) # (!\spi|hold[3]~16_combout\ & ((\spi|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|hold[3]~16_combout\,
	datad => \spi|Add1~6_combout\,
	combout => \spi|hold[3]~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\spi|hold[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[4]~2_combout\ = (\spi|hold[3]~16_combout\ & (!\spi|state.command_read_accel~q\)) # (!\spi|hold[3]~16_combout\ & ((\spi|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|Add1~8_combout\,
	datad => \spi|hold[3]~16_combout\,
	combout => \spi|hold[4]~2_combout\);

-- Location: LCCOMB_X17_Y10_N20
\spi|hold[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[13]~3_combout\ = (\spi|hold[3]~16_combout\ & (!\spi|state.command_read_accel~q\)) # (!\spi|hold[3]~16_combout\ & ((\spi|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|hold[3]~16_combout\,
	datad => \spi|Add1~26_combout\,
	combout => \spi|hold[13]~3_combout\);

-- Location: FF_X14_Y9_N23
\spi|inner_data[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[36]~34_combout\,
	asdata => \spi|Selector1~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(36));

-- Location: LCCOMB_X14_Y9_N28
\spi|inner_data[37]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[37]~33_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~252_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~249_combout\,
	datad => \spi|inner_data~252_combout\,
	combout => \spi|inner_data[37]~33_combout\);

-- Location: FF_X14_Y9_N5
\spi|inner_data[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[35]~35_combout\,
	asdata => \spi|inner_data~259_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(35));

-- Location: LCCOMB_X14_Y9_N22
\spi|inner_data[36]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[36]~34_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~256_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~253_combout\,
	datad => \spi|inner_data~256_combout\,
	combout => \spi|inner_data[36]~34_combout\);

-- Location: FF_X19_Y9_N3
\spi|inner_data[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[34]~36_combout\,
	asdata => \spi|inner_data~266_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(34));

-- Location: LCCOMB_X14_Y9_N4
\spi|inner_data[35]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[35]~35_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~282_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~257_combout\,
	datad => \spi|inner_data~282_combout\,
	combout => \spi|inner_data[35]~35_combout\);

-- Location: FF_X18_Y9_N1
\spi|inner_data[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[33]~37_combout\,
	asdata => \spi|inner_data~268_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(33));

-- Location: LCCOMB_X19_Y9_N2
\spi|inner_data[34]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[34]~36_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~265_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~262_combout\,
	datad => \spi|inner_data~265_combout\,
	combout => \spi|inner_data[34]~36_combout\);

-- Location: FF_X14_Y9_N3
\spi|inner_data[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[32]~38_combout\,
	asdata => \spi|inner_data~273_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(32));

-- Location: LCCOMB_X18_Y9_N0
\spi|inner_data[33]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[33]~37_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~271_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~267_combout\,
	datad => \spi|inner_data~271_combout\,
	combout => \spi|inner_data[33]~37_combout\);

-- Location: LCCOMB_X14_Y9_N2
\spi|inner_data[32]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[32]~38_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~283_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~272_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~283_combout\,
	combout => \spi|inner_data[32]~38_combout\);

-- Location: FF_X1_Y11_N17
\divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(6));

-- Location: FF_X1_Y11_N15
\divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(5));

-- Location: FF_X1_Y11_N31
\divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(2));

-- Location: FF_X1_Y11_N7
\divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(1));

-- Location: FF_X1_Y11_N23
\divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(0));

-- Location: FF_X1_Y11_N19
\divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(7));

-- Location: LCCOMB_X16_Y6_N12
\spi|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|state~11_combout\ = (\spi|state~9_combout\) # ((\spi|state~10_combout\ & \spi|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state~9_combout\,
	datac => \spi|state~10_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|state~11_combout\);

-- Location: LCCOMB_X13_Y9_N26
\spi|inner_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~69_combout\ = (\spi|inner_data\(39) & ((\spi|inner_ready~0_combout\) # ((!\spi|clk_sync~q\) # (!\spi|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|Equal2~3_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_data\(39),
	combout => \spi|inner_data~69_combout\);

-- Location: LCCOMB_X18_Y7_N30
\spi|inner_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~76_combout\ = (\spi|inner_data\(15) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_data\(15),
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~76_combout\);

-- Location: LCCOMB_X19_Y10_N26
\spi|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal1~0_combout\ = (!\spi|hold\(6) & (!\spi|hold\(1) & (!\spi|hold\(2) & !\spi|hold\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(6),
	datab => \spi|hold\(1),
	datac => \spi|hold\(2),
	datad => \spi|hold\(5),
	combout => \spi|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\spi|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal1~1_combout\ = (!\spi|hold\(8) & (!\spi|hold\(9) & (!\spi|hold\(10) & !\spi|hold\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(8),
	datab => \spi|hold\(9),
	datac => \spi|hold\(10),
	datad => \spi|hold\(7),
	combout => \spi|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y10_N30
\spi|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal1~2_combout\ = (!\spi|hold\(14) & (!\spi|hold\(11) & (!\spi|hold\(12) & !\spi|hold\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(14),
	datab => \spi|hold\(11),
	datac => \spi|hold\(12),
	datad => \spi|hold\(0),
	combout => \spi|Equal1~2_combout\);

-- Location: LCCOMB_X17_Y10_N16
\spi|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal1~3_combout\ = (!\spi|hold\(13) & (!\spi|hold\(4) & !\spi|hold\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(13),
	datac => \spi|hold\(4),
	datad => \spi|hold\(3),
	combout => \spi|Equal1~3_combout\);

-- Location: LCCOMB_X19_Y10_N22
\spi|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal1~4_combout\ = (\spi|Equal1~0_combout\ & (\spi|Equal1~1_combout\ & (\spi|Equal1~3_combout\ & \spi|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~0_combout\,
	datab => \spi|Equal1~1_combout\,
	datac => \spi|Equal1~3_combout\,
	datad => \spi|Equal1~2_combout\,
	combout => \spi|Equal1~4_combout\);

-- Location: LCCOMB_X16_Y10_N0
\spi|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|always0~1_combout\ = (!\spi|bit_number\(2) & (!\spi|bit_number\(1) & !\spi|bit_number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(2),
	datac => \spi|bit_number\(1),
	datad => \spi|bit_number\(0),
	combout => \spi|always0~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\divider|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|counter~0_combout\ = (\divider|Add0~4_combout\ & ((\divider|Add0~12_combout\) # ((\divider|Add0~14_combout\) # (\divider|out_clk_inner~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~12_combout\,
	datab => \divider|Add0~14_combout\,
	datac => \divider|Add0~4_combout\,
	datad => \divider|out_clk_inner~0_combout\,
	combout => \divider|counter~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\divider|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|counter~1_combout\ = (\divider|Add0~0_combout\ & ((\divider|Add0~14_combout\) # ((\divider|Add0~12_combout\) # (\divider|out_clk_inner~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~0_combout\,
	datab => \divider|Add0~14_combout\,
	datac => \divider|Add0~12_combout\,
	datad => \divider|out_clk_inner~0_combout\,
	combout => \divider|counter~1_combout\);

-- Location: LCCOMB_X13_Y9_N12
\spi|inner_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~102_combout\ = (\spi|inner_data\(38) & ((\spi|inner_ready~0_combout\) # ((!\spi|clk_sync~q\) # (!\spi|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|Equal2~3_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_data\(38),
	combout => \spi|inner_data~102_combout\);

-- Location: LCCOMB_X13_Y9_N6
\spi|inner_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~103_combout\ = (\spi|inner_data\(37) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|inner_data\(37),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~103_combout\);

-- Location: LCCOMB_X13_Y9_N16
\spi|inner_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~104_combout\ = (\spi|Add2~0_combout\ & (!\spi|Add2~14_combout\ & \spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~14_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~104_combout\);

-- Location: LCCOMB_X13_Y9_N14
\spi|inner_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~105_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(38) & ((!\spi|inner_data~71_combout\) # (!\spi|inner_data~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|inner_data~104_combout\,
	datac => \spi|inner_data\(38),
	datad => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~105_combout\);

-- Location: LCCOMB_X13_Y9_N20
\spi|inner_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~106_combout\ = (\spi|inner_data~103_combout\) # ((\spi|inner_data~105_combout\) # ((\spi|inner_data~104_combout\ & \spi|inner_data~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~103_combout\,
	datab => \spi|inner_data~104_combout\,
	datac => \spi|inner_data~105_combout\,
	datad => \spi|inner_data~275_combout\,
	combout => \spi|inner_data~106_combout\);

-- Location: LCCOMB_X13_Y9_N30
\spi|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Selector0~0_combout\ = ((\spi|inner_data\(38) & !\spi|state.command_read_temp~q\)) # (!\spi|state.command_read_accel~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(38),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|Selector0~0_combout\);

-- Location: LCCOMB_X18_Y7_N12
\spi|inner_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~114_combout\ = (\spi|inner_data\(30) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_data\(30),
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~114_combout\);

-- Location: LCCOMB_X17_Y6_N30
\spi|inner_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~120_combout\ = (\spi|inner_data\(22) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_data\(22),
	combout => \spi|inner_data~120_combout\);

-- Location: LCCOMB_X18_Y9_N12
\spi|inner_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~122_combout\ = (\spi|Add2~0_combout\ & (!\spi|Add2~14_combout\ & (!\spi|Add2~2_combout\ & \spi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~122_combout\);

-- Location: LCCOMB_X19_Y10_N4
\spi|hold[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[1]~4_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~2_combout\,
	combout => \spi|hold[1]~4_combout\);

-- Location: LCCOMB_X16_Y10_N26
\spi|always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|always0~3_combout\ = (!\spi|bit_number\(0) & (!\spi|bit_number\(2) & (!\spi|bit_number\(1) & \spi|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datab => \spi|bit_number\(2),
	datac => \spi|bit_number\(1),
	datad => \spi|always0~0_combout\,
	combout => \spi|always0~3_combout\);

-- Location: LCCOMB_X16_Y10_N8
\spi|hold[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[1]~5_combout\ = ((\spi|always0~3_combout\ & (!\spi|WideOr0~0_combout\ & !\spi|Equal2~0_combout\))) # (!\spi|start_hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always0~3_combout\,
	datab => \spi|start_hold~q\,
	datac => \spi|WideOr0~0_combout\,
	datad => \spi|Equal2~0_combout\,
	combout => \spi|hold[1]~5_combout\);

-- Location: LCCOMB_X19_Y10_N30
\spi|hold[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[2]~6_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~4_combout\,
	datac => \spi|Add1~4_combout\,
	combout => \spi|hold[2]~6_combout\);

-- Location: LCCOMB_X19_Y10_N12
\spi|hold[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[5]~7_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~10_combout\,
	combout => \spi|hold[5]~7_combout\);

-- Location: LCCOMB_X19_Y10_N6
\spi|hold[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[6]~8_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~12_combout\,
	combout => \spi|hold[6]~8_combout\);

-- Location: LCCOMB_X19_Y10_N24
\spi|hold[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[7]~9_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~14_combout\,
	combout => \spi|hold[7]~9_combout\);

-- Location: LCCOMB_X19_Y10_N10
\spi|hold[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[8]~10_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~4_combout\,
	datac => \spi|Add1~16_combout\,
	combout => \spi|hold[8]~10_combout\);

-- Location: LCCOMB_X19_Y10_N16
\spi|hold[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[9]~11_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~18_combout\,
	combout => \spi|hold[9]~11_combout\);

-- Location: LCCOMB_X19_Y10_N18
\spi|hold[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[10]~12_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~20_combout\,
	combout => \spi|hold[10]~12_combout\);

-- Location: LCCOMB_X19_Y10_N28
\spi|hold[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[11]~13_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~22_combout\,
	combout => \spi|hold[11]~13_combout\);

-- Location: LCCOMB_X19_Y10_N14
\spi|hold[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[12]~14_combout\ = (\spi|Add1~24_combout\ & !\spi|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add1~24_combout\,
	datac => \spi|Equal1~4_combout\,
	combout => \spi|hold[12]~14_combout\);

-- Location: LCCOMB_X19_Y10_N20
\spi|hold[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[14]~15_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Add1~28_combout\,
	combout => \spi|hold[14]~15_combout\);

-- Location: LCCOMB_X17_Y10_N18
\spi|hold[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[3]~16_combout\ = (\spi|Equal1~4_combout\) # (\spi|start_hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal1~4_combout\,
	datad => \spi|start_hold~q\,
	combout => \spi|hold[3]~16_combout\);

-- Location: LCCOMB_X17_Y10_N4
\spi|hold[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|hold[3]~17_combout\ = (\spi|start_hold~q\ & ((!\spi|always0~2_combout\))) # (!\spi|start_hold~q\ & (\spi|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|start_hold~q\,
	datac => \spi|Equal1~4_combout\,
	datad => \spi|always0~2_combout\,
	combout => \spi|hold[3]~17_combout\);

-- Location: LCCOMB_X16_Y8_N14
\spi|inner_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~129_combout\ = (\spi|inner_data\(8) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(8),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~129_combout\);

-- Location: LCCOMB_X17_Y6_N6
\spi|inner_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~147_combout\ = (\spi|inner_data\(11) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_data\(11),
	combout => \spi|inner_data~147_combout\);

-- Location: LCCOMB_X17_Y6_N26
\spi|inner_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~152_combout\ = (\spi|inner_data\(12) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_data\(12),
	combout => \spi|inner_data~152_combout\);

-- Location: LCCOMB_X17_Y6_N12
\spi|inner_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~154_combout\ = (\spi|Add2~2_combout\ & (\spi|inner_data~153_combout\ & \spi|inner_data~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~153_combout\,
	datad => \spi|inner_data~108_combout\,
	combout => \spi|inner_data~154_combout\);

-- Location: LCCOMB_X19_Y8_N4
\spi|inner_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~159_combout\ = (\spi|inner_data\(13) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_data\(13),
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~159_combout\);

-- Location: LCCOMB_X14_Y8_N10
\spi|inner_data~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~164_combout\ = (\spi|inner_data\(16) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(16),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~164_combout\);

-- Location: LCCOMB_X14_Y8_N12
\spi|inner_data~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~170_combout\ = (\spi|inner_data\(17) & ((\spi|inner_ready~0_combout\) # ((!\spi|Equal2~3_combout\) # (!\spi|clk_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(17),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~170_combout\);

-- Location: LCCOMB_X13_Y7_N26
\spi|inner_data~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~216_combout\ = (\spi|inner_data~215_combout\ & (((!\spi|Add2~2_combout\) # (!\spi|inner_data~88_combout\)) # (!\spi|inner_data~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~153_combout\,
	datab => \spi|inner_data~215_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~216_combout\);

-- Location: LCCOMB_X19_Y8_N6
\spi|inner_data~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~230_combout\ = (\spi|inner_data\(2) & ((\spi|inner_ready~0_combout\) # ((!\spi|clk_sync~q\) # (!\spi|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(2),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|Equal2~3_combout\,
	datad => \spi|clk_sync~q\,
	combout => \spi|inner_data~230_combout\);

-- Location: LCCOMB_X19_Y8_N2
\spi|inner_data~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~235_combout\ = (\spi|inner_data\(3) & ((\spi|inner_ready~0_combout\) # ((!\spi|clk_sync~q\) # (!\spi|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(3),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|Equal2~3_combout\,
	datad => \spi|clk_sync~q\,
	combout => \spi|inner_data~235_combout\);

-- Location: LCCOMB_X16_Y8_N12
\spi|inner_data~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~245_combout\ = (!\spi|Add2~2_combout\ & (!\spi|Add2~4_combout\ & (\spi|inner_data~156_combout\ & \spi|inner_data~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|inner_data~156_combout\,
	datad => \spi|inner_data~77_combout\,
	combout => \spi|inner_data~245_combout\);

-- Location: LCCOMB_X14_Y9_N18
\spi|inner_data~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~249_combout\ = (\spi|inner_data\(37) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(37),
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~249_combout\);

-- Location: LCCOMB_X14_Y8_N24
\spi|inner_data~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~250_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(37),
	combout => \spi|inner_data~250_combout\);

-- Location: LCCOMB_X14_Y9_N0
\spi|inner_data~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~251_combout\ = (\spi|inner_data~250_combout\ & (((!\spi|inner_data~71_combout\) # (!\spi|Add2~14_combout\)) # (!\spi|inner_data~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~156_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~250_combout\,
	datad => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~251_combout\);

-- Location: LCCOMB_X14_Y9_N6
\spi|inner_data~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~252_combout\ = (\spi|inner_data~281_combout\) # ((\spi|inner_data~251_combout\) # ((\spi|inner_data\(36) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(36),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~281_combout\,
	datad => \spi|inner_data~251_combout\,
	combout => \spi|inner_data~252_combout\);

-- Location: LCCOMB_X14_Y9_N8
\spi|inner_data~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~253_combout\ = (\spi|inner_data\(36) & ((\spi|inner_ready~0_combout\) # ((!\spi|Equal2~3_combout\) # (!\spi|clk_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(36),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~253_combout\);

-- Location: LCCOMB_X17_Y6_N14
\spi|inner_data~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~254_combout\ = (\spi|inner_data\(35) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(35),
	combout => \spi|inner_data~254_combout\);

-- Location: LCCOMB_X14_Y9_N10
\spi|inner_data~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~255_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(36) & ((!\spi|inner_data~71_combout\) # (!\spi|inner_data~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~153_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(36),
	datad => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~255_combout\);

-- Location: LCCOMB_X14_Y9_N16
\spi|inner_data~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~256_combout\ = (\spi|inner_data~254_combout\) # ((\spi|inner_data~255_combout\) # ((\spi|inner_data~153_combout\ & \spi|inner_data~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~153_combout\,
	datab => \spi|inner_data~275_combout\,
	datac => \spi|inner_data~254_combout\,
	datad => \spi|inner_data~255_combout\,
	combout => \spi|inner_data~256_combout\);

-- Location: LCCOMB_X14_Y9_N26
\spi|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Selector1~0_combout\ = ((!\spi|state.command_read_temp~q\ & \spi|inner_data\(36))) # (!\spi|state.command_read_accel~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datac => \spi|inner_data\(36),
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y9_N20
\spi|inner_data~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~257_combout\ = (\spi|inner_data\(35) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(35),
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~257_combout\);

-- Location: LCCOMB_X16_Y9_N30
\spi|inner_data~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~258_combout\ = (!\spi|Add2~0_combout\ & (\miso~input_o\ & (\spi|inner_data~71_combout\ & \spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \miso~input_o\,
	datac => \spi|inner_data~71_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~258_combout\);

-- Location: LCCOMB_X17_Y6_N28
\spi|inner_data~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~259_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(35),
	combout => \spi|inner_data~259_combout\);

-- Location: LCCOMB_X16_Y9_N0
\spi|inner_data~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~260_combout\ = (!\spi|Add2~0_combout\ & \spi|inner_data~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datac => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~260_combout\);

-- Location: LCCOMB_X16_Y9_N24
\spi|inner_data~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~261_combout\ = (\spi|inner_data~72_combout\ & ((\spi|inner_data~258_combout\) # ((\spi|inner_data~259_combout\ & !\spi|inner_data~260_combout\)))) # (!\spi|inner_data~72_combout\ & (\spi|inner_data~259_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~72_combout\,
	datab => \spi|inner_data~259_combout\,
	datac => \spi|inner_data~258_combout\,
	datad => \spi|inner_data~260_combout\,
	combout => \spi|inner_data~261_combout\);

-- Location: LCCOMB_X19_Y9_N28
\spi|inner_data~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~262_combout\ = (\spi|inner_data\(34) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(34),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~262_combout\);

-- Location: LCCOMB_X19_Y9_N26
\spi|inner_data~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~263_combout\ = (\spi|inner_data\(33) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(33),
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~263_combout\);

-- Location: LCCOMB_X19_Y9_N16
\spi|inner_data~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~264_combout\ = (\spi|inner_data\(34) & (\spi|inner_ready~0_combout\ & ((!\spi|inner_data~177_combout\) # (!\spi|inner_data~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(34),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~71_combout\,
	datad => \spi|inner_data~177_combout\,
	combout => \spi|inner_data~264_combout\);

-- Location: LCCOMB_X19_Y9_N6
\spi|inner_data~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~265_combout\ = (\spi|inner_data~263_combout\) # ((\spi|inner_data~264_combout\) # ((\spi|inner_data~177_combout\ & \spi|inner_data~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~263_combout\,
	datab => \spi|inner_data~177_combout\,
	datac => \spi|inner_data~275_combout\,
	datad => \spi|inner_data~264_combout\,
	combout => \spi|inner_data~265_combout\);

-- Location: LCCOMB_X19_Y9_N4
\spi|inner_data~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~266_combout\ = (\spi|state.command_read_accel~q\ & (\spi|inner_data\(34) & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(34),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~266_combout\);

-- Location: LCCOMB_X18_Y9_N2
\spi|inner_data~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~267_combout\ = (\spi|inner_data\(33) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_data\(33),
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~267_combout\);

-- Location: LCCOMB_X19_Y9_N22
\spi|inner_data~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~268_combout\ = (\spi|inner_data\(33) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(33),
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~268_combout\);

-- Location: LCCOMB_X16_Y9_N8
\spi|inner_data~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~269_combout\ = (\spi|inner_data~268_combout\ & (((\spi|Add2~12_combout\) # (!\spi|inner_data~260_combout\)) # (!\spi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|inner_data~268_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|inner_data~260_combout\,
	combout => \spi|inner_data~269_combout\);

-- Location: LCCOMB_X16_Y9_N6
\spi|inner_data~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~270_combout\ = (!\spi|Add2~0_combout\ & (!\spi|Add2~12_combout\ & (\spi|Add2~14_combout\ & \spi|inner_data~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|inner_data~275_combout\,
	combout => \spi|inner_data~270_combout\);

-- Location: LCCOMB_X16_Y9_N26
\spi|inner_data~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~271_combout\ = (\spi|inner_data~269_combout\) # ((\spi|inner_data~270_combout\) # ((\spi|inner_data\(32) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(32),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~269_combout\,
	datad => \spi|inner_data~270_combout\,
	combout => \spi|inner_data~271_combout\);

-- Location: LCCOMB_X14_Y9_N30
\spi|inner_data~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~272_combout\ = (\spi|inner_data\(32) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(32),
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~272_combout\);

-- Location: LCCOMB_X16_Y9_N22
\spi|inner_data~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~273_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(32),
	combout => \spi|inner_data~273_combout\);

-- Location: LCCOMB_X16_Y9_N2
\spi|inner_data~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~274_combout\ = (\spi|inner_data~165_combout\ & ((\spi|inner_data~258_combout\) # ((\spi|inner_data~273_combout\ & !\spi|inner_data~260_combout\)))) # (!\spi|inner_data~165_combout\ & (\spi|inner_data~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~273_combout\,
	datab => \spi|inner_data~165_combout\,
	datac => \spi|inner_data~258_combout\,
	datad => \spi|inner_data~260_combout\,
	combout => \spi|inner_data~274_combout\);

-- Location: LCCOMB_X19_Y8_N26
\spi|temp[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[0]~5_combout\ = (\spi|Equal2~3_combout\ & (\spi|clk_sync~q\ & !\spi|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|clk_sync~q\,
	datad => \spi|always1~1_combout\,
	combout => \spi|temp[0]~5_combout\);

-- Location: LCCOMB_X14_Y9_N14
\spi|inner_data~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~281_combout\ = (\spi|Add2~0_combout\ & (\spi|Add2~14_combout\ & (!\spi|Add2~12_combout\ & \spi|inner_data~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|inner_data~275_combout\,
	combout => \spi|inner_data~281_combout\);

-- Location: LCCOMB_X16_Y9_N10
\spi|inner_data~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~282_combout\ = (\spi|inner_data~261_combout\) # ((\spi|inner_data\(34) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(34),
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data~261_combout\,
	combout => \spi|inner_data~282_combout\);

-- Location: LCCOMB_X16_Y9_N4
\spi|inner_data~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~283_combout\ = (\spi|inner_data~274_combout\) # ((\spi|inner_data\(31) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(31),
	datad => \spi|inner_data~274_combout\,
	combout => \spi|inner_data~283_combout\);

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

-- Location: IOOBUF_X0_Y9_N9
\sclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|sclk~combout\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\mosi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|mosi~3_combout\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\ssb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|ALT_INV_start~q\,
	devoe => ww_devoe,
	o => \ssb~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\accel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(0),
	devoe => ww_devoe,
	o => \accel[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\accel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(1),
	devoe => ww_devoe,
	o => \accel[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\accel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(2),
	devoe => ww_devoe,
	o => \accel[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\accel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(3),
	devoe => ww_devoe,
	o => \accel[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\accel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(4),
	devoe => ww_devoe,
	o => \accel[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\accel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(5),
	devoe => ww_devoe,
	o => \accel[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\accel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(6),
	devoe => ww_devoe,
	o => \accel[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\accel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(7),
	devoe => ww_devoe,
	o => \accel[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\accel[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(8),
	devoe => ww_devoe,
	o => \accel[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\accel[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(9),
	devoe => ww_devoe,
	o => \accel[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\accel[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(10),
	devoe => ww_devoe,
	o => \accel[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\accel[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(11),
	devoe => ww_devoe,
	o => \accel[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\accel[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(12),
	devoe => ww_devoe,
	o => \accel[12]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\accel[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(13),
	devoe => ww_devoe,
	o => \accel[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\accel[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(14),
	devoe => ww_devoe,
	o => \accel[14]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\accel[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(15),
	devoe => ww_devoe,
	o => \accel[15]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\accel[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(16),
	devoe => ww_devoe,
	o => \accel[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\accel[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(17),
	devoe => ww_devoe,
	o => \accel[17]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\accel[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(18),
	devoe => ww_devoe,
	o => \accel[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\accel[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(19),
	devoe => ww_devoe,
	o => \accel[19]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\accel[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(20),
	devoe => ww_devoe,
	o => \accel[20]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\accel[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(21),
	devoe => ww_devoe,
	o => \accel[21]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\accel[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(22),
	devoe => ww_devoe,
	o => \accel[22]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\accel[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|accel\(23),
	devoe => ww_devoe,
	o => \accel[23]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\temp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(0),
	devoe => ww_devoe,
	o => \temp[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\temp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(1),
	devoe => ww_devoe,
	o => \temp[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\temp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(2),
	devoe => ww_devoe,
	o => \temp[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\temp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(3),
	devoe => ww_devoe,
	o => \temp[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\temp[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(4),
	devoe => ww_devoe,
	o => \temp[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\temp[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(5),
	devoe => ww_devoe,
	o => \temp[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\temp[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(6),
	devoe => ww_devoe,
	o => \temp[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\temp[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(7),
	devoe => ww_devoe,
	o => \temp[7]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\temp[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(8),
	devoe => ww_devoe,
	o => \temp[8]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\temp[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(9),
	devoe => ww_devoe,
	o => \temp[9]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\temp[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(10),
	devoe => ww_devoe,
	o => \temp[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\temp[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(11),
	devoe => ww_devoe,
	o => \temp[11]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\temp[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(12),
	devoe => ww_devoe,
	o => \temp[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\temp[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|temp\(13),
	devoe => ww_devoe,
	o => \temp[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|inner_ready~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: LCCOMB_X1_Y11_N6
\divider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~2_combout\ = (\divider|counter\(1) & (!\divider|Add0~1\)) # (!\divider|counter\(1) & ((\divider|Add0~1\) # (GND)))
-- \divider|Add0~3\ = CARRY((!\divider|Add0~1\) # (!\divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(1),
	datad => VCC,
	cin => \divider|Add0~1\,
	combout => \divider|Add0~2_combout\,
	cout => \divider|Add0~3\);

-- Location: LCCOMB_X1_Y11_N8
\divider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~4_combout\ = (\divider|counter\(2) & (\divider|Add0~3\ $ (GND))) # (!\divider|counter\(2) & (!\divider|Add0~3\ & VCC))
-- \divider|Add0~5\ = CARRY((\divider|counter\(2) & !\divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(2),
	datad => VCC,
	cin => \divider|Add0~3\,
	combout => \divider|Add0~4_combout\,
	cout => \divider|Add0~5\);

-- Location: LCCOMB_X1_Y11_N10
\divider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~6_combout\ = (\divider|counter\(3) & (!\divider|Add0~5\)) # (!\divider|counter\(3) & ((\divider|Add0~5\) # (GND)))
-- \divider|Add0~7\ = CARRY((!\divider|Add0~5\) # (!\divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(3),
	datad => VCC,
	cin => \divider|Add0~5\,
	combout => \divider|Add0~6_combout\,
	cout => \divider|Add0~7\);

-- Location: FF_X1_Y11_N11
\divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(3));

-- Location: LCCOMB_X1_Y11_N12
\divider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~8_combout\ = (\divider|counter\(4) & (\divider|Add0~7\ $ (GND))) # (!\divider|counter\(4) & (!\divider|Add0~7\ & VCC))
-- \divider|Add0~9\ = CARRY((\divider|counter\(4) & !\divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(4),
	datad => VCC,
	cin => \divider|Add0~7\,
	combout => \divider|Add0~8_combout\,
	cout => \divider|Add0~9\);

-- Location: FF_X1_Y11_N13
\divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(4));

-- Location: LCCOMB_X1_Y11_N14
\divider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~10_combout\ = (\divider|counter\(5) & (!\divider|Add0~9\)) # (!\divider|counter\(5) & ((\divider|Add0~9\) # (GND)))
-- \divider|Add0~11\ = CARRY((!\divider|Add0~9\) # (!\divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(5),
	datad => VCC,
	cin => \divider|Add0~9\,
	combout => \divider|Add0~10_combout\,
	cout => \divider|Add0~11\);

-- Location: LCCOMB_X1_Y11_N24
\divider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (\divider|Add0~0_combout\ & (\divider|Add0~4_combout\ & (!\divider|Add0~2_combout\ & !\divider|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~0_combout\,
	datab => \divider|Add0~4_combout\,
	datac => \divider|Add0~2_combout\,
	datad => \divider|Add0~6_combout\,
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\divider|out_clk_inner~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~0_combout\ = (\divider|Add0~8_combout\) # ((\divider|Add0~10_combout\) # (!\divider|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~8_combout\,
	datac => \divider|Add0~10_combout\,
	datad => \divider|Equal0~0_combout\,
	combout => \divider|out_clk_inner~0_combout\);

-- Location: LCCOMB_X1_Y11_N2
\divider|out_clk_inner~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~1_combout\ = \divider|out_clk_inner~q\ $ (((!\divider|Add0~14_combout\ & (!\divider|Add0~12_combout\ & !\divider|out_clk_inner~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~14_combout\,
	datab => \divider|Add0~12_combout\,
	datac => \divider|out_clk_inner~q\,
	datad => \divider|out_clk_inner~0_combout\,
	combout => \divider|out_clk_inner~1_combout\);

-- Location: LCCOMB_X1_Y11_N26
\divider|out_clk_inner~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~feeder_combout\ = \divider|out_clk_inner~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divider|out_clk_inner~1_combout\,
	combout => \divider|out_clk_inner~feeder_combout\);

-- Location: FF_X1_Y11_N27
\divider|out_clk_inner\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|out_clk_inner~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|out_clk_inner~q\);

-- Location: LCCOMB_X16_Y10_N12
\spi|bit_number[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[0]~9_combout\ = \spi|bit_number\(0) $ (VCC)
-- \spi|bit_number[0]~10\ = CARRY(\spi|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datad => VCC,
	combout => \spi|bit_number[0]~9_combout\,
	cout => \spi|bit_number[0]~10\);

-- Location: LCCOMB_X16_Y10_N14
\spi|bit_number[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[1]~11_combout\ = (\spi|bit_number\(1) & (!\spi|bit_number[0]~10\)) # (!\spi|bit_number\(1) & ((\spi|bit_number[0]~10\) # (GND)))
-- \spi|bit_number[1]~12\ = CARRY((!\spi|bit_number[0]~10\) # (!\spi|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datad => VCC,
	cin => \spi|bit_number[0]~10\,
	combout => \spi|bit_number[1]~11_combout\,
	cout => \spi|bit_number[1]~12\);

-- Location: LCCOMB_X16_Y10_N16
\spi|bit_number[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[2]~13_combout\ = (\spi|bit_number\(2) & (\spi|bit_number[1]~12\ $ (GND))) # (!\spi|bit_number\(2) & (!\spi|bit_number[1]~12\ & VCC))
-- \spi|bit_number[2]~14\ = CARRY((\spi|bit_number\(2) & !\spi|bit_number[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(2),
	datad => VCC,
	cin => \spi|bit_number[1]~12\,
	combout => \spi|bit_number[2]~13_combout\,
	cout => \spi|bit_number[2]~14\);

-- Location: LCCOMB_X17_Y10_N10
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X17_Y9_N0
\spi|bit_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_count[3]~2_combout\ = (\spi|bit_count\(3) & (\spi|state~12_combout\)) # (!\spi|bit_count\(3) & ((\spi|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state~12_combout\,
	datac => \spi|bit_count\(3),
	datad => \spi|always1~0_combout\,
	combout => \spi|bit_count[3]~2_combout\);

-- Location: FF_X17_Y9_N1
\spi|bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_count[3]~2_combout\,
	asdata => \spi|bit_count\(3),
	sload => \spi|inner_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_count\(3));

-- Location: LCCOMB_X16_Y10_N24
\spi|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal2~0_combout\ = \spi|bit_number\(3) $ (\spi|bit_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_number\(3),
	datad => \spi|bit_count\(3),
	combout => \spi|Equal2~0_combout\);

-- Location: LCCOMB_X16_Y6_N6
\spi|bit_count[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_count[4]~4_combout\ = (\spi|always1~1_combout\) # ((\spi|clk_sync~q\ & (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\ & ((!\spi|start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|clk_sync~q\,
	datac => \spi|always1~1_combout\,
	datad => \spi|start~q\,
	combout => \spi|bit_count[4]~4_combout\);

-- Location: LCCOMB_X16_Y10_N10
\spi|bit_count[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_count[5]~6_combout\ = (\spi|bit_count[4]~4_combout\ & (((\spi|bit_count\(5))))) # (!\spi|bit_count[4]~4_combout\ & (((\spi|bit_count[5]~3_combout\ & \spi|bit_count\(5))) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|bit_count[5]~3_combout\,
	datac => \spi|bit_count\(5),
	datad => \spi|bit_count[4]~4_combout\,
	combout => \spi|bit_count[5]~6_combout\);

-- Location: FF_X16_Y10_N11
\spi|bit_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_count\(5));

-- Location: LCCOMB_X17_Y9_N30
\spi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add0~0_combout\ = \spi|bit_count\(5) $ (((\spi|bit_count\(3)) # (\spi|bit_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_count\(5),
	datac => \spi|bit_count\(3),
	datad => \spi|bit_count\(4),
	combout => \spi|Add0~0_combout\);

-- Location: LCCOMB_X17_Y9_N20
\spi|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add0~1_combout\ = \spi|bit_count\(3) $ (\spi|bit_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_count\(3),
	datad => \spi|bit_count\(4),
	combout => \spi|Add0~1_combout\);

-- Location: LCCOMB_X16_Y6_N24
\spi|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal2~2_combout\ = (\spi|bit_number\(5) & (!\spi|Add0~0_combout\ & (\spi|bit_number\(4) $ (\spi|Add0~1_combout\)))) # (!\spi|bit_number\(5) & (\spi|Add0~0_combout\ & (\spi|bit_number\(4) $ (\spi|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(5),
	datab => \spi|bit_number\(4),
	datac => \spi|Add0~0_combout\,
	datad => \spi|Add0~1_combout\,
	combout => \spi|Equal2~2_combout\);

-- Location: LCCOMB_X16_Y6_N18
\spi|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal2~3_combout\ = (\spi|Equal2~1_combout\ & (!\spi|WideOr0~0_combout\ & (\spi|Equal2~0_combout\ & \spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~1_combout\,
	datab => \spi|WideOr0~0_combout\,
	datac => \spi|Equal2~0_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|Equal2~3_combout\);

-- Location: LCCOMB_X16_Y10_N30
\spi|inner_data~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~284_combout\ = (\spi|always1~1_combout\) # ((\spi|clk_sync~q\ & (\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\ & ((\spi|start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|Equal2~3_combout\,
	datac => \spi|always1~1_combout\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~284_combout\);

-- Location: FF_X16_Y10_N15
\spi|bit_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[1]~11_combout\,
	asdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~21_combout\,
	ena => \spi|inner_data~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(1));

-- Location: LCCOMB_X16_Y10_N6
\spi|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal2~1_combout\ = (\spi|bit_number\(0) & (\spi|bit_number\(1) & \spi|bit_number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datac => \spi|bit_number\(1),
	datad => \spi|bit_number\(2),
	combout => \spi|Equal2~1_combout\);

-- Location: LCCOMB_X17_Y10_N14
\spi|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|state~10_combout\ = (\spi|bit_count\(3) & (!\spi|Equal2~1_combout\ & !\spi|bit_number\(3))) # (!\spi|bit_count\(3) & ((!\spi|bit_number\(3)) # (!\spi|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_count\(3),
	datac => \spi|Equal2~1_combout\,
	datad => \spi|bit_number\(3),
	combout => \spi|state~10_combout\);

-- Location: LCCOMB_X16_Y6_N30
\spi|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|always1~1_combout\ = (\spi|clk_sync~q\ & ((\spi|state~9_combout\) # ((\spi|state~10_combout\ & \spi|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|state~10_combout\,
	datac => \spi|state~9_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|always1~1_combout\);

-- Location: LCCOMB_X16_Y9_N14
\spi|bit_number~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number~21_combout\ = (!\spi|always1~1_combout\ & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \spi|state.command_read_accel~q\,
	datad => \spi|always1~1_combout\,
	combout => \spi|bit_number~21_combout\);

-- Location: FF_X16_Y10_N17
\spi|bit_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[2]~13_combout\,
	asdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~21_combout\,
	ena => \spi|inner_data~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(2));

-- Location: LCCOMB_X16_Y10_N18
\spi|bit_number[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[3]~15_combout\ = (\spi|bit_number\(3) & (!\spi|bit_number[2]~14\)) # (!\spi|bit_number\(3) & ((\spi|bit_number[2]~14\) # (GND)))
-- \spi|bit_number[3]~16\ = CARRY((!\spi|bit_number[2]~14\) # (!\spi|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(3),
	datad => VCC,
	cin => \spi|bit_number[2]~14\,
	combout => \spi|bit_number[3]~15_combout\,
	cout => \spi|bit_number[3]~16\);

-- Location: FF_X16_Y10_N19
\spi|bit_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[3]~15_combout\,
	asdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~21_combout\,
	ena => \spi|inner_data~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(3));

-- Location: LCCOMB_X16_Y10_N20
\spi|bit_number[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[4]~17_combout\ = (\spi|bit_number\(4) & (\spi|bit_number[3]~16\ $ (GND))) # (!\spi|bit_number\(4) & (!\spi|bit_number[3]~16\ & VCC))
-- \spi|bit_number[4]~18\ = CARRY((\spi|bit_number\(4) & !\spi|bit_number[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(4),
	datad => VCC,
	cin => \spi|bit_number[3]~16\,
	combout => \spi|bit_number[4]~17_combout\,
	cout => \spi|bit_number[4]~18\);

-- Location: FF_X16_Y10_N21
\spi|bit_number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[4]~17_combout\,
	asdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~21_combout\,
	ena => \spi|inner_data~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(4));

-- Location: LCCOMB_X16_Y10_N22
\spi|bit_number[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[5]~19_combout\ = \spi|bit_number[4]~18\ $ (\spi|bit_number\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spi|bit_number\(5),
	cin => \spi|bit_number[4]~18\,
	combout => \spi|bit_number[5]~19_combout\);

-- Location: FF_X16_Y10_N23
\spi|bit_number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[5]~19_combout\,
	asdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~21_combout\,
	ena => \spi|inner_data~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(5));

-- Location: LCCOMB_X16_Y10_N2
\spi|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|always0~0_combout\ = (\spi|bit_count\(4) & (\spi|bit_number\(4) & (\spi|bit_number\(5) $ (!\spi|bit_count\(5))))) # (!\spi|bit_count\(4) & (!\spi|bit_number\(4) & (\spi|bit_number\(5) $ (!\spi|bit_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(4),
	datab => \spi|bit_number\(4),
	datac => \spi|bit_number\(5),
	datad => \spi|bit_count\(5),
	combout => \spi|always0~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\spi|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|always0~2_combout\ = (\spi|always0~1_combout\ & (\spi|always0~0_combout\ & (!\spi|WideOr0~0_combout\ & !\spi|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always0~1_combout\,
	datab => \spi|always0~0_combout\,
	datac => \spi|WideOr0~0_combout\,
	datad => \spi|Equal2~0_combout\,
	combout => \spi|always0~2_combout\);

-- Location: LCCOMB_X17_Y10_N0
\spi|start_hold~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|start_hold~2_combout\ = (\spi|start_hold~q\ & ((!\spi|always0~2_combout\))) # (!\spi|start_hold~q\ & (\spi|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~4_combout\,
	datac => \spi|start_hold~q\,
	datad => \spi|always0~2_combout\,
	combout => \spi|start_hold~2_combout\);

-- Location: FF_X17_Y10_N1
\spi|start_hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|start_hold~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|start_hold~q\);

-- Location: LCCOMB_X17_Y10_N6
\spi|start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|start~0_combout\ = (\spi|start_hold~q\ & (((\spi|start~q\ & !\spi|always0~2_combout\)))) # (!\spi|start_hold~q\ & ((\spi|Equal1~4_combout\) # ((\spi|start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~4_combout\,
	datab => \spi|start_hold~q\,
	datac => \spi|start~q\,
	datad => \spi|always0~2_combout\,
	combout => \spi|start~0_combout\);

-- Location: FF_X17_Y10_N7
\spi|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|start~q\);

-- Location: LCCOMB_X17_Y10_N28
\spi|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|always1~0_combout\ = (!\spi|clk_sync~q\ & \spi|start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|always1~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\spi|bit_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_count[5]~3_combout\ = (\spi|always1~0_combout\ & (((\spi|inner_ready~0_combout\)))) # (!\spi|always1~0_combout\ & ((\spi|state.read_temp~q\) # ((\spi|state.read_accel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.read_temp~q\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|state.read_accel~q\,
	datad => \spi|always1~0_combout\,
	combout => \spi|bit_count[5]~3_combout\);

-- Location: LCCOMB_X16_Y10_N28
\spi|bit_count[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_count[4]~5_combout\ = (\spi|bit_count[4]~4_combout\ & (((\spi|bit_count\(4))))) # (!\spi|bit_count[4]~4_combout\ & ((\spi|state.command_read_temp~q\) # ((\spi|bit_count[5]~3_combout\ & \spi|bit_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \spi|bit_count[5]~3_combout\,
	datac => \spi|bit_count\(4),
	datad => \spi|bit_count[4]~4_combout\,
	combout => \spi|bit_count[4]~5_combout\);

-- Location: FF_X16_Y10_N29
\spi|bit_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_count\(4));

-- Location: LCCOMB_X16_Y10_N4
\spi|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|WideOr0~0_combout\ = (!\spi|bit_count\(5) & (!\spi|bit_count\(4) & !\spi|bit_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(5),
	datab => \spi|bit_count\(4),
	datad => \spi|bit_count\(3),
	combout => \spi|WideOr0~0_combout\);

-- Location: LCCOMB_X16_Y6_N2
\spi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|LessThan0~0_combout\ = (!\spi|bit_number\(4) & (!\spi|Add0~1_combout\ & (\spi|bit_number\(5) $ (\spi|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(5),
	datab => \spi|bit_number\(4),
	datac => \spi|Add0~0_combout\,
	datad => \spi|Add0~1_combout\,
	combout => \spi|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y6_N4
\spi|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|state~9_combout\ = (\spi|WideOr0~0_combout\) # ((\spi|LessThan0~0_combout\) # ((!\spi|bit_number\(5) & !\spi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(5),
	datab => \spi|WideOr0~0_combout\,
	datac => \spi|Add0~0_combout\,
	datad => \spi|LessThan0~0_combout\,
	combout => \spi|state~9_combout\);

-- Location: LCCOMB_X16_Y6_N0
\spi|bit_number[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[2]~8_combout\ = (\spi|clk_sync~q\ & \spi|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_sync~q\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|bit_number[2]~8_combout\);

-- Location: LCCOMB_X16_Y6_N16
\spi|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|state~12_combout\ = (\spi|state~9_combout\) # (((\spi|Equal2~2_combout\ & \spi|state~10_combout\)) # (!\spi|bit_number[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|state~9_combout\,
	datac => \spi|state~10_combout\,
	datad => \spi|bit_number[2]~8_combout\,
	combout => \spi|state~12_combout\);

-- Location: FF_X16_Y9_N15
\spi|state.read_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \spi|state.command_read_temp~q\,
	sload => VCC,
	ena => \spi|ALT_INV_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|state.read_temp~q\);

-- Location: LCCOMB_X16_Y9_N12
\spi|state.command_read_accel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|state.command_read_accel~0_combout\ = !\spi|state.read_temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|state.read_temp~q\,
	combout => \spi|state.command_read_accel~0_combout\);

-- Location: FF_X16_Y9_N13
\spi|state.command_read_accel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|state.command_read_accel~0_combout\,
	ena => \spi|ALT_INV_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|state.command_read_accel~q\);

-- Location: LCCOMB_X17_Y10_N8
\spi|state.read_accel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|state.read_accel~0_combout\ = !\spi|state.command_read_accel~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|state.read_accel~0_combout\);

-- Location: FF_X17_Y10_N9
\spi|state.read_accel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|state.read_accel~0_combout\,
	ena => \spi|ALT_INV_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|state.read_accel~q\);

-- Location: FF_X16_Y9_N23
\spi|state.command_read_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \spi|state.read_accel~q\,
	sload => VCC,
	ena => \spi|ALT_INV_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|state.command_read_temp~q\);

-- Location: LCCOMB_X19_Y9_N0
\spi|inner_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_ready~0_combout\ = (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_ready~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\spi|clk_sync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|clk_sync~2_combout\ = (\spi|clk_sync~q\ & (((!\spi|inner_ready~0_combout\)) # (!\spi|temp[0]~5_combout\))) # (!\spi|clk_sync~q\ & (((\spi|start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|temp[0]~5_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|clk_sync~2_combout\);

-- Location: FF_X19_Y8_N29
\spi|clk_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|clk_sync~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_sync~q\);

-- Location: LCCOMB_X1_Y9_N16
\spi|sclk\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|sclk~combout\ = (\divider|out_clk_inner~q\ & \spi|clk_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|out_clk_inner~q\,
	datad => \spi|clk_sync~q\,
	combout => \spi|sclk~combout\);

-- Location: LCCOMB_X17_Y7_N14
\spi|inner_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~85_combout\ = (\spi|inner_data\(31) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(31),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~85_combout\);

-- Location: LCCOMB_X13_Y9_N10
\spi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~0_combout\ = !\spi|bit_number\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|bit_number\(2),
	combout => \spi|Add2~0_combout\);

-- Location: LCCOMB_X17_Y9_N6
\spi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~2_combout\ = (\spi|bit_number\(3) & (\spi|bit_count\(3) $ (GND))) # (!\spi|bit_number\(3) & ((GND) # (!\spi|bit_count\(3))))
-- \spi|Add2~3\ = CARRY((!\spi|bit_count\(3)) # (!\spi|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(3),
	datab => \spi|bit_count\(3),
	datad => VCC,
	combout => \spi|Add2~2_combout\,
	cout => \spi|Add2~3\);

-- Location: FF_X16_Y10_N13
\spi|bit_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[0]~9_combout\,
	asdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~21_combout\,
	ena => \spi|inner_data~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(0));

-- Location: LCCOMB_X17_Y10_N12
\spi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~14_combout\ = !\spi|bit_number\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|bit_number\(0),
	combout => \spi|Add2~14_combout\);

-- Location: LCCOMB_X17_Y9_N8
\spi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~4_combout\ = (\spi|Add0~1_combout\ & ((\spi|bit_number\(4) & ((\spi|Add2~3\) # (GND))) # (!\spi|bit_number\(4) & (!\spi|Add2~3\)))) # (!\spi|Add0~1_combout\ & ((\spi|bit_number\(4) & (!\spi|Add2~3\)) # (!\spi|bit_number\(4) & (\spi|Add2~3\ & 
-- VCC))))
-- \spi|Add2~5\ = CARRY((\spi|Add0~1_combout\ & ((\spi|bit_number\(4)) # (!\spi|Add2~3\))) # (!\spi|Add0~1_combout\ & (\spi|bit_number\(4) & !\spi|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~1_combout\,
	datab => \spi|bit_number\(4),
	datad => VCC,
	cin => \spi|Add2~3\,
	combout => \spi|Add2~4_combout\,
	cout => \spi|Add2~5\);

-- Location: LCCOMB_X17_Y9_N10
\spi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~6_combout\ = ((\spi|Add0~0_combout\ $ (\spi|bit_number\(5) $ (!\spi|Add2~5\)))) # (GND)
-- \spi|Add2~7\ = CARRY((\spi|Add0~0_combout\ & (!\spi|bit_number\(5) & !\spi|Add2~5\)) # (!\spi|Add0~0_combout\ & ((!\spi|Add2~5\) # (!\spi|bit_number\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~0_combout\,
	datab => \spi|bit_number\(5),
	datad => VCC,
	cin => \spi|Add2~5\,
	combout => \spi|Add2~6_combout\,
	cout => \spi|Add2~7\);

-- Location: LCCOMB_X17_Y9_N14
\spi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~10_combout\ = \spi|Add2~9\ $ (\spi|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spi|WideOr0~0_combout\,
	cin => \spi|Add2~9\,
	combout => \spi|Add2~10_combout\);

-- Location: LCCOMB_X17_Y9_N26
\spi|inner_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~88_combout\ = (!\spi|Add2~8_combout\ & (\spi|Add2~4_combout\ & (!\spi|Add2~10_combout\ & !\spi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|Add2~6_combout\,
	combout => \spi|inner_data~88_combout\);

-- Location: LCCOMB_X16_Y7_N22
\spi|inner_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~89_combout\ = (\spi|Add2~12_combout\ & (\spi|Add2~14_combout\ & \spi|inner_data~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~88_combout\,
	combout => \spi|inner_data~89_combout\);

-- Location: LCCOMB_X17_Y7_N4
\spi|inner_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~90_combout\ = (\spi|inner_data~87_combout\ & (((!\spi|inner_data~89_combout\) # (!\spi|Add2~2_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~87_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~89_combout\,
	combout => \spi|inner_data~90_combout\);

-- Location: LCCOMB_X14_Y10_N12
\spi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Add2~12_combout\ = !\spi|bit_number\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|bit_number\(1),
	combout => \spi|Add2~12_combout\);

-- Location: IOIBUF_X16_Y0_N22
\miso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso,
	o => \miso~input_o\);

-- Location: LCCOMB_X16_Y9_N18
\spi|inner_data~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~277_combout\ = (!\spi|state.command_read_temp~q\ & (\miso~input_o\ & (\spi|Add2~14_combout\ & \spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \miso~input_o\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~277_combout\);

-- Location: LCCOMB_X17_Y9_N16
\spi|inner_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~77_combout\ = (!\spi|Add2~8_combout\ & (\spi|inner_data~277_combout\ & (!\spi|Add2~10_combout\ & !\spi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|inner_data~277_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|Add2~6_combout\,
	combout => \spi|inner_data~77_combout\);

-- Location: LCCOMB_X17_Y9_N2
\spi|inner_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~78_combout\ = (\spi|Add2~0_combout\ & (\spi|Add2~12_combout\ & \spi|inner_data~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|inner_data~77_combout\,
	combout => \spi|inner_data~78_combout\);

-- Location: LCCOMB_X17_Y7_N28
\spi|inner_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~86_combout\ = (\spi|Add2~2_combout\ & (\spi|Add2~4_combout\ & \spi|inner_data~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~78_combout\,
	combout => \spi|inner_data~86_combout\);

-- Location: LCCOMB_X17_Y7_N2
\spi|inner_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~91_combout\ = (\spi|inner_data~90_combout\) # ((\spi|inner_data~86_combout\) # ((\spi|inner_data\(30) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(30),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~90_combout\,
	datad => \spi|inner_data~86_combout\,
	combout => \spi|inner_data~91_combout\);

-- Location: LCCOMB_X17_Y7_N20
\spi|inner_data[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[31]~2_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~91_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~85_combout\,
	datad => \spi|inner_data~91_combout\,
	combout => \spi|inner_data[31]~2_combout\);

-- Location: LCCOMB_X17_Y7_N22
\spi|inner_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~87_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(31),
	combout => \spi|inner_data~87_combout\);

-- Location: FF_X17_Y7_N21
\spi|inner_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[31]~2_combout\,
	asdata => \spi|inner_data~87_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(31));

-- Location: LCCOMB_X18_Y7_N26
\spi|inner_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~92_combout\ = (\spi|inner_data\(23) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|Equal2~3_combout\,
	datac => \spi|inner_data\(23),
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~92_combout\);

-- Location: LCCOMB_X19_Y7_N2
\spi|inner_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~95_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(23),
	combout => \spi|inner_data~95_combout\);

-- Location: LCCOMB_X13_Y8_N14
\spi|inner_data~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~190_combout\ = (\spi|inner_data\(21) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(21),
	datad => \spi|clk_sync~q\,
	combout => \spi|inner_data~190_combout\);

-- Location: LCCOMB_X13_Y8_N10
\spi|inner_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~156_combout\ = (\spi|Add2~0_combout\ & !\spi|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~0_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~156_combout\);

-- Location: LCCOMB_X14_Y8_N30
\spi|inner_data~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~173_combout\ = (\spi|Add2~4_combout\ & \spi|inner_data~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~77_combout\,
	combout => \spi|inner_data~173_combout\);

-- Location: LCCOMB_X13_Y8_N0
\spi|inner_data~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~186_combout\ = (\spi|inner_data\(20) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(20),
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|clk_sync~q\,
	combout => \spi|inner_data~186_combout\);

-- Location: LCCOMB_X17_Y9_N24
\spi|inner_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~81_combout\ = (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & !\spi|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|Add2~6_combout\,
	combout => \spi|inner_data~81_combout\);

-- Location: LCCOMB_X17_Y9_N18
\spi|inner_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~115_combout\ = (\miso~input_o\ & (\spi|inner_ready~0_combout\ & (\spi|Add2~4_combout\ & \spi|inner_data~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~81_combout\,
	combout => \spi|inner_data~115_combout\);

-- Location: LCCOMB_X13_Y8_N18
\spi|inner_data~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~187_combout\ = (\spi|Add2~2_combout\) # ((\spi|Add2~14_combout\) # ((!\spi|inner_data~156_combout\) # (!\spi|inner_data~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|inner_data~156_combout\,
	combout => \spi|inner_data~187_combout\);

-- Location: LCCOMB_X13_Y8_N20
\spi|inner_data~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~188_combout\ = (\spi|inner_ready~0_combout\ & (((\spi|inner_data\(20) & \spi|inner_data~187_combout\)))) # (!\spi|inner_ready~0_combout\ & (\spi|inner_data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(19),
	datab => \spi|inner_data\(20),
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data~187_combout\,
	combout => \spi|inner_data~188_combout\);

-- Location: LCCOMB_X13_Y8_N2
\spi|inner_data~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~189_combout\ = (\spi|inner_data~188_combout\) # ((\spi|inner_data~153_combout\ & (\spi|inner_data~115_combout\ & !\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~153_combout\,
	datab => \spi|inner_data~115_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~188_combout\,
	combout => \spi|inner_data~189_combout\);

-- Location: LCCOMB_X13_Y8_N4
\spi|inner_data[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[20]~20_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~189_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~186_combout\,
	datad => \spi|inner_data~189_combout\,
	combout => \spi|inner_data[20]~20_combout\);

-- Location: LCCOMB_X13_Y8_N8
\spi|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Selector3~0_combout\ = (\spi|state.command_read_temp~q\) # ((\spi|inner_data\(20) & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \spi|inner_data\(20),
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|Selector3~0_combout\);

-- Location: FF_X13_Y8_N5
\spi|inner_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[20]~20_combout\,
	asdata => \spi|Selector3~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(20));

-- Location: LCCOMB_X13_Y8_N28
\spi|inner_data~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~191_combout\ = (\spi|Add2~2_combout\) # (((!\spi|inner_data~156_combout\) # (!\spi|inner_data~88_combout\)) # (!\spi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|inner_data~156_combout\,
	combout => \spi|inner_data~191_combout\);

-- Location: LCCOMB_X13_Y8_N6
\spi|inner_data~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~192_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(21) & ((\spi|inner_data~191_combout\)))) # (!\spi|inner_ready~0_combout\ & (((\spi|inner_data\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(21),
	datab => \spi|inner_data\(20),
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data~191_combout\,
	combout => \spi|inner_data~192_combout\);

-- Location: LCCOMB_X13_Y8_N12
\spi|inner_data~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~193_combout\ = (\spi|inner_data~192_combout\) # ((!\spi|Add2~2_combout\ & (\spi|inner_data~156_combout\ & \spi|inner_data~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~156_combout\,
	datac => \spi|inner_data~173_combout\,
	datad => \spi|inner_data~192_combout\,
	combout => \spi|inner_data~193_combout\);

-- Location: LCCOMB_X13_Y8_N22
\spi|inner_data[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[21]~21_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~193_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~190_combout\,
	datad => \spi|inner_data~193_combout\,
	combout => \spi|inner_data[21]~21_combout\);

-- Location: LCCOMB_X13_Y8_N30
\spi|inner_data~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~194_combout\ = (\spi|inner_data\(21) & (\spi|state.command_read_accel~q\ & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(21),
	datab => \spi|state.command_read_accel~q\,
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~194_combout\);

-- Location: FF_X13_Y8_N23
\spi|inner_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[21]~21_combout\,
	asdata => \spi|inner_data~194_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(21));

-- Location: LCCOMB_X18_Y8_N0
\spi|inner_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~121_combout\ = (\spi|inner_data\(21) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|inner_data\(21),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~121_combout\);

-- Location: LCCOMB_X18_Y9_N30
\spi|inner_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~123_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(22) & ((!\spi|inner_data~88_combout\) # (!\spi|inner_data~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~122_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|inner_data\(22),
	combout => \spi|inner_data~123_combout\);

-- Location: LCCOMB_X18_Y9_N20
\spi|inner_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~124_combout\ = (\spi|inner_data~121_combout\) # ((\spi|inner_data~123_combout\) # ((\spi|inner_data~122_combout\ & \spi|inner_data~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~122_combout\,
	datab => \spi|inner_data~121_combout\,
	datac => \spi|inner_data~123_combout\,
	datad => \spi|inner_data~115_combout\,
	combout => \spi|inner_data~124_combout\);

-- Location: LCCOMB_X17_Y6_N16
\spi|inner_data[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[22]~6_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~124_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~120_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~124_combout\,
	combout => \spi|inner_data[22]~6_combout\);

-- Location: LCCOMB_X17_Y6_N4
\spi|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Selector2~0_combout\ = (\spi|state.command_read_temp~q\) # ((\spi|state.command_read_accel~q\ & \spi|inner_data\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(22),
	combout => \spi|Selector2~0_combout\);

-- Location: FF_X17_Y6_N17
\spi|inner_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[22]~6_combout\,
	asdata => \spi|Selector2~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(22));

-- Location: LCCOMB_X19_Y7_N12
\spi|inner_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~93_combout\ = (\spi|inner_data\(22) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(22),
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~93_combout\);

-- Location: LCCOMB_X17_Y7_N8
\spi|inner_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~94_combout\ = (\spi|inner_data~93_combout\) # ((!\spi|Add2~2_combout\ & (\spi|Add2~4_combout\ & \spi|inner_data~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~93_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~78_combout\,
	combout => \spi|inner_data~94_combout\);

-- Location: LCCOMB_X17_Y7_N10
\spi|inner_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~97_combout\ = (\spi|inner_data~94_combout\) # ((\spi|inner_data~95_combout\ & ((!\spi|inner_data~89_combout\) # (!\spi|inner_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~96_combout\,
	datab => \spi|inner_data~95_combout\,
	datac => \spi|inner_data~94_combout\,
	datad => \spi|inner_data~89_combout\,
	combout => \spi|inner_data~97_combout\);

-- Location: LCCOMB_X17_Y7_N30
\spi|inner_data[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[23]~1_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~97_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~92_combout\,
	datad => \spi|inner_data~97_combout\,
	combout => \spi|inner_data[23]~1_combout\);

-- Location: FF_X17_Y7_N31
\spi|inner_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[23]~1_combout\,
	asdata => \spi|inner_data~95_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(23));

-- Location: LCCOMB_X19_Y7_N24
\spi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Mux0~0_combout\ = (\spi|bit_count\(4) & (((\spi|bit_count\(3) & \spi|inner_data\(23))))) # (!\spi|bit_count\(4) & ((\spi|inner_data\(31)) # ((\spi|bit_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(4),
	datab => \spi|inner_data\(31),
	datac => \spi|bit_count\(3),
	datad => \spi|inner_data\(23),
	combout => \spi|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y9_N14
\spi|inner_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~98_combout\ = (\spi|inner_data\(7) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_data\(7),
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~98_combout\);

-- Location: LCCOMB_X18_Y9_N16
\spi|inner_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~96_combout\ = (!\spi|Add2~2_combout\ & \spi|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~2_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~96_combout\);

-- Location: LCCOMB_X17_Y9_N4
\spi|inner_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~70_combout\ = (!\spi|Add2~4_combout\ & !\spi|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~70_combout\);

-- Location: LCCOMB_X18_Y9_N8
\spi|inner_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~99_combout\ = (\spi|inner_data\(6) & (((\spi|inner_data~70_combout\ & \spi|inner_data~78_combout\)) # (!\spi|inner_ready~0_combout\))) # (!\spi|inner_data\(6) & (\spi|inner_data~70_combout\ & ((\spi|inner_data~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(6),
	datab => \spi|inner_data~70_combout\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data~78_combout\,
	combout => \spi|inner_data~99_combout\);

-- Location: LCCOMB_X18_Y8_N30
\spi|inner_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~82_combout\ = (\spi|Add2~12_combout\ & (\spi|Add2~14_combout\ & (!\spi|Add2~4_combout\ & \spi|inner_data~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~81_combout\,
	combout => \spi|inner_data~82_combout\);

-- Location: LCCOMB_X18_Y9_N10
\spi|inner_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~101_combout\ = (\spi|inner_data~99_combout\) # ((\spi|inner_data~100_combout\ & ((!\spi|inner_data~82_combout\) # (!\spi|inner_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~100_combout\,
	datab => \spi|inner_data~96_combout\,
	datac => \spi|inner_data~99_combout\,
	datad => \spi|inner_data~82_combout\,
	combout => \spi|inner_data~101_combout\);

-- Location: LCCOMB_X18_Y9_N24
\spi|inner_data[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[7]~3_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~101_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~98_combout\,
	datad => \spi|inner_data~101_combout\,
	combout => \spi|inner_data[7]~3_combout\);

-- Location: LCCOMB_X19_Y9_N30
\spi|inner_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~100_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(7),
	combout => \spi|inner_data~100_combout\);

-- Location: FF_X18_Y9_N25
\spi|inner_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[7]~3_combout\,
	asdata => \spi|inner_data~100_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(7));

-- Location: LCCOMB_X19_Y7_N30
\spi|mosi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi~1_combout\ = (\spi|Mux0~0_combout\ & (((\spi|inner_data\(7)) # (!\spi|Add0~1_combout\)))) # (!\spi|Mux0~0_combout\ & (\spi|inner_data\(15) & ((\spi|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(15),
	datab => \spi|Mux0~0_combout\,
	datac => \spi|inner_data\(7),
	datad => \spi|Add0~1_combout\,
	combout => \spi|mosi~1_combout\);

-- Location: LCCOMB_X13_Y9_N24
\spi|inner_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~72_combout\ = (\spi|Add2~14_combout\ & \spi|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~14_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~72_combout\);

-- Location: LCCOMB_X13_Y9_N22
\spi|inner_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~73_combout\ = (\spi|state.command_read_accel~q\ & (\spi|inner_data\(39) & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|inner_data\(39),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~73_combout\);

-- Location: LCCOMB_X17_Y9_N22
\spi|inner_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~71_combout\ = (!\spi|Add2~8_combout\ & (\spi|inner_data~70_combout\ & (!\spi|Add2~10_combout\ & \spi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|inner_data~70_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|Add2~6_combout\,
	combout => \spi|inner_data~71_combout\);

-- Location: LCCOMB_X13_Y9_N8
\spi|inner_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~74_combout\ = (\spi|inner_data~73_combout\ & (((!\spi|inner_data~71_combout\) # (!\spi|inner_data~72_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~72_combout\,
	datac => \spi|inner_data~73_combout\,
	datad => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~74_combout\);

-- Location: LCCOMB_X14_Y9_N24
\spi|inner_data~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~275_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & (\miso~input_o\ & \spi|inner_data~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \spi|state.command_read_accel~q\,
	datac => \miso~input_o\,
	datad => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~275_combout\);

-- Location: LCCOMB_X13_Y9_N18
\spi|inner_data~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~276_combout\ = (\spi|Add2~0_combout\ & (\spi|Add2~12_combout\ & (\spi|Add2~14_combout\ & \spi|inner_data~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|inner_data~275_combout\,
	combout => \spi|inner_data~276_combout\);

-- Location: LCCOMB_X13_Y9_N2
\spi|inner_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~75_combout\ = (\spi|inner_data~74_combout\) # ((\spi|inner_data~276_combout\) # ((\spi|inner_data\(38) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(38),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~74_combout\,
	datad => \spi|inner_data~276_combout\,
	combout => \spi|inner_data~75_combout\);

-- Location: LCCOMB_X13_Y9_N0
\spi|inner_data[39]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[39]~4_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~75_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~75_combout\,
	combout => \spi|inner_data[39]~4_combout\);

-- Location: FF_X13_Y9_N1
\spi|inner_data[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[39]~4_combout\,
	asdata => \spi|inner_data~73_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(39));

-- Location: LCCOMB_X19_Y8_N22
\spi|mosi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi~0_combout\ = (\spi|bit_count\(3) & \spi|inner_data\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_count\(3),
	datad => \spi|inner_data\(39),
	combout => \spi|mosi~0_combout\);

-- Location: LCCOMB_X16_Y6_N26
\spi|mosi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi~2_combout\ = (\spi|Add0~0_combout\ & (\spi|mosi~1_combout\)) # (!\spi|Add0~0_combout\ & (((\spi|mosi~0_combout\ & \spi|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~0_combout\,
	datab => \spi|mosi~1_combout\,
	datac => \spi|mosi~0_combout\,
	datad => \spi|Add0~1_combout\,
	combout => \spi|mosi~2_combout\);

-- Location: LCCOMB_X16_Y6_N20
\spi|mosi_on~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi_on~3_combout\ = (\spi|mosi_on~q\ & (\spi|start~q\ & ((!\spi|clk_sync~q\)))) # (!\spi|mosi_on~q\ & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|start~q\,
	datab => \spi|mosi_on~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|clk_sync~q\,
	combout => \spi|mosi_on~3_combout\);

-- Location: LCCOMB_X16_Y6_N8
\spi|mosi_on~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi_on~2_combout\ = (!\spi|mosi_on~3_combout\ & ((\spi|mosi_on~q\) # ((!\spi|state~11_combout\ & \spi|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state~11_combout\,
	datab => \spi|Equal2~3_combout\,
	datac => \spi|mosi_on~q\,
	datad => \spi|mosi_on~3_combout\,
	combout => \spi|mosi_on~2_combout\);

-- Location: FF_X16_Y6_N9
\spi|mosi_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|mosi_on~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|mosi_on~q\);

-- Location: LCCOMB_X16_Y6_N28
\spi|mosi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi~3_combout\ = (\spi|mosi~2_combout\ & (!\spi|mosi_on~q\ & \spi|clk_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|mosi~2_combout\,
	datac => \spi|mosi_on~q\,
	datad => \spi|clk_sync~q\,
	combout => \spi|mosi~3_combout\);

-- Location: CLKCTRL_G0
\divider|out_clk_inner~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divider|out_clk_inner~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divider|out_clk_inner~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y9_N28
\spi|inner_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~108_combout\ = (\miso~input_o\ & (\spi|inner_ready~0_combout\ & (!\spi|Add2~4_combout\ & \spi|inner_data~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~81_combout\,
	combout => \spi|inner_data~108_combout\);

-- Location: LCCOMB_X17_Y8_N4
\spi|inner_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~134_combout\ = (\spi|inner_data~132_combout\ & (!\spi|Add2~12_combout\ & (\spi|inner_data~108_combout\ & !\spi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~132_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~108_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~134_combout\);

-- Location: LCCOMB_X16_Y8_N16
\spi|inner_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~130_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(8),
	combout => \spi|inner_data~130_combout\);

-- Location: LCCOMB_X17_Y8_N16
\spi|inner_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~131_combout\ = (!\spi|Add2~14_combout\ & (\spi|inner_data~81_combout\ & !\spi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~81_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~131_combout\);

-- Location: LCCOMB_X17_Y8_N2
\spi|inner_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~133_combout\ = (\spi|inner_data~130_combout\ & (((\spi|Add2~12_combout\) # (!\spi|inner_data~131_combout\)) # (!\spi|inner_data~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~132_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~130_combout\,
	datad => \spi|inner_data~131_combout\,
	combout => \spi|inner_data~133_combout\);

-- Location: LCCOMB_X17_Y8_N14
\spi|inner_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~135_combout\ = (\spi|inner_data~134_combout\) # ((\spi|inner_data~133_combout\) # ((\spi|inner_data\(7) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(7),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~134_combout\,
	datad => \spi|inner_data~133_combout\,
	combout => \spi|inner_data~135_combout\);

-- Location: LCCOMB_X17_Y8_N24
\spi|inner_data[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[8]~10_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~135_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~129_combout\,
	datab => \spi|inner_data~135_combout\,
	datad => \spi|always1~1_combout\,
	combout => \spi|inner_data[8]~10_combout\);

-- Location: FF_X17_Y8_N25
\spi|inner_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[8]~10_combout\,
	asdata => \spi|inner_data~130_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(8));

-- Location: LCCOMB_X16_Y6_N14
\spi|accel[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[0]~feeder_combout\ = \spi|inner_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(8),
	combout => \spi|accel[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y6_N10
\spi|accel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[0]~0_combout\ = (\spi|state.read_accel~q\ & (\spi|inner_data\(31) & (!\spi|always1~1_combout\ & \spi|bit_number[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.read_accel~q\,
	datab => \spi|inner_data\(31),
	datac => \spi|always1~1_combout\,
	datad => \spi|bit_number[2]~8_combout\,
	combout => \spi|accel[0]~0_combout\);

-- Location: FF_X16_Y6_N15
\spi|accel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[0]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(0));

-- Location: LCCOMB_X16_Y8_N30
\spi|inner_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~136_combout\ = (\spi|inner_data\(9) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(9),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~136_combout\);

-- Location: LCCOMB_X17_Y8_N8
\spi|inner_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~137_combout\ = (\spi|inner_data~132_combout\ & (!\spi|Add2~12_combout\ & (\spi|inner_data~77_combout\ & !\spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~132_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~77_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~137_combout\);

-- Location: LCCOMB_X18_Y8_N14
\spi|inner_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~138_combout\ = (\spi|state.command_read_accel~q\ & (\spi|inner_data\(9) & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(9),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~138_combout\);

-- Location: LCCOMB_X17_Y8_N18
\spi|inner_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~139_combout\ = (\spi|Add2~14_combout\ & (\spi|inner_data~81_combout\ & !\spi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~81_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~139_combout\);

-- Location: LCCOMB_X17_Y8_N28
\spi|inner_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~140_combout\ = (\spi|inner_data~138_combout\ & (((\spi|Add2~12_combout\) # (!\spi|inner_data~139_combout\)) # (!\spi|inner_data~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~132_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~138_combout\,
	datad => \spi|inner_data~139_combout\,
	combout => \spi|inner_data~140_combout\);

-- Location: LCCOMB_X17_Y8_N10
\spi|inner_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~141_combout\ = (\spi|inner_data~137_combout\) # ((\spi|inner_data~140_combout\) # ((\spi|inner_data\(8) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(8),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~137_combout\,
	datad => \spi|inner_data~140_combout\,
	combout => \spi|inner_data~141_combout\);

-- Location: LCCOMB_X17_Y8_N26
\spi|inner_data[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[9]~11_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~141_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~136_combout\,
	datad => \spi|inner_data~141_combout\,
	combout => \spi|inner_data[9]~11_combout\);

-- Location: FF_X17_Y8_N27
\spi|inner_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[9]~11_combout\,
	asdata => \spi|inner_data~138_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(9));

-- Location: LCCOMB_X18_Y6_N0
\spi|accel[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[1]~feeder_combout\ = \spi|inner_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(9),
	combout => \spi|accel[1]~feeder_combout\);

-- Location: FF_X18_Y6_N1
\spi|accel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[1]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(1));

-- Location: LCCOMB_X16_Y7_N20
\spi|inner_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~142_combout\ = (\spi|inner_data\(10) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data\(10),
	combout => \spi|inner_data~142_combout\);

-- Location: LCCOMB_X14_Y7_N14
\spi|inner_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~132_combout\ = (!\spi|Add2~0_combout\ & \spi|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~0_combout\,
	datac => \spi|Add2~2_combout\,
	combout => \spi|inner_data~132_combout\);

-- Location: LCCOMB_X17_Y8_N30
\spi|inner_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~111_combout\ = (\spi|Add2~12_combout\ & (!\spi|Add2~14_combout\ & (\spi|inner_data~81_combout\ & !\spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~81_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~111_combout\);

-- Location: LCCOMB_X16_Y7_N0
\spi|inner_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~144_combout\ = (\spi|inner_data~143_combout\ & ((\spi|inner_data~108_combout\) # ((!\spi|inner_ready~0_combout\ & \spi|inner_data\(9))))) # (!\spi|inner_data~143_combout\ & (!\spi|inner_ready~0_combout\ & (\spi|inner_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~143_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(9),
	datad => \spi|inner_data~108_combout\,
	combout => \spi|inner_data~144_combout\);

-- Location: LCCOMB_X16_Y7_N16
\spi|inner_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~146_combout\ = (\spi|inner_data~144_combout\) # ((\spi|inner_data~145_combout\ & ((!\spi|inner_data~111_combout\) # (!\spi|inner_data~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~145_combout\,
	datab => \spi|inner_data~132_combout\,
	datac => \spi|inner_data~111_combout\,
	datad => \spi|inner_data~144_combout\,
	combout => \spi|inner_data~146_combout\);

-- Location: LCCOMB_X16_Y7_N28
\spi|inner_data[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[10]~12_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~146_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~142_combout\,
	datad => \spi|inner_data~146_combout\,
	combout => \spi|inner_data[10]~12_combout\);

-- Location: LCCOMB_X16_Y7_N26
\spi|inner_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~145_combout\ = (\spi|inner_data\(10) & (\spi|state.command_read_accel~q\ & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(10),
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~145_combout\);

-- Location: FF_X16_Y7_N29
\spi|inner_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[10]~12_combout\,
	asdata => \spi|inner_data~145_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(10));

-- Location: LCCOMB_X18_Y6_N30
\spi|accel[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[2]~feeder_combout\ = \spi|inner_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(10),
	combout => \spi|accel[2]~feeder_combout\);

-- Location: FF_X18_Y6_N31
\spi|accel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[2]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(2));

-- Location: LCCOMB_X17_Y6_N10
\spi|inner_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~150_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(11),
	combout => \spi|inner_data~150_combout\);

-- Location: LCCOMB_X18_Y8_N20
\spi|inner_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~148_combout\ = (!\spi|Add2~4_combout\ & (\spi|Add2~12_combout\ & \spi|inner_data~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|inner_data~77_combout\,
	combout => \spi|inner_data~148_combout\);

-- Location: LCCOMB_X17_Y6_N20
\spi|inner_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~149_combout\ = (\spi|inner_data\(10) & (((\spi|inner_data~132_combout\ & \spi|inner_data~148_combout\)) # (!\spi|inner_ready~0_combout\))) # (!\spi|inner_data\(10) & (((\spi|inner_data~132_combout\ & \spi|inner_data~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(10),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~132_combout\,
	datad => \spi|inner_data~148_combout\,
	combout => \spi|inner_data~149_combout\);

-- Location: LCCOMB_X17_Y6_N0
\spi|inner_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~151_combout\ = (\spi|inner_data~149_combout\) # ((\spi|inner_data~150_combout\ & ((!\spi|inner_data~82_combout\) # (!\spi|inner_data~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~132_combout\,
	datab => \spi|inner_data~150_combout\,
	datac => \spi|inner_data~82_combout\,
	datad => \spi|inner_data~149_combout\,
	combout => \spi|inner_data~151_combout\);

-- Location: LCCOMB_X17_Y6_N2
\spi|inner_data[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[11]~13_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~151_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~147_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~151_combout\,
	combout => \spi|inner_data[11]~13_combout\);

-- Location: FF_X17_Y6_N3
\spi|inner_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[11]~13_combout\,
	asdata => \spi|inner_data~150_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(11));

-- Location: LCCOMB_X18_Y6_N20
\spi|accel[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[3]~feeder_combout\ = \spi|inner_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(11),
	combout => \spi|accel[3]~feeder_combout\);

-- Location: FF_X18_Y6_N21
\spi|accel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[3]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(3));

-- Location: LCCOMB_X17_Y8_N0
\spi|inner_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~157_combout\ = (\spi|inner_data~155_combout\ & (((!\spi|inner_data~131_combout\) # (!\spi|inner_data~156_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~155_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~156_combout\,
	datad => \spi|inner_data~131_combout\,
	combout => \spi|inner_data~157_combout\);

-- Location: LCCOMB_X17_Y6_N24
\spi|inner_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~158_combout\ = (\spi|inner_data~154_combout\) # ((\spi|inner_data~157_combout\) # ((\spi|inner_data\(11) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~154_combout\,
	datab => \spi|inner_data\(11),
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data~157_combout\,
	combout => \spi|inner_data~158_combout\);

-- Location: LCCOMB_X17_Y6_N8
\spi|inner_data[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[12]~14_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~158_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~152_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~158_combout\,
	combout => \spi|inner_data[12]~14_combout\);

-- Location: LCCOMB_X17_Y6_N22
\spi|inner_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~155_combout\ = (\spi|inner_data\(12) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(12),
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~155_combout\);

-- Location: FF_X17_Y6_N9
\spi|inner_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[12]~14_combout\,
	asdata => \spi|inner_data~155_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(12));

-- Location: LCCOMB_X18_Y6_N18
\spi|accel[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[4]~feeder_combout\ = \spi|inner_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(12),
	combout => \spi|accel[4]~feeder_combout\);

-- Location: FF_X18_Y6_N19
\spi|accel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[4]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(4));

-- Location: LCCOMB_X18_Y8_N26
\spi|inner_data~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~160_combout\ = (\spi|inner_data~156_combout\ & (!\spi|Add2~4_combout\ & (\spi|Add2~2_combout\ & \spi|inner_data~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~156_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~77_combout\,
	combout => \spi|inner_data~160_combout\);

-- Location: LCCOMB_X19_Y8_N14
\spi|inner_data~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~161_combout\ = (\spi|inner_data\(13) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(13),
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~161_combout\);

-- Location: LCCOMB_X18_Y8_N12
\spi|inner_data~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~162_combout\ = (\spi|inner_data~161_combout\ & (((!\spi|inner_data~139_combout\) # (!\spi|Add2~2_combout\)) # (!\spi|inner_data~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~156_combout\,
	datab => \spi|inner_data~161_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~139_combout\,
	combout => \spi|inner_data~162_combout\);

-- Location: LCCOMB_X18_Y8_N6
\spi|inner_data~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~163_combout\ = (\spi|inner_data~160_combout\) # ((\spi|inner_data~162_combout\) # ((!\spi|inner_ready~0_combout\ & \spi|inner_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|inner_data\(12),
	datac => \spi|inner_data~160_combout\,
	datad => \spi|inner_data~162_combout\,
	combout => \spi|inner_data~163_combout\);

-- Location: LCCOMB_X18_Y8_N4
\spi|inner_data[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[13]~15_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~163_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~159_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~163_combout\,
	combout => \spi|inner_data[13]~15_combout\);

-- Location: FF_X18_Y8_N5
\spi|inner_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[13]~15_combout\,
	asdata => \spi|inner_data~161_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(13));

-- Location: LCCOMB_X18_Y6_N16
\spi|accel[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[5]~feeder_combout\ = \spi|inner_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(13),
	combout => \spi|accel[5]~feeder_combout\);

-- Location: FF_X18_Y6_N17
\spi|accel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[5]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(5));

-- Location: LCCOMB_X18_Y7_N24
\spi|inner_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~107_combout\ = (\spi|inner_data\(14) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_data\(14),
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~107_combout\);

-- Location: LCCOMB_X18_Y7_N22
\spi|inner_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~109_combout\ = (\spi|inner_data~104_combout\ & (\spi|Add2~2_combout\ & \spi|inner_data~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~104_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~108_combout\,
	combout => \spi|inner_data~109_combout\);

-- Location: LCCOMB_X19_Y7_N0
\spi|inner_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~110_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(14),
	combout => \spi|inner_data~110_combout\);

-- Location: LCCOMB_X18_Y7_N20
\spi|inner_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~112_combout\ = (\spi|inner_data~110_combout\ & (((!\spi|Add2~0_combout\) # (!\spi|inner_data~111_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~110_combout\,
	datac => \spi|inner_data~111_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~112_combout\);

-- Location: LCCOMB_X18_Y7_N2
\spi|inner_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~113_combout\ = (\spi|inner_data~109_combout\) # ((\spi|inner_data~112_combout\) # ((\spi|inner_data\(13) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(13),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~109_combout\,
	datad => \spi|inner_data~112_combout\,
	combout => \spi|inner_data~113_combout\);

-- Location: LCCOMB_X18_Y7_N14
\spi|inner_data[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[14]~5_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~113_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~107_combout\,
	datad => \spi|inner_data~113_combout\,
	combout => \spi|inner_data[14]~5_combout\);

-- Location: FF_X18_Y7_N15
\spi|inner_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[14]~5_combout\,
	asdata => \spi|inner_data~110_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(14));

-- Location: LCCOMB_X19_Y7_N20
\spi|accel[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[6]~feeder_combout\ = \spi|inner_data\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(14),
	combout => \spi|accel[6]~feeder_combout\);

-- Location: FF_X19_Y7_N21
\spi|accel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[6]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(6));

-- Location: LCCOMB_X18_Y7_N4
\spi|inner_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~79_combout\ = (\spi|Add2~2_combout\ & (!\spi|Add2~4_combout\ & \spi|inner_data~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~78_combout\,
	combout => \spi|inner_data~79_combout\);

-- Location: LCCOMB_X18_Y7_N18
\spi|inner_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~83_combout\ = (\spi|inner_data~80_combout\ & (((!\spi|Add2~2_combout\) # (!\spi|inner_data~82_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~80_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~82_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~83_combout\);

-- Location: LCCOMB_X18_Y7_N0
\spi|inner_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~84_combout\ = (\spi|inner_data~79_combout\) # ((\spi|inner_data~83_combout\) # ((\spi|inner_data\(14) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(14),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~79_combout\,
	datad => \spi|inner_data~83_combout\,
	combout => \spi|inner_data~84_combout\);

-- Location: LCCOMB_X18_Y7_N16
\spi|inner_data[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[15]~0_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~84_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~76_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~84_combout\,
	combout => \spi|inner_data[15]~0_combout\);

-- Location: LCCOMB_X19_Y7_N22
\spi|inner_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~80_combout\ = (\spi|state.command_read_accel~q\ & (\spi|inner_data\(15) & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(15),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~80_combout\);

-- Location: FF_X18_Y7_N17
\spi|inner_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[15]~0_combout\,
	asdata => \spi|inner_data~80_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(15));

-- Location: FF_X19_Y7_N11
\spi|accel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \spi|inner_data\(15),
	sload => VCC,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(7));

-- Location: LCCOMB_X14_Y8_N0
\spi|inner_data~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~165_combout\ = (!\spi|Add2~12_combout\ & !\spi|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~12_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~165_combout\);

-- Location: LCCOMB_X13_Y9_N4
\spi|inner_data~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~166_combout\ = (!\spi|Add2~0_combout\ & !\spi|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~166_combout\);

-- Location: LCCOMB_X14_Y8_N8
\spi|inner_data~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~168_combout\ = (\spi|inner_data~167_combout\ & (((!\spi|inner_data~166_combout\) # (!\spi|inner_data~88_combout\)) # (!\spi|inner_data~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~167_combout\,
	datab => \spi|inner_data~165_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|inner_data~166_combout\,
	combout => \spi|inner_data~168_combout\);

-- Location: LCCOMB_X14_Y8_N18
\spi|inner_data~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~278_combout\ = (!\spi|Add2~12_combout\ & (!\spi|Add2~14_combout\ & (\spi|inner_data~115_combout\ & \spi|inner_data~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~115_combout\,
	datad => \spi|inner_data~166_combout\,
	combout => \spi|inner_data~278_combout\);

-- Location: LCCOMB_X14_Y8_N2
\spi|inner_data~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~169_combout\ = (\spi|inner_data~168_combout\) # ((\spi|inner_data~278_combout\) # ((\spi|inner_data\(15) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(15),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~168_combout\,
	datad => \spi|inner_data~278_combout\,
	combout => \spi|inner_data~169_combout\);

-- Location: LCCOMB_X14_Y8_N16
\spi|inner_data[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[16]~16_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~169_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~164_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~169_combout\,
	combout => \spi|inner_data[16]~16_combout\);

-- Location: LCCOMB_X14_Y8_N22
\spi|inner_data~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~167_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(16),
	combout => \spi|inner_data~167_combout\);

-- Location: FF_X14_Y8_N17
\spi|inner_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[16]~16_combout\,
	asdata => \spi|inner_data~167_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(16));

-- Location: LCCOMB_X13_Y8_N24
\spi|accel[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[8]~feeder_combout\ = \spi|inner_data\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(16),
	combout => \spi|accel[8]~feeder_combout\);

-- Location: FF_X13_Y8_N25
\spi|accel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[8]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(8));

-- Location: LCCOMB_X14_Y8_N26
\spi|inner_data~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~171_combout\ = (\spi|Add2~12_combout\) # (((!\spi|Add2~14_combout\) # (!\spi|inner_data~88_combout\)) # (!\spi|inner_data~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~166_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~171_combout\);

-- Location: LCCOMB_X14_Y8_N20
\spi|inner_data~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~172_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(17) & ((\spi|inner_data~171_combout\)))) # (!\spi|inner_ready~0_combout\ & (((\spi|inner_data\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(17),
	datab => \spi|inner_data\(16),
	datac => \spi|inner_data~171_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~172_combout\);

-- Location: LCCOMB_X14_Y8_N28
\spi|inner_data~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~174_combout\ = (\spi|inner_data~172_combout\) # ((!\spi|Add2~12_combout\ & (\spi|inner_data~166_combout\ & \spi|inner_data~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~166_combout\,
	datac => \spi|inner_data~173_combout\,
	datad => \spi|inner_data~172_combout\,
	combout => \spi|inner_data~174_combout\);

-- Location: LCCOMB_X14_Y8_N6
\spi|inner_data[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[17]~17_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~174_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~170_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~174_combout\,
	combout => \spi|inner_data[17]~17_combout\);

-- Location: LCCOMB_X14_Y8_N14
\spi|inner_data~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~175_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(17),
	combout => \spi|inner_data~175_combout\);

-- Location: FF_X14_Y8_N7
\spi|inner_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[17]~17_combout\,
	asdata => \spi|inner_data~175_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(17));

-- Location: LCCOMB_X14_Y8_N4
\spi|accel[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[9]~feeder_combout\ = \spi|inner_data\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(17),
	combout => \spi|accel[9]~feeder_combout\);

-- Location: FF_X14_Y8_N5
\spi|accel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[9]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(9));

-- Location: LCCOMB_X19_Y9_N18
\spi|inner_data~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~176_combout\ = (\spi|inner_data\(18) & ((\spi|inner_ready~0_combout\) # ((!\spi|Equal2~3_combout\) # (!\spi|clk_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(18),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~176_combout\);

-- Location: LCCOMB_X18_Y9_N28
\spi|inner_data~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~177_combout\ = (!\spi|Add2~0_combout\ & (!\spi|Add2~14_combout\ & \spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~177_combout\);

-- Location: LCCOMB_X19_Y9_N12
\spi|inner_data~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~178_combout\ = ((\spi|Add2~2_combout\) # (!\spi|inner_data~88_combout\)) # (!\spi|inner_data~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data~177_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~88_combout\,
	combout => \spi|inner_data~178_combout\);

-- Location: LCCOMB_X19_Y9_N10
\spi|inner_data~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~179_combout\ = (\spi|inner_ready~0_combout\ & (((\spi|inner_data\(18) & \spi|inner_data~178_combout\)))) # (!\spi|inner_ready~0_combout\ & (\spi|inner_data\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(17),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(18),
	datad => \spi|inner_data~178_combout\,
	combout => \spi|inner_data~179_combout\);

-- Location: LCCOMB_X19_Y9_N24
\spi|inner_data~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~180_combout\ = (\spi|inner_data~179_combout\) # ((\spi|inner_data~115_combout\ & (\spi|inner_data~177_combout\ & !\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~115_combout\,
	datab => \spi|inner_data~177_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~179_combout\,
	combout => \spi|inner_data~180_combout\);

-- Location: LCCOMB_X19_Y9_N8
\spi|inner_data[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[18]~18_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~180_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~176_combout\,
	datad => \spi|inner_data~180_combout\,
	combout => \spi|inner_data[18]~18_combout\);

-- Location: LCCOMB_X19_Y9_N14
\spi|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Selector4~0_combout\ = (\spi|state.command_read_temp~q\) # ((\spi|inner_data\(18) & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|inner_data\(18),
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|Selector4~0_combout\);

-- Location: FF_X19_Y9_N9
\spi|inner_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[18]~18_combout\,
	asdata => \spi|Selector4~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(18));

-- Location: LCCOMB_X19_Y6_N4
\spi|accel[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[10]~feeder_combout\ = \spi|inner_data\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(18),
	combout => \spi|accel[10]~feeder_combout\);

-- Location: FF_X19_Y6_N5
\spi|accel[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[10]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(10));

-- Location: LCCOMB_X17_Y7_N18
\spi|inner_data~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~181_combout\ = (\spi|inner_data\(19) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(19),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~181_combout\);

-- Location: LCCOMB_X17_Y7_N24
\spi|inner_data~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~182_combout\ = (\spi|Add2~4_combout\ & (\spi|inner_data~77_combout\ & \spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datac => \spi|inner_data~77_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~182_combout\);

-- Location: LCCOMB_X17_Y7_N26
\spi|inner_data~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~183_combout\ = (\spi|inner_data\(18) & (((\spi|inner_data~166_combout\ & \spi|inner_data~182_combout\)) # (!\spi|inner_ready~0_combout\))) # (!\spi|inner_data\(18) & (((\spi|inner_data~166_combout\ & \spi|inner_data~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(18),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~166_combout\,
	datad => \spi|inner_data~182_combout\,
	combout => \spi|inner_data~183_combout\);

-- Location: LCCOMB_X17_Y7_N6
\spi|inner_data~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~185_combout\ = (\spi|inner_data~183_combout\) # ((\spi|inner_data~184_combout\ & ((!\spi|inner_data~89_combout\) # (!\spi|inner_data~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~184_combout\,
	datab => \spi|inner_data~166_combout\,
	datac => \spi|inner_data~183_combout\,
	datad => \spi|inner_data~89_combout\,
	combout => \spi|inner_data~185_combout\);

-- Location: LCCOMB_X17_Y7_N0
\spi|inner_data[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[19]~19_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~185_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~181_combout\,
	datad => \spi|inner_data~185_combout\,
	combout => \spi|inner_data[19]~19_combout\);

-- Location: LCCOMB_X17_Y7_N12
\spi|inner_data~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~184_combout\ = (\spi|state.command_read_accel~q\ & (!\spi|state.command_read_temp~q\ & \spi|inner_data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|inner_data\(19),
	combout => \spi|inner_data~184_combout\);

-- Location: FF_X17_Y7_N1
\spi|inner_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[19]~19_combout\,
	asdata => \spi|inner_data~184_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(19));

-- Location: LCCOMB_X18_Y6_N26
\spi|accel[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[11]~feeder_combout\ = \spi|inner_data\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(19),
	combout => \spi|accel[11]~feeder_combout\);

-- Location: FF_X18_Y6_N27
\spi|accel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[11]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(11));

-- Location: LCCOMB_X13_Y8_N26
\spi|accel[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[12]~feeder_combout\ = \spi|inner_data\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(20),
	combout => \spi|accel[12]~feeder_combout\);

-- Location: FF_X13_Y8_N27
\spi|accel[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[12]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(12));

-- Location: LCCOMB_X13_Y8_N16
\spi|accel[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[13]~feeder_combout\ = \spi|inner_data\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(21),
	combout => \spi|accel[13]~feeder_combout\);

-- Location: FF_X13_Y8_N17
\spi|accel[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[13]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(13));

-- Location: LCCOMB_X19_Y6_N30
\spi|accel[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[14]~feeder_combout\ = \spi|inner_data\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(22),
	combout => \spi|accel[14]~feeder_combout\);

-- Location: FF_X19_Y6_N31
\spi|accel[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[14]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(14));

-- Location: LCCOMB_X18_Y6_N12
\spi|accel[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[15]~feeder_combout\ = \spi|inner_data\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(23),
	combout => \spi|accel[15]~feeder_combout\);

-- Location: FF_X18_Y6_N13
\spi|accel[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[15]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(15));

-- Location: LCCOMB_X14_Y7_N16
\spi|inner_data~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~195_combout\ = (\spi|inner_data\(24) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(24),
	datab => \spi|clk_sync~q\,
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~195_combout\);

-- Location: LCCOMB_X14_Y7_N4
\spi|inner_data~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~197_combout\ = (\spi|inner_data~196_combout\ & (((!\spi|inner_data~88_combout\) # (!\spi|inner_data~165_combout\)) # (!\spi|inner_data~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~196_combout\,
	datab => \spi|inner_data~132_combout\,
	datac => \spi|inner_data~165_combout\,
	datad => \spi|inner_data~88_combout\,
	combout => \spi|inner_data~197_combout\);

-- Location: LCCOMB_X14_Y7_N24
\spi|inner_data~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~279_combout\ = (\spi|Add2~2_combout\ & (!\spi|Add2~0_combout\ & (\spi|inner_data~165_combout\ & \spi|inner_data~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~165_combout\,
	datad => \spi|inner_data~115_combout\,
	combout => \spi|inner_data~279_combout\);

-- Location: LCCOMB_X14_Y7_N18
\spi|inner_data~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~198_combout\ = (\spi|inner_data~197_combout\) # ((\spi|inner_data~279_combout\) # ((\spi|inner_data\(23) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(23),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~197_combout\,
	datad => \spi|inner_data~279_combout\,
	combout => \spi|inner_data~198_combout\);

-- Location: LCCOMB_X14_Y7_N12
\spi|inner_data[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[24]~22_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~198_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~195_combout\,
	datad => \spi|inner_data~198_combout\,
	combout => \spi|inner_data[24]~22_combout\);

-- Location: LCCOMB_X14_Y7_N22
\spi|inner_data~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~196_combout\ = (\spi|inner_data\(24) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(24),
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~196_combout\);

-- Location: FF_X14_Y7_N13
\spi|inner_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[24]~22_combout\,
	asdata => \spi|inner_data~196_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(24));

-- Location: LCCOMB_X14_Y7_N0
\spi|accel[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[16]~feeder_combout\ = \spi|inner_data\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(24),
	combout => \spi|accel[16]~feeder_combout\);

-- Location: FF_X14_Y7_N1
\spi|accel[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[16]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(16));

-- Location: LCCOMB_X14_Y7_N28
\spi|inner_data~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~199_combout\ = (\spi|inner_data\(25) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(25),
	datab => \spi|clk_sync~q\,
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~199_combout\);

-- Location: LCCOMB_X14_Y7_N6
\spi|inner_data~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~200_combout\ = (\spi|Add2~12_combout\) # (((!\spi|inner_data~88_combout\) # (!\spi|inner_data~132_combout\)) # (!\spi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~132_combout\,
	datad => \spi|inner_data~88_combout\,
	combout => \spi|inner_data~200_combout\);

-- Location: LCCOMB_X14_Y7_N20
\spi|inner_data~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~201_combout\ = (\spi|inner_ready~0_combout\ & (((\spi|inner_data\(25) & \spi|inner_data~200_combout\)))) # (!\spi|inner_ready~0_combout\ & (\spi|inner_data\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(24),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(25),
	datad => \spi|inner_data~200_combout\,
	combout => \spi|inner_data~201_combout\);

-- Location: LCCOMB_X14_Y7_N2
\spi|inner_data~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~202_combout\ = (\spi|inner_data~201_combout\) # ((!\spi|Add2~12_combout\ & (\spi|inner_data~132_combout\ & \spi|inner_data~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~132_combout\,
	datac => \spi|inner_data~173_combout\,
	datad => \spi|inner_data~201_combout\,
	combout => \spi|inner_data~202_combout\);

-- Location: LCCOMB_X14_Y7_N26
\spi|inner_data[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[25]~23_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~202_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~199_combout\,
	datad => \spi|inner_data~202_combout\,
	combout => \spi|inner_data[25]~23_combout\);

-- Location: LCCOMB_X14_Y7_N8
\spi|inner_data~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~203_combout\ = (\spi|state.command_read_accel~q\ & (\spi|inner_data\(25) & !\spi|state.command_read_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(25),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~203_combout\);

-- Location: FF_X14_Y7_N27
\spi|inner_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[25]~23_combout\,
	asdata => \spi|inner_data~203_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(25));

-- Location: LCCOMB_X19_Y7_N28
\spi|accel[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[17]~feeder_combout\ = \spi|inner_data\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(25),
	combout => \spi|accel[17]~feeder_combout\);

-- Location: FF_X19_Y7_N29
\spi|accel[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[17]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(17));

-- Location: LCCOMB_X16_Y7_N2
\spi|inner_data~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~204_combout\ = (\spi|inner_data\(26) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(26),
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~204_combout\);

-- Location: LCCOMB_X16_Y7_N10
\spi|inner_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~143_combout\ = (!\spi|Add2~0_combout\ & (!\spi|Add2~14_combout\ & (\spi|Add2~12_combout\ & \spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~143_combout\);

-- Location: LCCOMB_X16_Y7_N24
\spi|inner_data~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~206_combout\ = (\spi|inner_data\(26) & (\spi|inner_ready~0_combout\ & ((!\spi|inner_data~143_combout\) # (!\spi|inner_data~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(26),
	datab => \spi|inner_data~88_combout\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data~143_combout\,
	combout => \spi|inner_data~206_combout\);

-- Location: LCCOMB_X14_Y7_N30
\spi|inner_data~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~205_combout\ = (\spi|inner_data\(25) & ((\spi|state.command_read_temp~q\) # (!\spi|state.command_read_accel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data\(25),
	datad => \spi|state.command_read_temp~q\,
	combout => \spi|inner_data~205_combout\);

-- Location: LCCOMB_X16_Y7_N6
\spi|inner_data~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~207_combout\ = (\spi|inner_data~206_combout\) # ((\spi|inner_data~205_combout\) # ((\spi|inner_data~143_combout\ & \spi|inner_data~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~143_combout\,
	datab => \spi|inner_data~206_combout\,
	datac => \spi|inner_data~205_combout\,
	datad => \spi|inner_data~115_combout\,
	combout => \spi|inner_data~207_combout\);

-- Location: LCCOMB_X16_Y7_N30
\spi|inner_data[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[26]~24_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~207_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~204_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~204_combout\,
	datad => \spi|inner_data~207_combout\,
	combout => \spi|inner_data[26]~24_combout\);

-- Location: LCCOMB_X16_Y7_N8
\spi|inner_data~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~208_combout\ = (\spi|inner_data\(26) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(26),
	datab => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~208_combout\);

-- Location: FF_X16_Y7_N31
\spi|inner_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[26]~24_combout\,
	asdata => \spi|inner_data~208_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(26));

-- Location: LCCOMB_X19_Y7_N26
\spi|accel[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[18]~feeder_combout\ = \spi|inner_data\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(26),
	combout => \spi|accel[18]~feeder_combout\);

-- Location: FF_X19_Y7_N27
\spi|accel[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[18]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(18));

-- Location: LCCOMB_X16_Y7_N14
\spi|inner_data~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~209_combout\ = (\spi|inner_data\(27) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_data\(27),
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~209_combout\);

-- Location: LCCOMB_X13_Y7_N2
\spi|inner_data~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~211_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|inner_data\(27) & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datac => \spi|inner_data\(27),
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~211_combout\);

-- Location: LCCOMB_X16_Y7_N12
\spi|inner_data~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~210_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data~132_combout\ & ((\spi|inner_data~182_combout\)))) # (!\spi|inner_ready~0_combout\ & ((\spi|inner_data\(26)) # ((\spi|inner_data~132_combout\ & \spi|inner_data~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|inner_data~132_combout\,
	datac => \spi|inner_data\(26),
	datad => \spi|inner_data~182_combout\,
	combout => \spi|inner_data~210_combout\);

-- Location: LCCOMB_X16_Y7_N18
\spi|inner_data~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~212_combout\ = (\spi|inner_data~210_combout\) # ((\spi|inner_data~211_combout\ & ((!\spi|inner_data~89_combout\) # (!\spi|inner_data~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~132_combout\,
	datab => \spi|inner_data~211_combout\,
	datac => \spi|inner_data~89_combout\,
	datad => \spi|inner_data~210_combout\,
	combout => \spi|inner_data~212_combout\);

-- Location: LCCOMB_X16_Y7_N4
\spi|inner_data[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[27]~25_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~212_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~209_combout\,
	datad => \spi|inner_data~212_combout\,
	combout => \spi|inner_data[27]~25_combout\);

-- Location: FF_X16_Y7_N5
\spi|inner_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[27]~25_combout\,
	asdata => \spi|inner_data~211_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(27));

-- Location: LCCOMB_X13_Y7_N24
\spi|accel[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[19]~feeder_combout\ = \spi|inner_data\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(27),
	combout => \spi|accel[19]~feeder_combout\);

-- Location: FF_X13_Y7_N25
\spi|accel[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[19]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(19));

-- Location: LCCOMB_X13_Y7_N20
\spi|inner_data~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~213_combout\ = (\spi|inner_data\(28) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|inner_data\(28),
	datac => \spi|Equal2~3_combout\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~213_combout\);

-- Location: LCCOMB_X14_Y9_N12
\spi|inner_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~153_combout\ = (!\spi|Add2~14_combout\ & (!\spi|Add2~12_combout\ & \spi|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~153_combout\);

-- Location: LCCOMB_X13_Y7_N10
\spi|inner_data~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~214_combout\ = (\spi|Add2~2_combout\ & (\spi|inner_data~153_combout\ & \spi|inner_data~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~153_combout\,
	datad => \spi|inner_data~115_combout\,
	combout => \spi|inner_data~214_combout\);

-- Location: LCCOMB_X13_Y7_N28
\spi|inner_data~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~217_combout\ = (\spi|inner_data~216_combout\) # ((\spi|inner_data~214_combout\) # ((!\spi|inner_ready~0_combout\ & \spi|inner_data\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~216_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(27),
	datad => \spi|inner_data~214_combout\,
	combout => \spi|inner_data~217_combout\);

-- Location: LCCOMB_X13_Y7_N4
\spi|inner_data[28]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[28]~26_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~217_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~213_combout\,
	datad => \spi|inner_data~217_combout\,
	combout => \spi|inner_data[28]~26_combout\);

-- Location: LCCOMB_X13_Y7_N8
\spi|inner_data~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~215_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|inner_data\(28) & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datac => \spi|inner_data\(28),
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~215_combout\);

-- Location: FF_X13_Y7_N5
\spi|inner_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[28]~26_combout\,
	asdata => \spi|inner_data~215_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(28));

-- Location: LCCOMB_X13_Y7_N30
\spi|accel[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[20]~feeder_combout\ = \spi|inner_data\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(28),
	combout => \spi|accel[20]~feeder_combout\);

-- Location: FF_X13_Y7_N31
\spi|accel[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[20]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(20));

-- Location: LCCOMB_X13_Y7_N18
\spi|inner_data~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~218_combout\ = (\spi|inner_data\(29) & ((\spi|inner_ready~0_combout\) # ((!\spi|Equal2~3_combout\) # (!\spi|clk_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(29),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|clk_sync~q\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~218_combout\);

-- Location: LCCOMB_X13_Y7_N0
\spi|inner_data~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~219_combout\ = (((!\spi|inner_data~156_combout\) # (!\spi|inner_data~88_combout\)) # (!\spi|Add2~2_combout\)) # (!\spi|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~88_combout\,
	datad => \spi|inner_data~156_combout\,
	combout => \spi|inner_data~219_combout\);

-- Location: LCCOMB_X13_Y7_N14
\spi|inner_data~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~220_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(29) & ((\spi|inner_data~219_combout\)))) # (!\spi|inner_ready~0_combout\ & (((\spi|inner_data\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(29),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(28),
	datad => \spi|inner_data~219_combout\,
	combout => \spi|inner_data~220_combout\);

-- Location: LCCOMB_X13_Y7_N16
\spi|inner_data~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~221_combout\ = (\spi|inner_data~220_combout\) # ((\spi|Add2~2_combout\ & (\spi|inner_data~156_combout\ & \spi|inner_data~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~156_combout\,
	datac => \spi|inner_data~220_combout\,
	datad => \spi|inner_data~173_combout\,
	combout => \spi|inner_data~221_combout\);

-- Location: LCCOMB_X13_Y7_N6
\spi|inner_data[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[29]~27_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~221_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~218_combout\,
	datad => \spi|inner_data~221_combout\,
	combout => \spi|inner_data[29]~27_combout\);

-- Location: LCCOMB_X13_Y7_N22
\spi|inner_data~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~222_combout\ = (\spi|inner_data\(29) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(29),
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~222_combout\);

-- Location: FF_X13_Y7_N7
\spi|inner_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[29]~27_combout\,
	asdata => \spi|inner_data~222_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(29));

-- Location: LCCOMB_X13_Y7_N12
\spi|accel[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[21]~feeder_combout\ = \spi|inner_data\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(29),
	combout => \spi|accel[21]~feeder_combout\);

-- Location: FF_X13_Y7_N13
\spi|accel[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[21]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(21));

-- Location: LCCOMB_X17_Y7_N16
\spi|inner_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~117_combout\ = (\spi|inner_data\(30) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(30),
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~117_combout\);

-- Location: LCCOMB_X18_Y7_N8
\spi|inner_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~118_combout\ = (\spi|inner_data~117_combout\ & (((!\spi|inner_data~88_combout\) # (!\spi|Add2~2_combout\)) # (!\spi|inner_data~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~104_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~117_combout\,
	datad => \spi|inner_data~88_combout\,
	combout => \spi|inner_data~118_combout\);

-- Location: LCCOMB_X18_Y7_N10
\spi|inner_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~116_combout\ = (\spi|inner_data~104_combout\ & (\spi|Add2~2_combout\ & \spi|inner_data~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~104_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~115_combout\,
	combout => \spi|inner_data~116_combout\);

-- Location: LCCOMB_X18_Y7_N6
\spi|inner_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~119_combout\ = (\spi|inner_data~118_combout\) # ((\spi|inner_data~116_combout\) # ((\spi|inner_data\(29) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(29),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~118_combout\,
	datad => \spi|inner_data~116_combout\,
	combout => \spi|inner_data~119_combout\);

-- Location: LCCOMB_X18_Y7_N28
\spi|inner_data[30]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[30]~7_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~119_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~114_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~119_combout\,
	combout => \spi|inner_data[30]~7_combout\);

-- Location: FF_X18_Y7_N29
\spi|inner_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[30]~7_combout\,
	asdata => \spi|inner_data~117_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(30));

-- Location: LCCOMB_X19_Y7_N4
\spi|accel[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[22]~feeder_combout\ = \spi|inner_data\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(30),
	combout => \spi|accel[22]~feeder_combout\);

-- Location: FF_X19_Y7_N5
\spi|accel[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[22]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(22));

-- Location: LCCOMB_X18_Y6_N6
\spi|accel[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|accel[23]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \spi|accel[23]~feeder_combout\);

-- Location: FF_X18_Y6_N7
\spi|accel[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|accel[23]~feeder_combout\,
	ena => \spi|accel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|accel\(23));

-- Location: LCCOMB_X16_Y9_N28
\spi|inner_data~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~223_combout\ = (!\spi|Add2~12_combout\ & (\spi|inner_data~166_combout\ & (!\spi|always1~0_combout\ & \spi|inner_data~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~166_combout\,
	datac => \spi|always1~0_combout\,
	datad => \spi|inner_data~131_combout\,
	combout => \spi|inner_data~223_combout\);

-- Location: LCCOMB_X16_Y9_N16
\spi|inner_data~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~224_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~223_combout\ & ((\miso~input_o\))) # (!\spi|inner_data~223_combout\ & (\spi|inner_data\(0))))) # (!\spi|always1~1_combout\ & (\spi|inner_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(0),
	datab => \miso~input_o\,
	datac => \spi|always1~1_combout\,
	datad => \spi|inner_data~223_combout\,
	combout => \spi|inner_data~224_combout\);

-- Location: LCCOMB_X16_Y9_N20
\spi|inner_data~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~280_combout\ = (\spi|inner_data~224_combout\ & (((!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\)) # (!\spi|inner_data~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~q\,
	datab => \spi|state.command_read_accel~q\,
	datac => \spi|inner_data~284_combout\,
	datad => \spi|inner_data~224_combout\,
	combout => \spi|inner_data~280_combout\);

-- Location: FF_X16_Y9_N21
\spi|inner_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(0));

-- Location: LCCOMB_X18_Y6_N24
\spi|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp~4_combout\ = (\spi|inner_data\(0)) # (\miso~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(0),
	datad => \miso~input_o\,
	combout => \spi|temp~4_combout\);

-- Location: LCCOMB_X16_Y6_N22
\spi|temp[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[0]~6_combout\ = (\spi|state.read_temp~q\ & (\spi|clk_sync~q\ & (!\spi|always1~1_combout\ & \spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.read_temp~q\,
	datab => \spi|clk_sync~q\,
	datac => \spi|always1~1_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|temp[0]~6_combout\);

-- Location: FF_X18_Y6_N25
\spi|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp~4_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(0));

-- Location: LCCOMB_X18_Y8_N16
\spi|inner_data~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~225_combout\ = (\spi|inner_data\(1) & (((\spi|inner_ready~0_combout\) # (!\spi|Equal2~3_combout\)) # (!\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(1),
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|Equal2~3_combout\,
	combout => \spi|inner_data~225_combout\);

-- Location: LCCOMB_X17_Y8_N22
\spi|inner_data~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~226_combout\ = (\spi|inner_data~166_combout\ & (!\spi|Add2~4_combout\ & (\spi|inner_data~77_combout\ & !\spi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~166_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|inner_data~77_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~226_combout\);

-- Location: LCCOMB_X17_Y8_N20
\spi|inner_data~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~228_combout\ = (\spi|inner_data~227_combout\ & ((\spi|Add2~12_combout\) # ((!\spi|inner_data~139_combout\) # (!\spi|inner_data~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~227_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~166_combout\,
	datad => \spi|inner_data~139_combout\,
	combout => \spi|inner_data~228_combout\);

-- Location: LCCOMB_X17_Y8_N6
\spi|inner_data~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~229_combout\ = (\spi|inner_data~226_combout\) # ((\spi|inner_data~228_combout\) # ((\spi|inner_data\(0) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(0),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~226_combout\,
	datad => \spi|inner_data~228_combout\,
	combout => \spi|inner_data~229_combout\);

-- Location: LCCOMB_X17_Y8_N12
\spi|inner_data[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[1]~28_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~229_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~225_combout\,
	datad => \spi|inner_data~229_combout\,
	combout => \spi|inner_data[1]~28_combout\);

-- Location: LCCOMB_X19_Y8_N20
\spi|inner_data~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~227_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(1),
	combout => \spi|inner_data~227_combout\);

-- Location: FF_X17_Y8_N13
\spi|inner_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[1]~28_combout\,
	asdata => \spi|inner_data~227_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(1));

-- Location: LCCOMB_X19_Y8_N0
\spi|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[1]~feeder_combout\ = \spi|inner_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(1),
	combout => \spi|temp[1]~feeder_combout\);

-- Location: FF_X19_Y8_N1
\spi|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[1]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(1));

-- Location: LCCOMB_X18_Y8_N24
\spi|inner_data~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~232_combout\ = (\spi|inner_ready~0_combout\ & (\spi|inner_data\(2) & ((!\spi|inner_data~111_combout\) # (!\spi|inner_data~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|inner_data\(2),
	datac => \spi|inner_data~166_combout\,
	datad => \spi|inner_data~111_combout\,
	combout => \spi|inner_data~232_combout\);

-- Location: LCCOMB_X18_Y8_N2
\spi|inner_data~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~231_combout\ = (!\spi|Add2~2_combout\ & (\spi|inner_data~177_combout\ & \spi|inner_data~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~177_combout\,
	datac => \spi|inner_data~108_combout\,
	combout => \spi|inner_data~231_combout\);

-- Location: LCCOMB_X18_Y8_N10
\spi|inner_data~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~233_combout\ = (\spi|inner_data~232_combout\) # ((\spi|inner_data~231_combout\) # ((\spi|inner_data\(1) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(1),
	datab => \spi|inner_data~232_combout\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|inner_data~231_combout\,
	combout => \spi|inner_data~233_combout\);

-- Location: LCCOMB_X18_Y8_N22
\spi|inner_data[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[2]~29_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~233_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~230_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~233_combout\,
	combout => \spi|inner_data[2]~29_combout\);

-- Location: LCCOMB_X19_Y8_N8
\spi|inner_data~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~234_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(2),
	combout => \spi|inner_data~234_combout\);

-- Location: FF_X18_Y8_N23
\spi|inner_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[2]~29_combout\,
	asdata => \spi|inner_data~234_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(2));

-- Location: LCCOMB_X19_Y8_N30
\spi|temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[2]~feeder_combout\ = \spi|inner_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(2),
	combout => \spi|temp[2]~feeder_combout\);

-- Location: FF_X19_Y8_N31
\spi|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[2]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(2));

-- Location: LCCOMB_X19_Y8_N12
\spi|inner_data~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~237_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(3),
	combout => \spi|inner_data~237_combout\);

-- Location: LCCOMB_X18_Y8_N28
\spi|inner_data~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~236_combout\ = (\spi|inner_ready~0_combout\ & (((\spi|inner_data~166_combout\ & \spi|inner_data~148_combout\)))) # (!\spi|inner_ready~0_combout\ & ((\spi|inner_data\(2)) # ((\spi|inner_data~166_combout\ & \spi|inner_data~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_ready~0_combout\,
	datab => \spi|inner_data\(2),
	datac => \spi|inner_data~166_combout\,
	datad => \spi|inner_data~148_combout\,
	combout => \spi|inner_data~236_combout\);

-- Location: LCCOMB_X18_Y8_N18
\spi|inner_data~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~238_combout\ = (\spi|inner_data~236_combout\) # ((\spi|inner_data~237_combout\ & ((!\spi|inner_data~82_combout\) # (!\spi|inner_data~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~166_combout\,
	datab => \spi|inner_data~237_combout\,
	datac => \spi|inner_data~82_combout\,
	datad => \spi|inner_data~236_combout\,
	combout => \spi|inner_data~238_combout\);

-- Location: LCCOMB_X18_Y8_N8
\spi|inner_data[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[3]~30_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~238_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~235_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~238_combout\,
	combout => \spi|inner_data[3]~30_combout\);

-- Location: FF_X18_Y8_N9
\spi|inner_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[3]~30_combout\,
	asdata => \spi|inner_data~237_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(3));

-- Location: LCCOMB_X16_Y8_N24
\spi|temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[3]~feeder_combout\ = \spi|inner_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(3),
	combout => \spi|temp[3]~feeder_combout\);

-- Location: FF_X16_Y8_N25
\spi|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[3]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(3));

-- Location: LCCOMB_X16_Y8_N4
\spi|inner_data~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~239_combout\ = (\spi|inner_data\(4) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(4),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~239_combout\);

-- Location: LCCOMB_X16_Y8_N26
\spi|inner_data~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~240_combout\ = (\spi|inner_data~153_combout\ & (!\spi|Add2~2_combout\ & \spi|inner_data~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~153_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~108_combout\,
	combout => \spi|inner_data~240_combout\);

-- Location: LCCOMB_X16_Y8_N0
\spi|inner_data~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~241_combout\ = (\spi|inner_data\(4) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(4),
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~241_combout\);

-- Location: LCCOMB_X16_Y8_N10
\spi|inner_data~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~242_combout\ = (\spi|inner_data~241_combout\ & (((\spi|Add2~2_combout\) # (!\spi|inner_data~131_combout\)) # (!\spi|inner_data~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~156_combout\,
	datab => \spi|inner_data~241_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~131_combout\,
	combout => \spi|inner_data~242_combout\);

-- Location: LCCOMB_X16_Y8_N20
\spi|inner_data~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~243_combout\ = (\spi|inner_data~240_combout\) # ((\spi|inner_data~242_combout\) # ((\spi|inner_data\(3) & !\spi|inner_ready~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(3),
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data~240_combout\,
	datad => \spi|inner_data~242_combout\,
	combout => \spi|inner_data~243_combout\);

-- Location: LCCOMB_X16_Y8_N8
\spi|inner_data[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[4]~31_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~243_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~239_combout\,
	datad => \spi|inner_data~243_combout\,
	combout => \spi|inner_data[4]~31_combout\);

-- Location: FF_X16_Y8_N9
\spi|inner_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[4]~31_combout\,
	asdata => \spi|inner_data~241_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(4));

-- Location: LCCOMB_X19_Y8_N16
\spi|temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[4]~feeder_combout\ = \spi|inner_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(4),
	combout => \spi|temp[4]~feeder_combout\);

-- Location: FF_X19_Y8_N17
\spi|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[4]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(4));

-- Location: LCCOMB_X16_Y8_N2
\spi|inner_data~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~244_combout\ = (\spi|inner_data\(5) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~3_combout\,
	datab => \spi|inner_data\(5),
	datac => \spi|clk_sync~q\,
	datad => \spi|inner_ready~0_combout\,
	combout => \spi|inner_data~244_combout\);

-- Location: LCCOMB_X16_Y8_N28
\spi|inner_data~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~247_combout\ = (\spi|inner_data~246_combout\ & (((\spi|Add2~2_combout\) # (!\spi|inner_data~139_combout\)) # (!\spi|inner_data~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~246_combout\,
	datab => \spi|inner_data~156_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~139_combout\,
	combout => \spi|inner_data~247_combout\);

-- Location: LCCOMB_X16_Y8_N6
\spi|inner_data~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~248_combout\ = (\spi|inner_data~245_combout\) # ((\spi|inner_data~247_combout\) # ((!\spi|inner_ready~0_combout\ & \spi|inner_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~245_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(4),
	datad => \spi|inner_data~247_combout\,
	combout => \spi|inner_data~248_combout\);

-- Location: LCCOMB_X16_Y8_N18
\spi|inner_data[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[5]~32_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~248_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~244_combout\,
	datad => \spi|inner_data~248_combout\,
	combout => \spi|inner_data[5]~32_combout\);

-- Location: LCCOMB_X16_Y8_N22
\spi|inner_data~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~246_combout\ = (\spi|inner_data\(5) & (!\spi|state.command_read_temp~q\ & \spi|state.command_read_accel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(5),
	datac => \spi|state.command_read_temp~q\,
	datad => \spi|state.command_read_accel~q\,
	combout => \spi|inner_data~246_combout\);

-- Location: FF_X16_Y8_N19
\spi|inner_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[5]~32_combout\,
	asdata => \spi|inner_data~246_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(5));

-- Location: LCCOMB_X19_Y6_N12
\spi|temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[5]~feeder_combout\ = \spi|inner_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(5),
	combout => \spi|temp[5]~feeder_combout\);

-- Location: FF_X19_Y6_N13
\spi|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[5]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(5));

-- Location: LCCOMB_X18_Y9_N26
\spi|inner_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~125_combout\ = (\spi|inner_data\(6) & (((\spi|inner_ready~0_combout\) # (!\spi|clk_sync~q\)) # (!\spi|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(6),
	datab => \spi|Equal2~3_combout\,
	datac => \spi|inner_ready~0_combout\,
	datad => \spi|clk_sync~q\,
	combout => \spi|inner_data~125_combout\);

-- Location: LCCOMB_X18_Y9_N4
\spi|inner_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~126_combout\ = (\spi|inner_data~122_combout\ & ((\spi|inner_data~108_combout\) # ((!\spi|inner_ready~0_combout\ & \spi|inner_data\(5))))) # (!\spi|inner_data~122_combout\ & (!\spi|inner_ready~0_combout\ & (\spi|inner_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~122_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_data\(5),
	datad => \spi|inner_data~108_combout\,
	combout => \spi|inner_data~126_combout\);

-- Location: LCCOMB_X18_Y9_N6
\spi|inner_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~128_combout\ = (\spi|inner_data~126_combout\) # ((\spi|inner_data~127_combout\ & ((!\spi|inner_data~111_combout\) # (!\spi|inner_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~127_combout\,
	datab => \spi|inner_data~96_combout\,
	datac => \spi|inner_data~126_combout\,
	datad => \spi|inner_data~111_combout\,
	combout => \spi|inner_data~128_combout\);

-- Location: LCCOMB_X18_Y9_N22
\spi|inner_data[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[6]~8_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~128_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~125_combout\,
	datad => \spi|inner_data~128_combout\,
	combout => \spi|inner_data[6]~8_combout\);

-- Location: LCCOMB_X19_Y9_N20
\spi|inner_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~127_combout\ = (!\spi|state.command_read_temp~q\ & (\spi|state.command_read_accel~q\ & \spi|inner_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~q\,
	datac => \spi|state.command_read_accel~q\,
	datad => \spi|inner_data\(6),
	combout => \spi|inner_data~127_combout\);

-- Location: FF_X18_Y9_N23
\spi|inner_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data[6]~8_combout\,
	asdata => \spi|inner_data~127_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(6));

-- Location: LCCOMB_X18_Y9_N18
\spi|temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[6]~feeder_combout\ = \spi|inner_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(6),
	combout => \spi|temp[6]~feeder_combout\);

-- Location: FF_X18_Y9_N19
\spi|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[6]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(6));

-- Location: LCCOMB_X19_Y6_N22
\spi|temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[7]~feeder_combout\ = \spi|inner_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(7),
	combout => \spi|temp[7]~feeder_combout\);

-- Location: FF_X19_Y6_N23
\spi|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[7]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(7));

-- Location: LCCOMB_X18_Y6_N10
\spi|temp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[8]~feeder_combout\ = \spi|inner_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(8),
	combout => \spi|temp[8]~feeder_combout\);

-- Location: FF_X18_Y6_N11
\spi|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[8]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(8));

-- Location: LCCOMB_X18_Y6_N28
\spi|temp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[9]~feeder_combout\ = \spi|inner_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(9),
	combout => \spi|temp[9]~feeder_combout\);

-- Location: FF_X18_Y6_N29
\spi|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[9]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(9));

-- Location: LCCOMB_X18_Y6_N14
\spi|temp[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[10]~feeder_combout\ = \spi|inner_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(10),
	combout => \spi|temp[10]~feeder_combout\);

-- Location: FF_X18_Y6_N15
\spi|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[10]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(10));

-- Location: LCCOMB_X18_Y6_N8
\spi|temp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[11]~feeder_combout\ = \spi|inner_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(11),
	combout => \spi|temp[11]~feeder_combout\);

-- Location: FF_X18_Y6_N9
\spi|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[11]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(11));

-- Location: LCCOMB_X18_Y6_N2
\spi|temp[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[12]~feeder_combout\ = \spi|inner_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(12),
	combout => \spi|temp[12]~feeder_combout\);

-- Location: FF_X18_Y6_N3
\spi|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[12]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(12));

-- Location: LCCOMB_X19_Y6_N20
\spi|temp[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|temp[13]~feeder_combout\ = \spi|inner_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|inner_data\(13),
	combout => \spi|temp[13]~feeder_combout\);

-- Location: FF_X19_Y6_N21
\spi|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|temp[13]~feeder_combout\,
	ena => \spi|temp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp\(13));

-- Location: LCCOMB_X19_Y8_N10
\spi|inner_ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_ready~1_combout\ = (!\spi|always1~0_combout\ & ((\spi|inner_ready~q\) # ((\spi|temp[0]~5_combout\ & \spi|inner_ready~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|temp[0]~5_combout\,
	datab => \spi|inner_ready~0_combout\,
	datac => \spi|inner_ready~q\,
	datad => \spi|always1~0_combout\,
	combout => \spi|inner_ready~1_combout\);

-- Location: FF_X19_Y8_N11
\spi|inner_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_ready~q\);

ww_sclk <= \sclk~output_o\;

ww_mosi <= \mosi~output_o\;

ww_ssb <= \ssb~output_o\;

ww_accel(0) <= \accel[0]~output_o\;

ww_accel(1) <= \accel[1]~output_o\;

ww_accel(2) <= \accel[2]~output_o\;

ww_accel(3) <= \accel[3]~output_o\;

ww_accel(4) <= \accel[4]~output_o\;

ww_accel(5) <= \accel[5]~output_o\;

ww_accel(6) <= \accel[6]~output_o\;

ww_accel(7) <= \accel[7]~output_o\;

ww_accel(8) <= \accel[8]~output_o\;

ww_accel(9) <= \accel[9]~output_o\;

ww_accel(10) <= \accel[10]~output_o\;

ww_accel(11) <= \accel[11]~output_o\;

ww_accel(12) <= \accel[12]~output_o\;

ww_accel(13) <= \accel[13]~output_o\;

ww_accel(14) <= \accel[14]~output_o\;

ww_accel(15) <= \accel[15]~output_o\;

ww_accel(16) <= \accel[16]~output_o\;

ww_accel(17) <= \accel[17]~output_o\;

ww_accel(18) <= \accel[18]~output_o\;

ww_accel(19) <= \accel[19]~output_o\;

ww_accel(20) <= \accel[20]~output_o\;

ww_accel(21) <= \accel[21]~output_o\;

ww_accel(22) <= \accel[22]~output_o\;

ww_accel(23) <= \accel[23]~output_o\;

ww_temp(0) <= \temp[0]~output_o\;

ww_temp(1) <= \temp[1]~output_o\;

ww_temp(2) <= \temp[2]~output_o\;

ww_temp(3) <= \temp[3]~output_o\;

ww_temp(4) <= \temp[4]~output_o\;

ww_temp(5) <= \temp[5]~output_o\;

ww_temp(6) <= \temp[6]~output_o\;

ww_temp(7) <= \temp[7]~output_o\;

ww_temp(8) <= \temp[8]~output_o\;

ww_temp(9) <= \temp[9]~output_o\;

ww_temp(10) <= \temp[10]~output_o\;

ww_temp(11) <= \temp[11]~output_o\;

ww_temp(12) <= \temp[12]~output_o\;

ww_temp(13) <= \temp[13]~output_o\;

ww_ready <= \ready~output_o\;
END structure;


