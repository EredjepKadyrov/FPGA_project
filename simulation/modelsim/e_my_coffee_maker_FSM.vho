-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/04/2020 21:04:48"

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

ENTITY 	e_my_coffee_maker_FSM IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 9);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	five_zent : IN std_logic;
	ten_zent : IN std_logic;
	quarter_zent : IN std_logic;
	one_euro : IN std_logic;
	dispense : IN std_logic;
	done : IN std_logic;
	price : IN std_logic_vector(99 DOWNTO 0);
	serve : OUT std_logic;
	change : OUT std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END e_my_coffee_maker_FSM;

-- Design Ports Information
-- five_zent	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ten_zent	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quarter_zent	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- one_euro	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispense	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[3]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[5]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[9]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[10]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[11]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[13]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[14]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[15]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[16]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[17]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[18]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[19]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[20]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[21]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[22]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[23]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[24]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[25]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[26]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[27]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[28]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[29]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[30]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[31]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[32]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[33]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[34]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[35]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[36]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[37]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[38]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[39]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[40]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[41]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[42]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[43]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[44]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[45]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[46]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[47]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[48]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[49]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[50]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[51]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[52]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[53]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[54]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[55]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[56]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[57]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[58]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[59]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[60]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[61]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[62]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[63]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[64]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[65]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[66]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[67]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[68]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[69]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[70]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[71]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[72]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[73]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[74]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[75]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[76]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[77]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[78]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[79]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[80]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[81]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[82]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[83]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[84]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[85]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[86]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[87]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[88]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[89]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[90]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[91]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[92]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[93]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[94]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[95]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[96]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[97]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[98]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price[99]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serve	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF e_my_coffee_maker_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_five_zent : std_logic;
SIGNAL ww_ten_zent : std_logic;
SIGNAL ww_quarter_zent : std_logic;
SIGNAL ww_one_euro : std_logic;
SIGNAL ww_dispense : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_price : std_logic_vector(99 DOWNTO 0);
SIGNAL ww_serve : std_logic;
SIGNAL ww_change : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \five_zent~input_o\ : std_logic;
SIGNAL \ten_zent~input_o\ : std_logic;
SIGNAL \quarter_zent~input_o\ : std_logic;
SIGNAL \one_euro~input_o\ : std_logic;
SIGNAL \dispense~input_o\ : std_logic;
SIGNAL \done~input_o\ : std_logic;
SIGNAL \price[0]~input_o\ : std_logic;
SIGNAL \price[1]~input_o\ : std_logic;
SIGNAL \price[2]~input_o\ : std_logic;
SIGNAL \price[3]~input_o\ : std_logic;
SIGNAL \price[4]~input_o\ : std_logic;
SIGNAL \price[5]~input_o\ : std_logic;
SIGNAL \price[6]~input_o\ : std_logic;
SIGNAL \price[7]~input_o\ : std_logic;
SIGNAL \price[8]~input_o\ : std_logic;
SIGNAL \price[9]~input_o\ : std_logic;
SIGNAL \price[10]~input_o\ : std_logic;
SIGNAL \price[11]~input_o\ : std_logic;
SIGNAL \price[12]~input_o\ : std_logic;
SIGNAL \price[13]~input_o\ : std_logic;
SIGNAL \price[14]~input_o\ : std_logic;
SIGNAL \price[15]~input_o\ : std_logic;
SIGNAL \price[16]~input_o\ : std_logic;
SIGNAL \price[17]~input_o\ : std_logic;
SIGNAL \price[18]~input_o\ : std_logic;
SIGNAL \price[19]~input_o\ : std_logic;
SIGNAL \price[20]~input_o\ : std_logic;
SIGNAL \price[21]~input_o\ : std_logic;
SIGNAL \price[22]~input_o\ : std_logic;
SIGNAL \price[23]~input_o\ : std_logic;
SIGNAL \price[24]~input_o\ : std_logic;
SIGNAL \price[25]~input_o\ : std_logic;
SIGNAL \price[26]~input_o\ : std_logic;
SIGNAL \price[27]~input_o\ : std_logic;
SIGNAL \price[28]~input_o\ : std_logic;
SIGNAL \price[29]~input_o\ : std_logic;
SIGNAL \price[30]~input_o\ : std_logic;
SIGNAL \price[31]~input_o\ : std_logic;
SIGNAL \price[32]~input_o\ : std_logic;
SIGNAL \price[33]~input_o\ : std_logic;
SIGNAL \price[34]~input_o\ : std_logic;
SIGNAL \price[35]~input_o\ : std_logic;
SIGNAL \price[36]~input_o\ : std_logic;
SIGNAL \price[37]~input_o\ : std_logic;
SIGNAL \price[38]~input_o\ : std_logic;
SIGNAL \price[39]~input_o\ : std_logic;
SIGNAL \price[40]~input_o\ : std_logic;
SIGNAL \price[41]~input_o\ : std_logic;
SIGNAL \price[42]~input_o\ : std_logic;
SIGNAL \price[43]~input_o\ : std_logic;
SIGNAL \price[44]~input_o\ : std_logic;
SIGNAL \price[45]~input_o\ : std_logic;
SIGNAL \price[46]~input_o\ : std_logic;
SIGNAL \price[47]~input_o\ : std_logic;
SIGNAL \price[48]~input_o\ : std_logic;
SIGNAL \price[49]~input_o\ : std_logic;
SIGNAL \price[50]~input_o\ : std_logic;
SIGNAL \price[51]~input_o\ : std_logic;
SIGNAL \price[52]~input_o\ : std_logic;
SIGNAL \price[53]~input_o\ : std_logic;
SIGNAL \price[54]~input_o\ : std_logic;
SIGNAL \price[55]~input_o\ : std_logic;
SIGNAL \price[56]~input_o\ : std_logic;
SIGNAL \price[57]~input_o\ : std_logic;
SIGNAL \price[58]~input_o\ : std_logic;
SIGNAL \price[59]~input_o\ : std_logic;
SIGNAL \price[60]~input_o\ : std_logic;
SIGNAL \price[61]~input_o\ : std_logic;
SIGNAL \price[62]~input_o\ : std_logic;
SIGNAL \price[63]~input_o\ : std_logic;
SIGNAL \price[64]~input_o\ : std_logic;
SIGNAL \price[65]~input_o\ : std_logic;
SIGNAL \price[66]~input_o\ : std_logic;
SIGNAL \price[67]~input_o\ : std_logic;
SIGNAL \price[68]~input_o\ : std_logic;
SIGNAL \price[69]~input_o\ : std_logic;
SIGNAL \price[70]~input_o\ : std_logic;
SIGNAL \price[71]~input_o\ : std_logic;
SIGNAL \price[72]~input_o\ : std_logic;
SIGNAL \price[73]~input_o\ : std_logic;
SIGNAL \price[74]~input_o\ : std_logic;
SIGNAL \price[75]~input_o\ : std_logic;
SIGNAL \price[76]~input_o\ : std_logic;
SIGNAL \price[77]~input_o\ : std_logic;
SIGNAL \price[78]~input_o\ : std_logic;
SIGNAL \price[79]~input_o\ : std_logic;
SIGNAL \price[80]~input_o\ : std_logic;
SIGNAL \price[81]~input_o\ : std_logic;
SIGNAL \price[82]~input_o\ : std_logic;
SIGNAL \price[83]~input_o\ : std_logic;
SIGNAL \price[84]~input_o\ : std_logic;
SIGNAL \price[85]~input_o\ : std_logic;
SIGNAL \price[86]~input_o\ : std_logic;
SIGNAL \price[87]~input_o\ : std_logic;
SIGNAL \price[88]~input_o\ : std_logic;
SIGNAL \price[89]~input_o\ : std_logic;
SIGNAL \price[90]~input_o\ : std_logic;
SIGNAL \price[91]~input_o\ : std_logic;
SIGNAL \price[92]~input_o\ : std_logic;
SIGNAL \price[93]~input_o\ : std_logic;
SIGNAL \price[94]~input_o\ : std_logic;
SIGNAL \price[95]~input_o\ : std_logic;
SIGNAL \price[96]~input_o\ : std_logic;
SIGNAL \price[97]~input_o\ : std_logic;
SIGNAL \price[98]~input_o\ : std_logic;
SIGNAL \price[99]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \I_count6|Add0~33_sumout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \sl_hot_chocolate_int~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \sl_cappuccino_int~0_combout\ : std_logic;
SIGNAL \sl_cappuccino_int~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \sl_cappuccino_int~q\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \HEX1~5_combout\ : std_logic;
SIGNAL \sl_reset3n_int~0_combout\ : std_logic;
SIGNAL \sl_hot_chocolate_int~1_combout\ : std_logic;
SIGNAL \sl_hot_chocolate_int~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_BREW~q\ : std_logic;
SIGNAL \I_count6|Add0~110\ : std_logic;
SIGNAL \I_count6|Add0~105_sumout\ : std_logic;
SIGNAL \I_count6|Add0~106\ : std_logic;
SIGNAL \I_count6|Add0~101_sumout\ : std_logic;
SIGNAL \I_count6|Add0~102\ : std_logic;
SIGNAL \I_count6|Add0~97_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~98\ : std_logic;
SIGNAL \I_count6|Add0~93_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~94\ : std_logic;
SIGNAL \I_count6|Add0~89_sumout\ : std_logic;
SIGNAL \I_count6|Add0~90\ : std_logic;
SIGNAL \I_count6|Add0~85_sumout\ : std_logic;
SIGNAL \I_count6|Add0~86\ : std_logic;
SIGNAL \I_count6|Add0~81_sumout\ : std_logic;
SIGNAL \I_count6|Add0~82\ : std_logic;
SIGNAL \I_count6|Add0~77_sumout\ : std_logic;
SIGNAL \I_count6|Add0~78\ : std_logic;
SIGNAL \I_count6|Add0~73_sumout\ : std_logic;
SIGNAL \I_count6|Add0~74\ : std_logic;
SIGNAL \I_count6|Add0~69_sumout\ : std_logic;
SIGNAL \I_count6|Add0~70\ : std_logic;
SIGNAL \I_count6|Add0~17_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[22]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~18\ : std_logic;
SIGNAL \I_count6|Add0~13_sumout\ : std_logic;
SIGNAL \I_count6|Add0~14\ : std_logic;
SIGNAL \I_count6|Add0~9_sumout\ : std_logic;
SIGNAL \I_count6|Add0~10\ : std_logic;
SIGNAL \I_count6|Add0~5_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[25]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~6\ : std_logic;
SIGNAL \I_count6|Add0~1_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~2\ : std_logic;
SIGNAL \I_count6|Add0~41_sumout\ : std_logic;
SIGNAL \I_count6|Add0~42\ : std_logic;
SIGNAL \I_count6|Add0~37_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~1_combout\ : std_logic;
SIGNAL \I_count6|Equal0~0_combout\ : std_logic;
SIGNAL \I_count6|Equal0~2_combout\ : std_logic;
SIGNAL \I_count6|Equal0~3_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_CHOC_POWDER~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_WATER~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_MILK~q\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_DONE~q\ : std_logic;
SIGNAL \sl_coffee_int~0_combout\ : std_logic;
SIGNAL \sl_coffee_int~q\ : std_logic;
SIGNAL \coffee_maker_state.S_BREW~DUPLICATE_q\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~6_combout\ : std_logic;
SIGNAL \Selector4~7_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \Selector4~8_combout\ : std_logic;
SIGNAL \sl_reset3n_int~q\ : std_logic;
SIGNAL \I_count3|u_counter_int[18]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~73_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~74\ : std_logic;
SIGNAL \I_count3|Add0~33_sumout\ : std_logic;
SIGNAL \I_count3|Add0~34\ : std_logic;
SIGNAL \I_count3|Add0~37_sumout\ : std_logic;
SIGNAL \I_count3|Add0~38\ : std_logic;
SIGNAL \I_count3|Add0~41_sumout\ : std_logic;
SIGNAL \I_count3|Add0~42\ : std_logic;
SIGNAL \I_count3|Add0~5_sumout\ : std_logic;
SIGNAL \I_count3|Add0~6\ : std_logic;
SIGNAL \I_count3|Add0~9_sumout\ : std_logic;
SIGNAL \I_count3|Add0~10\ : std_logic;
SIGNAL \I_count3|Add0~13_sumout\ : std_logic;
SIGNAL \I_count3|Add0~14\ : std_logic;
SIGNAL \I_count3|Add0~17_sumout\ : std_logic;
SIGNAL \I_count3|Add0~18\ : std_logic;
SIGNAL \I_count3|Add0~69_sumout\ : std_logic;
SIGNAL \I_count3|Add0~70\ : std_logic;
SIGNAL \I_count3|Add0~45_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[9]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~46\ : std_logic;
SIGNAL \I_count3|Add0~29_sumout\ : std_logic;
SIGNAL \I_count3|Add0~30\ : std_logic;
SIGNAL \I_count3|Add0~25_sumout\ : std_logic;
SIGNAL \I_count3|Add0~26\ : std_logic;
SIGNAL \I_count3|Add0~21_sumout\ : std_logic;
SIGNAL \I_count3|Add0~22\ : std_logic;
SIGNAL \I_count3|Add0~65_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[13]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~66\ : std_logic;
SIGNAL \I_count3|Add0~61_sumout\ : std_logic;
SIGNAL \I_count3|Add0~62\ : std_logic;
SIGNAL \I_count3|Add0~57_sumout\ : std_logic;
SIGNAL \I_count3|Add0~58\ : std_logic;
SIGNAL \I_count3|Add0~53_sumout\ : std_logic;
SIGNAL \I_count3|Add0~54\ : std_logic;
SIGNAL \I_count3|Add0~49_sumout\ : std_logic;
SIGNAL \I_count3|Add0~50\ : std_logic;
SIGNAL \I_count3|Add0~1_sumout\ : std_logic;
SIGNAL \I_count3|Equal0~0_combout\ : std_logic;
SIGNAL \I_count3|Add0~2\ : std_logic;
SIGNAL \I_count3|Add0~109_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[19]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~110\ : std_logic;
SIGNAL \I_count3|Add0~105_sumout\ : std_logic;
SIGNAL \I_count3|Add0~106\ : std_logic;
SIGNAL \I_count3|Add0~101_sumout\ : std_logic;
SIGNAL \I_count3|Add0~102\ : std_logic;
SIGNAL \I_count3|Add0~97_sumout\ : std_logic;
SIGNAL \I_count3|Add0~98\ : std_logic;
SIGNAL \I_count3|Add0~93_sumout\ : std_logic;
SIGNAL \I_count3|Add0~94\ : std_logic;
SIGNAL \I_count3|Add0~89_sumout\ : std_logic;
SIGNAL \I_count3|Add0~90\ : std_logic;
SIGNAL \I_count3|Add0~85_sumout\ : std_logic;
SIGNAL \I_count3|Add0~86\ : std_logic;
SIGNAL \I_count3|Add0~81_sumout\ : std_logic;
SIGNAL \I_count3|Add0~82\ : std_logic;
SIGNAL \I_count3|Add0~77_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Equal0~3_combout\ : std_logic;
SIGNAL \I_count3|u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Equal0~1_combout\ : std_logic;
SIGNAL \I_count3|Equal0~2_combout\ : std_logic;
SIGNAL \I_count3|Equal0~4_combout\ : std_logic;
SIGNAL \I_count3|Equal0~5_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_IDLE~q\ : std_logic;
SIGNAL \sl_espresso_int~0_combout\ : std_logic;
SIGNAL \sl_espresso_int~q\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~7_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~8_combout\ : std_logic;
SIGNAL \sl_reset6n_int~q\ : std_logic;
SIGNAL \I_count6|u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~34\ : std_logic;
SIGNAL \I_count6|Add0~25_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[1]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~26\ : std_logic;
SIGNAL \I_count6|Add0~29_sumout\ : std_logic;
SIGNAL \I_count6|Add0~30\ : std_logic;
SIGNAL \I_count6|Add0~21_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~22\ : std_logic;
SIGNAL \I_count6|Add0~65_sumout\ : std_logic;
SIGNAL \I_count6|Add0~66\ : std_logic;
SIGNAL \I_count6|Add0~61_sumout\ : std_logic;
SIGNAL \I_count6|Add0~62\ : std_logic;
SIGNAL \I_count6|Add0~57_sumout\ : std_logic;
SIGNAL \I_count6|Add0~58\ : std_logic;
SIGNAL \I_count6|Add0~53_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[7]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~54\ : std_logic;
SIGNAL \I_count6|Add0~49_sumout\ : std_logic;
SIGNAL \I_count6|Add0~50\ : std_logic;
SIGNAL \I_count6|Add0~45_sumout\ : std_logic;
SIGNAL \I_count6|Add0~46\ : std_logic;
SIGNAL \I_count6|Add0~113_sumout\ : std_logic;
SIGNAL \I_count6|Add0~114\ : std_logic;
SIGNAL \I_count6|Add0~109_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~4_combout\ : std_logic;
SIGNAL \I_count6|Equal0~5_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_GRIND~q\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \HEX1~1_combout\ : std_logic;
SIGNAL \HEX1~2_combout\ : std_logic;
SIGNAL \HEX1~3_combout\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \HEX2~1_combout\ : std_logic;
SIGNAL \HEX1~4_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \I_count3|u_counter_int\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \I_count6|u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_BREW~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[13]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[9]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[18]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[7]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[1]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[22]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[25]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_reset3n_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_reset6n_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_cappuccino_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_hot_chocolate_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX1~5_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_reset3n_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX1~4_combout\ : std_logic;
SIGNAL \ALT_INV_HEX5~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX2~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX1~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_espresso_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_cappuccino_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_coffee_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_hot_chocolate_int~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_DONE~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_BREW~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_GRIND~q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \I_count6|ALT_INV_u_counter_int\ : std_logic_vector(28 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_five_zent <= five_zent;
ww_ten_zent <= ten_zent;
ww_quarter_zent <= quarter_zent;
ww_one_euro <= one_euro;
ww_dispense <= dispense;
ww_done <= done;
ww_price <= price;
serve <= ww_serve;
change <= ww_change;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ <= NOT \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\;
\ALT_INV_coffee_maker_state.S_BREW~DUPLICATE_q\ <= NOT \coffee_maker_state.S_BREW~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[19]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[26]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[26]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[0]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[0]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[13]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[13]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[9]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[9]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[11]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[11]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[18]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[18]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[14]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[14]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[15]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[15]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[7]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[7]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[0]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[0]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[1]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[1]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[3]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[3]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[22]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[22]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[25]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[25]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[26]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[26]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_Selector11~2_combout\ <= NOT \Selector11~2_combout\;
\ALT_INV_Selector11~1_combout\ <= NOT \Selector11~1_combout\;
\ALT_INV_Selector4~7_combout\ <= NOT \Selector4~7_combout\;
\ALT_INV_Selector4~6_combout\ <= NOT \Selector4~6_combout\;
\ALT_INV_Selector4~5_combout\ <= NOT \Selector4~5_combout\;
\ALT_INV_Selector4~4_combout\ <= NOT \Selector4~4_combout\;
\ALT_INV_Selector4~3_combout\ <= NOT \Selector4~3_combout\;
\ALT_INV_Selector4~2_combout\ <= NOT \Selector4~2_combout\;
\ALT_INV_Selector4~1_combout\ <= NOT \Selector4~1_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector5~7_combout\ <= NOT \Selector5~7_combout\;
\ALT_INV_Selector5~6_combout\ <= NOT \Selector5~6_combout\;
\ALT_INV_Selector5~5_combout\ <= NOT \Selector5~5_combout\;
\ALT_INV_Selector5~4_combout\ <= NOT \Selector5~4_combout\;
\ALT_INV_Selector5~3_combout\ <= NOT \Selector5~3_combout\;
\ALT_INV_Selector5~2_combout\ <= NOT \Selector5~2_combout\;
\ALT_INV_Selector5~1_combout\ <= NOT \Selector5~1_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_sl_reset3n_int~q\ <= NOT \sl_reset3n_int~q\;
\ALT_INV_sl_reset6n_int~q\ <= NOT \sl_reset6n_int~q\;
\ALT_INV_sl_cappuccino_int~0_combout\ <= NOT \sl_cappuccino_int~0_combout\;
\ALT_INV_sl_hot_chocolate_int~0_combout\ <= NOT \sl_hot_chocolate_int~0_combout\;
\ALT_INV_Selector14~2_combout\ <= NOT \Selector14~2_combout\;
\ALT_INV_Selector14~1_combout\ <= NOT \Selector14~1_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_HEX1~5_combout\ <= NOT \HEX1~5_combout\;
\I_count3|ALT_INV_Equal0~5_combout\ <= NOT \I_count3|Equal0~5_combout\;
\I_count3|ALT_INV_Equal0~4_combout\ <= NOT \I_count3|Equal0~4_combout\;
\I_count3|ALT_INV_Equal0~3_combout\ <= NOT \I_count3|Equal0~3_combout\;
\I_count3|ALT_INV_Equal0~2_combout\ <= NOT \I_count3|Equal0~2_combout\;
\I_count3|ALT_INV_Equal0~1_combout\ <= NOT \I_count3|Equal0~1_combout\;
\I_count3|ALT_INV_Equal0~0_combout\ <= NOT \I_count3|Equal0~0_combout\;
\I_count6|ALT_INV_Equal0~5_combout\ <= NOT \I_count6|Equal0~5_combout\;
\I_count6|ALT_INV_Equal0~4_combout\ <= NOT \I_count6|Equal0~4_combout\;
\I_count6|ALT_INV_Equal0~3_combout\ <= NOT \I_count6|Equal0~3_combout\;
\I_count6|ALT_INV_Equal0~2_combout\ <= NOT \I_count6|Equal0~2_combout\;
\I_count6|ALT_INV_Equal0~1_combout\ <= NOT \I_count6|Equal0~1_combout\;
\I_count6|ALT_INV_Equal0~0_combout\ <= NOT \I_count6|Equal0~0_combout\;
\ALT_INV_sl_reset3n_int~0_combout\ <= NOT \sl_reset3n_int~0_combout\;
\ALT_INV_HEX1~4_combout\ <= NOT \HEX1~4_combout\;
\ALT_INV_HEX5~0_combout\ <= NOT \HEX5~0_combout\;
\ALT_INV_HEX2~0_combout\ <= NOT \HEX2~0_combout\;
\ALT_INV_HEX1~0_combout\ <= NOT \HEX1~0_combout\;
\ALT_INV_sl_espresso_int~q\ <= NOT \sl_espresso_int~q\;
\ALT_INV_sl_cappuccino_int~q\ <= NOT \sl_cappuccino_int~q\;
\ALT_INV_sl_coffee_int~q\ <= NOT \sl_coffee_int~q\;
\ALT_INV_sl_hot_chocolate_int~q\ <= NOT \sl_hot_chocolate_int~q\;
\ALT_INV_coffee_maker_state.S_IDLE~q\ <= NOT \coffee_maker_state.S_IDLE~q\;
\ALT_INV_coffee_maker_state.S_DONE~q\ <= NOT \coffee_maker_state.S_DONE~q\;
\ALT_INV_coffee_maker_state.S_PUMP_MILK~q\ <= NOT \coffee_maker_state.S_PUMP_MILK~q\;
\ALT_INV_coffee_maker_state.S_PUMP_WATER~q\ <= NOT \coffee_maker_state.S_PUMP_WATER~q\;
\ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\ <= NOT \coffee_maker_state.S_CHOC_POWDER~q\;
\ALT_INV_coffee_maker_state.S_BREW~q\ <= NOT \coffee_maker_state.S_BREW~q\;
\ALT_INV_coffee_maker_state.S_GRIND~q\ <= NOT \coffee_maker_state.S_GRIND~q\;
\I_count3|ALT_INV_u_counter_int\(19) <= NOT \I_count3|u_counter_int\(19);
\I_count3|ALT_INV_u_counter_int\(20) <= NOT \I_count3|u_counter_int\(20);
\I_count3|ALT_INV_u_counter_int\(21) <= NOT \I_count3|u_counter_int\(21);
\I_count3|ALT_INV_u_counter_int\(22) <= NOT \I_count3|u_counter_int\(22);
\I_count3|ALT_INV_u_counter_int\(23) <= NOT \I_count3|u_counter_int\(23);
\I_count3|ALT_INV_u_counter_int\(24) <= NOT \I_count3|u_counter_int\(24);
\I_count3|ALT_INV_u_counter_int\(25) <= NOT \I_count3|u_counter_int\(25);
\I_count3|ALT_INV_u_counter_int\(26) <= NOT \I_count3|u_counter_int\(26);
\I_count3|ALT_INV_u_counter_int\(27) <= NOT \I_count3|u_counter_int\(27);
\I_count3|ALT_INV_u_counter_int\(0) <= NOT \I_count3|u_counter_int\(0);
\I_count3|ALT_INV_u_counter_int\(8) <= NOT \I_count3|u_counter_int\(8);
\I_count3|ALT_INV_u_counter_int\(13) <= NOT \I_count3|u_counter_int\(13);
\I_count3|ALT_INV_u_counter_int\(14) <= NOT \I_count3|u_counter_int\(14);
\I_count3|ALT_INV_u_counter_int\(15) <= NOT \I_count3|u_counter_int\(15);
\I_count3|ALT_INV_u_counter_int\(16) <= NOT \I_count3|u_counter_int\(16);
\I_count3|ALT_INV_u_counter_int\(17) <= NOT \I_count3|u_counter_int\(17);
\I_count3|ALT_INV_u_counter_int\(9) <= NOT \I_count3|u_counter_int\(9);
\I_count3|ALT_INV_u_counter_int\(3) <= NOT \I_count3|u_counter_int\(3);
\I_count3|ALT_INV_u_counter_int\(2) <= NOT \I_count3|u_counter_int\(2);
\I_count3|ALT_INV_u_counter_int\(1) <= NOT \I_count3|u_counter_int\(1);
\I_count3|ALT_INV_u_counter_int\(10) <= NOT \I_count3|u_counter_int\(10);
\I_count3|ALT_INV_u_counter_int\(11) <= NOT \I_count3|u_counter_int\(11);
\I_count3|ALT_INV_u_counter_int\(12) <= NOT \I_count3|u_counter_int\(12);
\I_count3|ALT_INV_u_counter_int\(7) <= NOT \I_count3|u_counter_int\(7);
\I_count3|ALT_INV_u_counter_int\(6) <= NOT \I_count3|u_counter_int\(6);
\I_count3|ALT_INV_u_counter_int\(5) <= NOT \I_count3|u_counter_int\(5);
\I_count3|ALT_INV_u_counter_int\(4) <= NOT \I_count3|u_counter_int\(4);
\I_count3|ALT_INV_u_counter_int\(18) <= NOT \I_count3|u_counter_int\(18);
\I_count6|ALT_INV_u_counter_int\(10) <= NOT \I_count6|u_counter_int\(10);
\I_count6|ALT_INV_u_counter_int\(11) <= NOT \I_count6|u_counter_int\(11);
\I_count6|ALT_INV_u_counter_int\(12) <= NOT \I_count6|u_counter_int\(12);
\I_count6|ALT_INV_u_counter_int\(13) <= NOT \I_count6|u_counter_int\(13);
\I_count6|ALT_INV_u_counter_int\(14) <= NOT \I_count6|u_counter_int\(14);
\I_count6|ALT_INV_u_counter_int\(15) <= NOT \I_count6|u_counter_int\(15);
\I_count6|ALT_INV_u_counter_int\(16) <= NOT \I_count6|u_counter_int\(16);
\I_count6|ALT_INV_u_counter_int\(17) <= NOT \I_count6|u_counter_int\(17);
\I_count6|ALT_INV_u_counter_int\(18) <= NOT \I_count6|u_counter_int\(18);
\I_count6|ALT_INV_u_counter_int\(19) <= NOT \I_count6|u_counter_int\(19);
\I_count6|ALT_INV_u_counter_int\(20) <= NOT \I_count6|u_counter_int\(20);
\I_count6|ALT_INV_u_counter_int\(21) <= NOT \I_count6|u_counter_int\(21);
\I_count6|ALT_INV_u_counter_int\(4) <= NOT \I_count6|u_counter_int\(4);
\I_count6|ALT_INV_u_counter_int\(5) <= NOT \I_count6|u_counter_int\(5);
\I_count6|ALT_INV_u_counter_int\(6) <= NOT \I_count6|u_counter_int\(6);
\I_count6|ALT_INV_u_counter_int\(7) <= NOT \I_count6|u_counter_int\(7);
\I_count6|ALT_INV_u_counter_int\(8) <= NOT \I_count6|u_counter_int\(8);
\I_count6|ALT_INV_u_counter_int\(9) <= NOT \I_count6|u_counter_int\(9);
\I_count6|ALT_INV_u_counter_int\(27) <= NOT \I_count6|u_counter_int\(27);
\I_count6|ALT_INV_u_counter_int\(28) <= NOT \I_count6|u_counter_int\(28);
\I_count6|ALT_INV_u_counter_int\(0) <= NOT \I_count6|u_counter_int\(0);
\I_count6|ALT_INV_u_counter_int\(2) <= NOT \I_count6|u_counter_int\(2);
\I_count6|ALT_INV_u_counter_int\(1) <= NOT \I_count6|u_counter_int\(1);
\I_count6|ALT_INV_u_counter_int\(3) <= NOT \I_count6|u_counter_int\(3);
\I_count6|ALT_INV_u_counter_int\(22) <= NOT \I_count6|u_counter_int\(22);
\I_count6|ALT_INV_u_counter_int\(23) <= NOT \I_count6|u_counter_int\(23);
\I_count6|ALT_INV_u_counter_int\(24) <= NOT \I_count6|u_counter_int\(24);
\I_count6|ALT_INV_u_counter_int\(25) <= NOT \I_count6|u_counter_int\(25);
\I_count6|ALT_INV_u_counter_int\(26) <= NOT \I_count6|u_counter_int\(26);

-- Location: IOOBUF_X28_Y0_N19
\serve~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_serve);

-- Location: IOOBUF_X34_Y0_N93
\change~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_change);

-- Location: IOOBUF_X82_Y0_N42
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_GRIND~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_BREW~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X89_Y4_N96
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_CHOC_POWDER~q\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X82_Y0_N76
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_PUMP_MILK~q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X10_Y81_N93
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X82_Y0_N93
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_DONE~q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X2_Y0_N59
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X8_Y0_N2
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X82_Y0_N59
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X74_Y0_N93
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X76_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y6_N5
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X76_Y0_N2
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X80_Y0_N53
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X74_Y0_N59
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y0_N76
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X72_Y0_N2
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X84_Y0_N53
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X72_Y0_N53
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X72_Y0_N19
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y4_N45
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X74_Y0_N42
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X62_Y0_N2
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X78_Y0_N36
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y6_N22
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X60_Y0_N53
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X70_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X72_Y0_N36
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X78_Y0_N19
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X60_Y0_N36
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X20_Y0_N53
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X88_Y0_N37
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X70_Y0_N36
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X70_Y0_N2
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X56_Y0_N53
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X84_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X30_Y0_N36
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X80_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y4_N62
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X70_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y0_N53
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X84_Y0_N2
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X56_Y0_N2
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X24_Y0_N2
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X28_Y0_N2
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X10_Y81_N59
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y6_N39
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOIBUF_X89_Y25_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X81_Y6_N30
\I_count6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~33_sumout\ = SUM(( \I_count6|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \I_count6|Add0~34\ = CARRY(( \I_count6|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \I_count6|Add0~33_sumout\,
	cout => \I_count6|Add0~34\);

-- Location: IOIBUF_X76_Y0_N52
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X80_Y3_N27
\sl_hot_chocolate_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_hot_chocolate_int~0_combout\ = ( \KEY[0]~input_o\ & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \sl_hot_chocolate_int~0_combout\);

-- Location: IOIBUF_X86_Y0_N52
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X80_Y3_N18
\sl_cappuccino_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_cappuccino_int~0_combout\ = ( \KEY[2]~input_o\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \ALT_INV_KEY[2]~input_o\,
	combout => \sl_cappuccino_int~0_combout\);

-- Location: LABCELL_X80_Y3_N48
\sl_cappuccino_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_cappuccino_int~1_combout\ = ( \sl_cappuccino_int~q\ & ( \KEY[0]~input_o\ & ( !\coffee_maker_state.S_DONE~q\ ) ) ) # ( !\sl_cappuccino_int~q\ & ( \KEY[0]~input_o\ & ( (!\KEY[1]~input_o\ & (!\coffee_maker_state.S_DONE~q\ & (\sl_cappuccino_int~0_combout\ 
-- & !\coffee_maker_state.S_IDLE~q\))) ) ) ) # ( \sl_cappuccino_int~q\ & ( !\KEY[0]~input_o\ & ( !\coffee_maker_state.S_DONE~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datac => \ALT_INV_sl_cappuccino_int~0_combout\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \sl_cappuccino_int~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X80_Y3_N50
sl_cappuccino_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_cappuccino_int~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_cappuccino_int~q\);

-- Location: MLABCELL_X78_Y4_N42
\Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = ( \I_count6|Equal0~5_combout\ & ( \coffee_maker_state.S_DONE~q\ & ( ((!\sl_cappuccino_int~q\ & (\I_count3|Equal0~5_combout\ & \sl_espresso_int~q\))) # (\sl_coffee_int~q\) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( 
-- \coffee_maker_state.S_DONE~q\ & ( ((!\sl_cappuccino_int~q\ & (\I_count3|Equal0~5_combout\ & \sl_espresso_int~q\))) # (\sl_coffee_int~q\) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\coffee_maker_state.S_DONE~q\ & ( ((!\sl_cappuccino_int~q\ & 
-- (\I_count3|Equal0~5_combout\ & \sl_espresso_int~q\))) # (\sl_coffee_int~q\) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( !\coffee_maker_state.S_DONE~q\ & ( (!\sl_coffee_int~q\ & (!\sl_cappuccino_int~q\ & (\I_count3|Equal0~5_combout\ & \sl_espresso_int~q\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000010101010101110101010101010111010101010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \I_count3|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_sl_espresso_int~q\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~q\,
	combout => \Selector14~1_combout\);

-- Location: MLABCELL_X78_Y4_N0
\HEX1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~5_combout\ = ( !\sl_cappuccino_int~q\ & ( (!\sl_coffee_int~q\ & !\sl_espresso_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX1~5_combout\);

-- Location: LABCELL_X81_Y4_N9
\sl_reset3n_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_reset3n_int~0_combout\ = ( !\sl_espresso_int~q\ & ( !\sl_cappuccino_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \sl_reset3n_int~0_combout\);

-- Location: LABCELL_X80_Y3_N12
\sl_hot_chocolate_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_hot_chocolate_int~1_combout\ = ( \sl_hot_chocolate_int~q\ & ( \coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state.S_DONE~q\ ) ) ) # ( \sl_hot_chocolate_int~q\ & ( !\coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state.S_DONE~q\ ) ) ) # ( 
-- !\sl_hot_chocolate_int~q\ & ( !\coffee_maker_state.S_IDLE~q\ & ( (\KEY[2]~input_o\ & (\sl_hot_chocolate_int~0_combout\ & (!\KEY[3]~input_o\ & !\coffee_maker_state.S_DONE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_sl_hot_chocolate_int~0_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datae => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	combout => \sl_hot_chocolate_int~1_combout\);

-- Location: FF_X80_Y3_N14
sl_hot_chocolate_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_hot_chocolate_int~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_hot_chocolate_int~q\);

-- Location: LABCELL_X80_Y4_N42
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \I_count6|Equal0~5_combout\ & ( \I_count3|Equal0~5_combout\ & ( (\coffee_maker_state.S_GRIND~q\ & (((\sl_coffee_int~q\) # (\sl_cappuccino_int~q\)) # (\sl_espresso_int~q\))) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( 
-- \I_count3|Equal0~5_combout\ & ( (!\sl_coffee_int~q\ & (\coffee_maker_state.S_GRIND~q\ & ((\sl_cappuccino_int~q\) # (\sl_espresso_int~q\)))) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\I_count3|Equal0~5_combout\ & ( (\sl_coffee_int~q\ & 
-- \coffee_maker_state.S_GRIND~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000011100000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X80_Y4_N12
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \coffee_maker_state.S_BREW~q\ & ( \Selector9~0_combout\ ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( \Selector9~0_combout\ ) ) # ( \coffee_maker_state.S_BREW~q\ & ( !\Selector9~0_combout\ & ( (!\I_count6|Equal0~5_combout\) # 
-- ((\HEX1~5_combout\ & ((!\coffee_maker_state.S_IDLE~q\) # (!\sl_hot_chocolate_int~q\)))) ) ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( !\Selector9~0_combout\ & ( (!\coffee_maker_state.S_IDLE~q\ & (\sl_hot_chocolate_int~q\ & \HEX1~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010111111110000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datab => \ALT_INV_sl_hot_chocolate_int~q\,
	datac => \ALT_INV_HEX1~5_combout\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_BREW~q\,
	dataf => \ALT_INV_Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X80_Y4_N13
\coffee_maker_state.S_BREW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector9~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_BREW~q\);

-- Location: FF_X81_Y6_N40
\I_count6|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~21_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(3));

-- Location: FF_X81_Y6_N34
\I_count6|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~25_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(1));

-- Location: LABCELL_X81_Y5_N3
\I_count6|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~109_sumout\ = SUM(( \I_count6|u_counter_int\(11) ) + ( GND ) + ( \I_count6|Add0~114\ ))
-- \I_count6|Add0~110\ = CARRY(( \I_count6|u_counter_int\(11) ) + ( GND ) + ( \I_count6|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(11),
	cin => \I_count6|Add0~114\,
	sumout => \I_count6|Add0~109_sumout\,
	cout => \I_count6|Add0~110\);

-- Location: LABCELL_X81_Y5_N6
\I_count6|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~105_sumout\ = SUM(( \I_count6|u_counter_int\(12) ) + ( GND ) + ( \I_count6|Add0~110\ ))
-- \I_count6|Add0~106\ = CARRY(( \I_count6|u_counter_int\(12) ) + ( GND ) + ( \I_count6|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(12),
	cin => \I_count6|Add0~110\,
	sumout => \I_count6|Add0~105_sumout\,
	cout => \I_count6|Add0~106\);

-- Location: FF_X81_Y5_N7
\I_count6|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~105_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(12));

-- Location: LABCELL_X81_Y5_N9
\I_count6|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~101_sumout\ = SUM(( \I_count6|u_counter_int\(13) ) + ( GND ) + ( \I_count6|Add0~106\ ))
-- \I_count6|Add0~102\ = CARRY(( \I_count6|u_counter_int\(13) ) + ( GND ) + ( \I_count6|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(13),
	cin => \I_count6|Add0~106\,
	sumout => \I_count6|Add0~101_sumout\,
	cout => \I_count6|Add0~102\);

-- Location: FF_X81_Y5_N11
\I_count6|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~101_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(13));

-- Location: LABCELL_X81_Y5_N12
\I_count6|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~97_sumout\ = SUM(( \I_count6|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~102\ ))
-- \I_count6|Add0~98\ = CARRY(( \I_count6|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int[14]~DUPLICATE_q\,
	cin => \I_count6|Add0~102\,
	sumout => \I_count6|Add0~97_sumout\,
	cout => \I_count6|Add0~98\);

-- Location: FF_X81_Y5_N14
\I_count6|u_counter_int[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~97_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[14]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N15
\I_count6|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~93_sumout\ = SUM(( \I_count6|u_counter_int[15]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~98\ ))
-- \I_count6|Add0~94\ = CARRY(( \I_count6|u_counter_int[15]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[15]~DUPLICATE_q\,
	cin => \I_count6|Add0~98\,
	sumout => \I_count6|Add0~93_sumout\,
	cout => \I_count6|Add0~94\);

-- Location: FF_X81_Y5_N16
\I_count6|u_counter_int[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~93_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[15]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N18
\I_count6|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~89_sumout\ = SUM(( \I_count6|u_counter_int\(16) ) + ( GND ) + ( \I_count6|Add0~94\ ))
-- \I_count6|Add0~90\ = CARRY(( \I_count6|u_counter_int\(16) ) + ( GND ) + ( \I_count6|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(16),
	cin => \I_count6|Add0~94\,
	sumout => \I_count6|Add0~89_sumout\,
	cout => \I_count6|Add0~90\);

-- Location: FF_X81_Y5_N20
\I_count6|u_counter_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~89_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(16));

-- Location: LABCELL_X81_Y5_N21
\I_count6|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~85_sumout\ = SUM(( \I_count6|u_counter_int\(17) ) + ( GND ) + ( \I_count6|Add0~90\ ))
-- \I_count6|Add0~86\ = CARRY(( \I_count6|u_counter_int\(17) ) + ( GND ) + ( \I_count6|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(17),
	cin => \I_count6|Add0~90\,
	sumout => \I_count6|Add0~85_sumout\,
	cout => \I_count6|Add0~86\);

-- Location: FF_X81_Y5_N22
\I_count6|u_counter_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~85_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(17));

-- Location: LABCELL_X81_Y5_N24
\I_count6|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~81_sumout\ = SUM(( \I_count6|u_counter_int\(18) ) + ( GND ) + ( \I_count6|Add0~86\ ))
-- \I_count6|Add0~82\ = CARRY(( \I_count6|u_counter_int\(18) ) + ( GND ) + ( \I_count6|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(18),
	cin => \I_count6|Add0~86\,
	sumout => \I_count6|Add0~81_sumout\,
	cout => \I_count6|Add0~82\);

-- Location: FF_X81_Y5_N26
\I_count6|u_counter_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~81_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(18));

-- Location: LABCELL_X81_Y5_N27
\I_count6|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~77_sumout\ = SUM(( \I_count6|u_counter_int\(19) ) + ( GND ) + ( \I_count6|Add0~82\ ))
-- \I_count6|Add0~78\ = CARRY(( \I_count6|u_counter_int\(19) ) + ( GND ) + ( \I_count6|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(19),
	cin => \I_count6|Add0~82\,
	sumout => \I_count6|Add0~77_sumout\,
	cout => \I_count6|Add0~78\);

-- Location: FF_X81_Y5_N28
\I_count6|u_counter_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~77_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(19));

-- Location: LABCELL_X81_Y5_N30
\I_count6|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~73_sumout\ = SUM(( \I_count6|u_counter_int\(20) ) + ( GND ) + ( \I_count6|Add0~78\ ))
-- \I_count6|Add0~74\ = CARRY(( \I_count6|u_counter_int\(20) ) + ( GND ) + ( \I_count6|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(20),
	cin => \I_count6|Add0~78\,
	sumout => \I_count6|Add0~73_sumout\,
	cout => \I_count6|Add0~74\);

-- Location: FF_X81_Y5_N31
\I_count6|u_counter_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~73_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(20));

-- Location: LABCELL_X81_Y5_N33
\I_count6|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~69_sumout\ = SUM(( \I_count6|u_counter_int\(21) ) + ( GND ) + ( \I_count6|Add0~74\ ))
-- \I_count6|Add0~70\ = CARRY(( \I_count6|u_counter_int\(21) ) + ( GND ) + ( \I_count6|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(21),
	cin => \I_count6|Add0~74\,
	sumout => \I_count6|Add0~69_sumout\,
	cout => \I_count6|Add0~70\);

-- Location: FF_X81_Y5_N35
\I_count6|u_counter_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~69_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(21));

-- Location: LABCELL_X81_Y5_N36
\I_count6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~17_sumout\ = SUM(( \I_count6|u_counter_int[22]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~70\ ))
-- \I_count6|Add0~18\ = CARRY(( \I_count6|u_counter_int[22]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[22]~DUPLICATE_q\,
	cin => \I_count6|Add0~70\,
	sumout => \I_count6|Add0~17_sumout\,
	cout => \I_count6|Add0~18\);

-- Location: FF_X81_Y5_N38
\I_count6|u_counter_int[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~17_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[22]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N39
\I_count6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~13_sumout\ = SUM(( \I_count6|u_counter_int\(23) ) + ( GND ) + ( \I_count6|Add0~18\ ))
-- \I_count6|Add0~14\ = CARRY(( \I_count6|u_counter_int\(23) ) + ( GND ) + ( \I_count6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(23),
	cin => \I_count6|Add0~18\,
	sumout => \I_count6|Add0~13_sumout\,
	cout => \I_count6|Add0~14\);

-- Location: FF_X81_Y5_N40
\I_count6|u_counter_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~13_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(23));

-- Location: LABCELL_X81_Y5_N42
\I_count6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~9_sumout\ = SUM(( \I_count6|u_counter_int\(24) ) + ( GND ) + ( \I_count6|Add0~14\ ))
-- \I_count6|Add0~10\ = CARRY(( \I_count6|u_counter_int\(24) ) + ( GND ) + ( \I_count6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(24),
	cin => \I_count6|Add0~14\,
	sumout => \I_count6|Add0~9_sumout\,
	cout => \I_count6|Add0~10\);

-- Location: FF_X81_Y5_N43
\I_count6|u_counter_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~9_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(24));

-- Location: LABCELL_X81_Y5_N45
\I_count6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~5_sumout\ = SUM(( \I_count6|u_counter_int[25]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~10\ ))
-- \I_count6|Add0~6\ = CARRY(( \I_count6|u_counter_int[25]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[25]~DUPLICATE_q\,
	cin => \I_count6|Add0~10\,
	sumout => \I_count6|Add0~5_sumout\,
	cout => \I_count6|Add0~6\);

-- Location: FF_X81_Y5_N47
\I_count6|u_counter_int[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~5_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[25]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N48
\I_count6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~1_sumout\ = SUM(( \I_count6|u_counter_int[26]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~6\ ))
-- \I_count6|Add0~2\ = CARRY(( \I_count6|u_counter_int[26]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[26]~DUPLICATE_q\,
	cin => \I_count6|Add0~6\,
	sumout => \I_count6|Add0~1_sumout\,
	cout => \I_count6|Add0~2\);

-- Location: FF_X81_Y5_N50
\I_count6|u_counter_int[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~1_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[26]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N51
\I_count6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~41_sumout\ = SUM(( \I_count6|u_counter_int\(27) ) + ( GND ) + ( \I_count6|Add0~2\ ))
-- \I_count6|Add0~42\ = CARRY(( \I_count6|u_counter_int\(27) ) + ( GND ) + ( \I_count6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(27),
	cin => \I_count6|Add0~2\,
	sumout => \I_count6|Add0~41_sumout\,
	cout => \I_count6|Add0~42\);

-- Location: FF_X81_Y5_N52
\I_count6|u_counter_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~41_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(27));

-- Location: FF_X81_Y6_N32
\I_count6|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~33_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(0));

-- Location: LABCELL_X81_Y5_N54
\I_count6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~37_sumout\ = SUM(( \I_count6|u_counter_int\(28) ) + ( GND ) + ( \I_count6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(28),
	cin => \I_count6|Add0~42\,
	sumout => \I_count6|Add0~37_sumout\);

-- Location: FF_X81_Y5_N55
\I_count6|u_counter_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~37_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(28));

-- Location: LABCELL_X81_Y4_N30
\I_count6|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~1_combout\ = ( \I_count6|u_counter_int\(0) & ( \I_count6|u_counter_int\(28) & ( (\I_count6|u_counter_int\(3) & (\I_count6|u_counter_int\(2) & (\I_count6|u_counter_int\(1) & !\I_count6|u_counter_int\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(3),
	datab => \I_count6|ALT_INV_u_counter_int\(2),
	datac => \I_count6|ALT_INV_u_counter_int\(1),
	datad => \I_count6|ALT_INV_u_counter_int\(27),
	datae => \I_count6|ALT_INV_u_counter_int\(0),
	dataf => \I_count6|ALT_INV_u_counter_int\(28),
	combout => \I_count6|Equal0~1_combout\);

-- Location: FF_X81_Y5_N37
\I_count6|u_counter_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~17_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(22));

-- Location: FF_X81_Y5_N49
\I_count6|u_counter_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~1_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(26));

-- Location: FF_X81_Y5_N46
\I_count6|u_counter_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~5_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(25));

-- Location: MLABCELL_X82_Y5_N39
\I_count6|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~0_combout\ = ( \I_count6|u_counter_int\(24) & ( \I_count6|u_counter_int\(23) & ( (\I_count6|u_counter_int\(22) & (!\I_count6|u_counter_int\(26) & !\I_count6|u_counter_int\(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(22),
	datac => \I_count6|ALT_INV_u_counter_int\(26),
	datad => \I_count6|ALT_INV_u_counter_int\(25),
	datae => \I_count6|ALT_INV_u_counter_int\(24),
	dataf => \I_count6|ALT_INV_u_counter_int\(23),
	combout => \I_count6|Equal0~0_combout\);

-- Location: FF_X81_Y6_N53
\I_count6|u_counter_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~53_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(7));

-- Location: LABCELL_X81_Y6_N12
\I_count6|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~2_combout\ = ( \I_count6|u_counter_int\(4) & ( \I_count6|u_counter_int\(6) & ( (!\I_count6|u_counter_int\(8) & (\I_count6|u_counter_int\(5) & (\I_count6|u_counter_int\(7) & \I_count6|u_counter_int\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(8),
	datab => \I_count6|ALT_INV_u_counter_int\(5),
	datac => \I_count6|ALT_INV_u_counter_int\(7),
	datad => \I_count6|ALT_INV_u_counter_int\(9),
	datae => \I_count6|ALT_INV_u_counter_int\(4),
	dataf => \I_count6|ALT_INV_u_counter_int\(6),
	combout => \I_count6|Equal0~2_combout\);

-- Location: LABCELL_X81_Y4_N48
\I_count6|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~3_combout\ = ( !\I_count6|u_counter_int\(18) & ( !\I_count6|u_counter_int\(17) & ( (\I_count6|u_counter_int\(21) & (!\I_count6|u_counter_int\(19) & (!\I_count6|u_counter_int\(20) & \I_count6|u_counter_int\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(21),
	datab => \I_count6|ALT_INV_u_counter_int\(19),
	datac => \I_count6|ALT_INV_u_counter_int\(20),
	datad => \I_count6|ALT_INV_u_counter_int\(16),
	datae => \I_count6|ALT_INV_u_counter_int\(18),
	dataf => \I_count6|ALT_INV_u_counter_int\(17),
	combout => \I_count6|Equal0~3_combout\);

-- Location: LABCELL_X81_Y4_N15
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \I_count6|Equal0~2_combout\ & ( \I_count6|Equal0~3_combout\ & ( (\coffee_maker_state.S_BREW~q\ & (\I_count6|Equal0~1_combout\ & (\I_count6|Equal0~0_combout\ & \I_count6|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datab => \I_count6|ALT_INV_Equal0~1_combout\,
	datac => \I_count6|ALT_INV_Equal0~0_combout\,
	datad => \I_count6|ALT_INV_Equal0~4_combout\,
	datae => \I_count6|ALT_INV_Equal0~2_combout\,
	dataf => \I_count6|ALT_INV_Equal0~3_combout\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X81_Y4_N45
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \coffee_maker_state.S_CHOC_POWDER~q\ & ( \I_count3|Equal0~5_combout\ & ( (!\sl_hot_chocolate_int~q\) # ((\sl_reset3n_int~0_combout\ & (\Selector10~0_combout\ & !\sl_coffee_int~q\))) ) ) ) # ( 
-- !\coffee_maker_state.S_CHOC_POWDER~q\ & ( \I_count3|Equal0~5_combout\ & ( (\sl_reset3n_int~0_combout\ & (\Selector10~0_combout\ & (!\sl_coffee_int~q\ & \sl_hot_chocolate_int~q\))) ) ) ) # ( \coffee_maker_state.S_CHOC_POWDER~q\ & ( 
-- !\I_count3|Equal0~5_combout\ ) ) # ( !\coffee_maker_state.S_CHOC_POWDER~q\ & ( !\I_count3|Equal0~5_combout\ & ( (\sl_reset3n_int~0_combout\ & (\Selector10~0_combout\ & (!\sl_coffee_int~q\ & \sl_hot_chocolate_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111111111111100000000000100001111111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_reset3n_int~0_combout\,
	datab => \ALT_INV_Selector10~0_combout\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X81_Y4_N46
\coffee_maker_state.S_CHOC_POWDER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector10~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_CHOC_POWDER~q\);

-- Location: MLABCELL_X82_Y4_N27
\Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = ( \sl_coffee_int~q\ & ( \sl_hot_chocolate_int~q\ & ( !\coffee_maker_state.S_CHOC_POWDER~q\ ) ) ) # ( !\sl_coffee_int~q\ & ( \sl_hot_chocolate_int~q\ & ( (!\sl_espresso_int~q\ & (!\sl_cappuccino_int~q\ & 
-- !\coffee_maker_state.S_CHOC_POWDER~q\)) ) ) ) # ( \sl_coffee_int~q\ & ( !\sl_hot_chocolate_int~q\ ) ) # ( !\sl_coffee_int~q\ & ( !\sl_hot_chocolate_int~q\ & ( (!\sl_espresso_int~q\ & !\sl_cappuccino_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111111111111111110100000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector11~2_combout\);

-- Location: FF_X80_Y4_N20
\coffee_maker_state.S_PUMP_WATER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_WATER~q\);

-- Location: LABCELL_X80_Y4_N30
\Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ( \I_count6|Equal0~5_combout\ & ( \sl_hot_chocolate_int~q\ & ( !\coffee_maker_state.S_CHOC_POWDER~q\ ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( \sl_hot_chocolate_int~q\ & ( (!\sl_coffee_int~q\ & 
-- (!\coffee_maker_state.S_CHOC_POWDER~q\ & ((\sl_cappuccino_int~q\) # (\sl_espresso_int~q\)))) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\sl_hot_chocolate_int~q\ & ( ((\sl_cappuccino_int~q\) # (\sl_espresso_int~q\)) # (\sl_coffee_int~q\) ) ) ) # ( 
-- !\I_count6|Equal0~5_combout\ & ( !\sl_hot_chocolate_int~q\ & ( (!\sl_coffee_int~q\ & ((\sl_cappuccino_int~q\) # (\sl_espresso_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010010111111111111100001000100010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector11~1_combout\);

-- Location: LABCELL_X80_Y4_N18
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \coffee_maker_state.S_PUMP_WATER~q\ & ( \Selector11~1_combout\ & ( (!\HEX1~5_combout\ & (((!\Selector11~2_combout\ & !\I_count3|Equal0~5_combout\)) # (\Selector10~0_combout\))) # (\HEX1~5_combout\ & (!\Selector11~2_combout\ & 
-- ((!\I_count3|Equal0~5_combout\)))) ) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( \Selector11~1_combout\ & ( (!\HEX1~5_combout\ & \Selector10~0_combout\) ) ) ) # ( \coffee_maker_state.S_PUMP_WATER~q\ & ( !\Selector11~1_combout\ ) ) # ( 
-- !\coffee_maker_state.S_PUMP_WATER~q\ & ( !\Selector11~1_combout\ & ( (!\HEX1~5_combout\ & (((!\Selector11~2_combout\ & \I_count3|Equal0~5_combout\)) # (\Selector10~0_combout\))) # (\HEX1~5_combout\ & (!\Selector11~2_combout\ & 
-- ((\I_count3|Equal0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110111111111111111100001010000010101100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HEX1~5_combout\,
	datab => \ALT_INV_Selector11~2_combout\,
	datac => \ALT_INV_Selector10~0_combout\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	dataf => \ALT_INV_Selector11~1_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X80_Y4_N19
\coffee_maker_state.S_PUMP_WATER~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\);

-- Location: LABCELL_X80_Y4_N39
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (!\I_count3|Equal0~5_combout\ & (((\coffee_maker_state.S_PUMP_MILK~q\)))) # (\I_count3|Equal0~5_combout\ & ((!\sl_cappuccino_int~q\ & ((\coffee_maker_state.S_PUMP_MILK~q\))) # 
-- (\sl_cappuccino_int~q\ & (!\sl_coffee_int~q\)))) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (\coffee_maker_state.S_PUMP_MILK~q\ & ((!\I_count3|Equal0~5_combout\) # (!\sl_cappuccino_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000010111111100000001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \I_count3|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X80_Y4_N40
\coffee_maker_state.S_PUMP_MILK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_MILK~q\);

-- Location: MLABCELL_X78_Y4_N21
\Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = ( \coffee_maker_state.S_DONE~q\ & ( (!\I_count3|Equal0~5_combout\) # ((\coffee_maker_state.S_PUMP_MILK~q\ & \sl_cappuccino_int~q\)) ) ) # ( !\coffee_maker_state.S_DONE~q\ & ( (\coffee_maker_state.S_PUMP_MILK~q\ & 
-- (\sl_cappuccino_int~q\ & \I_count3|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~q\,
	combout => \Selector14~2_combout\);

-- Location: MLABCELL_X78_Y4_N39
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \I_count6|Equal0~5_combout\ & ( \coffee_maker_state.S_DONE~q\ & ( (\sl_hot_chocolate_int~q\ & !\sl_cappuccino_int~q\) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( \coffee_maker_state.S_DONE~q\ & ( (\sl_hot_chocolate_int~q\ & 
-- !\sl_cappuccino_int~q\) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\coffee_maker_state.S_DONE~q\ & ( (\sl_hot_chocolate_int~q\ & (!\sl_espresso_int~q\ & !\sl_cappuccino_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~q\,
	combout => \Selector14~0_combout\);

-- Location: MLABCELL_X78_Y4_N24
\Selector14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = ( \Selector14~2_combout\ & ( \Selector14~0_combout\ ) ) # ( !\Selector14~2_combout\ & ( \Selector14~0_combout\ & ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ ) ) ) # ( \Selector14~2_combout\ & ( !\Selector14~0_combout\ ) ) # ( 
-- !\Selector14~2_combout\ & ( !\Selector14~0_combout\ & ( (\Selector14~1_combout\ & \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector14~1_combout\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	datae => \ALT_INV_Selector14~2_combout\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X78_Y4_N25
\coffee_maker_state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector14~3_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_DONE~q\);

-- Location: LABCELL_X80_Y3_N30
\sl_coffee_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_coffee_int~0_combout\ = ( \sl_coffee_int~q\ & ( \KEY[0]~input_o\ & ( !\coffee_maker_state.S_DONE~q\ ) ) ) # ( \sl_coffee_int~q\ & ( !\KEY[0]~input_o\ & ( !\coffee_maker_state.S_DONE~q\ ) ) ) # ( !\sl_coffee_int~q\ & ( !\KEY[0]~input_o\ & ( 
-- (\KEY[1]~input_o\ & (!\coffee_maker_state.S_DONE~q\ & (\sl_cappuccino_int~0_combout\ & !\coffee_maker_state.S_IDLE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datac => \ALT_INV_sl_cappuccino_int~0_combout\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \sl_coffee_int~0_combout\);

-- Location: FF_X80_Y3_N32
sl_coffee_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_coffee_int~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_coffee_int~q\);

-- Location: FF_X80_Y4_N14
\coffee_maker_state.S_BREW~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector9~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_BREW~DUPLICATE_q\);

-- Location: LABCELL_X80_Y3_N42
\Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = ( \sl_espresso_int~q\ & ( !\coffee_maker_state.S_BREW~DUPLICATE_q\ & ( (\coffee_maker_state.S_IDLE~q\) # (\sl_hot_chocolate_int~q\) ) ) ) # ( !\sl_espresso_int~q\ & ( !\coffee_maker_state.S_BREW~DUPLICATE_q\ & ( 
-- (!\sl_cappuccino_int~q\ & (!\coffee_maker_state.S_GRIND~q\ & ((\coffee_maker_state.S_IDLE~q\) # (\sl_hot_chocolate_int~q\)))) # (\sl_cappuccino_int~q\ & (((\coffee_maker_state.S_IDLE~q\)) # (\sl_hot_chocolate_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100010101001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_hot_chocolate_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_BREW~DUPLICATE_q\,
	combout => \Selector4~2_combout\);

-- Location: LABCELL_X80_Y4_N51
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( (\sl_coffee_int~q\ & (!\coffee_maker_state.S_CHOC_POWDER~q\ & !\coffee_maker_state.S_DONE~q\)) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( (!\coffee_maker_state.S_CHOC_POWDER~q\ & 
-- !\coffee_maker_state.S_DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datad => \ALT_INV_coffee_maker_state.S_DONE~q\,
	dataf => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	combout => \Selector4~1_combout\);

-- Location: LABCELL_X80_Y4_N54
\Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = ( \sl_hot_chocolate_int~q\ & ( (!\coffee_maker_state.S_PUMP_MILK~q\ & !\coffee_maker_state.S_PUMP_WATER~q\) ) ) # ( !\sl_hot_chocolate_int~q\ & ( (!\coffee_maker_state.S_PUMP_MILK~q\ & (!\coffee_maker_state.S_PUMP_WATER~q\ & 
-- !\coffee_maker_state.S_CHOC_POWDER~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datad => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector4~3_combout\);

-- Location: LABCELL_X80_Y4_N48
\Selector4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = ( \I_count3|Equal0~5_combout\ & ( (\Selector4~3_combout\ & ((\Selector4~2_combout\) # (\sl_coffee_int~q\))) ) ) # ( !\I_count3|Equal0~5_combout\ & ( (\Selector4~1_combout\ & (\Selector4~3_combout\ & ((\Selector4~2_combout\) # 
-- (\sl_coffee_int~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_Selector4~2_combout\,
	datac => \ALT_INV_Selector4~1_combout\,
	datad => \ALT_INV_Selector4~3_combout\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector4~4_combout\);

-- Location: LABCELL_X80_Y4_N36
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \coffee_maker_state.S_BREW~q\ & ( !\I_count6|Equal0~5_combout\ ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( (\sl_coffee_int~q\ & (\coffee_maker_state.S_GRIND~q\ & !\I_count6|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_BREW~q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X81_Y4_N6
\Selector4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~6_combout\ = ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( ((!\sl_cappuccino_int~q\ & (!\sl_espresso_int~q\ & \sl_hot_chocolate_int~q\))) # (\sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	combout => \Selector4~6_combout\);

-- Location: LABCELL_X80_Y4_N57
\Selector4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~7_combout\ = ( \I_count3|Equal0~5_combout\ & ( (!\Selector4~6_combout\ & (\coffee_maker_state.S_PUMP_MILK~q\ & (\sl_cappuccino_int~q\))) # (\Selector4~6_combout\ & (((\coffee_maker_state.S_PUMP_MILK~q\ & \sl_cappuccino_int~q\)) # 
-- (\I_count6|Equal0~5_combout\))) ) ) # ( !\I_count3|Equal0~5_combout\ & ( (\Selector4~6_combout\ & \I_count6|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector4~6_combout\,
	datab => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector4~7_combout\);

-- Location: LABCELL_X80_Y4_N24
\Selector4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = ( \Selector10~0_combout\ & ( \coffee_maker_state.S_PUMP_WATER~q\ & ( (!\sl_hot_chocolate_int~q\ & \sl_reset3n_int~0_combout\) ) ) ) # ( !\Selector10~0_combout\ & ( \coffee_maker_state.S_PUMP_WATER~q\ & ( 
-- ((\coffee_maker_state.S_IDLE~q\ & !\I_count3|Equal0~5_combout\)) # (\sl_reset3n_int~0_combout\) ) ) ) # ( \Selector10~0_combout\ & ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( (!\sl_hot_chocolate_int~q\ & \sl_reset3n_int~0_combout\) ) ) ) # ( 
-- !\Selector10~0_combout\ & ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( (\sl_reset3n_int~0_combout\) # (\coffee_maker_state.S_IDLE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000011000000110001011111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datab => \ALT_INV_sl_hot_chocolate_int~q\,
	datac => \ALT_INV_sl_reset3n_int~0_combout\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Selector10~0_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	combout => \Selector4~5_combout\);

-- Location: LABCELL_X80_Y4_N6
\Selector4~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~8_combout\ = ( \sl_reset3n_int~q\ & ( \Selector4~5_combout\ & ( (!\Selector4~4_combout\) # ((\Selector4~7_combout\) # (\Selector4~0_combout\)) ) ) ) # ( !\sl_reset3n_int~q\ & ( \Selector4~5_combout\ & ( \Selector4~7_combout\ ) ) ) # ( 
-- \sl_reset3n_int~q\ & ( !\Selector4~5_combout\ & ( (!\Selector4~4_combout\) # (((!\sl_coffee_int~q\) # (\Selector4~7_combout\)) # (\Selector4~0_combout\)) ) ) ) # ( !\sl_reset3n_int~q\ & ( !\Selector4~5_combout\ & ( (!\sl_coffee_int~q\) # 
-- (\Selector4~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111110111111111100000000111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector4~4_combout\,
	datab => \ALT_INV_Selector4~0_combout\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_Selector4~7_combout\,
	datae => \ALT_INV_sl_reset3n_int~q\,
	dataf => \ALT_INV_Selector4~5_combout\,
	combout => \Selector4~8_combout\);

-- Location: FF_X80_Y4_N8
sl_reset3n_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector4~8_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_reset3n_int~q\);

-- Location: FF_X79_Y4_N26
\I_count3|u_counter_int[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~1_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[18]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N30
\I_count3|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~73_sumout\ = SUM(( \I_count3|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \I_count3|Add0~74\ = CARRY(( \I_count3|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \I_count3|Add0~73_sumout\,
	cout => \I_count3|Add0~74\);

-- Location: FF_X79_Y5_N31
\I_count3|u_counter_int[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~73_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[0]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N33
\I_count3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~33_sumout\ = SUM(( \I_count3|u_counter_int\(1) ) + ( GND ) + ( \I_count3|Add0~74\ ))
-- \I_count3|Add0~34\ = CARRY(( \I_count3|u_counter_int\(1) ) + ( GND ) + ( \I_count3|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(1),
	cin => \I_count3|Add0~74\,
	sumout => \I_count3|Add0~33_sumout\,
	cout => \I_count3|Add0~34\);

-- Location: FF_X79_Y5_N35
\I_count3|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~33_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(1));

-- Location: LABCELL_X79_Y5_N36
\I_count3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~37_sumout\ = SUM(( \I_count3|u_counter_int\(2) ) + ( GND ) + ( \I_count3|Add0~34\ ))
-- \I_count3|Add0~38\ = CARRY(( \I_count3|u_counter_int\(2) ) + ( GND ) + ( \I_count3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(2),
	cin => \I_count3|Add0~34\,
	sumout => \I_count3|Add0~37_sumout\,
	cout => \I_count3|Add0~38\);

-- Location: FF_X79_Y5_N38
\I_count3|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~37_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(2));

-- Location: LABCELL_X79_Y5_N39
\I_count3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~41_sumout\ = SUM(( \I_count3|u_counter_int\(3) ) + ( GND ) + ( \I_count3|Add0~38\ ))
-- \I_count3|Add0~42\ = CARRY(( \I_count3|u_counter_int\(3) ) + ( GND ) + ( \I_count3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(3),
	cin => \I_count3|Add0~38\,
	sumout => \I_count3|Add0~41_sumout\,
	cout => \I_count3|Add0~42\);

-- Location: FF_X79_Y5_N41
\I_count3|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~41_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(3));

-- Location: LABCELL_X79_Y5_N42
\I_count3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~5_sumout\ = SUM(( \I_count3|u_counter_int\(4) ) + ( GND ) + ( \I_count3|Add0~42\ ))
-- \I_count3|Add0~6\ = CARRY(( \I_count3|u_counter_int\(4) ) + ( GND ) + ( \I_count3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(4),
	cin => \I_count3|Add0~42\,
	sumout => \I_count3|Add0~5_sumout\,
	cout => \I_count3|Add0~6\);

-- Location: FF_X79_Y5_N43
\I_count3|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~5_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(4));

-- Location: LABCELL_X79_Y5_N45
\I_count3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~9_sumout\ = SUM(( \I_count3|u_counter_int\(5) ) + ( GND ) + ( \I_count3|Add0~6\ ))
-- \I_count3|Add0~10\ = CARRY(( \I_count3|u_counter_int\(5) ) + ( GND ) + ( \I_count3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(5),
	cin => \I_count3|Add0~6\,
	sumout => \I_count3|Add0~9_sumout\,
	cout => \I_count3|Add0~10\);

-- Location: FF_X79_Y5_N47
\I_count3|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~9_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(5));

-- Location: LABCELL_X79_Y5_N48
\I_count3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~13_sumout\ = SUM(( \I_count3|u_counter_int\(6) ) + ( GND ) + ( \I_count3|Add0~10\ ))
-- \I_count3|Add0~14\ = CARRY(( \I_count3|u_counter_int\(6) ) + ( GND ) + ( \I_count3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(6),
	cin => \I_count3|Add0~10\,
	sumout => \I_count3|Add0~13_sumout\,
	cout => \I_count3|Add0~14\);

-- Location: FF_X79_Y5_N50
\I_count3|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~13_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(6));

-- Location: LABCELL_X79_Y5_N51
\I_count3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~17_sumout\ = SUM(( \I_count3|u_counter_int\(7) ) + ( GND ) + ( \I_count3|Add0~14\ ))
-- \I_count3|Add0~18\ = CARRY(( \I_count3|u_counter_int\(7) ) + ( GND ) + ( \I_count3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(7),
	cin => \I_count3|Add0~14\,
	sumout => \I_count3|Add0~17_sumout\,
	cout => \I_count3|Add0~18\);

-- Location: FF_X79_Y5_N53
\I_count3|u_counter_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~17_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(7));

-- Location: LABCELL_X79_Y5_N54
\I_count3|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~69_sumout\ = SUM(( \I_count3|u_counter_int\(8) ) + ( GND ) + ( \I_count3|Add0~18\ ))
-- \I_count3|Add0~70\ = CARRY(( \I_count3|u_counter_int\(8) ) + ( GND ) + ( \I_count3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(8),
	cin => \I_count3|Add0~18\,
	sumout => \I_count3|Add0~69_sumout\,
	cout => \I_count3|Add0~70\);

-- Location: FF_X79_Y5_N55
\I_count3|u_counter_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~69_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(8));

-- Location: LABCELL_X79_Y5_N57
\I_count3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~45_sumout\ = SUM(( \I_count3|u_counter_int[9]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~70\ ))
-- \I_count3|Add0~46\ = CARRY(( \I_count3|u_counter_int[9]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[9]~DUPLICATE_q\,
	cin => \I_count3|Add0~70\,
	sumout => \I_count3|Add0~45_sumout\,
	cout => \I_count3|Add0~46\);

-- Location: FF_X79_Y5_N59
\I_count3|u_counter_int[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~45_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[9]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y4_N0
\I_count3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~29_sumout\ = SUM(( \I_count3|u_counter_int\(10) ) + ( GND ) + ( \I_count3|Add0~46\ ))
-- \I_count3|Add0~30\ = CARRY(( \I_count3|u_counter_int\(10) ) + ( GND ) + ( \I_count3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(10),
	cin => \I_count3|Add0~46\,
	sumout => \I_count3|Add0~29_sumout\,
	cout => \I_count3|Add0~30\);

-- Location: FF_X79_Y4_N2
\I_count3|u_counter_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~29_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(10));

-- Location: LABCELL_X79_Y4_N3
\I_count3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~25_sumout\ = SUM(( \I_count3|u_counter_int\(11) ) + ( GND ) + ( \I_count3|Add0~30\ ))
-- \I_count3|Add0~26\ = CARRY(( \I_count3|u_counter_int\(11) ) + ( GND ) + ( \I_count3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(11),
	cin => \I_count3|Add0~30\,
	sumout => \I_count3|Add0~25_sumout\,
	cout => \I_count3|Add0~26\);

-- Location: FF_X79_Y4_N5
\I_count3|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~25_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(11));

-- Location: LABCELL_X79_Y4_N6
\I_count3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~21_sumout\ = SUM(( \I_count3|u_counter_int\(12) ) + ( GND ) + ( \I_count3|Add0~26\ ))
-- \I_count3|Add0~22\ = CARRY(( \I_count3|u_counter_int\(12) ) + ( GND ) + ( \I_count3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(12),
	cin => \I_count3|Add0~26\,
	sumout => \I_count3|Add0~21_sumout\,
	cout => \I_count3|Add0~22\);

-- Location: FF_X79_Y4_N8
\I_count3|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~21_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(12));

-- Location: LABCELL_X79_Y4_N9
\I_count3|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~65_sumout\ = SUM(( \I_count3|u_counter_int[13]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~22\ ))
-- \I_count3|Add0~66\ = CARRY(( \I_count3|u_counter_int[13]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int[13]~DUPLICATE_q\,
	cin => \I_count3|Add0~22\,
	sumout => \I_count3|Add0~65_sumout\,
	cout => \I_count3|Add0~66\);

-- Location: FF_X79_Y4_N11
\I_count3|u_counter_int[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~65_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[13]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y4_N12
\I_count3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~61_sumout\ = SUM(( \I_count3|u_counter_int\(14) ) + ( GND ) + ( \I_count3|Add0~66\ ))
-- \I_count3|Add0~62\ = CARRY(( \I_count3|u_counter_int\(14) ) + ( GND ) + ( \I_count3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(14),
	cin => \I_count3|Add0~66\,
	sumout => \I_count3|Add0~61_sumout\,
	cout => \I_count3|Add0~62\);

-- Location: FF_X79_Y4_N14
\I_count3|u_counter_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~61_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(14));

-- Location: LABCELL_X79_Y4_N15
\I_count3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~57_sumout\ = SUM(( \I_count3|u_counter_int\(15) ) + ( GND ) + ( \I_count3|Add0~62\ ))
-- \I_count3|Add0~58\ = CARRY(( \I_count3|u_counter_int\(15) ) + ( GND ) + ( \I_count3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(15),
	cin => \I_count3|Add0~62\,
	sumout => \I_count3|Add0~57_sumout\,
	cout => \I_count3|Add0~58\);

-- Location: FF_X79_Y4_N17
\I_count3|u_counter_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~57_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(15));

-- Location: LABCELL_X79_Y4_N18
\I_count3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~53_sumout\ = SUM(( \I_count3|u_counter_int\(16) ) + ( GND ) + ( \I_count3|Add0~58\ ))
-- \I_count3|Add0~54\ = CARRY(( \I_count3|u_counter_int\(16) ) + ( GND ) + ( \I_count3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(16),
	cin => \I_count3|Add0~58\,
	sumout => \I_count3|Add0~53_sumout\,
	cout => \I_count3|Add0~54\);

-- Location: FF_X79_Y4_N20
\I_count3|u_counter_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~53_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(16));

-- Location: LABCELL_X79_Y4_N21
\I_count3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~49_sumout\ = SUM(( \I_count3|u_counter_int\(17) ) + ( GND ) + ( \I_count3|Add0~54\ ))
-- \I_count3|Add0~50\ = CARRY(( \I_count3|u_counter_int\(17) ) + ( GND ) + ( \I_count3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(17),
	cin => \I_count3|Add0~54\,
	sumout => \I_count3|Add0~49_sumout\,
	cout => \I_count3|Add0~50\);

-- Location: FF_X79_Y4_N23
\I_count3|u_counter_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~49_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(17));

-- Location: LABCELL_X79_Y4_N24
\I_count3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~1_sumout\ = SUM(( \I_count3|u_counter_int[18]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~50\ ))
-- \I_count3|Add0~2\ = CARRY(( \I_count3|u_counter_int[18]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int[18]~DUPLICATE_q\,
	cin => \I_count3|Add0~50\,
	sumout => \I_count3|Add0~1_sumout\,
	cout => \I_count3|Add0~2\);

-- Location: FF_X79_Y4_N25
\I_count3|u_counter_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~1_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(18));

-- Location: LABCELL_X79_Y5_N12
\I_count3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~0_combout\ = ( \I_count3|u_counter_int\(4) & ( !\I_count3|u_counter_int\(7) & ( (\I_count3|u_counter_int\(5) & \I_count3|u_counter_int\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(5),
	datac => \I_count3|ALT_INV_u_counter_int\(6),
	datae => \I_count3|ALT_INV_u_counter_int\(4),
	dataf => \I_count3|ALT_INV_u_counter_int\(7),
	combout => \I_count3|Equal0~0_combout\);

-- Location: LABCELL_X79_Y4_N27
\I_count3|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~109_sumout\ = SUM(( \I_count3|u_counter_int[19]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~2\ ))
-- \I_count3|Add0~110\ = CARRY(( \I_count3|u_counter_int[19]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\,
	cin => \I_count3|Add0~2\,
	sumout => \I_count3|Add0~109_sumout\,
	cout => \I_count3|Add0~110\);

-- Location: FF_X79_Y4_N28
\I_count3|u_counter_int[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~109_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[19]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y4_N30
\I_count3|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~105_sumout\ = SUM(( \I_count3|u_counter_int\(20) ) + ( GND ) + ( \I_count3|Add0~110\ ))
-- \I_count3|Add0~106\ = CARRY(( \I_count3|u_counter_int\(20) ) + ( GND ) + ( \I_count3|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(20),
	cin => \I_count3|Add0~110\,
	sumout => \I_count3|Add0~105_sumout\,
	cout => \I_count3|Add0~106\);

-- Location: FF_X79_Y4_N32
\I_count3|u_counter_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~105_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(20));

-- Location: LABCELL_X79_Y4_N33
\I_count3|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~101_sumout\ = SUM(( \I_count3|u_counter_int\(21) ) + ( GND ) + ( \I_count3|Add0~106\ ))
-- \I_count3|Add0~102\ = CARRY(( \I_count3|u_counter_int\(21) ) + ( GND ) + ( \I_count3|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(21),
	cin => \I_count3|Add0~106\,
	sumout => \I_count3|Add0~101_sumout\,
	cout => \I_count3|Add0~102\);

-- Location: FF_X79_Y4_N35
\I_count3|u_counter_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~101_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(21));

-- Location: LABCELL_X79_Y4_N36
\I_count3|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~97_sumout\ = SUM(( \I_count3|u_counter_int\(22) ) + ( GND ) + ( \I_count3|Add0~102\ ))
-- \I_count3|Add0~98\ = CARRY(( \I_count3|u_counter_int\(22) ) + ( GND ) + ( \I_count3|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(22),
	cin => \I_count3|Add0~102\,
	sumout => \I_count3|Add0~97_sumout\,
	cout => \I_count3|Add0~98\);

-- Location: FF_X79_Y4_N38
\I_count3|u_counter_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~97_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(22));

-- Location: LABCELL_X79_Y4_N39
\I_count3|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~93_sumout\ = SUM(( \I_count3|u_counter_int\(23) ) + ( GND ) + ( \I_count3|Add0~98\ ))
-- \I_count3|Add0~94\ = CARRY(( \I_count3|u_counter_int\(23) ) + ( GND ) + ( \I_count3|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(23),
	cin => \I_count3|Add0~98\,
	sumout => \I_count3|Add0~93_sumout\,
	cout => \I_count3|Add0~94\);

-- Location: FF_X79_Y4_N41
\I_count3|u_counter_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~93_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(23));

-- Location: LABCELL_X79_Y4_N42
\I_count3|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~89_sumout\ = SUM(( \I_count3|u_counter_int\(24) ) + ( GND ) + ( \I_count3|Add0~94\ ))
-- \I_count3|Add0~90\ = CARRY(( \I_count3|u_counter_int\(24) ) + ( GND ) + ( \I_count3|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(24),
	cin => \I_count3|Add0~94\,
	sumout => \I_count3|Add0~89_sumout\,
	cout => \I_count3|Add0~90\);

-- Location: FF_X79_Y4_N44
\I_count3|u_counter_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~89_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(24));

-- Location: LABCELL_X79_Y4_N45
\I_count3|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~85_sumout\ = SUM(( \I_count3|u_counter_int\(25) ) + ( GND ) + ( \I_count3|Add0~90\ ))
-- \I_count3|Add0~86\ = CARRY(( \I_count3|u_counter_int\(25) ) + ( GND ) + ( \I_count3|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(25),
	cin => \I_count3|Add0~90\,
	sumout => \I_count3|Add0~85_sumout\,
	cout => \I_count3|Add0~86\);

-- Location: FF_X79_Y4_N47
\I_count3|u_counter_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~85_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(25));

-- Location: FF_X79_Y5_N32
\I_count3|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~73_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(0));

-- Location: LABCELL_X79_Y4_N48
\I_count3|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~81_sumout\ = SUM(( \I_count3|u_counter_int\(26) ) + ( GND ) + ( \I_count3|Add0~86\ ))
-- \I_count3|Add0~82\ = CARRY(( \I_count3|u_counter_int\(26) ) + ( GND ) + ( \I_count3|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(26),
	cin => \I_count3|Add0~86\,
	sumout => \I_count3|Add0~81_sumout\,
	cout => \I_count3|Add0~82\);

-- Location: FF_X79_Y4_N50
\I_count3|u_counter_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~81_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(26));

-- Location: LABCELL_X79_Y4_N51
\I_count3|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~77_sumout\ = SUM(( \I_count3|u_counter_int\(27) ) + ( GND ) + ( \I_count3|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(27),
	cin => \I_count3|Add0~82\,
	sumout => \I_count3|Add0~77_sumout\);

-- Location: FF_X79_Y4_N53
\I_count3|u_counter_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~77_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(27));

-- Location: FF_X79_Y4_N49
\I_count3|u_counter_int[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~81_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[26]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N18
\I_count3|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~3_combout\ = ( \I_count3|u_counter_int\(27) & ( !\I_count3|u_counter_int[26]~DUPLICATE_q\ & ( (!\I_count3|u_counter_int\(25) & (\I_count3|u_counter_int\(0) & (!\I_count3|u_counter_int\(24) & \I_count3|u_counter_int\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(25),
	datab => \I_count3|ALT_INV_u_counter_int\(0),
	datac => \I_count3|ALT_INV_u_counter_int\(24),
	datad => \I_count3|ALT_INV_u_counter_int\(8),
	datae => \I_count3|ALT_INV_u_counter_int\(27),
	dataf => \I_count3|ALT_INV_u_counter_int[26]~DUPLICATE_q\,
	combout => \I_count3|Equal0~3_combout\);

-- Location: FF_X79_Y4_N4
\I_count3|u_counter_int[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~25_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[11]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N6
\I_count3|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~1_combout\ = ( \I_count3|u_counter_int\(12) & ( !\I_count3|u_counter_int[11]~DUPLICATE_q\ & ( (\I_count3|u_counter_int\(2) & (\I_count3|u_counter_int\(3) & (\I_count3|u_counter_int\(1) & !\I_count3|u_counter_int\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(2),
	datab => \I_count3|ALT_INV_u_counter_int\(3),
	datac => \I_count3|ALT_INV_u_counter_int\(1),
	datad => \I_count3|ALT_INV_u_counter_int\(10),
	datae => \I_count3|ALT_INV_u_counter_int\(12),
	dataf => \I_count3|ALT_INV_u_counter_int[11]~DUPLICATE_q\,
	combout => \I_count3|Equal0~1_combout\);

-- Location: FF_X79_Y5_N58
\I_count3|u_counter_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~45_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(9));

-- Location: FF_X79_Y4_N10
\I_count3|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~65_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(13));

-- Location: LABCELL_X79_Y5_N0
\I_count3|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~2_combout\ = ( \I_count3|u_counter_int\(15) & ( !\I_count3|u_counter_int\(13) & ( (!\I_count3|u_counter_int\(9) & (\I_count3|u_counter_int\(14) & (!\I_count3|u_counter_int\(17) & !\I_count3|u_counter_int\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(9),
	datab => \I_count3|ALT_INV_u_counter_int\(14),
	datac => \I_count3|ALT_INV_u_counter_int\(17),
	datad => \I_count3|ALT_INV_u_counter_int\(16),
	datae => \I_count3|ALT_INV_u_counter_int\(15),
	dataf => \I_count3|ALT_INV_u_counter_int\(13),
	combout => \I_count3|Equal0~2_combout\);

-- Location: FF_X79_Y4_N29
\I_count3|u_counter_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~109_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(19));

-- Location: LABCELL_X79_Y4_N57
\I_count3|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~4_combout\ = ( !\I_count3|u_counter_int\(19) & ( \I_count3|u_counter_int\(21) & ( (\I_count3|u_counter_int\(23) & (\I_count3|u_counter_int\(20) & \I_count3|u_counter_int\(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(23),
	datac => \I_count3|ALT_INV_u_counter_int\(20),
	datad => \I_count3|ALT_INV_u_counter_int\(22),
	datae => \I_count3|ALT_INV_u_counter_int\(19),
	dataf => \I_count3|ALT_INV_u_counter_int\(21),
	combout => \I_count3|Equal0~4_combout\);

-- Location: LABCELL_X79_Y5_N24
\I_count3|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~5_combout\ = ( \I_count3|Equal0~2_combout\ & ( \I_count3|Equal0~4_combout\ & ( (!\I_count3|u_counter_int\(18) & (\I_count3|Equal0~0_combout\ & (\I_count3|Equal0~3_combout\ & \I_count3|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(18),
	datab => \I_count3|ALT_INV_Equal0~0_combout\,
	datac => \I_count3|ALT_INV_Equal0~3_combout\,
	datad => \I_count3|ALT_INV_Equal0~1_combout\,
	datae => \I_count3|ALT_INV_Equal0~2_combout\,
	dataf => \I_count3|ALT_INV_Equal0~4_combout\,
	combout => \I_count3|Equal0~5_combout\);

-- Location: MLABCELL_X78_Y4_N33
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \coffee_maker_state.S_IDLE~q\ & ( \coffee_maker_state.S_DONE~q\ & ( !\I_count3|Equal0~5_combout\ ) ) ) # ( !\coffee_maker_state.S_IDLE~q\ & ( \coffee_maker_state.S_DONE~q\ & ( (!\I_count3|Equal0~5_combout\ & ((!\HEX1~5_combout\) 
-- # (\sl_hot_chocolate_int~q\))) ) ) ) # ( \coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state.S_DONE~q\ ) ) # ( !\coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state.S_DONE~q\ & ( (!\HEX1~5_combout\) # (\sl_hot_chocolate_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111111111111110101010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_HEX1~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X78_Y4_N34
\coffee_maker_state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_IDLE~q\);

-- Location: LABCELL_X80_Y3_N36
\sl_espresso_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_espresso_int~0_combout\ = ( \coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state.S_DONE~q\ & ( \sl_espresso_int~q\ ) ) ) # ( !\coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state.S_DONE~q\ & ( ((\KEY[3]~input_o\ & (\sl_hot_chocolate_int~0_combout\ 
-- & !\KEY[2]~input_o\))) # (\sl_espresso_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_sl_hot_chocolate_int~0_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~q\,
	combout => \sl_espresso_int~0_combout\);

-- Location: FF_X80_Y4_N2
sl_espresso_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \sl_espresso_int~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_espresso_int~q\);

-- Location: MLABCELL_X82_Y4_N48
\Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = ( \sl_coffee_int~q\ & ( \sl_cappuccino_int~q\ & ( (\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\) ) ) ) # ( !\sl_coffee_int~q\ & ( \sl_cappuccino_int~q\ & ( ((\coffee_maker_state.S_CHOC_POWDER~q\ & 
-- \sl_hot_chocolate_int~q\)) # (\coffee_maker_state.S_GRIND~q\) ) ) ) # ( \sl_coffee_int~q\ & ( !\sl_cappuccino_int~q\ & ( (\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\) ) ) ) # ( !\sl_coffee_int~q\ & ( !\sl_cappuccino_int~q\ & ( 
-- (!\sl_espresso_int~q\ & (((\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\)))) # (\sl_espresso_int~q\ & (((\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\)) # (\coffee_maker_state.S_GRIND~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000000000000111100110011001111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datac => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector5~6_combout\);

-- Location: LABCELL_X81_Y4_N36
\Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( (\sl_coffee_int~q\ & \I_count6|Equal0~5_combout\) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( (\coffee_maker_state.S_BREW~q\ & (\sl_coffee_int~q\ & \I_count6|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	combout => \Selector5~5_combout\);

-- Location: MLABCELL_X82_Y4_N6
\Selector5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~7_combout\ = ( \sl_coffee_int~q\ & ( \sl_cappuccino_int~q\ & ( !\coffee_maker_state.S_IDLE~q\ ) ) ) # ( \sl_coffee_int~q\ & ( !\sl_cappuccino_int~q\ & ( !\coffee_maker_state.S_IDLE~q\ ) ) ) # ( !\sl_coffee_int~q\ & ( !\sl_cappuccino_int~q\ & ( 
-- (!\coffee_maker_state.S_IDLE~q\ & (!\sl_espresso_int~q\ & \sl_hot_chocolate_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector5~7_combout\);

-- Location: MLABCELL_X82_Y4_N39
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \sl_espresso_int~q\ & ( !\coffee_maker_state.S_DONE~q\ & ( (!\coffee_maker_state.S_PUMP_MILK~q\ & ((!\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\) # (\sl_coffee_int~q\))) ) ) ) # ( !\sl_espresso_int~q\ & ( 
-- !\coffee_maker_state.S_DONE~q\ & ( (!\coffee_maker_state.S_PUMP_MILK~q\ & ((!\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\) # ((!\sl_cappuccino_int~q\) # (\sl_coffee_int~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000101011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~q\,
	combout => \Selector5~1_combout\);

-- Location: LABCELL_X81_Y4_N39
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (!\coffee_maker_state.S_BREW~q\ & (!\sl_coffee_int~q\ & ((\sl_cappuccino_int~q\) # (\sl_espresso_int~q\)))) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( 
-- !\coffee_maker_state.S_BREW~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	combout => \Selector5~0_combout\);

-- Location: MLABCELL_X82_Y4_N18
\Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = ( \sl_coffee_int~q\ & ( \coffee_maker_state.S_BREW~DUPLICATE_q\ & ( (!\sl_espresso_int~q\ & (!\sl_cappuccino_int~q\ & !\sl_hot_chocolate_int~q\)) ) ) ) # ( !\sl_coffee_int~q\ & ( \coffee_maker_state.S_BREW~DUPLICATE_q\ & ( 
-- (!\sl_espresso_int~q\ & (!\sl_cappuccino_int~q\ & !\sl_hot_chocolate_int~q\)) ) ) ) # ( !\sl_coffee_int~q\ & ( !\coffee_maker_state.S_BREW~DUPLICATE_q\ & ( (!\sl_espresso_int~q\ & (!\sl_cappuccino_int~q\ & (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & 
-- !\sl_hot_chocolate_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_BREW~DUPLICATE_q\,
	combout => \Selector5~2_combout\);

-- Location: LABCELL_X80_Y4_N3
\Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = ( \sl_espresso_int~q\ & ( \sl_cappuccino_int~q\ & ( (!\coffee_maker_state.S_CHOC_POWDER~q\ & !\coffee_maker_state.S_GRIND~q\) ) ) ) # ( !\sl_espresso_int~q\ & ( \sl_cappuccino_int~q\ & ( (!\coffee_maker_state.S_CHOC_POWDER~q\ & 
-- !\coffee_maker_state.S_GRIND~q\) ) ) ) # ( \sl_espresso_int~q\ & ( !\sl_cappuccino_int~q\ & ( (!\coffee_maker_state.S_PUMP_MILK~q\ & (!\coffee_maker_state.S_CHOC_POWDER~q\ & !\coffee_maker_state.S_GRIND~q\)) ) ) ) # ( !\sl_espresso_int~q\ & ( 
-- !\sl_cappuccino_int~q\ & ( (\coffee_maker_state.S_IDLE~q\ & (!\coffee_maker_state.S_PUMP_MILK~q\ & (!\coffee_maker_state.S_CHOC_POWDER~q\ & !\coffee_maker_state.S_GRIND~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000110000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datab => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datac => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector5~3_combout\);

-- Location: LABCELL_X81_Y4_N0
\Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = ( \I_count6|Equal0~5_combout\ & ( \I_count3|Equal0~5_combout\ & ( (!\Selector5~2_combout\ & \Selector5~3_combout\) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( \I_count3|Equal0~5_combout\ & ( (\Selector5~0_combout\ & 
-- (!\Selector5~2_combout\ & \Selector5~3_combout\)) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\I_count3|Equal0~5_combout\ & ( (\Selector5~1_combout\ & (!\Selector5~2_combout\ & \Selector5~3_combout\)) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( 
-- !\I_count3|Equal0~5_combout\ & ( (\Selector5~1_combout\ & (\Selector5~0_combout\ & (!\Selector5~2_combout\ & \Selector5~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000101000000000000001100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector5~1_combout\,
	datab => \ALT_INV_Selector5~0_combout\,
	datac => \ALT_INV_Selector5~2_combout\,
	datad => \ALT_INV_Selector5~3_combout\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector5~4_combout\);

-- Location: MLABCELL_X82_Y5_N45
\Selector5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~8_combout\ = ( \sl_reset6n_int~q\ & ( \Selector5~4_combout\ & ( (((\Selector5~6_combout\ & \I_count3|Equal0~5_combout\)) # (\Selector5~7_combout\)) # (\Selector5~5_combout\) ) ) ) # ( !\sl_reset6n_int~q\ & ( \Selector5~4_combout\ & ( 
-- (((\Selector5~6_combout\ & \I_count3|Equal0~5_combout\)) # (\Selector5~7_combout\)) # (\Selector5~5_combout\) ) ) ) # ( \sl_reset6n_int~q\ & ( !\Selector5~4_combout\ ) ) # ( !\sl_reset6n_int~q\ & ( !\Selector5~4_combout\ & ( (((\Selector5~6_combout\ & 
-- \I_count3|Equal0~5_combout\)) # (\Selector5~7_combout\)) # (\Selector5~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111111111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector5~6_combout\,
	datab => \I_count3|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_Selector5~5_combout\,
	datad => \ALT_INV_Selector5~7_combout\,
	datae => \ALT_INV_sl_reset6n_int~q\,
	dataf => \ALT_INV_Selector5~4_combout\,
	combout => \Selector5~8_combout\);

-- Location: FF_X82_Y5_N47
sl_reset6n_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector5~8_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_reset6n_int~q\);

-- Location: FF_X81_Y6_N31
\I_count6|u_counter_int[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~33_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N33
\I_count6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~25_sumout\ = SUM(( \I_count6|u_counter_int[1]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~34\ ))
-- \I_count6|Add0~26\ = CARRY(( \I_count6|u_counter_int[1]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int[1]~DUPLICATE_q\,
	cin => \I_count6|Add0~34\,
	sumout => \I_count6|Add0~25_sumout\,
	cout => \I_count6|Add0~26\);

-- Location: FF_X81_Y6_N35
\I_count6|u_counter_int[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~25_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N36
\I_count6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~29_sumout\ = SUM(( \I_count6|u_counter_int\(2) ) + ( GND ) + ( \I_count6|Add0~26\ ))
-- \I_count6|Add0~30\ = CARRY(( \I_count6|u_counter_int\(2) ) + ( GND ) + ( \I_count6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(2),
	cin => \I_count6|Add0~26\,
	sumout => \I_count6|Add0~29_sumout\,
	cout => \I_count6|Add0~30\);

-- Location: FF_X81_Y4_N11
\I_count6|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count6|Add0~29_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(2));

-- Location: LABCELL_X81_Y6_N39
\I_count6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~21_sumout\ = SUM(( \I_count6|u_counter_int[3]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~30\ ))
-- \I_count6|Add0~22\ = CARRY(( \I_count6|u_counter_int[3]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[3]~DUPLICATE_q\,
	cin => \I_count6|Add0~30\,
	sumout => \I_count6|Add0~21_sumout\,
	cout => \I_count6|Add0~22\);

-- Location: FF_X81_Y6_N41
\I_count6|u_counter_int[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~21_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[3]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N42
\I_count6|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~65_sumout\ = SUM(( \I_count6|u_counter_int\(4) ) + ( GND ) + ( \I_count6|Add0~22\ ))
-- \I_count6|Add0~66\ = CARRY(( \I_count6|u_counter_int\(4) ) + ( GND ) + ( \I_count6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(4),
	cin => \I_count6|Add0~22\,
	sumout => \I_count6|Add0~65_sumout\,
	cout => \I_count6|Add0~66\);

-- Location: FF_X81_Y6_N43
\I_count6|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~65_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(4));

-- Location: LABCELL_X81_Y6_N45
\I_count6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~61_sumout\ = SUM(( \I_count6|u_counter_int\(5) ) + ( GND ) + ( \I_count6|Add0~66\ ))
-- \I_count6|Add0~62\ = CARRY(( \I_count6|u_counter_int\(5) ) + ( GND ) + ( \I_count6|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(5),
	cin => \I_count6|Add0~66\,
	sumout => \I_count6|Add0~61_sumout\,
	cout => \I_count6|Add0~62\);

-- Location: FF_X81_Y6_N47
\I_count6|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~61_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(5));

-- Location: LABCELL_X81_Y6_N48
\I_count6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~57_sumout\ = SUM(( \I_count6|u_counter_int\(6) ) + ( GND ) + ( \I_count6|Add0~62\ ))
-- \I_count6|Add0~58\ = CARRY(( \I_count6|u_counter_int\(6) ) + ( GND ) + ( \I_count6|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(6),
	cin => \I_count6|Add0~62\,
	sumout => \I_count6|Add0~57_sumout\,
	cout => \I_count6|Add0~58\);

-- Location: FF_X81_Y6_N50
\I_count6|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~57_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(6));

-- Location: LABCELL_X81_Y6_N51
\I_count6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~53_sumout\ = SUM(( \I_count6|u_counter_int[7]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~58\ ))
-- \I_count6|Add0~54\ = CARRY(( \I_count6|u_counter_int[7]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int[7]~DUPLICATE_q\,
	cin => \I_count6|Add0~58\,
	sumout => \I_count6|Add0~53_sumout\,
	cout => \I_count6|Add0~54\);

-- Location: FF_X81_Y6_N52
\I_count6|u_counter_int[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~53_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[7]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N54
\I_count6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~49_sumout\ = SUM(( \I_count6|u_counter_int\(8) ) + ( GND ) + ( \I_count6|Add0~54\ ))
-- \I_count6|Add0~50\ = CARRY(( \I_count6|u_counter_int\(8) ) + ( GND ) + ( \I_count6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(8),
	cin => \I_count6|Add0~54\,
	sumout => \I_count6|Add0~49_sumout\,
	cout => \I_count6|Add0~50\);

-- Location: FF_X81_Y6_N56
\I_count6|u_counter_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~49_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(8));

-- Location: LABCELL_X81_Y6_N57
\I_count6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~45_sumout\ = SUM(( \I_count6|u_counter_int\(9) ) + ( GND ) + ( \I_count6|Add0~50\ ))
-- \I_count6|Add0~46\ = CARRY(( \I_count6|u_counter_int\(9) ) + ( GND ) + ( \I_count6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(9),
	cin => \I_count6|Add0~50\,
	sumout => \I_count6|Add0~45_sumout\,
	cout => \I_count6|Add0~46\);

-- Location: FF_X81_Y6_N59
\I_count6|u_counter_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~45_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(9));

-- Location: LABCELL_X81_Y5_N0
\I_count6|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~113_sumout\ = SUM(( \I_count6|u_counter_int\(10) ) + ( GND ) + ( \I_count6|Add0~46\ ))
-- \I_count6|Add0~114\ = CARRY(( \I_count6|u_counter_int\(10) ) + ( GND ) + ( \I_count6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(10),
	cin => \I_count6|Add0~46\,
	sumout => \I_count6|Add0~113_sumout\,
	cout => \I_count6|Add0~114\);

-- Location: FF_X81_Y5_N2
\I_count6|u_counter_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~113_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(10));

-- Location: FF_X81_Y5_N5
\I_count6|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~109_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(11));

-- Location: FF_X81_Y5_N13
\I_count6|u_counter_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~97_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(14));

-- Location: FF_X81_Y5_N17
\I_count6|u_counter_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~93_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(15));

-- Location: LABCELL_X81_Y4_N24
\I_count6|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~4_combout\ = ( !\I_count6|u_counter_int\(10) & ( !\I_count6|u_counter_int\(12) & ( (!\I_count6|u_counter_int\(11) & (!\I_count6|u_counter_int\(14) & (\I_count6|u_counter_int\(13) & \I_count6|u_counter_int\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(11),
	datab => \I_count6|ALT_INV_u_counter_int\(14),
	datac => \I_count6|ALT_INV_u_counter_int\(13),
	datad => \I_count6|ALT_INV_u_counter_int\(15),
	datae => \I_count6|ALT_INV_u_counter_int\(10),
	dataf => \I_count6|ALT_INV_u_counter_int\(12),
	combout => \I_count6|Equal0~4_combout\);

-- Location: LABCELL_X81_Y4_N57
\I_count6|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~5_combout\ = ( \I_count6|Equal0~0_combout\ & ( \I_count6|Equal0~3_combout\ & ( (\I_count6|Equal0~4_combout\ & (\I_count6|Equal0~1_combout\ & \I_count6|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~4_combout\,
	datac => \I_count6|ALT_INV_Equal0~1_combout\,
	datad => \I_count6|ALT_INV_Equal0~2_combout\,
	datae => \I_count6|ALT_INV_Equal0~0_combout\,
	dataf => \I_count6|ALT_INV_Equal0~3_combout\,
	combout => \I_count6|Equal0~5_combout\);

-- Location: LABCELL_X81_Y4_N18
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( \I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state.S_IDLE~q\) # ((!\sl_coffee_int~q\ & ((\sl_reset3n_int~0_combout\))) # (\sl_coffee_int~q\ & (!\I_count6|Equal0~5_combout\))) ) ) ) # ( 
-- !\coffee_maker_state.S_GRIND~q\ & ( \I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state.S_IDLE~q\ & ((!\sl_reset3n_int~0_combout\) # (\sl_coffee_int~q\))) ) ) ) # ( \coffee_maker_state.S_GRIND~q\ & ( !\I_count3|Equal0~5_combout\ & ( 
-- (!\I_count6|Equal0~5_combout\) # ((!\coffee_maker_state.S_IDLE~q\) # (!\sl_coffee_int~q\)) ) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( !\I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state.S_IDLE~q\ & ((!\sl_reset3n_int~0_combout\) # 
-- (\sl_coffee_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100111111111110111011000000110011001100111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datac => \ALT_INV_sl_reset3n_int~0_combout\,
	datad => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X81_Y4_N19
\coffee_maker_state.S_GRIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_GRIND~q\);

-- Location: MLABCELL_X78_Y4_N3
\HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = ( \sl_cappuccino_int~q\ & ( (!\sl_coffee_int~q\ & \SW[9]~input_o\) ) ) # ( !\sl_cappuccino_int~q\ & ( (!\sl_coffee_int~q\ & (!\sl_espresso_int~q\ & (\SW[9]~input_o\ & \sl_hot_chocolate_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX0~0_combout\);

-- Location: MLABCELL_X78_Y4_N54
\HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = ( \sl_espresso_int~q\ & ( (!\SW[9]~input_o\) # ((\sl_cappuccino_int~q\ & !\sl_coffee_int~q\)) ) ) # ( !\sl_espresso_int~q\ & ( (!\SW[9]~input_o\) # ((!\sl_coffee_int~q\ & ((\sl_cappuccino_int~q\) # (\sl_hot_chocolate_int~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110000111111110111000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \HEX0~1_combout\);

-- Location: MLABCELL_X78_Y4_N48
\HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = ( \sl_espresso_int~q\ & ( (!\sl_coffee_int~q\) # (!\SW[9]~input_o\) ) ) # ( !\sl_espresso_int~q\ & ( (!\SW[9]~input_o\) # ((!\sl_coffee_int~q\ & ((\sl_cappuccino_int~q\) # (\sl_hot_chocolate_int~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110000111111110111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \HEX0~2_combout\);

-- Location: LABCELL_X80_Y3_N54
\HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = ( \sl_espresso_int~q\ & ( ((!\SW[9]~input_o\) # (\sl_coffee_int~q\)) # (\sl_cappuccino_int~q\) ) ) # ( !\sl_espresso_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111011111111111111111111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_sl_espresso_int~q\,
	combout => \HEX0~3_combout\);

-- Location: MLABCELL_X78_Y4_N9
\HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = ( \sl_espresso_int~q\ & ( \SW[9]~input_o\ ) ) # ( !\sl_espresso_int~q\ & ( (\SW[9]~input_o\ & (((!\sl_hot_chocolate_int~q\) # (\sl_cappuccino_int~q\)) # (\sl_coffee_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \HEX1~0_combout\);

-- Location: LABCELL_X80_Y3_N0
\HEX1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~1_combout\ = ( \sl_espresso_int~q\ & ( !\SW[9]~input_o\ ) ) # ( !\sl_espresso_int~q\ & ( (!\SW[9]~input_o\) # ((!\sl_cappuccino_int~q\ & !\sl_coffee_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111100001111000011111000111110001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_sl_espresso_int~q\,
	combout => \HEX1~1_combout\);

-- Location: MLABCELL_X78_Y4_N12
\HEX1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~2_combout\ = ( \sl_cappuccino_int~q\ & ( (!\SW[9]~input_o\) # (\sl_coffee_int~q\) ) ) # ( !\sl_cappuccino_int~q\ & ( (((!\SW[9]~input_o\) # (\sl_hot_chocolate_int~q\)) # (\sl_espresso_int~q\)) # (\sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX1~2_combout\);

-- Location: MLABCELL_X82_Y4_N0
\HEX1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~3_combout\ = ( \SW[9]~input_o\ & ( \sl_cappuccino_int~q\ & ( \sl_coffee_int~q\ ) ) ) # ( !\SW[9]~input_o\ & ( \sl_cappuccino_int~q\ ) ) # ( \SW[9]~input_o\ & ( !\sl_cappuccino_int~q\ ) ) # ( !\SW[9]~input_o\ & ( !\sl_cappuccino_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX1~3_combout\);

-- Location: LABCELL_X80_Y3_N9
\HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = ( \SW[9]~input_o\ & ( ((\sl_coffee_int~q\) # (\sl_espresso_int~q\)) # (\sl_cappuccino_int~q\) ) ) # ( !\SW[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111110111111111111111111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \HEX2~0_combout\);

-- Location: MLABCELL_X82_Y4_N54
\HEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = ( \SW[9]~input_o\ & ( \sl_cappuccino_int~q\ ) ) # ( \SW[9]~input_o\ & ( !\sl_cappuccino_int~q\ & ( (!\sl_espresso_int~q\) # (\sl_coffee_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX5~0_combout\);

-- Location: MLABCELL_X78_Y4_N15
\HEX2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~1_combout\ = ( \sl_cappuccino_int~q\ ) # ( !\sl_cappuccino_int~q\ & ( (((!\SW[9]~input_o\) # (\sl_hot_chocolate_int~q\)) # (\sl_espresso_int~q\)) # (\sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX2~1_combout\);

-- Location: MLABCELL_X82_Y4_N12
\HEX1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~4_combout\ = ( \SW[9]~input_o\ & ( !\sl_coffee_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \HEX1~4_combout\);

-- Location: MLABCELL_X78_Y4_N18
\HEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = ( \sl_coffee_int~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \HEX4~0_combout\);

-- Location: MLABCELL_X82_Y4_N33
\HEX4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = ( \SW[9]~input_o\ & ( (!\sl_coffee_int~q\ & ((!\sl_espresso_int~q\) # (\sl_cappuccino_int~q\))) ) ) # ( !\SW[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101100001011000011111111111111111011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \HEX4~1_combout\);

-- Location: IOIBUF_X86_Y0_N35
\five_zent~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_five_zent,
	o => \five_zent~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\ten_zent~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ten_zent,
	o => \ten_zent~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\quarter_zent~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_quarter_zent,
	o => \quarter_zent~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\one_euro~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_one_euro,
	o => \one_euro~input_o\);

-- Location: IOIBUF_X10_Y81_N41
\dispense~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dispense,
	o => \dispense~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\done~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done,
	o => \done~input_o\);

-- Location: IOIBUF_X16_Y81_N1
\price[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(0),
	o => \price[0]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\price[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(1),
	o => \price[1]~input_o\);

-- Location: IOIBUF_X22_Y81_N18
\price[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(2),
	o => \price[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\price[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(3),
	o => \price[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\price[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(4),
	o => \price[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\price[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(5),
	o => \price[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\price[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(6),
	o => \price[6]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\price[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(7),
	o => \price[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\price[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(8),
	o => \price[8]~input_o\);

-- Location: IOIBUF_X24_Y81_N52
\price[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(9),
	o => \price[9]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\price[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(10),
	o => \price[10]~input_o\);

-- Location: IOIBUF_X16_Y81_N35
\price[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(11),
	o => \price[11]~input_o\);

-- Location: IOIBUF_X18_Y81_N92
\price[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(12),
	o => \price[12]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\price[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(13),
	o => \price[13]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\price[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(14),
	o => \price[14]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\price[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(15),
	o => \price[15]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\price[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(16),
	o => \price[16]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\price[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(17),
	o => \price[17]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\price[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(18),
	o => \price[18]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\price[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(19),
	o => \price[19]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\price[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(20),
	o => \price[20]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\price[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(21),
	o => \price[21]~input_o\);

-- Location: IOIBUF_X22_Y81_N52
\price[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(22),
	o => \price[22]~input_o\);

-- Location: IOIBUF_X89_Y13_N21
\price[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(23),
	o => \price[23]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\price[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(24),
	o => \price[24]~input_o\);

-- Location: IOIBUF_X2_Y81_N75
\price[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(25),
	o => \price[25]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\price[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(26),
	o => \price[26]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\price[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(27),
	o => \price[27]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\price[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(28),
	o => \price[28]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\price[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(29),
	o => \price[29]~input_o\);

-- Location: IOIBUF_X22_Y81_N35
\price[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(30),
	o => \price[30]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\price[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(31),
	o => \price[31]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\price[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(32),
	o => \price[32]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\price[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(33),
	o => \price[33]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\price[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(34),
	o => \price[34]~input_o\);

-- Location: IOIBUF_X20_Y81_N1
\price[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(35),
	o => \price[35]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\price[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(36),
	o => \price[36]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\price[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(37),
	o => \price[37]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\price[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(38),
	o => \price[38]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\price[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(39),
	o => \price[39]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\price[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(40),
	o => \price[40]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\price[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(41),
	o => \price[41]~input_o\);

-- Location: IOIBUF_X26_Y81_N92
\price[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(42),
	o => \price[42]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\price[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(43),
	o => \price[43]~input_o\);

-- Location: IOIBUF_X12_Y81_N1
\price[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(44),
	o => \price[44]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\price[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(45),
	o => \price[45]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\price[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(46),
	o => \price[46]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\price[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(47),
	o => \price[47]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\price[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(48),
	o => \price[48]~input_o\);

-- Location: IOIBUF_X8_Y81_N18
\price[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(49),
	o => \price[49]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\price[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(50),
	o => \price[50]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\price[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(51),
	o => \price[51]~input_o\);

-- Location: IOIBUF_X18_Y81_N58
\price[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(52),
	o => \price[52]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\price[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(53),
	o => \price[53]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\price[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(54),
	o => \price[54]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\price[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(55),
	o => \price[55]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\price[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(56),
	o => \price[56]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\price[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(57),
	o => \price[57]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\price[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(58),
	o => \price[58]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\price[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(59),
	o => \price[59]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\price[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(60),
	o => \price[60]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\price[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(61),
	o => \price[61]~input_o\);

-- Location: IOIBUF_X8_Y81_N35
\price[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(62),
	o => \price[62]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\price[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(63),
	o => \price[63]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\price[64]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(64),
	o => \price[64]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\price[65]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(65),
	o => \price[65]~input_o\);

-- Location: IOIBUF_X12_Y81_N18
\price[66]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(66),
	o => \price[66]~input_o\);

-- Location: IOIBUF_X4_Y81_N35
\price[67]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(67),
	o => \price[67]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\price[68]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(68),
	o => \price[68]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\price[69]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(69),
	o => \price[69]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\price[70]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(70),
	o => \price[70]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\price[71]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(71),
	o => \price[71]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\price[72]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(72),
	o => \price[72]~input_o\);

-- Location: IOIBUF_X24_Y81_N35
\price[73]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(73),
	o => \price[73]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\price[74]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(74),
	o => \price[74]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\price[75]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(75),
	o => \price[75]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\price[76]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(76),
	o => \price[76]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\price[77]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(77),
	o => \price[77]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\price[78]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(78),
	o => \price[78]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\price[79]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(79),
	o => \price[79]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\price[80]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(80),
	o => \price[80]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\price[81]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(81),
	o => \price[81]~input_o\);

-- Location: IOIBUF_X10_Y81_N75
\price[82]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(82),
	o => \price[82]~input_o\);

-- Location: IOIBUF_X14_Y81_N35
\price[83]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(83),
	o => \price[83]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\price[84]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(84),
	o => \price[84]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\price[85]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(85),
	o => \price[85]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\price[86]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(86),
	o => \price[86]~input_o\);

-- Location: IOIBUF_X4_Y81_N52
\price[87]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(87),
	o => \price[87]~input_o\);

-- Location: IOIBUF_X6_Y81_N35
\price[88]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(88),
	o => \price[88]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\price[89]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(89),
	o => \price[89]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\price[90]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(90),
	o => \price[90]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\price[91]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(91),
	o => \price[91]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\price[92]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(92),
	o => \price[92]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\price[93]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(93),
	o => \price[93]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\price[94]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(94),
	o => \price[94]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\price[95]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(95),
	o => \price[95]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\price[96]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(96),
	o => \price[96]~input_o\);

-- Location: IOIBUF_X88_Y0_N19
\price[97]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(97),
	o => \price[97]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\price[98]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(98),
	o => \price[98]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\price[99]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_price(99),
	o => \price[99]~input_o\);

-- Location: LABCELL_X43_Y46_N0
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


