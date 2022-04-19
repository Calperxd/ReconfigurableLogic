-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/19/2022 11:06:39"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	bcd_4_out1 : OUT std_logic_vector(3 DOWNTO 0);
	bcd_4_out2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- bcd_4_out1[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out1[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out1[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out1[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out2[0]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out2[1]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out2[2]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd_4_out2[3]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_bcd_4_out1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd_4_out2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add1~36\ : std_logic;
SIGNAL \Add1~37_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~48\ : std_logic;
SIGNAL \Add1~49_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~60\ : std_logic;
SIGNAL \Add1~61_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \count1[8]~0_combout\ : std_logic;
SIGNAL \count1[8]~1_combout\ : std_logic;
SIGNAL \count1[8]~2_combout\ : std_logic;
SIGNAL \count1[8]~3_combout\ : std_logic;
SIGNAL \count1[8]~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \count1~16_combout\ : std_logic;
SIGNAL \count1~19_combout\ : std_logic;
SIGNAL \count1~24_combout\ : std_logic;
SIGNAL \count1~27_combout\ : std_logic;
SIGNAL \count1~29_combout\ : std_logic;
SIGNAL \count1~31_combout\ : std_logic;
SIGNAL \count1~39_combout\ : std_logic;
SIGNAL \count1~40_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \count1[0]~43_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count1~12_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count1~13_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count1~42_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count1~41_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count1~38_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count1~37_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count1~36_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count1~35_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count1~34_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count1~33_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count1~32_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \count1~30_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count1~28_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count1~26_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \count1~23_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count1~25_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \count1~21_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \count1~20_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \count1~22_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \count1~17_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \count1~15_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \count1~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \count2[1]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~91_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \count1[8]~6_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \count1[8]~7_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \count1[8]~8_combout\ : std_logic;
SIGNAL \count1[8]~9_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \count1[8]~5_combout\ : std_logic;
SIGNAL \count1[8]~10_combout\ : std_logic;
SIGNAL \count1[8]~11_combout\ : std_logic;
SIGNAL \count1~14_combout\ : std_logic;
SIGNAL count2 : std_logic_vector(31 DOWNTO 0);
SIGNAL count1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_count2 : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_count1 : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clock <= clock;
bcd_4_out1 <= ww_bcd_4_out1;
bcd_4_out2 <= ww_bcd_4_out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
ALT_INV_count2(1) <= NOT count2(1);
ALT_INV_count1(0) <= NOT count1(0);

-- Location: LCCOMB_X55_Y7_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count1(3) & (!\Add0~5\)) # (!count1(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X57_Y6_N2
\Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (count2(1) & ((\Add1~1\) # (GND))) # (!count2(1) & (!\Add1~1\))
-- \Add1~4\ = CARRY((count2(1)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X57_Y6_N10
\Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (count2(5) & (!\Add1~12\)) # (!count2(5) & ((\Add1~12\) # (GND)))
-- \Add1~14\ = CARRY((!\Add1~12\) # (!count2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(5),
	datad => VCC,
	cin => \Add1~12\,
	combout => \Add1~13_combout\,
	cout => \Add1~14\);

-- Location: LCCOMB_X57_Y5_N0
\Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (count2(16) & (\Add1~34\ $ (GND))) # (!count2(16) & (!\Add1~34\ & VCC))
-- \Add1~36\ = CARRY((count2(16) & !\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(16),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~35_combout\,
	cout => \Add1~36\);

-- Location: LCCOMB_X57_Y5_N2
\Add1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~37_combout\ = (count2(17) & (!\Add1~36\)) # (!count2(17) & ((\Add1~36\) # (GND)))
-- \Add1~38\ = CARRY((!\Add1~36\) # (!count2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(17),
	datad => VCC,
	cin => \Add1~36\,
	combout => \Add1~37_combout\,
	cout => \Add1~38\);

-- Location: LCCOMB_X57_Y5_N4
\Add1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (count2(18) & (\Add1~38\ $ (GND))) # (!count2(18) & (!\Add1~38\ & VCC))
-- \Add1~40\ = CARRY((count2(18) & !\Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(18),
	datad => VCC,
	cin => \Add1~38\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X57_Y5_N6
\Add1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (count2(19) & (!\Add1~40\)) # (!count2(19) & ((\Add1~40\) # (GND)))
-- \Add1~42\ = CARRY((!\Add1~40\) # (!count2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(19),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~41_combout\,
	cout => \Add1~42\);

-- Location: LCCOMB_X57_Y5_N8
\Add1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (count2(20) & (\Add1~42\ $ (GND))) # (!count2(20) & (!\Add1~42\ & VCC))
-- \Add1~44\ = CARRY((count2(20) & !\Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(20),
	datad => VCC,
	cin => \Add1~42\,
	combout => \Add1~43_combout\,
	cout => \Add1~44\);

-- Location: LCCOMB_X57_Y5_N10
\Add1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (count2(21) & (!\Add1~44\)) # (!count2(21) & ((\Add1~44\) # (GND)))
-- \Add1~46\ = CARRY((!\Add1~44\) # (!count2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(21),
	datad => VCC,
	cin => \Add1~44\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: LCCOMB_X57_Y5_N12
\Add1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (count2(22) & (\Add1~46\ $ (GND))) # (!count2(22) & (!\Add1~46\ & VCC))
-- \Add1~48\ = CARRY((count2(22) & !\Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(22),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~47_combout\,
	cout => \Add1~48\);

-- Location: LCCOMB_X57_Y5_N14
\Add1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~49_combout\ = (count2(23) & (!\Add1~48\)) # (!count2(23) & ((\Add1~48\) # (GND)))
-- \Add1~50\ = CARRY((!\Add1~48\) # (!count2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(23),
	datad => VCC,
	cin => \Add1~48\,
	combout => \Add1~49_combout\,
	cout => \Add1~50\);

-- Location: LCCOMB_X57_Y5_N16
\Add1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (count2(24) & (\Add1~50\ $ (GND))) # (!count2(24) & (!\Add1~50\ & VCC))
-- \Add1~52\ = CARRY((count2(24) & !\Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(24),
	datad => VCC,
	cin => \Add1~50\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X57_Y5_N18
\Add1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (count2(25) & (!\Add1~52\)) # (!count2(25) & ((\Add1~52\) # (GND)))
-- \Add1~54\ = CARRY((!\Add1~52\) # (!count2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(25),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~53_combout\,
	cout => \Add1~54\);

-- Location: LCCOMB_X57_Y5_N20
\Add1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~55_combout\ = (count2(26) & (\Add1~54\ $ (GND))) # (!count2(26) & (!\Add1~54\ & VCC))
-- \Add1~56\ = CARRY((count2(26) & !\Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(26),
	datad => VCC,
	cin => \Add1~54\,
	combout => \Add1~55_combout\,
	cout => \Add1~56\);

-- Location: LCCOMB_X57_Y5_N22
\Add1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (count2(27) & (!\Add1~56\)) # (!count2(27) & ((\Add1~56\) # (GND)))
-- \Add1~58\ = CARRY((!\Add1~56\) # (!count2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(27),
	datad => VCC,
	cin => \Add1~56\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X57_Y5_N24
\Add1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (count2(28) & (\Add1~58\ $ (GND))) # (!count2(28) & (!\Add1~58\ & VCC))
-- \Add1~60\ = CARRY((count2(28) & !\Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(28),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~59_combout\,
	cout => \Add1~60\);

-- Location: LCCOMB_X57_Y5_N26
\Add1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~61_combout\ = (count2(29) & (!\Add1~60\)) # (!count2(29) & ((\Add1~60\) # (GND)))
-- \Add1~62\ = CARRY((!\Add1~60\) # (!count2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(29),
	datad => VCC,
	cin => \Add1~60\,
	combout => \Add1~61_combout\,
	cout => \Add1~62\);

-- Location: LCCOMB_X57_Y5_N28
\Add1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (count2(30) & (\Add1~62\ $ (GND))) # (!count2(30) & (!\Add1~62\ & VCC))
-- \Add1~64\ = CARRY((count2(30) & !\Add1~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(30),
	datad => VCC,
	cin => \Add1~62\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X57_Y5_N30
\Add1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = \Add1~64\ $ (count2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count2(31),
	cin => \Add1~64\,
	combout => \Add1~65_combout\);

-- Location: LCCOMB_X55_Y7_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count1(6) & (\Add0~11\ $ (GND))) # (!count1(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count1(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X55_Y7_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count1(7) & (!\Add0~13\)) # (!count1(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X55_Y7_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count1(15) & (!\Add0~29\)) # (!count1(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X55_Y6_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count1(17) & (!\Add0~33\)) # (!count1(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X55_Y6_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count1(19) & (!\Add0~37\)) # (!count1(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X55_Y6_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count1(22) & (\Add0~43\ $ (GND))) # (!count1(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count1(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X55_Y6_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count1(27) & (!\Add0~53\)) # (!count1(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X55_Y6_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count1(30) & (\Add0~59\ $ (GND))) # (!count1(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count1(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCFF_X56_Y6_N11
\count2[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~67_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(31));

-- Location: LCFF_X56_Y6_N17
\count2[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~68_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(30));

-- Location: LCCOMB_X56_Y6_N6
\count1[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~0_combout\ = (count2(31)) # (((count2(30)) # (count2(0))) # (!count1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(31),
	datab => count1(0),
	datac => count2(30),
	datad => count2(0),
	combout => \count1[8]~0_combout\);

-- Location: LCFF_X58_Y5_N17
\count2[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~69_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(29));

-- Location: LCFF_X58_Y5_N31
\count2[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~70_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(28));

-- Location: LCFF_X58_Y5_N29
\count2[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~71_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(27));

-- Location: LCFF_X58_Y5_N19
\count2[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~72_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(26));

-- Location: LCCOMB_X58_Y5_N8
\count1[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~1_combout\ = (count2(29)) # ((count2(27)) # ((count2(28)) # (count2(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(29),
	datab => count2(27),
	datac => count2(28),
	datad => count2(26),
	combout => \count1[8]~1_combout\);

-- Location: LCFF_X58_Y5_N15
\count2[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~73_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(25));

-- Location: LCFF_X58_Y5_N21
\count2[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~74_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(24));

-- Location: LCFF_X58_Y5_N27
\count2[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~75_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(23));

-- Location: LCFF_X58_Y5_N13
\count2[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~76_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(22));

-- Location: LCCOMB_X58_Y5_N22
\count1[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~2_combout\ = (count2(24)) # ((count2(23)) # ((count2(25)) # (count2(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(24),
	datab => count2(23),
	datac => count2(25),
	datad => count2(22),
	combout => \count1[8]~2_combout\);

-- Location: LCFF_X56_Y5_N15
\count2[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~77_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(21));

-- Location: LCFF_X56_Y5_N13
\count2[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~78_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(20));

-- Location: LCFF_X56_Y5_N31
\count2[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~79_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(19));

-- Location: LCFF_X56_Y5_N17
\count2[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~80_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(18));

-- Location: LCCOMB_X56_Y5_N2
\count1[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~3_combout\ = (count2(18)) # ((count2(19)) # ((count2(21)) # (count2(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(18),
	datab => count2(19),
	datac => count2(21),
	datad => count2(20),
	combout => \count1[8]~3_combout\);

-- Location: LCCOMB_X55_Y5_N12
\count1[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~4_combout\ = (\count1[8]~3_combout\) # ((\count1[8]~2_combout\) # ((\count1[8]~0_combout\) # (\count1[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~3_combout\,
	datab => \count1[8]~2_combout\,
	datac => \count1[8]~0_combout\,
	datad => \count1[8]~1_combout\,
	combout => \count1[8]~4_combout\);

-- Location: LCFF_X56_Y5_N25
\count2[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~81_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(17));

-- Location: LCFF_X56_Y6_N15
\count2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~93_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(5));

-- Location: LCFF_X54_Y6_N11
\count1[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(30));

-- Location: LCFF_X56_Y7_N13
\count1[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~19_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(27));

-- Location: LCFF_X54_Y6_N3
\count1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~24_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(22));

-- Location: LCFF_X56_Y6_N3
\count1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~27_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(19));

-- Location: LCFF_X56_Y6_N27
\count1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~29_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(17));

-- Location: LCCOMB_X56_Y6_N22
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count1(16) & (!count1(18) & (!count1(19) & !count1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datab => count1(18),
	datac => count1(19),
	datad => count1(17),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X56_Y7_N7
\count1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~31_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(15));

-- Location: LCFF_X54_Y5_N29
\count1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~39_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(7));

-- Location: LCFF_X54_Y5_N3
\count1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~40_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(6));

-- Location: LCCOMB_X54_Y5_N4
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count1(5) & (!count1(7) & (!count1(4) & !count1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datab => count1(7),
	datac => count1(4),
	datad => count1(6),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X55_Y5_N6
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count1(1) & (!count1(2) & (\Equal0~7_combout\ & count1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count1(2),
	datac => \Equal0~7_combout\,
	datad => count1(3),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X56_Y6_N10
\Add1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (\Add1~65_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~65_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~67_combout\);

-- Location: LCCOMB_X56_Y6_N16
\Add1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\Add1~63_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~63_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~68_combout\);

-- Location: LCCOMB_X58_Y5_N16
\Add1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (\Equal0~11_combout\ & \Add1~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~61_combout\,
	combout => \Add1~69_combout\);

-- Location: LCCOMB_X58_Y5_N30
\Add1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (\Equal0~11_combout\ & \Add1~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~59_combout\,
	combout => \Add1~70_combout\);

-- Location: LCCOMB_X58_Y5_N28
\Add1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\Equal0~11_combout\ & \Add1~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~57_combout\,
	combout => \Add1~71_combout\);

-- Location: LCCOMB_X58_Y5_N18
\Add1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (\Add1~55_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~55_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~72_combout\);

-- Location: LCCOMB_X58_Y5_N14
\Add1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = (\Equal0~11_combout\ & \Add1~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~53_combout\,
	combout => \Add1~73_combout\);

-- Location: LCCOMB_X58_Y5_N20
\Add1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\Equal0~11_combout\ & \Add1~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~51_combout\,
	combout => \Add1~74_combout\);

-- Location: LCCOMB_X58_Y5_N26
\Add1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (\Equal0~11_combout\ & \Add1~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~49_combout\,
	combout => \Add1~75_combout\);

-- Location: LCCOMB_X58_Y5_N12
\Add1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (\Equal0~11_combout\ & \Add1~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~47_combout\,
	combout => \Add1~76_combout\);

-- Location: LCCOMB_X56_Y5_N14
\Add1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\Add1~45_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~45_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~77_combout\);

-- Location: LCCOMB_X56_Y5_N12
\Add1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (\Add1~43_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~43_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~78_combout\);

-- Location: LCCOMB_X56_Y5_N30
\Add1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (\Equal0~11_combout\ & \Add1~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~41_combout\,
	combout => \Add1~79_combout\);

-- Location: LCCOMB_X56_Y5_N16
\Add1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (\Equal0~11_combout\ & \Add1~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~39_combout\,
	combout => \Add1~80_combout\);

-- Location: LCCOMB_X56_Y5_N24
\Add1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (\Equal0~11_combout\ & \Add1~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~37_combout\,
	combout => \Add1~81_combout\);

-- Location: LCCOMB_X56_Y6_N14
\Add1~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = (\Add1~13_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~13_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~93_combout\);

-- Location: LCCOMB_X54_Y6_N10
\count1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~16_combout\ = (!\count1[8]~11_combout\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count1[8]~11_combout\,
	datad => \Add0~60_combout\,
	combout => \count1~16_combout\);

-- Location: LCCOMB_X56_Y7_N12
\count1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~19_combout\ = (!\count1[8]~11_combout\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~54_combout\,
	combout => \count1~19_combout\);

-- Location: LCCOMB_X54_Y6_N2
\count1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~24_combout\ = (!\count1[8]~11_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1[8]~11_combout\,
	datac => \Add0~44_combout\,
	combout => \count1~24_combout\);

-- Location: LCCOMB_X56_Y6_N2
\count1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~27_combout\ = (\Add0~38_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~27_combout\);

-- Location: LCCOMB_X56_Y6_N26
\count1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~29_combout\ = (!\count1[8]~11_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~34_combout\,
	combout => \count1~29_combout\);

-- Location: LCCOMB_X56_Y7_N6
\count1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~31_combout\ = (\Add0~30_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~31_combout\);

-- Location: LCCOMB_X54_Y5_N28
\count1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~39_combout\ = (!\count1[8]~11_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count1[8]~11_combout\,
	datad => \Add0~14_combout\,
	combout => \count1~39_combout\);

-- Location: LCCOMB_X54_Y5_N2
\count1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~40_combout\ = (!\count1[8]~11_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1[8]~11_combout\,
	datad => \Add0~12_combout\,
	combout => \count1~40_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G14
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y5_N14
\count1[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[0]~43_combout\ = !count1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count1(0),
	combout => \count1[0]~43_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G6
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X56_Y6_N5
\count1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \count1[0]~43_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(0));

-- Location: LCCOMB_X55_Y7_N0
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X55_Y7_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count1(1) & (!\Add0~1_cout\)) # (!count1(1) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X55_Y5_N24
\count1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~12_combout\ = (!\count1[8]~11_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~2_combout\,
	combout => \count1~12_combout\);

-- Location: LCFF_X55_Y5_N25
\count1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(1));

-- Location: LCCOMB_X55_Y7_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count1(2) & (\Add0~3\ $ (GND))) # (!count1(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count1(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X55_Y5_N22
\count1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~13_combout\ = (!\count1[8]~11_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datac => \Add0~4_combout\,
	combout => \count1~13_combout\);

-- Location: LCFF_X55_Y5_N23
\count1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(2));

-- Location: LCCOMB_X55_Y7_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count1(4) & (\Add0~7\ $ (GND))) # (!count1(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count1(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X54_Y5_N22
\count1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~42_combout\ = (!\count1[8]~11_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count1[8]~11_combout\,
	datad => \Add0~8_combout\,
	combout => \count1~42_combout\);

-- Location: LCFF_X54_Y5_N23
\count1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~42_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(4));

-- Location: LCCOMB_X55_Y7_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count1(5) & (!\Add0~9\)) # (!count1(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X54_Y5_N20
\count1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~41_combout\ = (!\count1[8]~11_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1[8]~11_combout\,
	datac => \Add0~10_combout\,
	combout => \count1~41_combout\);

-- Location: LCFF_X54_Y5_N21
\count1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~41_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(5));

-- Location: LCCOMB_X55_Y7_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count1(8) & (\Add0~15\ $ (GND))) # (!count1(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count1(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X56_Y7_N14
\count1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~38_combout\ = (\Add0~16_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~38_combout\);

-- Location: LCFF_X56_Y7_N15
\count1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~38_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(8));

-- Location: LCCOMB_X55_Y7_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count1(9) & (!\Add0~17\)) # (!count1(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X56_Y7_N20
\count1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~37_combout\ = (\Add0~18_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~37_combout\);

-- Location: LCFF_X56_Y7_N21
\count1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~37_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(9));

-- Location: LCCOMB_X55_Y7_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count1(10) & (\Add0~19\ $ (GND))) # (!count1(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count1(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X56_Y7_N30
\count1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~36_combout\ = (\Add0~20_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~36_combout\);

-- Location: LCFF_X56_Y7_N31
\count1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~36_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(10));

-- Location: LCCOMB_X55_Y7_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count1(11) & (!\Add0~21\)) # (!count1(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X56_Y7_N28
\count1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~35_combout\ = (!\count1[8]~11_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~22_combout\,
	combout => \count1~35_combout\);

-- Location: LCFF_X56_Y7_N29
\count1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~35_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(11));

-- Location: LCCOMB_X55_Y7_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count1(12) & (\Add0~23\ $ (GND))) # (!count1(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count1(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X56_Y7_N8
\count1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~34_combout\ = (!\count1[8]~11_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~24_combout\,
	combout => \count1~34_combout\);

-- Location: LCFF_X56_Y7_N9
\count1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~34_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(12));

-- Location: LCCOMB_X55_Y7_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count1(13) & (!\Add0~25\)) # (!count1(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X56_Y7_N10
\count1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~33_combout\ = (!\count1[8]~11_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~26_combout\,
	combout => \count1~33_combout\);

-- Location: LCFF_X56_Y7_N11
\count1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~33_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(13));

-- Location: LCCOMB_X55_Y7_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count1(14) & (\Add0~27\ $ (GND))) # (!count1(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count1(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X56_Y7_N0
\count1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~32_combout\ = (!\count1[8]~11_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~28_combout\,
	combout => \count1~32_combout\);

-- Location: LCFF_X56_Y7_N1
\count1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~32_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(14));

-- Location: LCCOMB_X56_Y7_N2
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count1(15) & (!count1(14) & (!count1(12) & !count1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datab => count1(14),
	datac => count1(12),
	datad => count1(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X56_Y7_N4
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count1(9) & (!count1(10) & (!count1(8) & !count1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(9),
	datab => count1(10),
	datac => count1(8),
	datad => count1(11),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X55_Y6_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count1(16) & (\Add0~31\ $ (GND))) # (!count1(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count1(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X56_Y6_N20
\count1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~30_combout\ = (\Add0~32_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~30_combout\);

-- Location: LCFF_X56_Y6_N21
\count1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~30_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(16));

-- Location: LCCOMB_X55_Y6_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count1(18) & (\Add0~35\ $ (GND))) # (!count1(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count1(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X56_Y6_N28
\count1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~28_combout\ = (\Add0~36_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~28_combout\);

-- Location: LCFF_X56_Y6_N29
\count1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~28_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(18));

-- Location: LCCOMB_X55_Y6_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count1(20) & (\Add0~39\ $ (GND))) # (!count1(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count1(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X55_Y5_N4
\count1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~26_combout\ = (!\count1[8]~11_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~40_combout\,
	combout => \count1~26_combout\);

-- Location: LCFF_X55_Y5_N5
\count1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~26_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(20));

-- Location: LCCOMB_X55_Y6_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count1(21) & (!\Add0~41\)) # (!count1(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X55_Y6_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count1(23) & (!\Add0~45\)) # (!count1(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X55_Y5_N0
\count1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~23_combout\ = (!\count1[8]~11_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~46_combout\,
	combout => \count1~23_combout\);

-- Location: LCFF_X55_Y5_N1
\count1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~23_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(23));

-- Location: LCCOMB_X55_Y5_N2
\count1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~25_combout\ = (!\count1[8]~11_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~42_combout\,
	combout => \count1~25_combout\);

-- Location: LCFF_X55_Y5_N3
\count1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~25_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(21));

-- Location: LCCOMB_X55_Y5_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count1(22) & (!count1(23) & (!count1(20) & !count1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datab => count1(23),
	datac => count1(20),
	datad => count1(21),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X55_Y6_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count1(24) & (\Add0~47\ $ (GND))) # (!count1(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count1(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X55_Y6_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count1(25) & (!\Add0~49\)) # (!count1(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X56_Y7_N24
\count1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~21_combout\ = (\Add0~50_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~21_combout\);

-- Location: LCFF_X56_Y7_N25
\count1[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~21_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(25));

-- Location: LCCOMB_X55_Y6_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count1(26) & (\Add0~51\ $ (GND))) # (!count1(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count1(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X56_Y7_N18
\count1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~20_combout\ = (!\count1[8]~11_combout\ & \Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~52_combout\,
	combout => \count1~20_combout\);

-- Location: LCFF_X56_Y7_N19
\count1[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~20_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(26));

-- Location: LCCOMB_X56_Y7_N22
\count1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~22_combout\ = (!\count1[8]~11_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~11_combout\,
	datad => \Add0~48_combout\,
	combout => \count1~22_combout\);

-- Location: LCFF_X56_Y7_N23
\count1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~22_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(24));

-- Location: LCCOMB_X56_Y7_N16
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count1(27) & (!count1(26) & (!count1(25) & !count1(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datab => count1(26),
	datac => count1(25),
	datad => count1(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X55_Y6_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count1(28) & (\Add0~55\ $ (GND))) # (!count1(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count1(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X55_Y6_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count1(29) & (!\Add0~57\)) # (!count1(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X54_Y6_N28
\count1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~17_combout\ = (!\count1[8]~11_combout\ & \Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1[8]~11_combout\,
	datac => \Add0~58_combout\,
	combout => \count1~17_combout\);

-- Location: LCFF_X54_Y6_N29
\count1[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~17_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(29));

-- Location: LCCOMB_X55_Y6_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count1(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X54_Y6_N0
\count1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~15_combout\ = (!\count1[8]~11_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count1[8]~11_combout\,
	datad => \Add0~62_combout\,
	combout => \count1~15_combout\);

-- Location: LCFF_X54_Y6_N1
\count1[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(31));

-- Location: LCCOMB_X54_Y6_N14
\count1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~18_combout\ = (!\count1[8]~11_combout\ & \Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count1[8]~11_combout\,
	datad => \Add0~56_combout\,
	combout => \count1~18_combout\);

-- Location: LCFF_X54_Y6_N15
\count1[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(28));

-- Location: LCCOMB_X54_Y6_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count1(30) & (!count1(31) & (!count1(28) & !count1(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datab => count1(31),
	datac => count1(28),
	datad => count1(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X55_Y5_N28
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X55_Y5_N20
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X56_Y7_N26
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~6_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X55_Y5_N16
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~8_combout\ & (\Equal0~4_combout\ & (!count1(0) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~4_combout\,
	datac => count1(0),
	datad => \Equal0~10_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X56_Y6_N4
\count2[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2[1]~0_combout\ = (\Equal0~11_combout\ & (!\Add1~3_combout\)) # (!\Equal0~11_combout\ & ((count2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => count2(1),
	datad => \Equal0~11_combout\,
	combout => \count2[1]~0_combout\);

-- Location: LCFF_X57_Y6_N15
\count2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \count2[1]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(1));

-- Location: LCCOMB_X57_Y6_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count2(0) $ (VCC)
-- \Add1~1\ = CARRY(count2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X56_Y6_N18
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~2_combout\);

-- Location: LCFF_X56_Y6_N19
\count2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(0));

-- Location: LCCOMB_X57_Y6_N4
\Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (count2(2) & (\Add1~4\ $ (GND))) # (!count2(2) & (!\Add1~4\ & VCC))
-- \Add1~6\ = CARRY((count2(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~5_combout\,
	cout => \Add1~6\);

-- Location: LCCOMB_X56_Y6_N24
\Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (\Equal0~11_combout\ & \Add1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~5_combout\,
	combout => \Add1~7_combout\);

-- Location: LCFF_X56_Y6_N25
\count2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(2));

-- Location: LCCOMB_X57_Y6_N6
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count2(3) & (!\Add1~6\)) # (!count2(3) & ((\Add1~6\) # (GND)))
-- \Add1~9\ = CARRY((!\Add1~6\) # (!count2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(3),
	datad => VCC,
	cin => \Add1~6\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X57_Y6_N8
\Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (count2(4) & (\Add1~9\ $ (GND))) # (!count2(4) & (!\Add1~9\ & VCC))
-- \Add1~12\ = CARRY((count2(4) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~11_combout\,
	cout => \Add1~12\);

-- Location: LCCOMB_X57_Y6_N12
\Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (count2(6) & (\Add1~14\ $ (GND))) # (!count2(6) & (!\Add1~14\ & VCC))
-- \Add1~16\ = CARRY((count2(6) & !\Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(6),
	datad => VCC,
	cin => \Add1~14\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X58_Y5_N2
\Add1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (\Equal0~11_combout\ & \Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datac => \Add1~15_combout\,
	combout => \Add1~92_combout\);

-- Location: LCFF_X58_Y5_N3
\count2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~92_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(6));

-- Location: LCCOMB_X57_Y6_N14
\Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (count2(7) & (!\Add1~16\)) # (!count2(7) & ((\Add1~16\) # (GND)))
-- \Add1~18\ = CARRY((!\Add1~16\) # (!count2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(7),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~17_combout\,
	cout => \Add1~18\);

-- Location: LCCOMB_X58_Y5_N4
\Add1~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~91_combout\ = (\Equal0~11_combout\ & \Add1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~17_combout\,
	combout => \Add1~91_combout\);

-- Location: LCFF_X58_Y5_N5
\count2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~91_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(7));

-- Location: LCCOMB_X57_Y6_N16
\Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (count2(8) & (\Add1~18\ $ (GND))) # (!count2(8) & (!\Add1~18\ & VCC))
-- \Add1~20\ = CARRY((count2(8) & !\Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(8),
	datad => VCC,
	cin => \Add1~18\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X58_Y5_N6
\Add1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (\Add1~19_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~19_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~90_combout\);

-- Location: LCFF_X58_Y5_N7
\count2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~90_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(8));

-- Location: LCCOMB_X57_Y6_N18
\Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (count2(9) & (!\Add1~20\)) # (!count2(9) & ((\Add1~20\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~20\) # (!count2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(9),
	datad => VCC,
	cin => \Add1~20\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X58_Y5_N0
\Add1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (\Add1~21_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~21_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~89_combout\);

-- Location: LCFF_X58_Y5_N1
\count2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~89_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(9));

-- Location: LCCOMB_X57_Y6_N20
\Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (count2(10) & (\Add1~22\ $ (GND))) # (!count2(10) & (!\Add1~22\ & VCC))
-- \Add1~24\ = CARRY((count2(10) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(10),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~23_combout\,
	cout => \Add1~24\);

-- Location: LCCOMB_X57_Y6_N22
\Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (count2(11) & (!\Add1~24\)) # (!count2(11) & ((\Add1~24\) # (GND)))
-- \Add1~26\ = CARRY((!\Add1~24\) # (!count2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(11),
	datad => VCC,
	cin => \Add1~24\,
	combout => \Add1~25_combout\,
	cout => \Add1~26\);

-- Location: LCCOMB_X56_Y5_N22
\Add1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (\Equal0~11_combout\ & \Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~25_combout\,
	combout => \Add1~87_combout\);

-- Location: LCFF_X56_Y5_N23
\count2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~87_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(11));

-- Location: LCCOMB_X57_Y6_N24
\Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (count2(12) & (\Add1~26\ $ (GND))) # (!count2(12) & (!\Add1~26\ & VCC))
-- \Add1~28\ = CARRY((count2(12) & !\Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(12),
	datad => VCC,
	cin => \Add1~26\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X56_Y5_N20
\Add1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (\Add1~27_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~27_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~86_combout\);

-- Location: LCFF_X56_Y5_N21
\count2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~86_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(12));

-- Location: LCCOMB_X57_Y6_N26
\Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (count2(13) & (!\Add1~28\)) # (!count2(13) & ((\Add1~28\) # (GND)))
-- \Add1~30\ = CARRY((!\Add1~28\) # (!count2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(13),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~29_combout\,
	cout => \Add1~30\);

-- Location: LCCOMB_X56_Y6_N30
\Add1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~85_combout\ = (\Add1~29_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~29_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~85_combout\);

-- Location: LCFF_X56_Y6_N31
\count2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~85_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(13));

-- Location: LCCOMB_X56_Y6_N0
\Add1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = (\Equal0~11_combout\ & \Add1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~23_combout\,
	combout => \Add1~88_combout\);

-- Location: LCFF_X56_Y6_N1
\count2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~88_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(10));

-- Location: LCCOMB_X56_Y5_N8
\count1[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~6_combout\ = (count2(12)) # ((count2(11)) # ((count2(13)) # (count2(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(12),
	datab => count2(11),
	datac => count2(13),
	datad => count2(10),
	combout => \count1[8]~6_combout\);

-- Location: LCCOMB_X56_Y6_N8
\Add1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (\Add1~11_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~11_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~94_combout\);

-- Location: LCFF_X56_Y6_N9
\count2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~94_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(4));

-- Location: LCCOMB_X58_Y5_N24
\count1[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~7_combout\ = (count2(8)) # ((count2(6)) # ((count2(7)) # (count2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(8),
	datab => count2(6),
	datac => count2(7),
	datad => count2(9),
	combout => \count1[8]~7_combout\);

-- Location: LCCOMB_X56_Y5_N0
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~8_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~10_combout\);

-- Location: LCFF_X56_Y5_N1
\count2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(3));

-- Location: LCCOMB_X55_Y5_N18
\count1[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~8_combout\ = (count2(3)) # (!count2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count2(3),
	datad => count2(2),
	combout => \count1[8]~8_combout\);

-- Location: LCCOMB_X55_Y5_N8
\count1[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~9_combout\ = (count2(5)) # ((count2(4)) # ((\count1[8]~7_combout\) # (\count1[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(5),
	datab => count2(4),
	datac => \count1[8]~7_combout\,
	datad => \count1[8]~8_combout\,
	combout => \count1[8]~9_combout\);

-- Location: LCCOMB_X57_Y6_N28
\Add1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (count2(14) & (\Add1~30\ $ (GND))) # (!count2(14) & (!\Add1~30\ & VCC))
-- \Add1~32\ = CARRY((count2(14) & !\Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(14),
	datad => VCC,
	cin => \Add1~30\,
	combout => \Add1~31_combout\,
	cout => \Add1~32\);

-- Location: LCCOMB_X57_Y6_N30
\Add1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (count2(15) & (!\Add1~32\)) # (!count2(15) & ((\Add1~32\) # (GND)))
-- \Add1~34\ = CARRY((!\Add1~32\) # (!count2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(15),
	datad => VCC,
	cin => \Add1~32\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X56_Y5_N28
\Add1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (\Equal0~11_combout\ & \Add1~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datac => \Add1~33_combout\,
	combout => \Add1~83_combout\);

-- Location: LCFF_X56_Y5_N29
\count2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~83_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(15));

-- Location: LCCOMB_X56_Y5_N26
\Add1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (\Add1~35_combout\ & \Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~35_combout\,
	datad => \Equal0~11_combout\,
	combout => \Add1~82_combout\);

-- Location: LCFF_X56_Y5_N27
\count2[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~82_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(16));

-- Location: LCCOMB_X56_Y6_N12
\Add1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (\Equal0~11_combout\ & \Add1~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~11_combout\,
	datad => \Add1~31_combout\,
	combout => \Add1~84_combout\);

-- Location: LCFF_X56_Y6_N13
\count2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~84_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \count1[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count2(14));

-- Location: LCCOMB_X56_Y5_N18
\count1[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~5_combout\ = (count2(17)) # ((count2(16)) # ((count2(15)) # (count2(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(17),
	datab => count2(16),
	datac => count2(15),
	datad => count2(14),
	combout => \count1[8]~5_combout\);

-- Location: LCCOMB_X55_Y5_N26
\count1[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~10_combout\ = (\count1[8]~4_combout\) # ((\count1[8]~6_combout\) # ((\count1[8]~9_combout\) # (\count1[8]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[8]~4_combout\,
	datab => \count1[8]~6_combout\,
	datac => \count1[8]~9_combout\,
	datad => \count1[8]~5_combout\,
	combout => \count1[8]~10_combout\);

-- Location: LCCOMB_X55_Y5_N10
\count1[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1[8]~11_combout\ = (\Equal0~9_combout\ & (((!count2(1) & !\count1[8]~10_combout\)) # (!count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datab => count1(0),
	datac => \Equal0~9_combout\,
	datad => \count1[8]~10_combout\,
	combout => \count1[8]~11_combout\);

-- Location: LCCOMB_X54_Y7_N16
\count1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1~14_combout\ = (\Add0~6_combout\ & !\count1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \count1[8]~11_combout\,
	combout => \count1~14_combout\);

-- Location: LCFF_X54_Y7_N17
\count1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count1~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count1(3));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out1[0]~I\ : cycloneii_io
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
	datain => ALT_INV_count1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out1(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out1[1]~I\ : cycloneii_io
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
	datain => count1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out1(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out1[2]~I\ : cycloneii_io
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
	datain => count1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out1(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out1[3]~I\ : cycloneii_io
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
	datain => count1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out1(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out2[0]~I\ : cycloneii_io
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
	datain => count2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out2(0));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out2[1]~I\ : cycloneii_io
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
	datain => ALT_INV_count2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out2(1));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out2[2]~I\ : cycloneii_io
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
	datain => count2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out2(2));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd_4_out2[3]~I\ : cycloneii_io
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
	datain => count2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd_4_out2(3));
END structure;


