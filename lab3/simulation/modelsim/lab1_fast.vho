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

-- DATE "11/08/2020 17:37:16"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1 IS
    PORT (
	clk : IN std_logic;
	miso : IN std_logic;
	sclk : OUT std_logic;
	mosi : OUT std_logic;
	ssb : OUT std_logic
	);
END lab1;

-- Design Ports Information
-- sclk	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- mosi	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssb	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- clk	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \divider|out_clk_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider|Add0~4_combout\ : std_logic;
SIGNAL \spi|inner_data[23]~1_combout\ : std_logic;
SIGNAL \spi|inner_data[7]~3_combout\ : std_logic;
SIGNAL \spi|inner_data[22]~6_combout\ : std_logic;
SIGNAL \spi|inner_data[6]~8_combout\ : std_logic;
SIGNAL \spi|inner_data[38]~9_combout\ : std_logic;
SIGNAL \spi|Add1~0_combout\ : std_logic;
SIGNAL \spi|Add1~2_combout\ : std_logic;
SIGNAL \spi|Add1~6_combout\ : std_logic;
SIGNAL \spi|Add1~12_combout\ : std_logic;
SIGNAL \spi|Add1~20_combout\ : std_logic;
SIGNAL \spi|Add1~22_combout\ : std_logic;
SIGNAL \spi|Add1~26_combout\ : std_logic;
SIGNAL \spi|inner_data[21]~11_combout\ : std_logic;
SIGNAL \spi|inner_data[5]~13_combout\ : std_logic;
SIGNAL \spi|inner_data[37]~14_combout\ : std_logic;
SIGNAL \spi|inner_data[12]~15_combout\ : std_logic;
SIGNAL \spi|inner_data[28]~17_combout\ : std_logic;
SIGNAL \spi|inner_data[20]~16_combout\ : std_logic;
SIGNAL \spi|inner_data[4]~18_combout\ : std_logic;
SIGNAL \spi|inner_data[36]~19_combout\ : std_logic;
SIGNAL \spi|inner_data[11]~20_combout\ : std_logic;
SIGNAL \spi|inner_data[27]~22_combout\ : std_logic;
SIGNAL \spi|inner_data[19]~21_combout\ : std_logic;
SIGNAL \spi|inner_data[3]~23_combout\ : std_logic;
SIGNAL \spi|inner_data[35]~24_combout\ : std_logic;
SIGNAL \spi|inner_data[10]~25_combout\ : std_logic;
SIGNAL \spi|inner_data[26]~27_combout\ : std_logic;
SIGNAL \spi|inner_data[18]~26_combout\ : std_logic;
SIGNAL \spi|inner_data[2]~28_combout\ : std_logic;
SIGNAL \spi|inner_data[34]~29_combout\ : std_logic;
SIGNAL \spi|inner_data[9]~30_combout\ : std_logic;
SIGNAL \spi|inner_data[25]~32_combout\ : std_logic;
SIGNAL \spi|inner_data[17]~31_combout\ : std_logic;
SIGNAL \spi|inner_data[1]~33_combout\ : std_logic;
SIGNAL \spi|inner_data[33]~34_combout\ : std_logic;
SIGNAL \spi|inner_data[8]~35_combout\ : std_logic;
SIGNAL \spi|inner_data[24]~37_combout\ : std_logic;
SIGNAL \spi|inner_data[16]~36_combout\ : std_logic;
SIGNAL \spi|inner_data[32]~38_combout\ : std_logic;
SIGNAL \spi|bit_count[4]~4_combout\ : std_logic;
SIGNAL \spi|inner_data~70_combout\ : std_logic;
SIGNAL \spi|inner_data~87_combout\ : std_logic;
SIGNAL \spi|inner_data~88_combout\ : std_logic;
SIGNAL \spi|inner_data~89_combout\ : std_logic;
SIGNAL \spi|inner_data~90_combout\ : std_logic;
SIGNAL \spi|inner_data~91_combout\ : std_logic;
SIGNAL \spi|inner_data~92_combout\ : std_logic;
SIGNAL \spi|inner_data~93_combout\ : std_logic;
SIGNAL \spi|inner_data~94_combout\ : std_logic;
SIGNAL \spi|inner_data~96_combout\ : std_logic;
SIGNAL \spi|Equal1~1_combout\ : std_logic;
SIGNAL \spi|inner_data~104_combout\ : std_logic;
SIGNAL \spi|inner_data~117_combout\ : std_logic;
SIGNAL \spi|inner_data~118_combout\ : std_logic;
SIGNAL \spi|inner_data~120_combout\ : std_logic;
SIGNAL \spi|inner_data~121_combout\ : std_logic;
SIGNAL \spi|inner_data~122_combout\ : std_logic;
SIGNAL \spi|inner_data~123_combout\ : std_logic;
SIGNAL \spi|inner_data~124_combout\ : std_logic;
SIGNAL \spi|Selector2~0_combout\ : std_logic;
SIGNAL \spi|inner_data~125_combout\ : std_logic;
SIGNAL \spi|inner_data~126_combout\ : std_logic;
SIGNAL \spi|inner_data~127_combout\ : std_logic;
SIGNAL \spi|inner_data~128_combout\ : std_logic;
SIGNAL \spi|inner_data~129_combout\ : std_logic;
SIGNAL \spi|inner_data~130_combout\ : std_logic;
SIGNAL \spi|inner_data~131_combout\ : std_logic;
SIGNAL \spi|inner_data~132_combout\ : std_logic;
SIGNAL \spi|inner_data~133_combout\ : std_logic;
SIGNAL \spi|inner_data~134_combout\ : std_logic;
SIGNAL \spi|inner_data~135_combout\ : std_logic;
SIGNAL \spi|Selector0~0_combout\ : std_logic;
SIGNAL \spi|hold[6]~8_combout\ : std_logic;
SIGNAL \spi|hold[10]~12_combout\ : std_logic;
SIGNAL \spi|hold[11]~13_combout\ : std_logic;
SIGNAL \spi|inner_data~152_combout\ : std_logic;
SIGNAL \spi|inner_data~153_combout\ : std_logic;
SIGNAL \spi|inner_data~154_combout\ : std_logic;
SIGNAL \spi|inner_data~155_combout\ : std_logic;
SIGNAL \spi|inner_data~156_combout\ : std_logic;
SIGNAL \spi|inner_data~157_combout\ : std_logic;
SIGNAL \spi|inner_data~158_combout\ : std_logic;
SIGNAL \spi|inner_data~159_combout\ : std_logic;
SIGNAL \spi|inner_data~160_combout\ : std_logic;
SIGNAL \spi|inner_data~161_combout\ : std_logic;
SIGNAL \spi|inner_data~162_combout\ : std_logic;
SIGNAL \spi|inner_data~163_combout\ : std_logic;
SIGNAL \spi|inner_data~164_combout\ : std_logic;
SIGNAL \spi|inner_data~165_combout\ : std_logic;
SIGNAL \spi|inner_data~166_combout\ : std_logic;
SIGNAL \spi|inner_data~167_combout\ : std_logic;
SIGNAL \spi|inner_data~168_combout\ : std_logic;
SIGNAL \spi|inner_data~169_combout\ : std_logic;
SIGNAL \spi|inner_data~170_combout\ : std_logic;
SIGNAL \spi|inner_data~171_combout\ : std_logic;
SIGNAL \spi|inner_data~172_combout\ : std_logic;
SIGNAL \spi|inner_data~173_combout\ : std_logic;
SIGNAL \spi|inner_data~174_combout\ : std_logic;
SIGNAL \spi|inner_data~175_combout\ : std_logic;
SIGNAL \spi|inner_data~176_combout\ : std_logic;
SIGNAL \spi|inner_data~177_combout\ : std_logic;
SIGNAL \spi|inner_data~178_combout\ : std_logic;
SIGNAL \spi|inner_data~179_combout\ : std_logic;
SIGNAL \spi|inner_data~180_combout\ : std_logic;
SIGNAL \spi|inner_data~181_combout\ : std_logic;
SIGNAL \spi|inner_data~182_combout\ : std_logic;
SIGNAL \spi|inner_data~183_combout\ : std_logic;
SIGNAL \spi|inner_data~184_combout\ : std_logic;
SIGNAL \spi|inner_data~185_combout\ : std_logic;
SIGNAL \spi|Selector3~0_combout\ : std_logic;
SIGNAL \spi|inner_data~186_combout\ : std_logic;
SIGNAL \spi|inner_data~187_combout\ : std_logic;
SIGNAL \spi|inner_data~188_combout\ : std_logic;
SIGNAL \spi|inner_data~189_combout\ : std_logic;
SIGNAL \spi|inner_data~190_combout\ : std_logic;
SIGNAL \spi|inner_data~191_combout\ : std_logic;
SIGNAL \spi|inner_data~192_combout\ : std_logic;
SIGNAL \spi|inner_data~193_combout\ : std_logic;
SIGNAL \spi|inner_data~194_combout\ : std_logic;
SIGNAL \spi|Selector1~0_combout\ : std_logic;
SIGNAL \spi|inner_data~195_combout\ : std_logic;
SIGNAL \spi|inner_data~196_combout\ : std_logic;
SIGNAL \spi|inner_data~197_combout\ : std_logic;
SIGNAL \spi|inner_data~198_combout\ : std_logic;
SIGNAL \spi|inner_data~199_combout\ : std_logic;
SIGNAL \spi|inner_data~200_combout\ : std_logic;
SIGNAL \spi|inner_data~201_combout\ : std_logic;
SIGNAL \spi|inner_data~202_combout\ : std_logic;
SIGNAL \spi|inner_data~203_combout\ : std_logic;
SIGNAL \spi|inner_data~204_combout\ : std_logic;
SIGNAL \spi|inner_data~205_combout\ : std_logic;
SIGNAL \spi|inner_data~206_combout\ : std_logic;
SIGNAL \spi|inner_data~207_combout\ : std_logic;
SIGNAL \spi|inner_data~208_combout\ : std_logic;
SIGNAL \spi|inner_data~209_combout\ : std_logic;
SIGNAL \spi|inner_data~210_combout\ : std_logic;
SIGNAL \spi|inner_data~211_combout\ : std_logic;
SIGNAL \spi|inner_data~212_combout\ : std_logic;
SIGNAL \spi|inner_data~213_combout\ : std_logic;
SIGNAL \spi|inner_data~214_combout\ : std_logic;
SIGNAL \spi|inner_data~215_combout\ : std_logic;
SIGNAL \spi|inner_data~216_combout\ : std_logic;
SIGNAL \spi|inner_data~217_combout\ : std_logic;
SIGNAL \spi|inner_data~218_combout\ : std_logic;
SIGNAL \spi|inner_data~219_combout\ : std_logic;
SIGNAL \spi|inner_data~220_combout\ : std_logic;
SIGNAL \spi|inner_data~221_combout\ : std_logic;
SIGNAL \spi|inner_data~222_combout\ : std_logic;
SIGNAL \spi|inner_data~223_combout\ : std_logic;
SIGNAL \spi|inner_data~224_combout\ : std_logic;
SIGNAL \spi|inner_data~225_combout\ : std_logic;
SIGNAL \spi|inner_data~226_combout\ : std_logic;
SIGNAL \spi|inner_data~227_combout\ : std_logic;
SIGNAL \spi|inner_data~228_combout\ : std_logic;
SIGNAL \spi|inner_data~229_combout\ : std_logic;
SIGNAL \spi|inner_data~230_combout\ : std_logic;
SIGNAL \spi|inner_data~231_combout\ : std_logic;
SIGNAL \spi|inner_data~232_combout\ : std_logic;
SIGNAL \spi|inner_data~233_combout\ : std_logic;
SIGNAL \spi|inner_data~234_combout\ : std_logic;
SIGNAL \spi|inner_data~235_combout\ : std_logic;
SIGNAL \spi|inner_data~236_combout\ : std_logic;
SIGNAL \spi|inner_data~237_combout\ : std_logic;
SIGNAL \spi|inner_data~238_combout\ : std_logic;
SIGNAL \spi|inner_data~239_combout\ : std_logic;
SIGNAL \spi|Selector4~0_combout\ : std_logic;
SIGNAL \spi|inner_data~240_combout\ : std_logic;
SIGNAL \spi|inner_data~241_combout\ : std_logic;
SIGNAL \spi|inner_data~242_combout\ : std_logic;
SIGNAL \spi|inner_data~243_combout\ : std_logic;
SIGNAL \spi|inner_data~244_combout\ : std_logic;
SIGNAL \spi|inner_data~245_combout\ : std_logic;
SIGNAL \spi|inner_data~246_combout\ : std_logic;
SIGNAL \spi|inner_data~247_combout\ : std_logic;
SIGNAL \spi|inner_data~248_combout\ : std_logic;
SIGNAL \spi|inner_data~249_combout\ : std_logic;
SIGNAL \spi|inner_data~250_combout\ : std_logic;
SIGNAL \spi|inner_data~251_combout\ : std_logic;
SIGNAL \spi|inner_data~252_combout\ : std_logic;
SIGNAL \spi|inner_data~253_combout\ : std_logic;
SIGNAL \spi|inner_data~254_combout\ : std_logic;
SIGNAL \spi|inner_data~255_combout\ : std_logic;
SIGNAL \spi|inner_data~256_combout\ : std_logic;
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
SIGNAL \spi|inner_data~275_combout\ : std_logic;
SIGNAL \spi|inner_data~276_combout\ : std_logic;
SIGNAL \spi|inner_data~277_combout\ : std_logic;
SIGNAL \spi|inner_data~278_combout\ : std_logic;
SIGNAL \spi|inner_data~279_combout\ : std_logic;
SIGNAL \spi|inner_data~280_combout\ : std_logic;
SIGNAL \spi|inner_data~281_combout\ : std_logic;
SIGNAL \spi|inner_data~282_combout\ : std_logic;
SIGNAL \spi|inner_data~283_combout\ : std_logic;
SIGNAL \spi|inner_data~284_combout\ : std_logic;
SIGNAL \spi|inner_data~285_combout\ : std_logic;
SIGNAL \spi|inner_data~286_combout\ : std_logic;
SIGNAL \spi|inner_data~287_combout\ : std_logic;
SIGNAL \spi|inner_data~288_combout\ : std_logic;
SIGNAL \spi|inner_data~289_combout\ : std_logic;
SIGNAL \spi|inner_data~290_combout\ : std_logic;
SIGNAL \spi|inner_data~291_combout\ : std_logic;
SIGNAL \spi|inner_data~292_combout\ : std_logic;
SIGNAL \spi|inner_data~293_combout\ : std_logic;
SIGNAL \spi|inner_data~294_combout\ : std_logic;
SIGNAL \spi|inner_data~296_combout\ : std_logic;
SIGNAL \spi|inner_data~301_combout\ : std_logic;
SIGNAL \spi|inner_data~302_combout\ : std_logic;
SIGNAL \spi|inner_data~303_combout\ : std_logic;
SIGNAL \spi|inner_data~304_combout\ : std_logic;
SIGNAL \spi|inner_data~305_combout\ : std_logic;
SIGNAL \spi|inner_data~306_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \divider|counter~0_combout\ : std_logic;
SIGNAL \divider|Add0~0_combout\ : std_logic;
SIGNAL \divider|Add0~6_combout\ : std_logic;
SIGNAL \divider|Add0~1\ : std_logic;
SIGNAL \divider|Add0~2_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|counter~1_combout\ : std_logic;
SIGNAL \divider|Add0~3\ : std_logic;
SIGNAL \divider|Add0~5\ : std_logic;
SIGNAL \divider|Add0~7\ : std_logic;
SIGNAL \divider|Add0~8_combout\ : std_logic;
SIGNAL \divider|Add0~9\ : std_logic;
SIGNAL \divider|Add0~10_combout\ : std_logic;
SIGNAL \divider|Add0~11\ : std_logic;
SIGNAL \divider|Add0~13\ : std_logic;
SIGNAL \divider|Add0~14_combout\ : std_logic;
SIGNAL \divider|Add0~12_combout\ : std_logic;
SIGNAL \divider|Equal0~1_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~regout\ : std_logic;
SIGNAL \spi|state.read_accel~0_combout\ : std_logic;
SIGNAL \spi|bit_number[0]~7\ : std_logic;
SIGNAL \spi|bit_number[1]~9\ : std_logic;
SIGNAL \spi|bit_number[2]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \spi|hold[1]~4_combout\ : std_logic;
SIGNAL \spi|bit_count[3]~2_combout\ : std_logic;
SIGNAL \spi|bit_number[3]~12_combout\ : std_logic;
SIGNAL \spi|bit_number[0]~6_combout\ : std_logic;
SIGNAL \spi|always1~1_combout\ : std_logic;
SIGNAL \spi|inner_data~297_combout\ : std_logic;
SIGNAL \spi|Equal2~0_combout\ : std_logic;
SIGNAL \spi|bit_count[5]~3_combout\ : std_logic;
SIGNAL \spi|bit_count[5]~5_combout\ : std_logic;
SIGNAL \spi|Add0~0_combout\ : std_logic;
SIGNAL \spi|bit_count[4]~6_combout\ : std_logic;
SIGNAL \spi|Add0~1_combout\ : std_logic;
SIGNAL \spi|Equal2~1_combout\ : std_logic;
SIGNAL \spi|state~9_combout\ : std_logic;
SIGNAL \spi|bit_number~14_combout\ : std_logic;
SIGNAL \spi|LessThan0~0_combout\ : std_logic;
SIGNAL \spi|always0~2_combout\ : std_logic;
SIGNAL \spi|always0~3_combout\ : std_logic;
SIGNAL \spi|hold[1]~5_combout\ : std_logic;
SIGNAL \spi|hold[4]~16_combout\ : std_logic;
SIGNAL \spi|hold[0]~0_combout\ : std_logic;
SIGNAL \spi|WideOr0~0_combout\ : std_logic;
SIGNAL \spi|always0~4_combout\ : std_logic;
SIGNAL \spi|hold[4]~17_combout\ : std_logic;
SIGNAL \spi|Add1~1\ : std_logic;
SIGNAL \spi|Add1~3\ : std_logic;
SIGNAL \spi|Add1~4_combout\ : std_logic;
SIGNAL \spi|hold[2]~6_combout\ : std_logic;
SIGNAL \spi|hold[3]~1_combout\ : std_logic;
SIGNAL \spi|Add1~5\ : std_logic;
SIGNAL \spi|Add1~7\ : std_logic;
SIGNAL \spi|Add1~8_combout\ : std_logic;
SIGNAL \spi|hold[4]~2_combout\ : std_logic;
SIGNAL \spi|Add1~9\ : std_logic;
SIGNAL \spi|Add1~10_combout\ : std_logic;
SIGNAL \spi|hold[5]~7_combout\ : std_logic;
SIGNAL \spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi|Add1~11\ : std_logic;
SIGNAL \spi|Add1~13\ : std_logic;
SIGNAL \spi|Add1~14_combout\ : std_logic;
SIGNAL \spi|hold[7]~9_combout\ : std_logic;
SIGNAL \spi|Add1~15\ : std_logic;
SIGNAL \spi|Add1~16_combout\ : std_logic;
SIGNAL \spi|hold[8]~10_combout\ : std_logic;
SIGNAL \spi|Add1~17\ : std_logic;
SIGNAL \spi|Add1~18_combout\ : std_logic;
SIGNAL \spi|hold[9]~11_combout\ : std_logic;
SIGNAL \spi|Add1~19\ : std_logic;
SIGNAL \spi|Add1~21\ : std_logic;
SIGNAL \spi|Add1~23\ : std_logic;
SIGNAL \spi|Add1~24_combout\ : std_logic;
SIGNAL \spi|hold[12]~14_combout\ : std_logic;
SIGNAL \spi|hold[13]~3_combout\ : std_logic;
SIGNAL \spi|Add1~25\ : std_logic;
SIGNAL \spi|Add1~27\ : std_logic;
SIGNAL \spi|Add1~28_combout\ : std_logic;
SIGNAL \spi|hold[14]~15_combout\ : std_logic;
SIGNAL \spi|Equal1~2_combout\ : std_logic;
SIGNAL \spi|Equal1~3_combout\ : std_logic;
SIGNAL \spi|Equal1~4_combout\ : std_logic;
SIGNAL \spi|start_hold~2_combout\ : std_logic;
SIGNAL \spi|start_hold~regout\ : std_logic;
SIGNAL \spi|start~0_combout\ : std_logic;
SIGNAL \spi|start~regout\ : std_logic;
SIGNAL \spi|always1~0_combout\ : std_logic;
SIGNAL \spi|bit_number[2]~11\ : std_logic;
SIGNAL \spi|bit_number[3]~13\ : std_logic;
SIGNAL \spi|bit_number[4]~15_combout\ : std_logic;
SIGNAL \spi|bit_number[4]~16\ : std_logic;
SIGNAL \spi|bit_number[5]~17_combout\ : std_logic;
SIGNAL \spi|LessThan0~1_combout\ : std_logic;
SIGNAL \spi|state~10_combout\ : std_logic;
SIGNAL \spi|Equal2~2_combout\ : std_logic;
SIGNAL \spi|state~11_combout\ : std_logic;
SIGNAL \spi|state.read_accel~regout\ : std_logic;
SIGNAL \spi|state.command_read_temp~regout\ : std_logic;
SIGNAL \spi|state.read_temp~feeder_combout\ : std_logic;
SIGNAL \spi|state.read_temp~regout\ : std_logic;
SIGNAL \spi|state.command_read_accel~0_combout\ : std_logic;
SIGNAL \spi|state.command_read_accel~regout\ : std_logic;
SIGNAL \spi|inner_data~69_combout\ : std_logic;
SIGNAL \spi|inner_data~295_combout\ : std_logic;
SIGNAL \spi|clk_sync~0_combout\ : std_logic;
SIGNAL \spi|clk_sync~regout\ : std_logic;
SIGNAL \spi|sclk~combout\ : std_logic;
SIGNAL \spi|mosi_on~0_combout\ : std_logic;
SIGNAL \spi|mosi_on~1_combout\ : std_logic;
SIGNAL \spi|mosi_on~regout\ : std_logic;
SIGNAL \spi|inner_data~80_combout\ : std_logic;
SIGNAL \spi|inner_data~113_combout\ : std_logic;
SIGNAL \spi|Add2~2_combout\ : std_logic;
SIGNAL \spi|bit_number[1]~8_combout\ : std_logic;
SIGNAL \spi|Add2~12_combout\ : std_logic;
SIGNAL \spi|Add2~14_combout\ : std_logic;
SIGNAL \spi|inner_data~110_combout\ : std_logic;
SIGNAL \spi|Add2~0_combout\ : std_logic;
SIGNAL \spi|Add2~1\ : std_logic;
SIGNAL \spi|Add2~5\ : std_logic;
SIGNAL \spi|Add2~7\ : std_logic;
SIGNAL \spi|Add2~8_combout\ : std_logic;
SIGNAL \spi|Add2~4_combout\ : std_logic;
SIGNAL \spi|inner_data~299_combout\ : std_logic;
SIGNAL \spi|Add2~9\ : std_logic;
SIGNAL \spi|Add2~10_combout\ : std_logic;
SIGNAL \spi|inner_data~114_combout\ : std_logic;
SIGNAL \spi|inner_data~115_combout\ : std_logic;
SIGNAL \spi|inner_data~145_combout\ : std_logic;
SIGNAL \spi|inner_data~147_combout\ : std_logic;
SIGNAL \spi|inner_data~138_combout\ : std_logic;
SIGNAL \spi|inner_data~148_combout\ : std_logic;
SIGNAL \spi|inner_data~149_combout\ : std_logic;
SIGNAL \spi|inner_data~150_combout\ : std_logic;
SIGNAL \spi|Add2~6_combout\ : std_logic;
SIGNAL \spi|inner_data~300_combout\ : std_logic;
SIGNAL \spi|inner_data~137_combout\ : std_logic;
SIGNAL \spi|inner_data~146_combout\ : std_logic;
SIGNAL \spi|inner_data~151_combout\ : std_logic;
SIGNAL \spi|inner_data[29]~12_combout\ : std_logic;
SIGNAL \spi|inner_data~119_combout\ : std_logic;
SIGNAL \spi|inner_data[30]~7_combout\ : std_logic;
SIGNAL \spi|inner_data~116_combout\ : std_logic;
SIGNAL \spi|inner_data~82_combout\ : std_logic;
SIGNAL \spi|inner_data~83_combout\ : std_logic;
SIGNAL \spi|inner_data~84_combout\ : std_logic;
SIGNAL \spi|inner_data~85_combout\ : std_logic;
SIGNAL \spi|inner_data~71_combout\ : std_logic;
SIGNAL \spi|inner_data~72_combout\ : std_logic;
SIGNAL \spi|inner_data~73_combout\ : std_logic;
SIGNAL \spi|inner_data~81_combout\ : std_logic;
SIGNAL \spi|inner_data~86_combout\ : std_logic;
SIGNAL \spi|inner_data[31]~2_combout\ : std_logic;
SIGNAL \spi|Mux0~0_combout\ : std_logic;
SIGNAL \spi|inner_data~76_combout\ : std_logic;
SIGNAL \spi|inner_data~77_combout\ : std_logic;
SIGNAL \spi|inner_data~78_combout\ : std_logic;
SIGNAL \spi|inner_data~136_combout\ : std_logic;
SIGNAL \spi|inner_data~139_combout\ : std_logic;
SIGNAL \spi|inner_data~140_combout\ : std_logic;
SIGNAL \spi|inner_data~141_combout\ : std_logic;
SIGNAL \spi|inner_data~142_combout\ : std_logic;
SIGNAL \spi|inner_data~143_combout\ : std_logic;
SIGNAL \spi|inner_data~144_combout\ : std_logic;
SIGNAL \spi|inner_data[13]~10_combout\ : std_logic;
SIGNAL \spi|inner_data~105_combout\ : std_logic;
SIGNAL \spi|inner_data~106_combout\ : std_logic;
SIGNAL \spi|inner_data~107_combout\ : std_logic;
SIGNAL \spi|inner_data~108_combout\ : std_logic;
SIGNAL \miso~combout\ : std_logic;
SIGNAL \spi|inner_data~298_combout\ : std_logic;
SIGNAL \spi|inner_data~109_combout\ : std_logic;
SIGNAL \spi|inner_data~111_combout\ : std_logic;
SIGNAL \spi|inner_data~112_combout\ : std_logic;
SIGNAL \spi|inner_data[14]~5_combout\ : std_logic;
SIGNAL \spi|inner_data~74_combout\ : std_logic;
SIGNAL \spi|inner_data~79_combout\ : std_logic;
SIGNAL \spi|inner_data[15]~0_combout\ : std_logic;
SIGNAL \spi|inner_data~75_combout\ : std_logic;
SIGNAL \spi|Mux0~1_combout\ : std_logic;
SIGNAL \spi|inner_data~97_combout\ : std_logic;
SIGNAL \spi|inner_data~95_combout\ : std_logic;
SIGNAL \spi|inner_data~98_combout\ : std_logic;
SIGNAL \spi|inner_data~100_combout\ : std_logic;
SIGNAL \spi|inner_data~101_combout\ : std_logic;
SIGNAL \spi|inner_data~99_combout\ : std_logic;
SIGNAL \spi|inner_data~102_combout\ : std_logic;
SIGNAL \spi|inner_data~103_combout\ : std_logic;
SIGNAL \spi|inner_data[39]~4_combout\ : std_logic;
SIGNAL \spi|mosi~0_combout\ : std_logic;
SIGNAL \spi|mosi~1_combout\ : std_logic;
SIGNAL \spi|mosi~2_combout\ : std_logic;
SIGNAL \divider|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi|inner_data\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \spi|hold\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \spi|bit_number\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi|bit_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \divider|ALT_INV_out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \spi|ALT_INV_state~11_combout\ : std_logic;
SIGNAL \spi|ALT_INV_start~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_miso <= miso;
sclk <= ww_sclk;
mosi <= ww_mosi;
ssb <= ww_ssb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|out_clk_inner~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \divider|out_clk_inner~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\divider|ALT_INV_out_clk_inner~clkctrl_outclk\ <= NOT \divider|out_clk_inner~clkctrl_outclk\;
\spi|ALT_INV_state~11_combout\ <= NOT \spi|state~11_combout\;
\spi|ALT_INV_start~regout\ <= NOT \spi|start~regout\;

-- Location: LCFF_X13_Y10_N5
\spi|inner_data[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[23]~1_combout\,
	sdata => \spi|inner_data~88_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(23));

-- Location: LCFF_X13_Y11_N17
\spi|inner_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[7]~3_combout\,
	sdata => \spi|inner_data~93_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(7));

-- Location: LCCOMB_X27_Y7_N10
\divider|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~4_combout\ = (\divider|counter\(2) & (\divider|Add0~3\ $ (GND))) # (!\divider|counter\(2) & (!\divider|Add0~3\ & VCC))
-- \divider|Add0~5\ = CARRY((\divider|counter\(2) & !\divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(2),
	datad => VCC,
	cin => \divider|Add0~3\,
	combout => \divider|Add0~4_combout\,
	cout => \divider|Add0~5\);

-- Location: LCFF_X13_Y8_N1
\spi|inner_data[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[22]~6_combout\,
	sdata => \spi|Selector2~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(22));

-- Location: LCCOMB_X13_Y10_N4
\spi|inner_data[23]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[23]~1_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~91_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~87_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~91_combout\,
	combout => \spi|inner_data[23]~1_combout\);

-- Location: LCFF_X13_Y11_N3
\spi|inner_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[6]~8_combout\,
	sdata => \spi|inner_data~127_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(6));

-- Location: LCCOMB_X13_Y11_N16
\spi|inner_data[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[7]~3_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~96_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~92_combout\,
	datad => \spi|inner_data~96_combout\,
	combout => \spi|inner_data[7]~3_combout\);

-- Location: LCFF_X12_Y9_N9
\spi|inner_data[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[38]~9_combout\,
	sdata => \spi|Selector0~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(38));

-- Location: LCFF_X20_Y10_N7
\spi|hold[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[6]~8_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(6));

-- Location: LCFF_X20_Y10_N27
\spi|hold[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[10]~12_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(10));

-- Location: LCFF_X20_Y10_N5
\spi|hold[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[11]~13_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(11));

-- Location: LCFF_X15_Y10_N11
\spi|inner_data[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[21]~11_combout\,
	sdata => \spi|inner_data~154_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(21));

-- Location: LCCOMB_X13_Y8_N0
\spi|inner_data[22]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[22]~6_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~124_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~120_combout\,
	datad => \spi|inner_data~124_combout\,
	combout => \spi|inner_data[22]~6_combout\);

-- Location: LCFF_X15_Y10_N25
\spi|inner_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[5]~13_combout\,
	sdata => \spi|inner_data~159_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(5));

-- Location: LCCOMB_X13_Y11_N2
\spi|inner_data[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[6]~8_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~129_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~125_combout\,
	datad => \spi|inner_data~129_combout\,
	combout => \spi|inner_data[6]~8_combout\);

-- Location: LCFF_X13_Y9_N29
\spi|inner_data[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[37]~14_combout\,
	sdata => \spi|inner_data~164_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(37));

-- Location: LCCOMB_X12_Y9_N8
\spi|inner_data[38]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[38]~9_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~135_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~130_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~135_combout\,
	combout => \spi|inner_data[38]~9_combout\);

-- Location: LCCOMB_X19_Y10_N0
\spi|Add1~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N2
\spi|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add1~2_combout\ = (\spi|hold\(1) & (\spi|Add1~1\ & VCC)) # (!\spi|hold\(1) & (!\spi|Add1~1\))
-- \spi|Add1~3\ = CARRY((!\spi|hold\(1) & !\spi|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(1),
	datad => VCC,
	cin => \spi|Add1~1\,
	combout => \spi|Add1~2_combout\,
	cout => \spi|Add1~3\);

-- Location: LCCOMB_X19_Y10_N6
\spi|Add1~6\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N12
\spi|Add1~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N20
\spi|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add1~20_combout\ = (\spi|hold\(10) & ((GND) # (!\spi|Add1~19\))) # (!\spi|hold\(10) & (\spi|Add1~19\ $ (GND)))
-- \spi|Add1~21\ = CARRY((\spi|hold\(10)) # (!\spi|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(10),
	datad => VCC,
	cin => \spi|Add1~19\,
	combout => \spi|Add1~20_combout\,
	cout => \spi|Add1~21\);

-- Location: LCCOMB_X19_Y10_N22
\spi|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add1~22_combout\ = (\spi|hold\(11) & (\spi|Add1~21\ & VCC)) # (!\spi|hold\(11) & (!\spi|Add1~21\))
-- \spi|Add1~23\ = CARRY((!\spi|hold\(11) & !\spi|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(11),
	datad => VCC,
	cin => \spi|Add1~21\,
	combout => \spi|Add1~22_combout\,
	cout => \spi|Add1~23\);

-- Location: LCCOMB_X19_Y10_N26
\spi|Add1~26\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y10_N9
\spi|inner_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[12]~15_combout\,
	sdata => \spi|inner_data~169_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(12));

-- Location: LCFF_X15_Y11_N13
\spi|inner_data[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[28]~17_combout\,
	sdata => \spi|inner_data~179_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(28));

-- Location: LCFF_X15_Y8_N29
\spi|inner_data[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[20]~16_combout\,
	sdata => \spi|Selector3~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(20));

-- Location: LCCOMB_X15_Y10_N10
\spi|inner_data[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[21]~11_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~156_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~152_combout\,
	datad => \spi|inner_data~156_combout\,
	combout => \spi|inner_data[21]~11_combout\);

-- Location: LCFF_X17_Y10_N19
\spi|inner_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[4]~18_combout\,
	sdata => \spi|inner_data~188_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(4));

-- Location: LCCOMB_X15_Y10_N24
\spi|inner_data[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[5]~13_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~161_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~157_combout\,
	datad => \spi|inner_data~161_combout\,
	combout => \spi|inner_data[5]~13_combout\);

-- Location: LCFF_X12_Y9_N3
\spi|inner_data[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[36]~19_combout\,
	sdata => \spi|Selector1~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(36));

-- Location: LCCOMB_X13_Y9_N28
\spi|inner_data[37]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[37]~14_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~166_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~162_combout\,
	datad => \spi|inner_data~166_combout\,
	combout => \spi|inner_data[37]~14_combout\);

-- Location: LCFF_X14_Y10_N1
\spi|inner_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[11]~20_combout\,
	sdata => \spi|inner_data~200_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(11));

-- Location: LCCOMB_X17_Y10_N8
\spi|inner_data[12]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[12]~15_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~174_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~167_combout\,
	datad => \spi|inner_data~174_combout\,
	combout => \spi|inner_data[12]~15_combout\);

-- Location: LCFF_X14_Y10_N11
\spi|inner_data[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[27]~22_combout\,
	sdata => \spi|inner_data~205_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(27));

-- Location: LCCOMB_X15_Y11_N12
\spi|inner_data[28]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[28]~17_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~178_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~175_combout\,
	datad => \spi|inner_data~178_combout\,
	combout => \spi|inner_data[28]~17_combout\);

-- Location: LCFF_X15_Y11_N7
\spi|inner_data[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[19]~21_combout\,
	sdata => \spi|inner_data~211_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(19));

-- Location: LCCOMB_X15_Y8_N28
\spi|inner_data[20]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[20]~16_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~185_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~180_combout\,
	datad => \spi|inner_data~185_combout\,
	combout => \spi|inner_data[20]~16_combout\);

-- Location: LCFF_X15_Y11_N17
\spi|inner_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[3]~23_combout\,
	sdata => \spi|inner_data~216_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(3));

-- Location: LCCOMB_X17_Y10_N18
\spi|inner_data[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[4]~18_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~190_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~186_combout\,
	datad => \spi|inner_data~190_combout\,
	combout => \spi|inner_data[4]~18_combout\);

-- Location: LCFF_X13_Y9_N31
\spi|inner_data[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[35]~24_combout\,
	sdata => \spi|inner_data~220_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(35));

-- Location: LCCOMB_X12_Y9_N2
\spi|inner_data[36]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[36]~19_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~194_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~191_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~194_combout\,
	combout => \spi|inner_data[36]~19_combout\);

-- Location: LCFF_X13_Y10_N31
\spi|inner_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[10]~25_combout\,
	sdata => \spi|inner_data~227_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(10));

-- Location: LCCOMB_X14_Y10_N0
\spi|inner_data[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[11]~20_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~199_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~195_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~199_combout\,
	combout => \spi|inner_data[11]~20_combout\);

-- Location: LCFF_X13_Y8_N7
\spi|inner_data[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[26]~27_combout\,
	sdata => \spi|inner_data~233_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(26));

-- Location: LCCOMB_X14_Y10_N10
\spi|inner_data[27]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[27]~22_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~204_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~201_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~204_combout\,
	combout => \spi|inner_data[27]~22_combout\);

-- Location: LCFF_X15_Y8_N7
\spi|inner_data[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[18]~26_combout\,
	sdata => \spi|Selector4~0_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(18));

-- Location: LCCOMB_X15_Y11_N6
\spi|inner_data[19]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[19]~21_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~210_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~206_combout\,
	datad => \spi|inner_data~210_combout\,
	combout => \spi|inner_data[19]~21_combout\);

-- Location: LCFF_X12_Y11_N15
\spi|inner_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[2]~28_combout\,
	sdata => \spi|inner_data~244_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(2));

-- Location: LCCOMB_X15_Y11_N16
\spi|inner_data[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[3]~23_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~215_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~212_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~212_combout\,
	datad => \spi|inner_data~215_combout\,
	combout => \spi|inner_data[3]~23_combout\);

-- Location: LCFF_X15_Y9_N25
\spi|inner_data[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[34]~29_combout\,
	sdata => \spi|inner_data~249_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(34));

-- Location: LCCOMB_X13_Y9_N30
\spi|inner_data[35]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[35]~24_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~301_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~217_combout\,
	datad => \spi|inner_data~301_combout\,
	combout => \spi|inner_data[35]~24_combout\);

-- Location: LCFF_X12_Y10_N9
\spi|inner_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[9]~30_combout\,
	sdata => \spi|inner_data~252_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(9));

-- Location: LCCOMB_X13_Y10_N30
\spi|inner_data[10]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[10]~25_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~228_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~224_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~228_combout\,
	combout => \spi|inner_data[10]~25_combout\);

-- Location: LCFF_X13_Y8_N17
\spi|inner_data[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[25]~32_combout\,
	sdata => \spi|inner_data~258_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(25));

-- Location: LCCOMB_X13_Y8_N6
\spi|inner_data[26]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[26]~27_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~232_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~229_combout\,
	datad => \spi|inner_data~232_combout\,
	combout => \spi|inner_data[26]~27_combout\);

-- Location: LCFF_X17_Y11_N17
\spi|inner_data[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[17]~31_combout\,
	sdata => \spi|inner_data~263_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(17));

-- Location: LCCOMB_X15_Y8_N6
\spi|inner_data[18]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[18]~26_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~239_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~234_combout\,
	datad => \spi|inner_data~239_combout\,
	combout => \spi|inner_data[18]~26_combout\);

-- Location: LCFF_X13_Y11_N1
\spi|inner_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[1]~33_combout\,
	sdata => \spi|inner_data~268_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(1));

-- Location: LCCOMB_X12_Y11_N14
\spi|inner_data[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[2]~28_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~243_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~240_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~243_combout\,
	combout => \spi|inner_data[2]~28_combout\);

-- Location: LCFF_X15_Y9_N11
\spi|inner_data[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[33]~34_combout\,
	sdata => \spi|inner_data~272_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(33));

-- Location: LCCOMB_X15_Y9_N24
\spi|inner_data[34]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[34]~29_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~248_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~245_combout\,
	datad => \spi|inner_data~248_combout\,
	combout => \spi|inner_data[34]~29_combout\);

-- Location: LCFF_X12_Y10_N27
\spi|inner_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[8]~35_combout\,
	sdata => \spi|inner_data~278_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(8));

-- Location: LCCOMB_X12_Y10_N8
\spi|inner_data[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[9]~30_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~255_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~250_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~255_combout\,
	combout => \spi|inner_data[9]~30_combout\);

-- Location: LCFF_X13_Y10_N21
\spi|inner_data[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[24]~37_combout\,
	sdata => \spi|inner_data~283_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(24));

-- Location: LCCOMB_X13_Y8_N16
\spi|inner_data[25]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[25]~32_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~260_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~256_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~256_combout\,
	datad => \spi|inner_data~260_combout\,
	combout => \spi|inner_data[25]~32_combout\);

-- Location: LCFF_X17_Y11_N11
\spi|inner_data[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[16]~36_combout\,
	sdata => \spi|inner_data~287_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(16));

-- Location: LCCOMB_X17_Y11_N16
\spi|inner_data[17]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[17]~31_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~265_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~261_combout\,
	datad => \spi|inner_data~265_combout\,
	combout => \spi|inner_data[17]~31_combout\);

-- Location: LCCOMB_X13_Y11_N0
\spi|inner_data[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[1]~33_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~270_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~266_combout\,
	datad => \spi|inner_data~270_combout\,
	combout => \spi|inner_data[1]~33_combout\);

-- Location: LCFF_X15_Y9_N1
\spi|inner_data[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[32]~38_combout\,
	sdata => \spi|inner_data~293_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(32));

-- Location: LCCOMB_X15_Y9_N10
\spi|inner_data[33]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[33]~34_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~275_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~271_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~271_combout\,
	datad => \spi|inner_data~275_combout\,
	combout => \spi|inner_data[33]~34_combout\);

-- Location: LCCOMB_X12_Y10_N26
\spi|inner_data[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[8]~35_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~281_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~276_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~281_combout\,
	combout => \spi|inner_data[8]~35_combout\);

-- Location: LCCOMB_X13_Y10_N20
\spi|inner_data[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[24]~37_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~285_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~282_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~285_combout\,
	combout => \spi|inner_data[24]~37_combout\);

-- Location: LCCOMB_X17_Y11_N10
\spi|inner_data[16]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[16]~36_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~289_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~286_combout\,
	datad => \spi|inner_data~289_combout\,
	combout => \spi|inner_data[16]~36_combout\);

-- Location: LCCOMB_X15_Y9_N0
\spi|inner_data[32]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[32]~38_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~306_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~292_combout\,
	datad => \spi|inner_data~306_combout\,
	combout => \spi|inner_data[32]~38_combout\);

-- Location: LCFF_X27_Y7_N13
\divider|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(3));

-- Location: LCFF_X27_Y7_N15
\divider|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(4));

-- Location: LCFF_X27_Y7_N19
\divider|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(6));

-- Location: LCCOMB_X18_Y10_N10
\spi|bit_count[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_count[4]~4_combout\ = (\spi|always1~1_combout\) # ((\spi|clk_sync~regout\ & ((!\spi|Equal2~2_combout\))) # (!\spi|clk_sync~regout\ & (!\spi|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|start~regout\,
	datac => \spi|always1~1_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|bit_count[4]~4_combout\);

-- Location: LCCOMB_X17_Y11_N0
\spi|inner_data~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~70_combout\ = (\spi|inner_data\(15) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(15),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~70_combout\);

-- Location: LCCOMB_X14_Y10_N4
\spi|inner_data~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~87_combout\ = (\spi|inner_data\(23) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|Equal2~2_combout\,
	datac => \spi|inner_data\(23),
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~87_combout\);

-- Location: LCCOMB_X13_Y10_N14
\spi|inner_data~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~88_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|inner_data\(23) & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datab => \spi|inner_data\(23),
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~88_combout\);

-- Location: LCCOMB_X13_Y10_N16
\spi|inner_data~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~89_combout\ = (\spi|inner_data~88_combout\ & (((\spi|Add2~0_combout\) # (!\spi|inner_data~84_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~88_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~84_combout\,
	combout => \spi|inner_data~89_combout\);

-- Location: LCCOMB_X13_Y10_N26
\spi|inner_data~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~90_combout\ = (\spi|Add2~2_combout\ & (!\spi|Add2~0_combout\ & (\spi|Add2~4_combout\ & \spi|inner_data~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~73_combout\,
	combout => \spi|inner_data~90_combout\);

-- Location: LCCOMB_X13_Y10_N12
\spi|inner_data~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~91_combout\ = (\spi|inner_data~89_combout\) # ((\spi|inner_data~90_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(22),
	datac => \spi|inner_data~89_combout\,
	datad => \spi|inner_data~90_combout\,
	combout => \spi|inner_data~91_combout\);

-- Location: LCCOMB_X13_Y11_N26
\spi|inner_data~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~92_combout\ = (\spi|inner_data\(7) & ((\spi|inner_data~69_combout\) # ((!\spi|clk_sync~regout\) # (!\spi|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(7),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~92_combout\);

-- Location: LCCOMB_X13_Y11_N24
\spi|inner_data~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~93_combout\ = (\spi|inner_data\(7) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(7),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~93_combout\);

-- Location: LCCOMB_X14_Y11_N26
\spi|inner_data~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~94_combout\ = (\spi|inner_data~93_combout\ & (((\spi|Add2~0_combout\) # (!\spi|inner_data~77_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~93_combout\,
	datac => \spi|inner_data~77_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~94_combout\);

-- Location: LCCOMB_X13_Y11_N6
\spi|inner_data~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~96_combout\ = (\spi|inner_data~94_combout\) # ((\spi|inner_data~296_combout\) # ((\spi|inner_data\(6) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(6),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~94_combout\,
	datad => \spi|inner_data~296_combout\,
	combout => \spi|inner_data~96_combout\);

-- Location: LCCOMB_X20_Y10_N20
\spi|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~1_combout\ = (!\spi|hold\(7) & (!\spi|hold\(8) & (!\spi|hold\(9) & !\spi|hold\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(7),
	datab => \spi|hold\(8),
	datac => \spi|hold\(9),
	datad => \spi|hold\(10),
	combout => \spi|Equal1~1_combout\);

-- Location: LCCOMB_X12_Y11_N12
\spi|inner_data~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~104_combout\ = (\spi|inner_data\(14) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(14),
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~104_combout\);

-- Location: LCCOMB_X18_Y9_N8
\spi|inner_data~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~117_combout\ = (\spi|Add2~4_combout\ & (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|Add2~6_combout\,
	datac => \spi|Add2~8_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~117_combout\);

-- Location: LCCOMB_X14_Y8_N20
\spi|inner_data~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~118_combout\ = (\spi|inner_data~116_combout\ & (((!\spi|inner_data~117_combout\) # (!\spi|inner_data~110_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~116_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~110_combout\,
	datad => \spi|inner_data~117_combout\,
	combout => \spi|inner_data~118_combout\);

-- Location: LCCOMB_X13_Y8_N26
\spi|inner_data~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~120_combout\ = (\spi|inner_data\(22) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(22),
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~120_combout\);

-- Location: LCCOMB_X13_Y9_N12
\spi|inner_data~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~121_combout\ = (\spi|Add2~0_combout\) # ((!\spi|Add2~4_combout\) # (!\spi|inner_data~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~110_combout\,
	datac => \spi|Add2~4_combout\,
	combout => \spi|inner_data~121_combout\);

-- Location: LCCOMB_X13_Y9_N10
\spi|inner_data~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~122_combout\ = (\spi|Add2~6_combout\) # ((\spi|Add2~8_combout\) # ((\spi|Add2~10_combout\) # (\spi|inner_data~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~121_combout\,
	combout => \spi|inner_data~122_combout\);

-- Location: LCCOMB_X13_Y9_N24
\spi|inner_data~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~123_combout\ = (\spi|inner_data~69_combout\ & (((\spi|inner_data\(22) & \spi|inner_data~122_combout\)))) # (!\spi|inner_data~69_combout\ & (\spi|inner_data\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(21),
	datab => \spi|inner_data\(22),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data~122_combout\,
	combout => \spi|inner_data~123_combout\);

-- Location: LCCOMB_X13_Y9_N22
\spi|inner_data~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~124_combout\ = (\spi|inner_data~123_combout\) # ((!\spi|Add2~0_combout\ & (\spi|inner_data~110_combout\ & \spi|inner_data~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~110_combout\,
	datac => \spi|inner_data~123_combout\,
	datad => \spi|inner_data~114_combout\,
	combout => \spi|inner_data~124_combout\);

-- Location: LCCOMB_X13_Y8_N24
\spi|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Selector2~0_combout\ = (\spi|state.command_read_temp~regout\) # ((\spi|inner_data\(22) & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(22),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|Selector2~0_combout\);

-- Location: LCCOMB_X13_Y11_N8
\spi|inner_data~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~125_combout\ = (\spi|inner_data\(6) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data\(6),
	combout => \spi|inner_data~125_combout\);

-- Location: LCCOMB_X13_Y11_N22
\spi|inner_data~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~126_combout\ = (!\spi|Add2~0_combout\ & (\spi|inner_data~109_combout\ & \spi|inner_data~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~109_combout\,
	datad => \spi|inner_data~110_combout\,
	combout => \spi|inner_data~126_combout\);

-- Location: LCCOMB_X13_Y11_N20
\spi|inner_data~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~127_combout\ = (\spi|inner_data\(6) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(6),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~127_combout\);

-- Location: LCCOMB_X13_Y11_N14
\spi|inner_data~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~128_combout\ = (\spi|inner_data~127_combout\ & ((\spi|Add2~0_combout\) # ((!\spi|Add2~2_combout\) # (!\spi|inner_data~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~127_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~107_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~128_combout\);

-- Location: LCCOMB_X13_Y11_N28
\spi|inner_data~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~129_combout\ = (\spi|inner_data~128_combout\) # ((\spi|inner_data~126_combout\) # ((\spi|inner_data\(5) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(5),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~128_combout\,
	datad => \spi|inner_data~126_combout\,
	combout => \spi|inner_data~129_combout\);

-- Location: LCCOMB_X12_Y9_N16
\spi|inner_data~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~130_combout\ = (\spi|inner_data\(38) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(38),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~130_combout\);

-- Location: LCCOMB_X12_Y9_N10
\spi|inner_data~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~131_combout\ = (\spi|inner_data\(37) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(37),
	combout => \spi|inner_data~131_combout\);

-- Location: LCCOMB_X12_Y9_N28
\spi|inner_data~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~132_combout\ = (\spi|inner_data~69_combout\ & (\spi|inner_data\(38) & ((!\spi|inner_data~98_combout\) # (!\spi|inner_data~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(38),
	datac => \spi|inner_data~110_combout\,
	datad => \spi|inner_data~98_combout\,
	combout => \spi|inner_data~132_combout\);

-- Location: LCCOMB_X14_Y9_N18
\spi|inner_data~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~133_combout\ = (\spi|inner_data~71_combout\ & (!\spi|Add2~0_combout\ & !\spi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~71_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~133_combout\);

-- Location: LCCOMB_X14_Y9_N4
\spi|inner_data~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~134_combout\ = (\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & \spi|inner_data~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~133_combout\,
	combout => \spi|inner_data~134_combout\);

-- Location: LCCOMB_X12_Y9_N18
\spi|inner_data~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~135_combout\ = (\spi|inner_data~131_combout\) # ((\spi|inner_data~132_combout\) # ((\spi|inner_data~110_combout\ & \spi|inner_data~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~131_combout\,
	datab => \spi|inner_data~110_combout\,
	datac => \spi|inner_data~134_combout\,
	datad => \spi|inner_data~132_combout\,
	combout => \spi|inner_data~135_combout\);

-- Location: LCCOMB_X12_Y9_N20
\spi|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Selector0~0_combout\ = ((\spi|inner_data\(38) & !\spi|state.command_read_temp~regout\)) # (!\spi|state.command_read_accel~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(38),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|Selector0~0_combout\);

-- Location: LCCOMB_X20_Y10_N6
\spi|hold[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[6]~8_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~12_combout\,
	combout => \spi|hold[6]~8_combout\);

-- Location: LCCOMB_X20_Y10_N26
\spi|hold[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[10]~12_combout\ = (\spi|Add1~20_combout\ & !\spi|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add1~20_combout\,
	datad => \spi|Equal1~4_combout\,
	combout => \spi|hold[10]~12_combout\);

-- Location: LCCOMB_X20_Y10_N4
\spi|hold[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[11]~13_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~22_combout\,
	combout => \spi|hold[11]~13_combout\);

-- Location: LCCOMB_X14_Y10_N22
\spi|inner_data~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~152_combout\ = (\spi|inner_data\(21) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|Equal2~2_combout\,
	datac => \spi|inner_data\(21),
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~152_combout\);

-- Location: LCCOMB_X15_Y10_N16
\spi|inner_data~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~153_combout\ = (\spi|Add2~4_combout\ & (\spi|inner_data~138_combout\ & (!\spi|Add2~0_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|inner_data~138_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~153_combout\);

-- Location: LCCOMB_X14_Y10_N8
\spi|inner_data~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~154_combout\ = (\spi|state.command_read_accel~regout\ & (\spi|inner_data\(21) & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datac => \spi|inner_data\(21),
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~154_combout\);

-- Location: LCCOMB_X15_Y10_N30
\spi|inner_data~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~155_combout\ = (\spi|inner_data~154_combout\ & (((\spi|Add2~0_combout\) # (!\spi|inner_data~149_combout\)) # (!\spi|inner_data~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~154_combout\,
	datab => \spi|inner_data~138_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~149_combout\,
	combout => \spi|inner_data~155_combout\);

-- Location: LCCOMB_X15_Y10_N0
\spi|inner_data~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~156_combout\ = (\spi|inner_data~153_combout\) # ((\spi|inner_data~155_combout\) # ((\spi|inner_data\(20) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(20),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~153_combout\,
	datad => \spi|inner_data~155_combout\,
	combout => \spi|inner_data~156_combout\);

-- Location: LCCOMB_X15_Y10_N18
\spi|inner_data~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~157_combout\ = (\spi|inner_data\(5) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data\(5),
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~157_combout\);

-- Location: LCCOMB_X15_Y10_N8
\spi|inner_data~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~158_combout\ = (!\spi|Add2~4_combout\ & (\spi|inner_data~138_combout\ & (!\spi|Add2~0_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|inner_data~138_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~158_combout\);

-- Location: LCCOMB_X15_Y10_N6
\spi|inner_data~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~159_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|inner_data\(5) & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datac => \spi|inner_data\(5),
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~159_combout\);

-- Location: LCCOMB_X15_Y10_N28
\spi|inner_data~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~160_combout\ = (\spi|inner_data~159_combout\ & ((\spi|Add2~0_combout\) # ((!\spi|inner_data~138_combout\) # (!\spi|inner_data~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~159_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~142_combout\,
	datad => \spi|inner_data~138_combout\,
	combout => \spi|inner_data~160_combout\);

-- Location: LCCOMB_X15_Y10_N26
\spi|inner_data~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~161_combout\ = (\spi|inner_data~158_combout\) # ((\spi|inner_data~160_combout\) # ((\spi|inner_data\(4) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(4),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~158_combout\,
	datad => \spi|inner_data~160_combout\,
	combout => \spi|inner_data~161_combout\);

-- Location: LCCOMB_X12_Y9_N6
\spi|inner_data~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~162_combout\ = (\spi|inner_data\(37) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(37),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~162_combout\);

-- Location: LCCOMB_X13_Y9_N4
\spi|inner_data~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~163_combout\ = (\spi|Add2~14_combout\ & (\spi|inner_data~71_combout\ & (\spi|inner_data~98_combout\ & \spi|inner_data~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|inner_data~71_combout\,
	datac => \spi|inner_data~98_combout\,
	datad => \spi|inner_data~138_combout\,
	combout => \spi|inner_data~163_combout\);

-- Location: LCCOMB_X12_Y9_N4
\spi|inner_data~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~164_combout\ = (\spi|inner_data\(37) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(37),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~164_combout\);

-- Location: LCCOMB_X13_Y9_N26
\spi|inner_data~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~165_combout\ = (\spi|inner_data~164_combout\ & (((!\spi|inner_data~138_combout\) # (!\spi|inner_data~98_combout\)) # (!\spi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|inner_data~164_combout\,
	datac => \spi|inner_data~98_combout\,
	datad => \spi|inner_data~138_combout\,
	combout => \spi|inner_data~165_combout\);

-- Location: LCCOMB_X13_Y9_N0
\spi|inner_data~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~166_combout\ = (\spi|inner_data~163_combout\) # ((\spi|inner_data~165_combout\) # ((\spi|inner_data\(36) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(36),
	datab => \spi|inner_data~163_combout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data~165_combout\,
	combout => \spi|inner_data~166_combout\);

-- Location: LCCOMB_X17_Y10_N0
\spi|inner_data~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~167_combout\ = (\spi|inner_data\(12) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(12),
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~167_combout\);

-- Location: LCCOMB_X17_Y10_N6
\spi|inner_data~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~168_combout\ = (\spi|inner_data\(11) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|inner_data\(11),
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~168_combout\);

-- Location: LCCOMB_X17_Y10_N4
\spi|inner_data~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~169_combout\ = (\spi|inner_data\(12) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(12),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~169_combout\);

-- Location: LCCOMB_X17_Y10_N30
\spi|inner_data~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~170_combout\ = (!\spi|Add2~14_combout\ & !\spi|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~170_combout\);

-- Location: LCCOMB_X17_Y10_N16
\spi|inner_data~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~171_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & \spi|inner_data~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~170_combout\,
	combout => \spi|inner_data~171_combout\);

-- Location: LCCOMB_X17_Y10_N26
\spi|inner_data~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~172_combout\ = (\spi|inner_data~169_combout\ & (((!\spi|inner_data~138_combout\) # (!\spi|inner_data~171_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~169_combout\,
	datac => \spi|inner_data~171_combout\,
	datad => \spi|inner_data~138_combout\,
	combout => \spi|inner_data~172_combout\);

-- Location: LCCOMB_X17_Y11_N30
\spi|inner_data~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~173_combout\ = (!\spi|Add2~12_combout\ & (!\spi|Add2~14_combout\ & (\spi|Add2~2_combout\ & \spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~173_combout\);

-- Location: LCCOMB_X17_Y10_N28
\spi|inner_data~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~174_combout\ = (\spi|inner_data~168_combout\) # ((\spi|inner_data~172_combout\) # ((\spi|inner_data~173_combout\ & \spi|inner_data~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~168_combout\,
	datab => \spi|inner_data~172_combout\,
	datac => \spi|inner_data~173_combout\,
	datad => \spi|inner_data~109_combout\,
	combout => \spi|inner_data~174_combout\);

-- Location: LCCOMB_X15_Y11_N2
\spi|inner_data~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~175_combout\ = (\spi|inner_data\(28) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(28),
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~175_combout\);

-- Location: LCCOMB_X14_Y10_N2
\spi|inner_data~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~176_combout\ = (\spi|inner_data\(27) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|inner_data\(27),
	combout => \spi|inner_data~176_combout\);

-- Location: LCCOMB_X15_Y11_N8
\spi|inner_data~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~177_combout\ = (\spi|inner_data\(28) & (\spi|inner_data~69_combout\ & ((!\spi|inner_data~173_combout\) # (!\spi|inner_data~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(28),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~117_combout\,
	datad => \spi|inner_data~173_combout\,
	combout => \spi|inner_data~177_combout\);

-- Location: LCCOMB_X15_Y11_N18
\spi|inner_data~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~178_combout\ = (\spi|inner_data~176_combout\) # ((\spi|inner_data~177_combout\) # ((\spi|inner_data~114_combout\ & \spi|inner_data~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~176_combout\,
	datab => \spi|inner_data~114_combout\,
	datac => \spi|inner_data~177_combout\,
	datad => \spi|inner_data~173_combout\,
	combout => \spi|inner_data~178_combout\);

-- Location: LCCOMB_X15_Y11_N24
\spi|inner_data~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~179_combout\ = (\spi|state.command_read_accel~regout\ & (!\spi|state.command_read_temp~regout\ & \spi|inner_data\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|inner_data\(28),
	combout => \spi|inner_data~179_combout\);

-- Location: LCCOMB_X15_Y8_N26
\spi|inner_data~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~180_combout\ = (\spi|inner_data\(20) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(20),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~180_combout\);

-- Location: LCCOMB_X20_Y9_N6
\spi|inner_data~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~181_combout\ = (\spi|Add2~2_combout\ & (!\spi|Add2~14_combout\ & !\spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~2_combout\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~181_combout\);

-- Location: LCCOMB_X15_Y8_N8
\spi|inner_data~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~182_combout\ = ((\spi|Add2~0_combout\) # (!\spi|Add2~4_combout\)) # (!\spi|inner_data~181_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data~181_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~182_combout\);

-- Location: LCCOMB_X15_Y8_N10
\spi|inner_data~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~183_combout\ = (\spi|Add2~8_combout\) # ((\spi|Add2~6_combout\) # ((\spi|inner_data~182_combout\) # (\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|Add2~6_combout\,
	datac => \spi|inner_data~182_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~183_combout\);

-- Location: LCCOMB_X15_Y8_N20
\spi|inner_data~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~184_combout\ = (\spi|inner_data~69_combout\ & (((\spi|inner_data\(20) & \spi|inner_data~183_combout\)))) # (!\spi|inner_data~69_combout\ & (\spi|inner_data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(19),
	datab => \spi|inner_data\(20),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data~183_combout\,
	combout => \spi|inner_data~184_combout\);

-- Location: LCCOMB_X15_Y8_N18
\spi|inner_data~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~185_combout\ = (\spi|inner_data~184_combout\) # ((!\spi|Add2~0_combout\ & (\spi|inner_data~114_combout\ & \spi|inner_data~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~114_combout\,
	datac => \spi|inner_data~184_combout\,
	datad => \spi|inner_data~181_combout\,
	combout => \spi|inner_data~185_combout\);

-- Location: LCCOMB_X15_Y8_N16
\spi|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Selector3~0_combout\ = (\spi|state.command_read_temp~regout\) # ((\spi|state.command_read_accel~regout\ & \spi|inner_data\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(20),
	combout => \spi|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\spi|inner_data~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~186_combout\ = (\spi|inner_data\(4) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(4),
	datab => \spi|clk_sync~regout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~186_combout\);

-- Location: LCCOMB_X17_Y10_N12
\spi|inner_data~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~187_combout\ = (\spi|inner_data~181_combout\ & (!\spi|Add2~0_combout\ & \spi|inner_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data~181_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~109_combout\,
	combout => \spi|inner_data~187_combout\);

-- Location: LCCOMB_X17_Y10_N14
\spi|inner_data~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~188_combout\ = (\spi|state.command_read_accel~regout\ & (\spi|inner_data\(4) & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|inner_data\(4),
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~188_combout\);

-- Location: LCCOMB_X17_Y10_N24
\spi|inner_data~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~189_combout\ = (\spi|inner_data~188_combout\ & ((\spi|Add2~0_combout\) # ((!\spi|inner_data~138_combout\) # (!\spi|inner_data~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~188_combout\,
	datac => \spi|inner_data~171_combout\,
	datad => \spi|inner_data~138_combout\,
	combout => \spi|inner_data~189_combout\);

-- Location: LCCOMB_X17_Y10_N10
\spi|inner_data~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~190_combout\ = (\spi|inner_data~189_combout\) # ((\spi|inner_data~187_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(3),
	datac => \spi|inner_data~189_combout\,
	datad => \spi|inner_data~187_combout\,
	combout => \spi|inner_data~190_combout\);

-- Location: LCCOMB_X12_Y9_N22
\spi|inner_data~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~191_combout\ = (\spi|inner_data\(36) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(36),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~191_combout\);

-- Location: LCCOMB_X12_Y9_N12
\spi|inner_data~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~192_combout\ = (\spi|inner_data\(35) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(35),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~192_combout\);

-- Location: LCCOMB_X12_Y9_N26
\spi|inner_data~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~193_combout\ = (\spi|inner_data~69_combout\ & (\spi|inner_data\(36) & ((!\spi|inner_data~98_combout\) # (!\spi|inner_data~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(36),
	datac => \spi|inner_data~181_combout\,
	datad => \spi|inner_data~98_combout\,
	combout => \spi|inner_data~193_combout\);

-- Location: LCCOMB_X12_Y9_N0
\spi|inner_data~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~194_combout\ = (\spi|inner_data~192_combout\) # ((\spi|inner_data~193_combout\) # ((\spi|inner_data~181_combout\ & \spi|inner_data~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~192_combout\,
	datab => \spi|inner_data~181_combout\,
	datac => \spi|inner_data~134_combout\,
	datad => \spi|inner_data~193_combout\,
	combout => \spi|inner_data~194_combout\);

-- Location: LCCOMB_X12_Y9_N14
\spi|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Selector1~0_combout\ = ((\spi|inner_data\(36) & !\spi|state.command_read_temp~regout\)) # (!\spi|state.command_read_accel~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(36),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\spi|inner_data~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~195_combout\ = (\spi|inner_data\(11) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(11),
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~195_combout\);

-- Location: LCCOMB_X14_Y11_N16
\spi|inner_data~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~196_combout\ = (!\spi|Add2~2_combout\ & \spi|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~2_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~196_combout\);

-- Location: LCCOMB_X14_Y10_N26
\spi|inner_data~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~197_combout\ = (!\spi|Add2~4_combout\ & (\spi|Add2~12_combout\ & (\spi|inner_data~196_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~196_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~197_combout\);

-- Location: LCCOMB_X14_Y11_N6
\spi|inner_data~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~198_combout\ = (\spi|inner_data\(11) & (\spi|inner_data~69_combout\ & ((!\spi|inner_data~77_combout\) # (!\spi|inner_data~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~196_combout\,
	datab => \spi|inner_data\(11),
	datac => \spi|inner_data~77_combout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~198_combout\);

-- Location: LCCOMB_X14_Y10_N12
\spi|inner_data~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~199_combout\ = (\spi|inner_data~197_combout\) # ((\spi|inner_data~198_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data~197_combout\,
	datac => \spi|inner_data\(10),
	datad => \spi|inner_data~198_combout\,
	combout => \spi|inner_data~199_combout\);

-- Location: LCCOMB_X17_Y10_N20
\spi|inner_data~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~200_combout\ = (\spi|state.command_read_accel~regout\ & (\spi|inner_data\(11) & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|inner_data\(11),
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~200_combout\);

-- Location: LCCOMB_X14_Y10_N6
\spi|inner_data~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~201_combout\ = (\spi|inner_data\(27) & (((\spi|inner_data~69_combout\) # (!\spi|clk_sync~regout\)) # (!\spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(27),
	datab => \spi|Equal2~2_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~201_combout\);

-- Location: LCCOMB_X14_Y10_N24
\spi|inner_data~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~202_combout\ = (\spi|inner_data\(27) & (\spi|inner_data~69_combout\ & ((!\spi|inner_data~84_combout\) # (!\spi|inner_data~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(27),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~196_combout\,
	datad => \spi|inner_data~84_combout\,
	combout => \spi|inner_data~202_combout\);

-- Location: LCCOMB_X14_Y10_N18
\spi|inner_data~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~203_combout\ = (\spi|Add2~4_combout\ & (\spi|Add2~12_combout\ & (\spi|inner_data~196_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~196_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~203_combout\);

-- Location: LCCOMB_X14_Y10_N28
\spi|inner_data~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~204_combout\ = (\spi|inner_data~202_combout\) # ((\spi|inner_data~203_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(26),
	datac => \spi|inner_data~202_combout\,
	datad => \spi|inner_data~203_combout\,
	combout => \spi|inner_data~204_combout\);

-- Location: LCCOMB_X14_Y10_N14
\spi|inner_data~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~205_combout\ = (\spi|state.command_read_accel~regout\ & (!\spi|state.command_read_temp~regout\ & \spi|inner_data\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|inner_data\(27),
	combout => \spi|inner_data~205_combout\);

-- Location: LCCOMB_X15_Y11_N30
\spi|inner_data~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~206_combout\ = (\spi|inner_data\(19) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(19),
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~206_combout\);

-- Location: LCCOMB_X13_Y9_N6
\spi|inner_data~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~207_combout\ = (!\spi|Add2~0_combout\ & !\spi|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~0_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~207_combout\);

-- Location: LCCOMB_X15_Y11_N4
\spi|inner_data~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~208_combout\ = (\spi|inner_data\(19) & (\spi|inner_data~69_combout\ & ((!\spi|inner_data~84_combout\) # (!\spi|inner_data~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(19),
	datab => \spi|inner_data~207_combout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data~84_combout\,
	combout => \spi|inner_data~208_combout\);

-- Location: LCCOMB_X15_Y11_N26
\spi|inner_data~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~209_combout\ = (\spi|Add2~4_combout\ & (\spi|Add2~12_combout\ & (\spi|inner_data~207_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~207_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~209_combout\);

-- Location: LCCOMB_X15_Y11_N0
\spi|inner_data~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~210_combout\ = (\spi|inner_data~208_combout\) # ((\spi|inner_data~209_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(18),
	datac => \spi|inner_data~208_combout\,
	datad => \spi|inner_data~209_combout\,
	combout => \spi|inner_data~210_combout\);

-- Location: LCCOMB_X15_Y11_N14
\spi|inner_data~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~211_combout\ = (\spi|state.command_read_accel~regout\ & (!\spi|state.command_read_temp~regout\ & \spi|inner_data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|inner_data\(19),
	combout => \spi|inner_data~211_combout\);

-- Location: LCCOMB_X15_Y11_N28
\spi|inner_data~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~212_combout\ = (\spi|inner_data\(3) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data\(3),
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~212_combout\);

-- Location: LCCOMB_X15_Y11_N22
\spi|inner_data~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~213_combout\ = (\spi|inner_data~69_combout\ & (\spi|inner_data\(3) & ((!\spi|inner_data~77_combout\) # (!\spi|inner_data~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(3),
	datac => \spi|inner_data~207_combout\,
	datad => \spi|inner_data~77_combout\,
	combout => \spi|inner_data~213_combout\);

-- Location: LCCOMB_X15_Y11_N20
\spi|inner_data~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~214_combout\ = (!\spi|Add2~4_combout\ & (\spi|Add2~12_combout\ & (\spi|inner_data~207_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~207_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~214_combout\);

-- Location: LCCOMB_X15_Y11_N10
\spi|inner_data~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~215_combout\ = (\spi|inner_data~214_combout\) # ((\spi|inner_data~213_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(2),
	datac => \spi|inner_data~214_combout\,
	datad => \spi|inner_data~213_combout\,
	combout => \spi|inner_data~215_combout\);

-- Location: LCCOMB_X14_Y11_N4
\spi|inner_data~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~216_combout\ = (\spi|state.command_read_accel~regout\ & (\spi|inner_data\(3) & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|inner_data\(3),
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~216_combout\);

-- Location: LCCOMB_X12_Y9_N24
\spi|inner_data~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~217_combout\ = (\spi|inner_data\(35) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(35),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~217_combout\);

-- Location: LCCOMB_X14_Y9_N6
\spi|inner_data~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~218_combout\ = (\spi|inner_data~71_combout\ & (!\spi|Add2~2_combout\ & (!\spi|Add2~0_combout\ & !\spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~71_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~218_combout\);

-- Location: LCCOMB_X14_Y9_N26
\spi|inner_data~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~219_combout\ = (\spi|inner_data~218_combout\ & (!\spi|Add2~10_combout\ & (\spi|Add2~6_combout\ & !\spi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~218_combout\,
	datab => \spi|Add2~10_combout\,
	datac => \spi|Add2~6_combout\,
	datad => \spi|Add2~8_combout\,
	combout => \spi|inner_data~219_combout\);

-- Location: LCCOMB_X13_Y9_N16
\spi|inner_data~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~220_combout\ = (\spi|inner_data\(35) & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(35),
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~220_combout\);

-- Location: LCCOMB_X18_Y9_N10
\spi|inner_data~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~221_combout\ = (!\spi|Add2~0_combout\ & (!\spi|Add2~4_combout\ & !\spi|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~0_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~2_combout\,
	combout => \spi|inner_data~221_combout\);

-- Location: LCCOMB_X14_Y9_N30
\spi|inner_data~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~222_combout\ = (\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (\spi|inner_data~221_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|inner_data~221_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~222_combout\);

-- Location: LCCOMB_X14_Y9_N2
\spi|inner_data~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~223_combout\ = (\spi|inner_data~99_combout\ & ((\spi|inner_data~219_combout\) # ((\spi|inner_data~220_combout\ & !\spi|inner_data~222_combout\)))) # (!\spi|inner_data~99_combout\ & (((\spi|inner_data~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~99_combout\,
	datab => \spi|inner_data~219_combout\,
	datac => \spi|inner_data~220_combout\,
	datad => \spi|inner_data~222_combout\,
	combout => \spi|inner_data~223_combout\);

-- Location: LCCOMB_X14_Y10_N20
\spi|inner_data~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~224_combout\ = (\spi|inner_data\(10) & (((\spi|inner_data~69_combout\) # (!\spi|clk_sync~regout\)) # (!\spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(10),
	datab => \spi|Equal2~2_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~224_combout\);

-- Location: LCCOMB_X13_Y10_N8
\spi|inner_data~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~225_combout\ = (!\spi|Add2~14_combout\ & (!\spi|Add2~2_combout\ & (\spi|Add2~0_combout\ & \spi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~225_combout\);

-- Location: LCCOMB_X13_Y10_N18
\spi|inner_data~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~226_combout\ = (\spi|inner_data\(9) & (((\spi|inner_data~225_combout\ & \spi|inner_data~109_combout\)) # (!\spi|inner_data~69_combout\))) # (!\spi|inner_data\(9) & (\spi|inner_data~225_combout\ & (\spi|inner_data~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(9),
	datab => \spi|inner_data~225_combout\,
	datac => \spi|inner_data~109_combout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~226_combout\);

-- Location: LCCOMB_X14_Y10_N30
\spi|inner_data~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~227_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|inner_data\(10) & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datac => \spi|inner_data\(10),
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~227_combout\);

-- Location: LCCOMB_X13_Y10_N28
\spi|inner_data~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~228_combout\ = (\spi|inner_data~226_combout\) # ((\spi|inner_data~227_combout\ & ((!\spi|inner_data~107_combout\) # (!\spi|inner_data~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~227_combout\,
	datab => \spi|inner_data~196_combout\,
	datac => \spi|inner_data~107_combout\,
	datad => \spi|inner_data~226_combout\,
	combout => \spi|inner_data~228_combout\);

-- Location: LCCOMB_X13_Y8_N30
\spi|inner_data~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~229_combout\ = (\spi|inner_data\(26) & ((\spi|inner_data~69_combout\) # ((!\spi|clk_sync~regout\) # (!\spi|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|Equal2~2_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|inner_data\(26),
	combout => \spi|inner_data~229_combout\);

-- Location: LCCOMB_X13_Y8_N20
\spi|inner_data~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~230_combout\ = (\spi|inner_data\(25) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(25),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~230_combout\);

-- Location: LCCOMB_X13_Y8_N18
\spi|inner_data~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~231_combout\ = (\spi|inner_data~69_combout\ & (\spi|inner_data\(26) & ((!\spi|inner_data~117_combout\) # (!\spi|inner_data~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(26),
	datac => \spi|inner_data~225_combout\,
	datad => \spi|inner_data~117_combout\,
	combout => \spi|inner_data~231_combout\);

-- Location: LCCOMB_X13_Y8_N12
\spi|inner_data~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~232_combout\ = (\spi|inner_data~230_combout\) # ((\spi|inner_data~231_combout\) # ((\spi|inner_data~225_combout\ & \spi|inner_data~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~230_combout\,
	datab => \spi|inner_data~231_combout\,
	datac => \spi|inner_data~225_combout\,
	datad => \spi|inner_data~114_combout\,
	combout => \spi|inner_data~232_combout\);

-- Location: LCCOMB_X13_Y8_N10
\spi|inner_data~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~233_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(26),
	combout => \spi|inner_data~233_combout\);

-- Location: LCCOMB_X15_Y8_N22
\spi|inner_data~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~234_combout\ = (\spi|inner_data\(18) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(18),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~234_combout\);

-- Location: LCCOMB_X15_Y9_N18
\spi|inner_data~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~235_combout\ = (!\spi|Add2~2_combout\ & (!\spi|Add2~14_combout\ & \spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~2_combout\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~235_combout\);

-- Location: LCCOMB_X15_Y8_N4
\spi|inner_data~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~236_combout\ = (\spi|Add2~0_combout\) # ((!\spi|inner_data~235_combout\) # (!\spi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~235_combout\,
	combout => \spi|inner_data~236_combout\);

-- Location: LCCOMB_X15_Y8_N14
\spi|inner_data~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~237_combout\ = (\spi|Add2~8_combout\) # ((\spi|Add2~6_combout\) # ((\spi|inner_data~236_combout\) # (\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|Add2~6_combout\,
	datac => \spi|inner_data~236_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~237_combout\);

-- Location: LCCOMB_X15_Y8_N12
\spi|inner_data~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~238_combout\ = (\spi|inner_data~69_combout\ & (\spi|inner_data\(18) & (\spi|inner_data~237_combout\))) # (!\spi|inner_data~69_combout\ & (((\spi|inner_data\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(18),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~237_combout\,
	datad => \spi|inner_data\(17),
	combout => \spi|inner_data~238_combout\);

-- Location: LCCOMB_X15_Y8_N30
\spi|inner_data~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~239_combout\ = (\spi|inner_data~238_combout\) # ((!\spi|Add2~0_combout\ & (\spi|inner_data~235_combout\ & \spi|inner_data~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~235_combout\,
	datac => \spi|inner_data~114_combout\,
	datad => \spi|inner_data~238_combout\,
	combout => \spi|inner_data~239_combout\);

-- Location: LCCOMB_X15_Y8_N24
\spi|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Selector4~0_combout\ = (\spi|state.command_read_temp~regout\) # ((\spi|state.command_read_accel~regout\ & \spi|inner_data\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(18),
	combout => \spi|Selector4~0_combout\);

-- Location: LCCOMB_X12_Y11_N10
\spi|inner_data~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~240_combout\ = (\spi|inner_data\(2) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(2),
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~240_combout\);

-- Location: LCCOMB_X12_Y11_N20
\spi|inner_data~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~241_combout\ = (!\spi|Add2~0_combout\ & (\spi|inner_data~235_combout\ & \spi|inner_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~235_combout\,
	datad => \spi|inner_data~109_combout\,
	combout => \spi|inner_data~241_combout\);

-- Location: LCCOMB_X13_Y11_N30
\spi|inner_data~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~242_combout\ = (\spi|inner_data\(2) & (\spi|inner_data~69_combout\ & ((!\spi|inner_data~207_combout\) # (!\spi|inner_data~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(2),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~107_combout\,
	datad => \spi|inner_data~207_combout\,
	combout => \spi|inner_data~242_combout\);

-- Location: LCCOMB_X12_Y11_N26
\spi|inner_data~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~243_combout\ = (\spi|inner_data~241_combout\) # ((\spi|inner_data~242_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(1),
	datac => \spi|inner_data~241_combout\,
	datad => \spi|inner_data~242_combout\,
	combout => \spi|inner_data~243_combout\);

-- Location: LCCOMB_X12_Y11_N24
\spi|inner_data~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~244_combout\ = (\spi|state.command_read_accel~regout\ & (!\spi|state.command_read_temp~regout\ & \spi|inner_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|inner_data\(2),
	combout => \spi|inner_data~244_combout\);

-- Location: LCCOMB_X15_Y9_N4
\spi|inner_data~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~245_combout\ = (\spi|inner_data\(34) & (((\spi|inner_data~69_combout\) # (!\spi|clk_sync~regout\)) # (!\spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|inner_data\(34),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~245_combout\);

-- Location: LCCOMB_X15_Y9_N2
\spi|inner_data~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~246_combout\ = (\spi|inner_data\(33) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(33),
	combout => \spi|inner_data~246_combout\);

-- Location: LCCOMB_X13_Y9_N14
\spi|inner_data~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~247_combout\ = (\spi|inner_data\(34) & (\spi|inner_data~69_combout\ & ((!\spi|inner_data~98_combout\) # (!\spi|inner_data~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(34),
	datab => \spi|inner_data~235_combout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data~98_combout\,
	combout => \spi|inner_data~247_combout\);

-- Location: LCCOMB_X14_Y9_N8
\spi|inner_data~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~248_combout\ = (\spi|inner_data~246_combout\) # ((\spi|inner_data~247_combout\) # ((\spi|inner_data~235_combout\ & \spi|inner_data~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~246_combout\,
	datab => \spi|inner_data~235_combout\,
	datac => \spi|inner_data~134_combout\,
	datad => \spi|inner_data~247_combout\,
	combout => \spi|inner_data~248_combout\);

-- Location: LCCOMB_X15_Y9_N16
\spi|inner_data~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~249_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(34),
	combout => \spi|inner_data~249_combout\);

-- Location: LCCOMB_X12_Y10_N6
\spi|inner_data~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~250_combout\ = (\spi|inner_data\(9) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data\(9),
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data~69_combout\,
	combout => \spi|inner_data~250_combout\);

-- Location: LCCOMB_X12_Y10_N4
\spi|inner_data~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~251_combout\ = (\spi|inner_data\(8) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(8),
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~251_combout\);

-- Location: LCCOMB_X12_Y10_N2
\spi|inner_data~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~252_combout\ = (\spi|inner_data\(9) & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(9),
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~252_combout\);

-- Location: LCCOMB_X12_Y10_N28
\spi|inner_data~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~253_combout\ = (\spi|inner_data~252_combout\ & (((\spi|Add2~12_combout\) # (!\spi|inner_data~142_combout\)) # (!\spi|inner_data~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~252_combout\,
	datab => \spi|inner_data~196_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|inner_data~142_combout\,
	combout => \spi|inner_data~253_combout\);

-- Location: LCCOMB_X12_Y10_N30
\spi|inner_data~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~254_combout\ = (!\spi|Add2~2_combout\ & (!\spi|Add2~12_combout\ & (\spi|Add2~0_combout\ & !\spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~254_combout\);

-- Location: LCCOMB_X12_Y10_N12
\spi|inner_data~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~255_combout\ = (\spi|inner_data~251_combout\) # ((\spi|inner_data~253_combout\) # ((\spi|inner_data~137_combout\ & \spi|inner_data~254_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~137_combout\,
	datab => \spi|inner_data~254_combout\,
	datac => \spi|inner_data~251_combout\,
	datad => \spi|inner_data~253_combout\,
	combout => \spi|inner_data~255_combout\);

-- Location: LCCOMB_X13_Y8_N4
\spi|inner_data~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~256_combout\ = (\spi|inner_data\(25) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data\(25),
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~256_combout\);

-- Location: LCCOMB_X13_Y8_N14
\spi|inner_data~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~257_combout\ = (!\spi|Add2~12_combout\ & (\spi|Add2~4_combout\ & (\spi|inner_data~196_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|inner_data~196_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~257_combout\);

-- Location: LCCOMB_X13_Y8_N8
\spi|inner_data~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~258_combout\ = (\spi|inner_data\(25) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(25),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~258_combout\);

-- Location: LCCOMB_X13_Y8_N22
\spi|inner_data~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~259_combout\ = (\spi|inner_data~258_combout\ & ((\spi|Add2~12_combout\) # ((!\spi|inner_data~149_combout\) # (!\spi|inner_data~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~258_combout\,
	datac => \spi|inner_data~196_combout\,
	datad => \spi|inner_data~149_combout\,
	combout => \spi|inner_data~259_combout\);

-- Location: LCCOMB_X13_Y8_N28
\spi|inner_data~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~260_combout\ = (\spi|inner_data~257_combout\) # ((\spi|inner_data~259_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(24),
	datac => \spi|inner_data~257_combout\,
	datad => \spi|inner_data~259_combout\,
	combout => \spi|inner_data~260_combout\);

-- Location: LCCOMB_X17_Y11_N8
\spi|inner_data~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~261_combout\ = (\spi|inner_data\(17) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(17),
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~261_combout\);

-- Location: LCCOMB_X17_Y11_N22
\spi|inner_data~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~262_combout\ = (!\spi|Add2~12_combout\ & (\spi|inner_data~137_combout\ & (\spi|Add2~4_combout\ & \spi|inner_data~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~137_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~207_combout\,
	combout => \spi|inner_data~262_combout\);

-- Location: LCCOMB_X17_Y11_N24
\spi|inner_data~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~263_combout\ = (\spi|inner_data\(17) & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(17),
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~263_combout\);

-- Location: LCCOMB_X17_Y11_N18
\spi|inner_data~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~264_combout\ = (\spi|inner_data~263_combout\ & ((\spi|Add2~12_combout\) # ((!\spi|inner_data~149_combout\) # (!\spi|inner_data~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~207_combout\,
	datac => \spi|inner_data~263_combout\,
	datad => \spi|inner_data~149_combout\,
	combout => \spi|inner_data~264_combout\);

-- Location: LCCOMB_X17_Y11_N28
\spi|inner_data~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~265_combout\ = (\spi|inner_data~262_combout\) # ((\spi|inner_data~264_combout\) # ((\spi|inner_data\(16) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(16),
	datab => \spi|inner_data~262_combout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data~264_combout\,
	combout => \spi|inner_data~265_combout\);

-- Location: LCCOMB_X13_Y11_N4
\spi|inner_data~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~266_combout\ = (\spi|inner_data\(1) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data\(1),
	combout => \spi|inner_data~266_combout\);

-- Location: LCCOMB_X17_Y11_N2
\spi|inner_data~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~267_combout\ = (!\spi|Add2~12_combout\ & (!\spi|Add2~4_combout\ & (\spi|inner_data~207_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|inner_data~207_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~267_combout\);

-- Location: LCCOMB_X13_Y11_N18
\spi|inner_data~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~268_combout\ = (\spi|inner_data\(1) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(1),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~268_combout\);

-- Location: LCCOMB_X14_Y11_N10
\spi|inner_data~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~269_combout\ = (\spi|inner_data~268_combout\ & ((\spi|Add2~12_combout\) # ((!\spi|inner_data~142_combout\) # (!\spi|inner_data~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|inner_data~268_combout\,
	datac => \spi|inner_data~207_combout\,
	datad => \spi|inner_data~142_combout\,
	combout => \spi|inner_data~269_combout\);

-- Location: LCFF_X20_Y9_N1
\spi|inner_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(0));

-- Location: LCCOMB_X13_Y11_N12
\spi|inner_data~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~270_combout\ = (\spi|inner_data~269_combout\) # ((\spi|inner_data~267_combout\) # ((\spi|inner_data\(0) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(0),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~269_combout\,
	datad => \spi|inner_data~267_combout\,
	combout => \spi|inner_data~270_combout\);

-- Location: LCCOMB_X15_Y9_N30
\spi|inner_data~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~271_combout\ = (\spi|inner_data\(33) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(33),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~271_combout\);

-- Location: LCCOMB_X15_Y9_N20
\spi|inner_data~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~272_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(33),
	combout => \spi|inner_data~272_combout\);

-- Location: LCCOMB_X15_Y9_N14
\spi|inner_data~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~273_combout\ = (\spi|inner_data~272_combout\ & (((\spi|Add2~12_combout\) # (!\spi|inner_data~222_combout\)) # (!\spi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~272_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~222_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~273_combout\);

-- Location: LCCOMB_X15_Y9_N12
\spi|inner_data~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~274_combout\ = (!\spi|Add2~2_combout\ & (\spi|Add2~14_combout\ & (\spi|inner_data~134_combout\ & !\spi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~134_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~274_combout\);

-- Location: LCCOMB_X15_Y9_N6
\spi|inner_data~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~275_combout\ = (\spi|inner_data~273_combout\) # ((\spi|inner_data~274_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(32),
	datac => \spi|inner_data~273_combout\,
	datad => \spi|inner_data~274_combout\,
	combout => \spi|inner_data~275_combout\);

-- Location: LCCOMB_X12_Y10_N10
\spi|inner_data~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~276_combout\ = (\spi|inner_data\(8) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data\(8),
	combout => \spi|inner_data~276_combout\);

-- Location: LCCOMB_X12_Y11_N30
\spi|inner_data~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~277_combout\ = (!\spi|Add2~14_combout\ & !\spi|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~14_combout\,
	datac => \spi|Add2~12_combout\,
	combout => \spi|inner_data~277_combout\);

-- Location: LCCOMB_X12_Y10_N24
\spi|inner_data~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~278_combout\ = (\spi|inner_data\(8) & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(8),
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~278_combout\);

-- Location: LCCOMB_X12_Y10_N14
\spi|inner_data~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~279_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & !\spi|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~6_combout\,
	datac => \spi|Add2~8_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~279_combout\);

-- Location: LCCOMB_X12_Y10_N20
\spi|inner_data~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~280_combout\ = (\spi|inner_data~278_combout\ & ((\spi|Add2~14_combout\) # ((!\spi|inner_data~254_combout\) # (!\spi|inner_data~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~278_combout\,
	datab => \spi|Add2~14_combout\,
	datac => \spi|inner_data~279_combout\,
	datad => \spi|inner_data~254_combout\,
	combout => \spi|inner_data~280_combout\);

-- Location: LCCOMB_X12_Y10_N18
\spi|inner_data~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~281_combout\ = (\spi|inner_data~280_combout\) # ((\spi|inner_data~302_combout\) # ((\spi|inner_data\(7) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(7),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~280_combout\,
	datad => \spi|inner_data~302_combout\,
	combout => \spi|inner_data~281_combout\);

-- Location: LCCOMB_X13_Y10_N6
\spi|inner_data~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~282_combout\ = (\spi|inner_data\(24) & ((\spi|inner_data~69_combout\) # ((!\spi|Equal2~2_combout\) # (!\spi|clk_sync~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data\(24),
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~282_combout\);

-- Location: LCCOMB_X13_Y10_N24
\spi|inner_data~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~283_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|inner_data\(24) & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datac => \spi|inner_data\(24),
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~283_combout\);

-- Location: LCCOMB_X13_Y10_N2
\spi|inner_data~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~284_combout\ = (\spi|inner_data~283_combout\ & (((!\spi|inner_data~117_combout\) # (!\spi|inner_data~277_combout\)) # (!\spi|inner_data~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~283_combout\,
	datab => \spi|inner_data~196_combout\,
	datac => \spi|inner_data~277_combout\,
	datad => \spi|inner_data~117_combout\,
	combout => \spi|inner_data~284_combout\);

-- Location: LCCOMB_X13_Y10_N0
\spi|inner_data~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~285_combout\ = (\spi|inner_data~284_combout\) # ((\spi|inner_data~303_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data~284_combout\,
	datac => \spi|inner_data\(23),
	datad => \spi|inner_data~303_combout\,
	combout => \spi|inner_data~285_combout\);

-- Location: LCCOMB_X17_Y11_N20
\spi|inner_data~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~286_combout\ = (\spi|inner_data\(16) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(16),
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~286_combout\);

-- Location: LCCOMB_X17_Y11_N14
\spi|inner_data~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~287_combout\ = (\spi|inner_data\(16) & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(16),
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~287_combout\);

-- Location: LCCOMB_X17_Y11_N4
\spi|inner_data~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~288_combout\ = (\spi|inner_data~287_combout\ & (((!\spi|inner_data~207_combout\) # (!\spi|inner_data~277_combout\)) # (!\spi|inner_data~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~117_combout\,
	datab => \spi|inner_data~277_combout\,
	datac => \spi|inner_data~287_combout\,
	datad => \spi|inner_data~207_combout\,
	combout => \spi|inner_data~288_combout\);

-- Location: LCCOMB_X17_Y11_N6
\spi|inner_data~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~289_combout\ = (\spi|inner_data~288_combout\) # ((\spi|inner_data~304_combout\) # ((\spi|inner_data\(15) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(15),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~288_combout\,
	datad => \spi|inner_data~304_combout\,
	combout => \spi|inner_data~289_combout\);

-- Location: LCCOMB_X20_Y9_N30
\spi|inner_data~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~290_combout\ = (\spi|inner_data~207_combout\ & (!\spi|Add2~12_combout\ & (\spi|inner_data~171_combout\ & !\spi|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~207_combout\,
	datab => \spi|Add2~12_combout\,
	datac => \spi|inner_data~171_combout\,
	datad => \spi|always1~0_combout\,
	combout => \spi|inner_data~290_combout\);

-- Location: LCCOMB_X20_Y9_N12
\spi|inner_data~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~291_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~290_combout\ & (\miso~combout\)) # (!\spi|inner_data~290_combout\ & ((\spi|inner_data\(0)))))) # (!\spi|always1~1_combout\ & (((\spi|inner_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~combout\,
	datab => \spi|always1~1_combout\,
	datac => \spi|inner_data\(0),
	datad => \spi|inner_data~290_combout\,
	combout => \spi|inner_data~291_combout\);

-- Location: LCCOMB_X15_Y9_N8
\spi|inner_data~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~292_combout\ = (\spi|inner_data\(32) & (((\spi|inner_data~69_combout\) # (!\spi|clk_sync~regout\)) # (!\spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|inner_data\(32),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~292_combout\);

-- Location: LCCOMB_X15_Y9_N22
\spi|inner_data~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~293_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(32),
	combout => \spi|inner_data~293_combout\);

-- Location: LCCOMB_X15_Y9_N28
\spi|inner_data~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~294_combout\ = (\spi|inner_data~277_combout\ & ((\spi|inner_data~219_combout\) # ((\spi|inner_data~293_combout\ & !\spi|inner_data~222_combout\)))) # (!\spi|inner_data~277_combout\ & (\spi|inner_data~293_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~293_combout\,
	datab => \spi|inner_data~277_combout\,
	datac => \spi|inner_data~222_combout\,
	datad => \spi|inner_data~219_combout\,
	combout => \spi|inner_data~294_combout\);

-- Location: LCCOMB_X13_Y11_N10
\spi|inner_data~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~296_combout\ = (\spi|Add2~2_combout\ & (!\spi|Add2~0_combout\ & (\spi|inner_data~73_combout\ & !\spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~73_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~296_combout\);

-- Location: LCCOMB_X14_Y9_N24
\spi|inner_data~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~301_combout\ = (\spi|inner_data~223_combout\) # ((\spi|inner_data\(34) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|inner_data\(34),
	datad => \spi|inner_data~223_combout\,
	combout => \spi|inner_data~301_combout\);

-- Location: LCCOMB_X12_Y10_N22
\spi|inner_data~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~302_combout\ = (!\spi|Add2~2_combout\ & (\spi|inner_data~109_combout\ & (\spi|Add2~0_combout\ & \spi|inner_data~277_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~109_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~277_combout\,
	combout => \spi|inner_data~302_combout\);

-- Location: LCCOMB_X13_Y10_N10
\spi|inner_data~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~303_combout\ = (!\spi|Add2~2_combout\ & (\spi|Add2~0_combout\ & (\spi|inner_data~277_combout\ & \spi|inner_data~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~277_combout\,
	datad => \spi|inner_data~114_combout\,
	combout => \spi|inner_data~303_combout\);

-- Location: LCCOMB_X17_Y11_N12
\spi|inner_data~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~304_combout\ = (!\spi|Add2~2_combout\ & (!\spi|Add2~0_combout\ & (\spi|inner_data~277_combout\ & \spi|inner_data~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~277_combout\,
	datad => \spi|inner_data~114_combout\,
	combout => \spi|inner_data~304_combout\);

-- Location: LCCOMB_X20_Y9_N0
\spi|inner_data~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~305_combout\ = (\spi|inner_data~291_combout\ & (((!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\)) # (!\spi|inner_data~297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datab => \spi|inner_data~297_combout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data~291_combout\,
	combout => \spi|inner_data~305_combout\);

-- Location: LCCOMB_X15_Y9_N26
\spi|inner_data~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~306_combout\ = (\spi|inner_data~294_combout\) # ((\spi|inner_data\(31) & ((\spi|state.command_read_temp~regout\) # (!\spi|state.command_read_accel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datab => \spi|inner_data\(31),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data~294_combout\,
	combout => \spi|inner_data~306_combout\);

-- Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G5
\divider|out_clk_inner~clkctrl\ : cycloneii_clkctrl
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

-- Location: CLKCTRL_G6
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y7_N30
\divider|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~0_combout\ = (\divider|Add0~0_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~0_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~0_combout\);

-- Location: LCFF_X27_Y7_N31
\divider|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(0));

-- Location: LCCOMB_X27_Y7_N6
\divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~0_combout\ = \divider|counter\(0) $ (VCC)
-- \divider|Add0~1\ = CARRY(\divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(0),
	datad => VCC,
	combout => \divider|Add0~0_combout\,
	cout => \divider|Add0~1\);

-- Location: LCCOMB_X27_Y7_N12
\divider|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~6_combout\ = (\divider|counter\(3) & (!\divider|Add0~5\)) # (!\divider|counter\(3) & ((\divider|Add0~5\) # (GND)))
-- \divider|Add0~7\ = CARRY((!\divider|Add0~5\) # (!\divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(3),
	datad => VCC,
	cin => \divider|Add0~5\,
	combout => \divider|Add0~6_combout\,
	cout => \divider|Add0~7\);

-- Location: LCFF_X27_Y7_N9
\divider|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(1));

-- Location: LCCOMB_X27_Y7_N8
\divider|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~2_combout\ = (\divider|counter\(1) & (!\divider|Add0~1\)) # (!\divider|counter\(1) & ((\divider|Add0~1\) # (GND)))
-- \divider|Add0~3\ = CARRY((!\divider|Add0~1\) # (!\divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(1),
	datad => VCC,
	cin => \divider|Add0~1\,
	combout => \divider|Add0~2_combout\,
	cout => \divider|Add0~3\);

-- Location: LCCOMB_X27_Y7_N24
\divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (\divider|Add0~4_combout\ & (\divider|Add0~0_combout\ & (!\divider|Add0~6_combout\ & !\divider|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~4_combout\,
	datab => \divider|Add0~0_combout\,
	datac => \divider|Add0~6_combout\,
	datad => \divider|Add0~2_combout\,
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y7_N4
\divider|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~1_combout\ = (\divider|Add0~4_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~4_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~1_combout\);

-- Location: LCFF_X27_Y7_N5
\divider|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(2));

-- Location: LCCOMB_X27_Y7_N14
\divider|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~8_combout\ = (\divider|counter\(4) & (\divider|Add0~7\ $ (GND))) # (!\divider|counter\(4) & (!\divider|Add0~7\ & VCC))
-- \divider|Add0~9\ = CARRY((\divider|counter\(4) & !\divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(4),
	datad => VCC,
	cin => \divider|Add0~7\,
	combout => \divider|Add0~8_combout\,
	cout => \divider|Add0~9\);

-- Location: LCFF_X27_Y7_N21
\divider|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(7));

-- Location: LCCOMB_X27_Y7_N16
\divider|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~10_combout\ = (\divider|counter\(5) & (!\divider|Add0~9\)) # (!\divider|counter\(5) & ((\divider|Add0~9\) # (GND)))
-- \divider|Add0~11\ = CARRY((!\divider|Add0~9\) # (!\divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(5),
	datad => VCC,
	cin => \divider|Add0~9\,
	combout => \divider|Add0~10_combout\,
	cout => \divider|Add0~11\);

-- Location: LCFF_X27_Y7_N17
\divider|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(5));

-- Location: LCCOMB_X27_Y7_N18
\divider|Add0~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X27_Y7_N20
\divider|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~14_combout\ = \divider|Add0~13\ $ (\divider|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divider|counter\(7),
	cin => \divider|Add0~13\,
	combout => \divider|Add0~14_combout\);

-- Location: LCCOMB_X27_Y7_N26
\divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~1_combout\ = (!\divider|Add0~10_combout\ & (!\divider|Add0~8_combout\ & (!\divider|Add0~14_combout\ & !\divider|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~10_combout\,
	datab => \divider|Add0~8_combout\,
	datac => \divider|Add0~14_combout\,
	datad => \divider|Add0~12_combout\,
	combout => \divider|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y7_N28
\divider|out_clk_inner~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~0_combout\ = \divider|out_clk_inner~regout\ $ (((\divider|Equal0~0_combout\ & \divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Equal0~0_combout\,
	datac => \divider|out_clk_inner~regout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|out_clk_inner~0_combout\);

-- Location: LCFF_X27_Y7_N29
\divider|out_clk_inner\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|out_clk_inner~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|out_clk_inner~regout\);

-- Location: LCCOMB_X14_Y9_N12
\spi|state.read_accel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|state.read_accel~0_combout\ = !\spi|state.command_read_accel~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|state.read_accel~0_combout\);

-- Location: LCCOMB_X20_Y9_N14
\spi|bit_number[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[0]~6_combout\ = \spi|bit_number\(0) $ (VCC)
-- \spi|bit_number[0]~7\ = CARRY(\spi|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datad => VCC,
	combout => \spi|bit_number[0]~6_combout\,
	cout => \spi|bit_number[0]~7\);

-- Location: LCCOMB_X20_Y9_N16
\spi|bit_number[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[1]~8_combout\ = (\spi|bit_number\(1) & (!\spi|bit_number[0]~7\)) # (!\spi|bit_number\(1) & ((\spi|bit_number[0]~7\) # (GND)))
-- \spi|bit_number[1]~9\ = CARRY((!\spi|bit_number[0]~7\) # (!\spi|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datad => VCC,
	cin => \spi|bit_number[0]~7\,
	combout => \spi|bit_number[1]~8_combout\,
	cout => \spi|bit_number[1]~9\);

-- Location: LCCOMB_X20_Y9_N18
\spi|bit_number[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[2]~10_combout\ = (\spi|bit_number\(2) & (\spi|bit_number[1]~9\ $ (GND))) # (!\spi|bit_number\(2) & (!\spi|bit_number[1]~9\ & VCC))
-- \spi|bit_number[2]~11\ = CARRY((\spi|bit_number\(2) & !\spi|bit_number[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(2),
	datad => VCC,
	cin => \spi|bit_number[1]~9\,
	combout => \spi|bit_number[2]~10_combout\,
	cout => \spi|bit_number[2]~11\);

-- Location: LCCOMB_X20_Y9_N10
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X20_Y10_N8
\spi|hold[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[1]~4_combout\ = (\spi|Add1~2_combout\ & !\spi|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add1~2_combout\,
	datad => \spi|Equal1~4_combout\,
	combout => \spi|hold[1]~4_combout\);

-- Location: LCCOMB_X19_Y9_N24
\spi|bit_count[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_count[3]~2_combout\ = (\spi|bit_count\(3) & ((\spi|state~11_combout\))) # (!\spi|bit_count\(3) & (\spi|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|always1~0_combout\,
	datac => \spi|bit_count\(3),
	datad => \spi|state~11_combout\,
	combout => \spi|bit_count[3]~2_combout\);

-- Location: LCFF_X19_Y9_N25
\spi|bit_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_count[3]~2_combout\,
	sdata => \spi|bit_count\(3),
	sload => \spi|inner_data~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_count\(3));

-- Location: LCCOMB_X20_Y9_N20
\spi|bit_number[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[3]~12_combout\ = (\spi|bit_number\(3) & (!\spi|bit_number[2]~11\)) # (!\spi|bit_number\(3) & ((\spi|bit_number[2]~11\) # (GND)))
-- \spi|bit_number[3]~13\ = CARRY((!\spi|bit_number[2]~11\) # (!\spi|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(3),
	datad => VCC,
	cin => \spi|bit_number[2]~11\,
	combout => \spi|bit_number[3]~12_combout\,
	cout => \spi|bit_number[3]~13\);

-- Location: LCCOMB_X17_Y9_N24
\spi|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|always1~1_combout\ = (\spi|clk_sync~regout\ & ((\spi|state~10_combout\) # (\spi|state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_sync~regout\,
	datac => \spi|state~10_combout\,
	datad => \spi|state~9_combout\,
	combout => \spi|always1~1_combout\);

-- Location: LCCOMB_X20_Y9_N26
\spi|inner_data~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~297_combout\ = (\spi|always1~1_combout\) # ((\spi|clk_sync~regout\ & (\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\ & ((\spi|start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|start~regout\,
	datad => \spi|always1~1_combout\,
	combout => \spi|inner_data~297_combout\);

-- Location: LCFF_X20_Y9_N15
\spi|bit_number[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[0]~6_combout\,
	sdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~14_combout\,
	ena => \spi|inner_data~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(0));

-- Location: LCCOMB_X19_Y9_N14
\spi|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal2~0_combout\ = (\spi|bit_number\(1) & (\spi|bit_number\(0) & \spi|bit_number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datac => \spi|bit_number\(0),
	datad => \spi|bit_number\(2),
	combout => \spi|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\spi|bit_count[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_count[5]~3_combout\ = (\spi|always1~0_combout\ & (((\spi|inner_data~69_combout\)))) # (!\spi|always1~0_combout\ & ((\spi|state.read_temp~regout\) # ((\spi|state.read_accel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.read_temp~regout\,
	datab => \spi|state.read_accel~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|always1~0_combout\,
	combout => \spi|bit_count[5]~3_combout\);

-- Location: LCCOMB_X19_Y9_N18
\spi|bit_count[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_count[5]~5_combout\ = (\spi|bit_count[4]~4_combout\ & (((\spi|bit_count\(5))))) # (!\spi|bit_count[4]~4_combout\ & (((\spi|bit_count\(5) & \spi|bit_count[5]~3_combout\)) # (!\spi|state.command_read_accel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count[4]~4_combout\,
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|bit_count\(5),
	datad => \spi|bit_count[5]~3_combout\,
	combout => \spi|bit_count[5]~5_combout\);

-- Location: LCFF_X19_Y9_N19
\spi|bit_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_count[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_count\(5));

-- Location: LCCOMB_X19_Y9_N10
\spi|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add0~0_combout\ = \spi|bit_count\(5) $ (((\spi|bit_count\(4)) # (\spi|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(4),
	datac => \spi|bit_count\(3),
	datad => \spi|bit_count\(5),
	combout => \spi|Add0~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\spi|bit_count[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_count[4]~6_combout\ = (\spi|bit_count[4]~4_combout\ & (((\spi|bit_count\(4))))) # (!\spi|bit_count[4]~4_combout\ & ((\spi|state.command_read_temp~regout\) # ((\spi|bit_count\(4) & \spi|bit_count[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count[4]~4_combout\,
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|bit_count\(4),
	datad => \spi|bit_count[5]~3_combout\,
	combout => \spi|bit_count[4]~6_combout\);

-- Location: LCFF_X19_Y9_N17
\spi|bit_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_count\(4));

-- Location: LCCOMB_X18_Y9_N28
\spi|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add0~1_combout\ = \spi|bit_count\(4) $ (\spi|bit_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_count\(4),
	datad => \spi|bit_count\(3),
	combout => \spi|Add0~1_combout\);

-- Location: LCCOMB_X18_Y9_N14
\spi|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal2~1_combout\ = (\spi|bit_number\(4) & (!\spi|Add0~1_combout\ & (\spi|Add0~0_combout\ $ (\spi|bit_number\(5))))) # (!\spi|bit_number\(4) & (\spi|Add0~1_combout\ & (\spi|Add0~0_combout\ $ (\spi|bit_number\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(4),
	datab => \spi|Add0~0_combout\,
	datac => \spi|bit_number\(5),
	datad => \spi|Add0~1_combout\,
	combout => \spi|Equal2~1_combout\);

-- Location: LCCOMB_X18_Y9_N30
\spi|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|state~9_combout\ = (\spi|Equal2~1_combout\ & ((\spi|bit_count\(3) & (!\spi|bit_number\(3) & !\spi|Equal2~0_combout\)) # (!\spi|bit_count\(3) & ((!\spi|Equal2~0_combout\) # (!\spi|bit_number\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(3),
	datab => \spi|bit_number\(3),
	datac => \spi|Equal2~0_combout\,
	datad => \spi|Equal2~1_combout\,
	combout => \spi|state~9_combout\);

-- Location: LCCOMB_X17_Y9_N12
\spi|bit_number~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number~14_combout\ = (!\spi|inner_data~69_combout\ & (((!\spi|state~10_combout\ & !\spi|state~9_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state~10_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|state~9_combout\,
	combout => \spi|bit_number~14_combout\);

-- Location: LCFF_X20_Y9_N21
\spi|bit_number[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[3]~12_combout\,
	sdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~14_combout\,
	ena => \spi|inner_data~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(3));

-- Location: LCCOMB_X19_Y9_N8
\spi|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|LessThan0~0_combout\ = \spi|bit_count\(3) $ (\spi|bit_number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_count\(3),
	datad => \spi|bit_number\(3),
	combout => \spi|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y9_N30
\spi|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|always0~2_combout\ = (\spi|bit_count\(5) & (\spi|bit_number\(5) & (\spi|bit_number\(4) $ (!\spi|bit_count\(4))))) # (!\spi|bit_count\(5) & (!\spi|bit_number\(5) & (\spi|bit_number\(4) $ (!\spi|bit_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(5),
	datab => \spi|bit_number\(4),
	datac => \spi|bit_count\(4),
	datad => \spi|bit_number\(5),
	combout => \spi|always0~2_combout\);

-- Location: LCCOMB_X19_Y9_N12
\spi|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|always0~3_combout\ = (!\spi|bit_number\(1) & (!\spi|bit_number\(2) & (!\spi|bit_number\(0) & \spi|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datab => \spi|bit_number\(2),
	datac => \spi|bit_number\(0),
	datad => \spi|always0~2_combout\,
	combout => \spi|always0~3_combout\);

-- Location: LCCOMB_X19_Y9_N28
\spi|hold[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[1]~5_combout\ = ((!\spi|WideOr0~0_combout\ & (!\spi|LessThan0~0_combout\ & \spi|always0~3_combout\))) # (!\spi|start_hold~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|WideOr0~0_combout\,
	datab => \spi|start_hold~regout\,
	datac => \spi|LessThan0~0_combout\,
	datad => \spi|always0~3_combout\,
	combout => \spi|hold[1]~5_combout\);

-- Location: LCFF_X20_Y10_N9
\spi|hold[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[1]~4_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(1));

-- Location: LCCOMB_X18_Y10_N30
\spi|hold[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[4]~16_combout\ = (\spi|start_hold~regout\) # (\spi|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|start_hold~regout\,
	datad => \spi|Equal1~4_combout\,
	combout => \spi|hold[4]~16_combout\);

-- Location: LCCOMB_X18_Y10_N4
\spi|hold[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[0]~0_combout\ = (\spi|hold[4]~16_combout\ & ((!\spi|state.command_read_accel~regout\))) # (!\spi|hold[4]~16_combout\ & (\spi|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add1~0_combout\,
	datab => \spi|state.command_read_accel~regout\,
	datad => \spi|hold[4]~16_combout\,
	combout => \spi|hold[0]~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\spi|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|WideOr0~0_combout\ = (!\spi|bit_count\(4) & (!\spi|bit_count\(5) & !\spi|bit_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(4),
	datab => \spi|bit_count\(5),
	datac => \spi|bit_count\(3),
	combout => \spi|WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y9_N6
\spi|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|always0~4_combout\ = (!\spi|WideOr0~0_combout\ & (\spi|always0~3_combout\ & (\spi|bit_count\(3) $ (!\spi|bit_number\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(3),
	datab => \spi|bit_number\(3),
	datac => \spi|WideOr0~0_combout\,
	datad => \spi|always0~3_combout\,
	combout => \spi|always0~4_combout\);

-- Location: LCCOMB_X18_Y10_N20
\spi|hold[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[4]~17_combout\ = (\spi|start_hold~regout\ & ((!\spi|always0~4_combout\))) # (!\spi|start_hold~regout\ & (\spi|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|start_hold~regout\,
	datac => \spi|Equal1~4_combout\,
	datad => \spi|always0~4_combout\,
	combout => \spi|hold[4]~17_combout\);

-- Location: LCFF_X18_Y10_N5
\spi|hold[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[0]~0_combout\,
	sdata => \spi|hold\(0),
	sload => \spi|hold[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(0));

-- Location: LCCOMB_X19_Y10_N4
\spi|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add1~4_combout\ = (\spi|hold\(2) & ((GND) # (!\spi|Add1~3\))) # (!\spi|hold\(2) & (\spi|Add1~3\ $ (GND)))
-- \spi|Add1~5\ = CARRY((\spi|hold\(2)) # (!\spi|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(2),
	datad => VCC,
	cin => \spi|Add1~3\,
	combout => \spi|Add1~4_combout\,
	cout => \spi|Add1~5\);

-- Location: LCCOMB_X20_Y10_N14
\spi|hold[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[2]~6_combout\ = (\spi|Add1~4_combout\ & !\spi|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add1~4_combout\,
	datad => \spi|Equal1~4_combout\,
	combout => \spi|hold[2]~6_combout\);

-- Location: LCFF_X20_Y10_N15
\spi|hold[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[2]~6_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(2));

-- Location: LCCOMB_X18_Y10_N22
\spi|hold[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[3]~1_combout\ = (\spi|hold[4]~16_combout\ & ((!\spi|state.command_read_accel~regout\))) # (!\spi|hold[4]~16_combout\ & (\spi|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add1~6_combout\,
	datab => \spi|state.command_read_accel~regout\,
	datad => \spi|hold[4]~16_combout\,
	combout => \spi|hold[3]~1_combout\);

-- Location: LCFF_X18_Y10_N23
\spi|hold[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[3]~1_combout\,
	sdata => \spi|hold\(3),
	sload => \spi|hold[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(3));

-- Location: LCCOMB_X19_Y10_N8
\spi|Add1~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y10_N24
\spi|hold[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[4]~2_combout\ = (\spi|hold[4]~16_combout\ & (!\spi|state.command_read_accel~regout\)) # (!\spi|hold[4]~16_combout\ & ((\spi|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datab => \spi|Add1~8_combout\,
	datad => \spi|hold[4]~16_combout\,
	combout => \spi|hold[4]~2_combout\);

-- Location: LCFF_X18_Y10_N25
\spi|hold[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[4]~2_combout\,
	sdata => \spi|hold\(4),
	sload => \spi|hold[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(4));

-- Location: LCCOMB_X19_Y10_N10
\spi|Add1~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X20_Y10_N28
\spi|hold[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[5]~7_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~10_combout\,
	combout => \spi|hold[5]~7_combout\);

-- Location: LCFF_X20_Y10_N29
\spi|hold[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[5]~7_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(5));

-- Location: LCCOMB_X20_Y10_N22
\spi|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~0_combout\ = (!\spi|hold\(6) & (!\spi|hold\(2) & (!\spi|hold\(1) & !\spi|hold\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(6),
	datab => \spi|hold\(2),
	datac => \spi|hold\(1),
	datad => \spi|hold\(5),
	combout => \spi|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y10_N14
\spi|Add1~14\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X20_Y10_N12
\spi|hold[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[7]~9_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~14_combout\,
	combout => \spi|hold[7]~9_combout\);

-- Location: LCFF_X20_Y10_N13
\spi|hold[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[7]~9_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(7));

-- Location: LCCOMB_X19_Y10_N16
\spi|Add1~16\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X20_Y10_N30
\spi|hold[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[8]~10_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~16_combout\,
	combout => \spi|hold[8]~10_combout\);

-- Location: LCFF_X20_Y10_N31
\spi|hold[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[8]~10_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(8));

-- Location: LCCOMB_X19_Y10_N18
\spi|Add1~18\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X20_Y10_N24
\spi|hold[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[9]~11_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~18_combout\,
	combout => \spi|hold[9]~11_combout\);

-- Location: LCFF_X20_Y10_N25
\spi|hold[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[9]~11_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(9));

-- Location: LCCOMB_X19_Y10_N24
\spi|Add1~24\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X20_Y10_N10
\spi|hold[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[12]~14_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~24_combout\,
	combout => \spi|hold[12]~14_combout\);

-- Location: LCFF_X20_Y10_N11
\spi|hold[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[12]~14_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(12));

-- Location: LCCOMB_X18_Y10_N18
\spi|hold[13]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[13]~3_combout\ = (\spi|hold[4]~16_combout\ & ((!\spi|state.command_read_accel~regout\))) # (!\spi|hold[4]~16_combout\ & (\spi|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add1~26_combout\,
	datab => \spi|state.command_read_accel~regout\,
	datad => \spi|hold[4]~16_combout\,
	combout => \spi|hold[13]~3_combout\);

-- Location: LCFF_X18_Y10_N19
\spi|hold[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[13]~3_combout\,
	sdata => \spi|hold\(13),
	sload => \spi|hold[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(13));

-- Location: LCCOMB_X19_Y10_N28
\spi|Add1~28\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X20_Y10_N16
\spi|hold[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|hold[14]~15_combout\ = (!\spi|Equal1~4_combout\ & \spi|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datad => \spi|Add1~28_combout\,
	combout => \spi|hold[14]~15_combout\);

-- Location: LCFF_X20_Y10_N17
\spi|hold[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|hold[14]~15_combout\,
	sclr => \spi|start_hold~regout\,
	ena => \spi|hold[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|hold\(14));

-- Location: LCCOMB_X19_Y10_N30
\spi|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~2_combout\ = (!\spi|hold\(11) & (!\spi|hold\(12) & (!\spi|hold\(14) & !\spi|hold\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|hold\(11),
	datab => \spi|hold\(12),
	datac => \spi|hold\(14),
	datad => \spi|hold\(0),
	combout => \spi|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y10_N12
\spi|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~3_combout\ = (!\spi|hold\(3) & (!\spi|hold\(4) & !\spi|hold\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|hold\(3),
	datac => \spi|hold\(4),
	datad => \spi|hold\(13),
	combout => \spi|Equal1~3_combout\);

-- Location: LCCOMB_X20_Y10_N18
\spi|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~4_combout\ = (\spi|Equal1~1_combout\ & (\spi|Equal1~0_combout\ & (\spi|Equal1~2_combout\ & \spi|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~1_combout\,
	datab => \spi|Equal1~0_combout\,
	datac => \spi|Equal1~2_combout\,
	datad => \spi|Equal1~3_combout\,
	combout => \spi|Equal1~4_combout\);

-- Location: LCCOMB_X19_Y9_N2
\spi|start_hold~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|start_hold~2_combout\ = (\spi|start_hold~regout\ & ((!\spi|always0~4_combout\))) # (!\spi|start_hold~regout\ & (\spi|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~4_combout\,
	datac => \spi|start_hold~regout\,
	datad => \spi|always0~4_combout\,
	combout => \spi|start_hold~2_combout\);

-- Location: LCFF_X19_Y9_N3
\spi|start_hold\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|start_hold~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|start_hold~regout\);

-- Location: LCCOMB_X18_Y10_N8
\spi|start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|start~0_combout\ = (\spi|start_hold~regout\ & (((\spi|start~regout\ & !\spi|always0~4_combout\)))) # (!\spi|start_hold~regout\ & ((\spi|Equal1~4_combout\) # ((\spi|start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~4_combout\,
	datab => \spi|start_hold~regout\,
	datac => \spi|start~regout\,
	datad => \spi|always0~4_combout\,
	combout => \spi|start~0_combout\);

-- Location: LCFF_X18_Y10_N9
\spi|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|start~regout\);

-- Location: LCCOMB_X17_Y9_N16
\spi|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|always1~0_combout\ = (!\spi|clk_sync~regout\ & \spi|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_sync~regout\,
	datad => \spi|start~regout\,
	combout => \spi|always1~0_combout\);

-- Location: LCFF_X20_Y9_N19
\spi|bit_number[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[2]~10_combout\,
	sdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~14_combout\,
	ena => \spi|inner_data~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(2));

-- Location: LCCOMB_X20_Y9_N22
\spi|bit_number[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[4]~15_combout\ = (\spi|bit_number\(4) & (\spi|bit_number[3]~13\ $ (GND))) # (!\spi|bit_number\(4) & (!\spi|bit_number[3]~13\ & VCC))
-- \spi|bit_number[4]~16\ = CARRY((\spi|bit_number\(4) & !\spi|bit_number[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(4),
	datad => VCC,
	cin => \spi|bit_number[3]~13\,
	combout => \spi|bit_number[4]~15_combout\,
	cout => \spi|bit_number[4]~16\);

-- Location: LCFF_X20_Y9_N23
\spi|bit_number[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[4]~15_combout\,
	sdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~14_combout\,
	ena => \spi|inner_data~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(4));

-- Location: LCCOMB_X20_Y9_N24
\spi|bit_number[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[5]~17_combout\ = \spi|bit_number\(5) $ (\spi|bit_number[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(5),
	cin => \spi|bit_number[4]~16\,
	combout => \spi|bit_number[5]~17_combout\);

-- Location: LCFF_X20_Y9_N25
\spi|bit_number[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[5]~17_combout\,
	sdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~14_combout\,
	ena => \spi|inner_data~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(5));

-- Location: LCCOMB_X18_Y9_N12
\spi|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|LessThan0~1_combout\ = (!\spi|bit_number\(4) & (!\spi|Add0~1_combout\ & (\spi|Add0~0_combout\ $ (\spi|bit_number\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(4),
	datab => \spi|Add0~0_combout\,
	datac => \spi|bit_number\(5),
	datad => \spi|Add0~1_combout\,
	combout => \spi|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y9_N2
\spi|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|state~10_combout\ = (\spi|WideOr0~0_combout\) # ((\spi|LessThan0~1_combout\) # ((!\spi|bit_number\(5) & !\spi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|WideOr0~0_combout\,
	datab => \spi|bit_number\(5),
	datac => \spi|Add0~0_combout\,
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|state~10_combout\);

-- Location: LCCOMB_X18_Y9_N4
\spi|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal2~2_combout\ = (!\spi|WideOr0~0_combout\ & (\spi|Equal2~0_combout\ & (\spi|LessThan0~0_combout\ & \spi|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|WideOr0~0_combout\,
	datab => \spi|Equal2~0_combout\,
	datac => \spi|LessThan0~0_combout\,
	datad => \spi|Equal2~1_combout\,
	combout => \spi|Equal2~2_combout\);

-- Location: LCCOMB_X17_Y9_N6
\spi|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|state~11_combout\ = (\spi|state~9_combout\) # (((\spi|state~10_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state~9_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|state~10_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|state~11_combout\);

-- Location: LCFF_X14_Y9_N13
\spi|state.read_accel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|state.read_accel~0_combout\,
	ena => \spi|ALT_INV_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|state.read_accel~regout\);

-- Location: LCFF_X14_Y9_N11
\spi|state.command_read_temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	sdata => \spi|state.read_accel~regout\,
	sload => VCC,
	ena => \spi|ALT_INV_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|state.command_read_temp~regout\);

-- Location: LCCOMB_X14_Y9_N20
\spi|state.read_temp~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|state.read_temp~feeder_combout\ = \spi|state.command_read_temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|state.read_temp~feeder_combout\);

-- Location: LCFF_X14_Y9_N21
\spi|state.read_temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|state.read_temp~feeder_combout\,
	ena => \spi|ALT_INV_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|state.read_temp~regout\);

-- Location: LCCOMB_X14_Y9_N28
\spi|state.command_read_accel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|state.command_read_accel~0_combout\ = !\spi|state.read_temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|state.read_temp~regout\,
	combout => \spi|state.command_read_accel~0_combout\);

-- Location: LCFF_X14_Y9_N29
\spi|state.command_read_accel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|state.command_read_accel~0_combout\,
	ena => \spi|ALT_INV_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|state.command_read_accel~regout\);

-- Location: LCCOMB_X15_Y8_N0
\spi|inner_data~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~69_combout\ = (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~69_combout\);

-- Location: LCCOMB_X17_Y9_N26
\spi|inner_data~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~295_combout\ = (\spi|clk_sync~regout\ & (!\spi|state~10_combout\ & ((!\spi|state~9_combout\)))) # (!\spi|clk_sync~regout\ & (((!\spi|start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state~10_combout\,
	datab => \spi|start~regout\,
	datac => \spi|state~9_combout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~295_combout\);

-- Location: LCCOMB_X17_Y9_N18
\spi|clk_sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|clk_sync~0_combout\ = ((\spi|clk_sync~regout\ & ((!\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)))) # (!\spi|inner_data~295_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|inner_data~295_combout\,
	combout => \spi|clk_sync~0_combout\);

-- Location: LCFF_X17_Y9_N19
\spi|clk_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|clk_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|clk_sync~regout\);

-- Location: LCCOMB_X20_Y7_N16
\spi|sclk\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|sclk~combout\ = (\divider|out_clk_inner~regout\ & \spi|clk_sync~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|out_clk_inner~regout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|sclk~combout\);

-- Location: LCCOMB_X17_Y9_N22
\spi|mosi_on~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|mosi_on~0_combout\ = (!\spi|state~10_combout\ & (\spi|clk_sync~regout\ & (!\spi|inner_data~69_combout\ & !\spi|state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state~10_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|state~9_combout\,
	combout => \spi|mosi_on~0_combout\);

-- Location: LCCOMB_X17_Y9_N8
\spi|mosi_on~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|mosi_on~1_combout\ = (!\spi|always1~0_combout\ & ((\spi|mosi_on~regout\) # ((\spi|mosi_on~0_combout\ & \spi|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~0_combout\,
	datab => \spi|mosi_on~0_combout\,
	datac => \spi|mosi_on~regout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|mosi_on~1_combout\);

-- Location: LCFF_X17_Y9_N9
\spi|mosi_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|mosi_on~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|mosi_on~regout\);

-- Location: LCCOMB_X14_Y8_N8
\spi|inner_data~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~80_combout\ = (\spi|inner_data\(31) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data\(31),
	combout => \spi|inner_data~80_combout\);

-- Location: LCCOMB_X14_Y8_N18
\spi|inner_data~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~113_combout\ = (\spi|inner_data\(30) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|Equal2~2_combout\,
	datad => \spi|inner_data\(30),
	combout => \spi|inner_data~113_combout\);

-- Location: LCCOMB_X20_Y9_N8
\spi|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add2~2_combout\ = !\spi|bit_number\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|bit_number\(2),
	combout => \spi|Add2~2_combout\);

-- Location: LCFF_X20_Y9_N17
\spi|bit_number[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[1]~8_combout\,
	sdata => \~GND~combout\,
	sclr => \spi|always1~0_combout\,
	sload => \spi|bit_number~14_combout\,
	ena => \spi|inner_data~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(1));

-- Location: LCCOMB_X20_Y9_N2
\spi|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add2~12_combout\ = !\spi|bit_number\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_number\(1),
	combout => \spi|Add2~12_combout\);

-- Location: LCCOMB_X20_Y9_N4
\spi|Add2~14\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X13_Y9_N2
\spi|inner_data~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~110_combout\ = (\spi|Add2~2_combout\ & (\spi|Add2~12_combout\ & !\spi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Add2~2_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~110_combout\);

-- Location: LCCOMB_X18_Y9_N18
\spi|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add2~0_combout\ = (\spi|bit_count\(3) & (\spi|bit_number\(3) $ (GND))) # (!\spi|bit_count\(3) & ((GND) # (!\spi|bit_number\(3))))
-- \spi|Add2~1\ = CARRY((!\spi|bit_number\(3)) # (!\spi|bit_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(3),
	datab => \spi|bit_number\(3),
	datad => VCC,
	combout => \spi|Add2~0_combout\,
	cout => \spi|Add2~1\);

-- Location: LCCOMB_X18_Y9_N20
\spi|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add2~4_combout\ = (\spi|bit_number\(4) & ((\spi|Add0~1_combout\ & ((\spi|Add2~1\) # (GND))) # (!\spi|Add0~1_combout\ & (!\spi|Add2~1\)))) # (!\spi|bit_number\(4) & ((\spi|Add0~1_combout\ & (!\spi|Add2~1\)) # (!\spi|Add0~1_combout\ & (\spi|Add2~1\ & 
-- VCC))))
-- \spi|Add2~5\ = CARRY((\spi|bit_number\(4) & ((\spi|Add0~1_combout\) # (!\spi|Add2~1\))) # (!\spi|bit_number\(4) & (\spi|Add0~1_combout\ & !\spi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(4),
	datab => \spi|Add0~1_combout\,
	datad => VCC,
	cin => \spi|Add2~1\,
	combout => \spi|Add2~4_combout\,
	cout => \spi|Add2~5\);

-- Location: LCCOMB_X18_Y9_N22
\spi|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add2~6_combout\ = ((\spi|bit_number\(5) $ (\spi|Add0~0_combout\ $ (!\spi|Add2~5\)))) # (GND)
-- \spi|Add2~7\ = CARRY((\spi|bit_number\(5) & (!\spi|Add0~0_combout\ & !\spi|Add2~5\)) # (!\spi|bit_number\(5) & ((!\spi|Add2~5\) # (!\spi|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(5),
	datab => \spi|Add0~0_combout\,
	datad => VCC,
	cin => \spi|Add2~5\,
	combout => \spi|Add2~6_combout\,
	cout => \spi|Add2~7\);

-- Location: LCCOMB_X18_Y9_N24
\spi|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Add2~8_combout\ = (\spi|WideOr0~0_combout\ & (\spi|Add2~7\ & VCC)) # (!\spi|WideOr0~0_combout\ & (!\spi|Add2~7\))
-- \spi|Add2~9\ = CARRY((!\spi|WideOr0~0_combout\ & !\spi|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|WideOr0~0_combout\,
	datad => VCC,
	cin => \spi|Add2~7\,
	combout => \spi|Add2~8_combout\,
	cout => \spi|Add2~9\);

-- Location: LCCOMB_X14_Y9_N16
\spi|inner_data~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~299_combout\ = (\miso~combout\ & (\spi|state.command_read_accel~regout\ & (!\spi|state.command_read_temp~regout\ & \spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~combout\,
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~299_combout\);

-- Location: LCCOMB_X18_Y9_N26
\spi|Add2~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X14_Y9_N22
\spi|inner_data~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~114_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (\spi|inner_data~299_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|inner_data~299_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~114_combout\);

-- Location: LCCOMB_X14_Y8_N4
\spi|inner_data~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~115_combout\ = (\spi|inner_data~110_combout\ & (\spi|Add2~0_combout\ & \spi|inner_data~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data~110_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~114_combout\,
	combout => \spi|inner_data~115_combout\);

-- Location: LCCOMB_X17_Y8_N30
\spi|inner_data~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~145_combout\ = (\spi|inner_data\(29) & (((\spi|inner_data~69_combout\) # (!\spi|Equal2~2_combout\)) # (!\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(29),
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|inner_data~145_combout\);

-- Location: LCCOMB_X17_Y8_N22
\spi|inner_data~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~147_combout\ = (\spi|inner_data\(29) & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(29),
	datab => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~147_combout\);

-- Location: LCCOMB_X13_Y10_N22
\spi|inner_data~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~138_combout\ = (\spi|Add2~2_combout\ & !\spi|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~2_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~138_combout\);

-- Location: LCCOMB_X17_Y8_N12
\spi|inner_data~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~148_combout\ = (\spi|Add2~14_combout\ & \spi|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~14_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~148_combout\);

-- Location: LCCOMB_X17_Y8_N10
\spi|inner_data~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~149_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & \spi|inner_data~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~148_combout\,
	combout => \spi|inner_data~149_combout\);

-- Location: LCCOMB_X17_Y8_N24
\spi|inner_data~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~150_combout\ = (\spi|inner_data~147_combout\ & (((!\spi|inner_data~149_combout\) # (!\spi|inner_data~138_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~147_combout\,
	datac => \spi|inner_data~138_combout\,
	datad => \spi|inner_data~149_combout\,
	combout => \spi|inner_data~150_combout\);

-- Location: LCCOMB_X20_Y9_N28
\spi|inner_data~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~300_combout\ = (\miso~combout\ & (\spi|state.command_read_accel~regout\ & (\spi|Add2~14_combout\ & !\spi|state.command_read_temp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~combout\,
	datab => \spi|state.command_read_accel~regout\,
	datac => \spi|Add2~14_combout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~300_combout\);

-- Location: LCCOMB_X18_Y9_N0
\spi|inner_data~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~137_combout\ = (!\spi|Add2~8_combout\ & (!\spi|Add2~6_combout\ & (\spi|inner_data~300_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|Add2~6_combout\,
	datac => \spi|inner_data~300_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~137_combout\);

-- Location: LCCOMB_X17_Y8_N28
\spi|inner_data~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~146_combout\ = (\spi|Add2~0_combout\ & (\spi|Add2~4_combout\ & (\spi|inner_data~138_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|inner_data~138_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~146_combout\);

-- Location: LCCOMB_X17_Y8_N18
\spi|inner_data~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~151_combout\ = (\spi|inner_data~150_combout\) # ((\spi|inner_data~146_combout\) # ((\spi|inner_data\(28) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(28),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~150_combout\,
	datad => \spi|inner_data~146_combout\,
	combout => \spi|inner_data~151_combout\);

-- Location: LCCOMB_X17_Y8_N20
\spi|inner_data[29]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[29]~12_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~151_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~145_combout\,
	datad => \spi|inner_data~151_combout\,
	combout => \spi|inner_data[29]~12_combout\);

-- Location: LCFF_X17_Y8_N21
\spi|inner_data[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[29]~12_combout\,
	sdata => \spi|inner_data~147_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(29));

-- Location: LCCOMB_X14_Y8_N2
\spi|inner_data~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~119_combout\ = (\spi|inner_data~118_combout\) # ((\spi|inner_data~115_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~118_combout\,
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~115_combout\,
	datad => \spi|inner_data\(29),
	combout => \spi|inner_data~119_combout\);

-- Location: LCCOMB_X14_Y8_N22
\spi|inner_data[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[30]~7_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~119_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~113_combout\,
	datad => \spi|inner_data~119_combout\,
	combout => \spi|inner_data[30]~7_combout\);

-- Location: LCCOMB_X14_Y8_N10
\spi|inner_data~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~116_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(30),
	combout => \spi|inner_data~116_combout\);

-- Location: LCFF_X14_Y8_N23
\spi|inner_data[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[30]~7_combout\,
	sdata => \spi|inner_data~116_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(30));

-- Location: LCCOMB_X14_Y8_N24
\spi|inner_data~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~82_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(31),
	combout => \spi|inner_data~82_combout\);

-- Location: LCCOMB_X14_Y9_N14
\spi|inner_data~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~83_combout\ = (\spi|Add2~14_combout\ & (\spi|Add2~12_combout\ & \spi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|Add2~12_combout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~83_combout\);

-- Location: LCCOMB_X14_Y9_N0
\spi|inner_data~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~84_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (\spi|inner_data~83_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|inner_data~83_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~84_combout\);

-- Location: LCCOMB_X14_Y8_N14
\spi|inner_data~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~85_combout\ = (\spi|inner_data~82_combout\ & (((!\spi|inner_data~84_combout\) # (!\spi|Add2~0_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|inner_data~82_combout\,
	datad => \spi|inner_data~84_combout\,
	combout => \spi|inner_data~85_combout\);

-- Location: LCCOMB_X14_Y9_N10
\spi|inner_data~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~71_combout\ = (\miso~combout\ & (!\spi|state.command_read_temp~regout\ & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~combout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~71_combout\);

-- Location: LCCOMB_X13_Y9_N8
\spi|inner_data~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~72_combout\ = (\spi|inner_data~71_combout\ & (\spi|Add2~12_combout\ & \spi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data~71_combout\,
	datac => \spi|Add2~12_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~72_combout\);

-- Location: LCCOMB_X13_Y9_N18
\spi|inner_data~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~73_combout\ = (!\spi|Add2~6_combout\ & (\spi|inner_data~72_combout\ & (!\spi|Add2~10_combout\ & !\spi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|inner_data~72_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|Add2~8_combout\,
	combout => \spi|inner_data~73_combout\);

-- Location: LCCOMB_X14_Y8_N26
\spi|inner_data~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~81_combout\ = (\spi|Add2~2_combout\ & (\spi|Add2~4_combout\ & (\spi|Add2~0_combout\ & \spi|inner_data~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~4_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~73_combout\,
	combout => \spi|inner_data~81_combout\);

-- Location: LCCOMB_X14_Y8_N12
\spi|inner_data~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~86_combout\ = (\spi|inner_data~85_combout\) # ((\spi|inner_data~81_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(30),
	datac => \spi|inner_data~85_combout\,
	datad => \spi|inner_data~81_combout\,
	combout => \spi|inner_data~86_combout\);

-- Location: LCCOMB_X14_Y8_N28
\spi|inner_data[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[31]~2_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~86_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~80_combout\,
	datad => \spi|inner_data~86_combout\,
	combout => \spi|inner_data[31]~2_combout\);

-- Location: LCFF_X14_Y8_N29
\spi|inner_data[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[31]~2_combout\,
	sdata => \spi|inner_data~82_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(31));

-- Location: LCCOMB_X17_Y9_N2
\spi|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Mux0~0_combout\ = (\spi|bit_count\(4) & (\spi|inner_data\(23) & ((\spi|bit_count\(3))))) # (!\spi|bit_count\(4) & (((\spi|inner_data\(31)) # (\spi|bit_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(23),
	datab => \spi|bit_count\(4),
	datac => \spi|inner_data\(31),
	datad => \spi|bit_count\(3),
	combout => \spi|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\spi|inner_data~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~76_combout\ = (\spi|Add2~14_combout\ & (!\spi|Add2~4_combout\ & \spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~76_combout\);

-- Location: LCCOMB_X14_Y11_N24
\spi|inner_data~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~77_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & \spi|inner_data~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~76_combout\,
	combout => \spi|inner_data~77_combout\);

-- Location: LCCOMB_X14_Y11_N18
\spi|inner_data~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~78_combout\ = (\spi|inner_data~75_combout\ & (((!\spi|Add2~0_combout\) # (!\spi|inner_data~77_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~75_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~77_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~78_combout\);

-- Location: LCCOMB_X15_Y10_N2
\spi|inner_data~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~136_combout\ = (\spi|inner_data\(13) & (((\spi|inner_data~69_combout\) # (!\spi|clk_sync~regout\)) # (!\spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|inner_data\(13),
	datac => \spi|inner_data~69_combout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~136_combout\);

-- Location: LCCOMB_X15_Y10_N20
\spi|inner_data~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~139_combout\ = (!\spi|Add2~4_combout\ & (\spi|inner_data~138_combout\ & (\spi|Add2~0_combout\ & \spi|inner_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|inner_data~138_combout\,
	datac => \spi|Add2~0_combout\,
	datad => \spi|inner_data~137_combout\,
	combout => \spi|inner_data~139_combout\);

-- Location: LCCOMB_X15_Y10_N14
\spi|inner_data~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~140_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|inner_data\(13) & \spi|state.command_read_accel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_temp~regout\,
	datab => \spi|inner_data\(13),
	datad => \spi|state.command_read_accel~regout\,
	combout => \spi|inner_data~140_combout\);

-- Location: LCCOMB_X14_Y11_N12
\spi|inner_data~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~141_combout\ = (!\spi|Add2~4_combout\ & \spi|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~141_combout\);

-- Location: LCCOMB_X14_Y11_N22
\spi|inner_data~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~142_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & \spi|inner_data~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~141_combout\,
	combout => \spi|inner_data~142_combout\);

-- Location: LCCOMB_X15_Y10_N12
\spi|inner_data~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~143_combout\ = (\spi|inner_data~140_combout\ & (((!\spi|inner_data~138_combout\) # (!\spi|inner_data~142_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~140_combout\,
	datac => \spi|inner_data~142_combout\,
	datad => \spi|inner_data~138_combout\,
	combout => \spi|inner_data~143_combout\);

-- Location: LCCOMB_X15_Y10_N22
\spi|inner_data~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~144_combout\ = (\spi|inner_data~139_combout\) # ((\spi|inner_data~143_combout\) # ((\spi|inner_data\(12) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(12),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~139_combout\,
	datad => \spi|inner_data~143_combout\,
	combout => \spi|inner_data~144_combout\);

-- Location: LCCOMB_X15_Y10_N4
\spi|inner_data[13]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[13]~10_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~144_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~136_combout\,
	datad => \spi|inner_data~144_combout\,
	combout => \spi|inner_data[13]~10_combout\);

-- Location: LCFF_X15_Y10_N5
\spi|inner_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[13]~10_combout\,
	sdata => \spi|inner_data~140_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(13));

-- Location: LCCOMB_X12_Y11_N22
\spi|inner_data~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~105_combout\ = (\spi|state.command_read_accel~regout\ & (\spi|inner_data\(14) & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datab => \spi|inner_data\(14),
	datac => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~105_combout\);

-- Location: LCCOMB_X14_Y11_N28
\spi|inner_data~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~106_combout\ = (!\spi|Add2~14_combout\ & (!\spi|Add2~4_combout\ & \spi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~12_combout\,
	combout => \spi|inner_data~106_combout\);

-- Location: LCCOMB_X14_Y11_N14
\spi|inner_data~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~107_combout\ = (!\spi|Add2~6_combout\ & (!\spi|Add2~8_combout\ & (!\spi|Add2~10_combout\ & \spi|inner_data~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|Add2~8_combout\,
	datac => \spi|Add2~10_combout\,
	datad => \spi|inner_data~106_combout\,
	combout => \spi|inner_data~107_combout\);

-- Location: LCCOMB_X12_Y11_N4
\spi|inner_data~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~108_combout\ = (\spi|inner_data~105_combout\ & (((!\spi|inner_data~107_combout\) # (!\spi|Add2~2_combout\)) # (!\spi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|inner_data~105_combout\,
	datac => \spi|Add2~2_combout\,
	datad => \spi|inner_data~107_combout\,
	combout => \spi|inner_data~108_combout\);

-- Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
\miso~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_miso,
	combout => \miso~combout\);

-- Location: LCCOMB_X12_Y10_N16
\spi|inner_data~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~298_combout\ = (\spi|state.command_read_accel~regout\ & (\miso~combout\ & (!\spi|state.command_read_temp~regout\ & !\spi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|state.command_read_accel~regout\,
	datab => \miso~combout\,
	datac => \spi|state.command_read_temp~regout\,
	datad => \spi|Add2~4_combout\,
	combout => \spi|inner_data~298_combout\);

-- Location: LCCOMB_X12_Y10_N0
\spi|inner_data~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~109_combout\ = (!\spi|Add2~8_combout\ & (!\spi|Add2~6_combout\ & (\spi|inner_data~298_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|Add2~6_combout\,
	datac => \spi|inner_data~298_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~109_combout\);

-- Location: LCCOMB_X12_Y11_N6
\spi|inner_data~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~111_combout\ = (\spi|Add2~0_combout\ & (\spi|inner_data~110_combout\ & \spi|inner_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datac => \spi|inner_data~110_combout\,
	datad => \spi|inner_data~109_combout\,
	combout => \spi|inner_data~111_combout\);

-- Location: LCCOMB_X12_Y11_N0
\spi|inner_data~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~112_combout\ = (\spi|inner_data~108_combout\) # ((\spi|inner_data~111_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data\(13),
	datac => \spi|inner_data~108_combout\,
	datad => \spi|inner_data~111_combout\,
	combout => \spi|inner_data~112_combout\);

-- Location: LCCOMB_X12_Y11_N28
\spi|inner_data[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[14]~5_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~112_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~104_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~112_combout\,
	combout => \spi|inner_data[14]~5_combout\);

-- Location: LCFF_X12_Y11_N29
\spi|inner_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[14]~5_combout\,
	sdata => \spi|inner_data~105_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(14));

-- Location: LCCOMB_X14_Y11_N2
\spi|inner_data~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~74_combout\ = (\spi|Add2~2_combout\ & (\spi|Add2~0_combout\ & (!\spi|Add2~4_combout\ & \spi|inner_data~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|Add2~0_combout\,
	datac => \spi|Add2~4_combout\,
	datad => \spi|inner_data~73_combout\,
	combout => \spi|inner_data~74_combout\);

-- Location: LCCOMB_X14_Y11_N0
\spi|inner_data~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~79_combout\ = (\spi|inner_data~78_combout\) # ((\spi|inner_data~74_combout\) # ((!\spi|inner_data~69_combout\ & \spi|inner_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~69_combout\,
	datab => \spi|inner_data~78_combout\,
	datac => \spi|inner_data\(14),
	datad => \spi|inner_data~74_combout\,
	combout => \spi|inner_data~79_combout\);

-- Location: LCCOMB_X14_Y11_N8
\spi|inner_data[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[15]~0_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~79_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~70_combout\,
	datab => \spi|always1~1_combout\,
	datad => \spi|inner_data~79_combout\,
	combout => \spi|inner_data[15]~0_combout\);

-- Location: LCCOMB_X14_Y11_N20
\spi|inner_data~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~75_combout\ = (\spi|inner_data\(15) & (\spi|state.command_read_accel~regout\ & !\spi|state.command_read_temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(15),
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|state.command_read_temp~regout\,
	combout => \spi|inner_data~75_combout\);

-- Location: LCFF_X14_Y11_N9
\spi|inner_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[15]~0_combout\,
	sdata => \spi|inner_data~75_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(15));

-- Location: LCCOMB_X17_Y9_N4
\spi|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Mux0~1_combout\ = (\spi|Mux0~0_combout\ & ((\spi|inner_data\(7)) # ((!\spi|Add0~1_combout\)))) # (!\spi|Mux0~0_combout\ & (((\spi|inner_data\(15) & \spi|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(7),
	datab => \spi|Mux0~0_combout\,
	datac => \spi|inner_data\(15),
	datad => \spi|Add0~1_combout\,
	combout => \spi|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y9_N28
\spi|inner_data~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~97_combout\ = (\spi|inner_data\(39) & (((\spi|inner_data~69_combout\) # (!\spi|clk_sync~regout\)) # (!\spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~2_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data~69_combout\,
	datad => \spi|inner_data\(39),
	combout => \spi|inner_data~97_combout\);

-- Location: LCCOMB_X18_Y9_N16
\spi|inner_data~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~95_combout\ = (!\spi|Add2~4_combout\ & !\spi|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~4_combout\,
	datad => \spi|Add2~0_combout\,
	combout => \spi|inner_data~95_combout\);

-- Location: LCCOMB_X18_Y9_N6
\spi|inner_data~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~98_combout\ = (!\spi|Add2~8_combout\ & (\spi|Add2~6_combout\ & (\spi|inner_data~95_combout\ & !\spi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|Add2~6_combout\,
	datac => \spi|inner_data~95_combout\,
	datad => \spi|Add2~10_combout\,
	combout => \spi|inner_data~98_combout\);

-- Location: LCCOMB_X19_Y9_N20
\spi|inner_data~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~100_combout\ = (\spi|inner_data~99_combout\ & (\spi|Add2~2_combout\ & (\spi|inner_data~98_combout\ & \spi|inner_data~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data~99_combout\,
	datab => \spi|Add2~2_combout\,
	datac => \spi|inner_data~98_combout\,
	datad => \spi|inner_data~71_combout\,
	combout => \spi|inner_data~100_combout\);

-- Location: LCCOMB_X17_Y9_N14
\spi|inner_data~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~101_combout\ = (!\spi|state.command_read_temp~regout\ & (\spi|state.command_read_accel~regout\ & \spi|inner_data\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|state.command_read_temp~regout\,
	datac => \spi|state.command_read_accel~regout\,
	datad => \spi|inner_data\(39),
	combout => \spi|inner_data~101_combout\);

-- Location: LCCOMB_X13_Y9_N20
\spi|inner_data~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~99_combout\ = (\spi|Add2~12_combout\ & \spi|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add2~12_combout\,
	datad => \spi|Add2~14_combout\,
	combout => \spi|inner_data~99_combout\);

-- Location: LCCOMB_X19_Y9_N22
\spi|inner_data~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~102_combout\ = (\spi|inner_data~101_combout\ & (((!\spi|inner_data~99_combout\) # (!\spi|inner_data~98_combout\)) # (!\spi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|inner_data~101_combout\,
	datac => \spi|inner_data~98_combout\,
	datad => \spi|inner_data~99_combout\,
	combout => \spi|inner_data~102_combout\);

-- Location: LCCOMB_X19_Y9_N0
\spi|inner_data~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~103_combout\ = (\spi|inner_data~100_combout\) # ((\spi|inner_data~102_combout\) # ((\spi|inner_data\(38) & !\spi|inner_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(38),
	datab => \spi|inner_data~69_combout\,
	datac => \spi|inner_data~100_combout\,
	datad => \spi|inner_data~102_combout\,
	combout => \spi|inner_data~103_combout\);

-- Location: LCCOMB_X17_Y9_N0
\spi|inner_data[39]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[39]~4_combout\ = (\spi|always1~1_combout\ & ((\spi|inner_data~103_combout\))) # (!\spi|always1~1_combout\ & (\spi|inner_data~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|always1~1_combout\,
	datab => \spi|inner_data~97_combout\,
	datad => \spi|inner_data~103_combout\,
	combout => \spi|inner_data[39]~4_combout\);

-- Location: LCFF_X17_Y9_N1
\spi|inner_data[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data[39]~4_combout\,
	sdata => \spi|inner_data~101_combout\,
	sload => \spi|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(39));

-- Location: LCCOMB_X17_Y9_N30
\spi|mosi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|mosi~0_combout\ = (!\spi|bit_count\(4) & (\spi|bit_count\(3) & \spi|inner_data\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_count\(4),
	datab => \spi|bit_count\(3),
	datad => \spi|inner_data\(39),
	combout => \spi|mosi~0_combout\);

-- Location: LCCOMB_X17_Y9_N20
\spi|mosi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|mosi~1_combout\ = (\spi|Add0~0_combout\ & ((\spi|Mux0~1_combout\) # ((\spi|bit_count\(5) & \spi|mosi~0_combout\)))) # (!\spi|Add0~0_combout\ & (((\spi|bit_count\(5) & \spi|mosi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~0_combout\,
	datab => \spi|Mux0~1_combout\,
	datac => \spi|bit_count\(5),
	datad => \spi|mosi~0_combout\,
	combout => \spi|mosi~1_combout\);

-- Location: LCCOMB_X17_Y9_N10
\spi|mosi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|mosi~2_combout\ = (!\spi|mosi_on~regout\ & (\spi|mosi~1_combout\ & \spi|clk_sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|mosi_on~regout\,
	datac => \spi|mosi~1_combout\,
	datad => \spi|clk_sync~regout\,
	combout => \spi|mosi~2_combout\);

-- Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\sclk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi|sclk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sclk);

-- Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\mosi~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi|mosi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mosi);

-- Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\ssb~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi|ALT_INV_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssb);
END structure;


