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

-- DATE "04/29/2022 23:10:29"

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

ENTITY 	BRAM_MAIN IS
    PORT (
	cs : IN std_logic;
	clock : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	rdaddress : IN std_logic_vector(9 DOWNTO 0);
	rden : IN std_logic;
	wraddress : IN std_logic_vector(9 DOWNTO 0);
	wren : IN std_logic;
	q : OUT std_logic_vector(7 DOWNTO 0)
	);
END BRAM_MAIN;

-- Design Ports Information
-- q[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[4]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[6]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[7]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wren	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rden	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[2]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[4]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[5]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[6]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[8]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wraddress[9]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[0]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[1]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[2]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[3]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[5]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[7]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[8]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdaddress[9]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[6]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[7]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BRAM_MAIN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rdaddress : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_rden : std_logic;
SIGNAL ww_wraddress : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rden~combout\ : std_logic;
SIGNAL \wren~combout\ : std_logic;
SIGNAL \cs~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~0clkctrl_outclk\ : std_logic;
SIGNAL \wire_rden~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \wire_clock~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL wire_wraddress : std_logic_vector(9 DOWNTO 0);
SIGNAL wire_rdaddress : std_logic_vector(9 DOWNTO 0);
SIGNAL wire_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \wraddress~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rdaddress~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \data~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_cs <= cs;
ww_clock <= clock;
ww_data <= data;
ww_rdaddress <= rdaddress;
ww_rden <= rden;
ww_wraddress <= wraddress;
ww_wren <= wren;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (wire_data(3) & wire_data(2) & wire_data(1) & wire_data(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (wire_wraddress(9) & wire_wraddress(8) & wire_wraddress(7) & wire_wraddress(6) & wire_wraddress(5) & wire_wraddress(4) & wire_wraddress(3) & wire_wraddress(2)
& wire_wraddress(1) & wire_wraddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (wire_rdaddress(9) & wire_rdaddress(8) & wire_rdaddress(7) & wire_rdaddress(6) & wire_rdaddress(5) & wire_rdaddress(4) & wire_rdaddress(3) & wire_rdaddress(2)
& wire_rdaddress(1) & wire_rdaddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(0) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(1) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(2) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(3) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (wire_data(7) & wire_data(6) & wire_data(5) & wire_data(4));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (wire_wraddress(9) & wire_wraddress(8) & wire_wraddress(7) & wire_wraddress(6) & wire_wraddress(5) & wire_wraddress(4) & wire_wraddress(3) & wire_wraddress(2)
& wire_wraddress(1) & wire_wraddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (wire_rdaddress(9) & wire_rdaddress(8) & wire_rdaddress(7) & wire_rdaddress(6) & wire_rdaddress(5) & wire_rdaddress(4) & wire_rdaddress(3) & wire_rdaddress(2)
& wire_rdaddress(1) & wire_rdaddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(4) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(5) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(6) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(7) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\rtl~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rtl~0_combout\);

\Mux9~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Mux9~0_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[2]~I\ : cycloneii_io
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
	padio => ww_wraddress(2),
	combout => \wraddress~combout\(2));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[6]~I\ : cycloneii_io
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
	padio => ww_rdaddress(6),
	combout => \rdaddress~combout\(6));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rden~I\ : cycloneii_io
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
	padio => ww_rden,
	combout => \rden~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wren~I\ : cycloneii_io
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
	padio => ww_wren,
	combout => \wren~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cs~I\ : cycloneii_io
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
	padio => ww_cs,
	combout => \cs~combout\);

-- Location: LCCOMB_X30_Y35_N4
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\wren~combout\ & \cs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~combout\,
	datad => \cs~combout\,
	combout => \Mux9~0_combout\);

-- Location: CLKCTRL_G11
\Mux9~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux9~0clkctrl_outclk\);

-- Location: LCCOMB_X51_Y34_N28
wire_rden : cycloneii_lcell_comb
-- Equation(s):
-- \wire_rden~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\rden~combout\))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (\wire_rden~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wire_rden~combout\,
	datac => \rden~combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \wire_rden~combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N0
\wire_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wire_clock~0_combout\ = (\clock~combout\ & \cs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock~combout\,
	datad => \cs~combout\,
	combout => \wire_clock~0_combout\);

-- Location: LCCOMB_X30_Y35_N16
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\cs~combout\ & (!\clock~combout\)) # (!\cs~combout\ & ((!\wire_clock~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~combout\,
	datac => \cs~combout\,
	datad => \wire_clock~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y35_N6
\rtl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\wren~combout\ & (!\Mux1~0_combout\)) # (!\wren~combout\ & ((\wire_clock~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~combout\,
	datac => \Mux1~0_combout\,
	datad => \wire_clock~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G8
\rtl~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
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
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: LCCOMB_X51_Y35_N24
\wire_data[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(0) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\data~combout\(0))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(0),
	datac => wire_data(0),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(0));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[0]~I\ : cycloneii_io
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
	padio => ww_wraddress(0),
	combout => \wraddress~combout\(0));

-- Location: LCCOMB_X51_Y34_N22
\wire_wraddress[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(0) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\wraddress~combout\(0)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_wraddress(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(0),
	datac => \wraddress~combout\(0),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(0));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[1]~I\ : cycloneii_io
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
	padio => ww_wraddress(1),
	combout => \wraddress~combout\(1));

-- Location: LCCOMB_X51_Y35_N26
\wire_wraddress[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(1) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\wraddress~combout\(1)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_wraddress(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(1),
	datac => \wraddress~combout\(1),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(1));

-- Location: LCCOMB_X53_Y34_N0
\wire_wraddress[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(2) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\wraddress~combout\(2))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_wraddress(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wraddress~combout\(2),
	datab => wire_wraddress(2),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(2));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[3]~I\ : cycloneii_io
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
	padio => ww_wraddress(3),
	combout => \wraddress~combout\(3));

-- Location: LCCOMB_X53_Y35_N12
\wire_wraddress[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(3) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\wraddress~combout\(3)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_wraddress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wire_wraddress(3),
	datab => \wraddress~combout\(3),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(3));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[4]~I\ : cycloneii_io
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
	padio => ww_wraddress(4),
	combout => \wraddress~combout\(4));

-- Location: LCCOMB_X53_Y34_N22
\wire_wraddress[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(4) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\wraddress~combout\(4)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_wraddress(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(4),
	datac => \wraddress~combout\(4),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(4));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[5]~I\ : cycloneii_io
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
	padio => ww_wraddress(5),
	combout => \wraddress~combout\(5));

-- Location: LCCOMB_X53_Y35_N6
\wire_wraddress[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(5) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\wraddress~combout\(5)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_wraddress(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wire_wraddress(5),
	datac => \wraddress~combout\(5),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(5));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[6]~I\ : cycloneii_io
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
	padio => ww_wraddress(6),
	combout => \wraddress~combout\(6));

-- Location: LCCOMB_X53_Y35_N24
\wire_wraddress[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(6) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\wraddress~combout\(6))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_wraddress(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wraddress~combout\(6),
	datac => wire_wraddress(6),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[7]~I\ : cycloneii_io
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
	padio => ww_wraddress(7),
	combout => \wraddress~combout\(7));

-- Location: LCCOMB_X53_Y35_N22
\wire_wraddress[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(7) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\wraddress~combout\(7)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_wraddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(7),
	datac => \wraddress~combout\(7),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(7));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[8]~I\ : cycloneii_io
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
	padio => ww_wraddress(8),
	combout => \wraddress~combout\(8));

-- Location: LCCOMB_X53_Y35_N28
\wire_wraddress[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(8) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\wraddress~combout\(8))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_wraddress(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wraddress~combout\(8),
	datac => \Mux9~0clkctrl_outclk\,
	datad => wire_wraddress(8),
	combout => wire_wraddress(8));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wraddress[9]~I\ : cycloneii_io
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
	padio => ww_wraddress(9),
	combout => \wraddress~combout\(9));

-- Location: LCCOMB_X51_Y35_N16
\wire_wraddress[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(9) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\wraddress~combout\(9))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_wraddress(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wraddress~combout\(9),
	datac => wire_wraddress(9),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_wraddress(9));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[0]~I\ : cycloneii_io
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
	padio => ww_rdaddress(0),
	combout => \rdaddress~combout\(0));

-- Location: LCCOMB_X51_Y34_N24
\wire_rdaddress[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(0) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\rdaddress~combout\(0))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_rdaddress(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdaddress~combout\(0),
	datac => wire_rdaddress(0),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(0));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[1]~I\ : cycloneii_io
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
	padio => ww_rdaddress(1),
	combout => \rdaddress~combout\(1));

-- Location: LCCOMB_X53_Y35_N14
\wire_rdaddress[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(1) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\rdaddress~combout\(1))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_rdaddress(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdaddress~combout\(1),
	datac => wire_rdaddress(1),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(1));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[2]~I\ : cycloneii_io
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
	padio => ww_rdaddress(2),
	combout => \rdaddress~combout\(2));

-- Location: LCCOMB_X53_Y34_N20
\wire_rdaddress[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(2) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\rdaddress~combout\(2))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_rdaddress(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdaddress~combout\(2),
	datac => wire_rdaddress(2),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(2));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[3]~I\ : cycloneii_io
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
	padio => ww_rdaddress(3),
	combout => \rdaddress~combout\(3));

-- Location: LCCOMB_X53_Y34_N18
\wire_rdaddress[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(3) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\rdaddress~combout\(3)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_rdaddress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_rdaddress(3),
	datac => \rdaddress~combout\(3),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[4]~I\ : cycloneii_io
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
	padio => ww_rdaddress(4),
	combout => \rdaddress~combout\(4));

-- Location: LCCOMB_X51_Y35_N18
\wire_rdaddress[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(4) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\rdaddress~combout\(4)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_rdaddress(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_rdaddress(4),
	datac => \rdaddress~combout\(4),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(4));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[5]~I\ : cycloneii_io
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
	padio => ww_rdaddress(5),
	combout => \rdaddress~combout\(5));

-- Location: LCCOMB_X53_Y34_N24
\wire_rdaddress[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(5) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\rdaddress~combout\(5))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_rdaddress(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdaddress~combout\(5),
	datac => wire_rdaddress(5),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(5));

-- Location: LCCOMB_X51_Y35_N20
\wire_rdaddress[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(6) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\rdaddress~combout\(6))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_rdaddress(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdaddress~combout\(6),
	datac => wire_rdaddress(6),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(6));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[7]~I\ : cycloneii_io
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
	padio => ww_rdaddress(7),
	combout => \rdaddress~combout\(7));

-- Location: LCCOMB_X53_Y34_N26
\wire_rdaddress[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(7) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\rdaddress~combout\(7)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_rdaddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_rdaddress(7),
	datac => \rdaddress~combout\(7),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(7));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[8]~I\ : cycloneii_io
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
	padio => ww_rdaddress(8),
	combout => \rdaddress~combout\(8));

-- Location: LCCOMB_X51_Y35_N22
\wire_rdaddress[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(8) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\rdaddress~combout\(8)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_rdaddress(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_rdaddress(8),
	datac => \rdaddress~combout\(8),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(8));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdaddress[9]~I\ : cycloneii_io
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
	padio => ww_rdaddress(9),
	combout => \rdaddress~combout\(9));

-- Location: LCCOMB_X53_Y35_N16
\wire_rdaddress[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_rdaddress(9) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\rdaddress~combout\(9))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_rdaddress(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdaddress~combout\(9),
	datac => wire_rdaddress(9),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_rdaddress(9));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
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
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: LCCOMB_X56_Y35_N20
\wire_data[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(1) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\data~combout\(1))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(1),
	datac => wire_data(1),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
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
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCCOMB_X51_Y35_N8
\wire_data[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(2) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\data~combout\(2))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(2),
	datac => wire_data(2),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(2));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
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
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LCCOMB_X53_Y34_N28
\wire_data[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(3) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\data~combout\(3)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_data(3),
	datac => \data~combout\(3),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(3));

-- Location: M4K_X52_Y35
\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "BRAM:BRAM_MAIN1|altsyncram:altsyncram_component|altsyncram_v9r1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => \wire_rden~combout\,
	clk0 => \rtl~0clkctrl_outclk\,
	portadatain => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
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
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: LCCOMB_X51_Y35_N30
\wire_data[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(4) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\data~combout\(4)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_data(4),
	datac => \data~combout\(4),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(4));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
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
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: LCCOMB_X51_Y34_N14
\wire_data[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(5) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\data~combout\(5))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(5),
	datac => wire_data(5),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(5));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[6]~I\ : cycloneii_io
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
	padio => ww_data(6),
	combout => \data~combout\(6));

-- Location: LCCOMB_X51_Y34_N20
\wire_data[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(6) = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\data~combout\(6))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((wire_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(6),
	datac => wire_data(6),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(6));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[7]~I\ : cycloneii_io
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
	padio => ww_data(7),
	combout => \data~combout\(7));

-- Location: LCCOMB_X53_Y34_N30
\wire_data[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(7) = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\data~combout\(7)))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (wire_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_data(7),
	datac => \data~combout\(7),
	datad => \Mux9~0clkctrl_outclk\,
	combout => wire_data(7));

-- Location: M4K_X52_Y34
\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "BRAM:BRAM_MAIN1|altsyncram:altsyncram_component|altsyncram_v9r1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => \wire_rden~combout\,
	clk0 => \rtl~0clkctrl_outclk\,
	portadatain => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(0),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(1),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(1));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(2),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(2));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(3),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(3));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[4]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(4),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[5]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(5),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(5));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[6]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(6),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(6));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[7]~I\ : cycloneii_io
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
	datain => \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(7),
	oe => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_q(7));
END structure;


