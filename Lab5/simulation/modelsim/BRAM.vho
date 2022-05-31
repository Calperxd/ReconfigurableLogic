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

-- DATE "04/29/2022 22:25:38"

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
	add : IN std_logic_vector(9 DOWNTO 0);
	clock : IN std_logic;
	writedata : IN std_logic_vector(7 DOWNTO 0);
	wr_en : IN std_logic;
	rd_en : IN std_logic;
	readdata : OUT std_logic_vector(7 DOWNTO 0)
	);
END BRAM_MAIN;

-- Design Ports Information
-- readdata[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[7]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wr_en	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rd_en	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[4]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[7]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[8]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[9]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_add : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_writedata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_rd_en : std_logic;
SIGNAL ww_readdata : std_logic_vector(7 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rd_en~combout\ : std_logic;
SIGNAL \cs~combout\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \wire_clock~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~0clkctrl_outclk\ : std_logic;
SIGNAL wire_wraddress : std_logic_vector(9 DOWNTO 0);
SIGNAL wire_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \BRAM_MAIN1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \writedata~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_cs <= cs;
ww_add <= add;
ww_clock <= clock;
ww_writedata <= writedata;
ww_wr_en <= wr_en;
ww_rd_en <= rd_en;
readdata <= ww_readdata;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (wire_data(3) & wire_data(2) & wire_data(1) & wire_data(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (wire_wraddress(9) & wire_wraddress(8) & wire_wraddress(7) & wire_wraddress(6) & wire_wraddress(5) & wire_wraddress(4) & wire_wraddress(3) & wire_wraddress(2)
& wire_wraddress(1) & wire_wraddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (wire_wraddress(9) & wire_wraddress(8) & wire_wraddress(7) & wire_wraddress(6) & wire_wraddress(5) & wire_wraddress(4) & wire_wraddress(3) & wire_wraddress(2)
& wire_wraddress(1) & wire_wraddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(0) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(1) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(2) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(3) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (wire_data(7) & wire_data(6) & wire_data(5) & wire_data(4));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (wire_wraddress(9) & wire_wraddress(8) & wire_wraddress(7) & wire_wraddress(6) & wire_wraddress(5) & wire_wraddress(4) & wire_wraddress(3) & wire_wraddress(2)
& wire_wraddress(1) & wire_wraddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (wire_wraddress(9) & wire_wraddress(8) & wire_wraddress(7) & wire_wraddress(6) & wire_wraddress(5) & wire_wraddress(4) & wire_wraddress(3) & wire_wraddress(2)
& wire_wraddress(1) & wire_wraddress(0));

\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(4) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(5) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(6) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\BRAM_MAIN1|altsyncram_component|auto_generated|q_b\(7) <= \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\rtl~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rtl~0_combout\);

\Mux11~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Mux11~0_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rd_en~I\ : cycloneii_io
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
	padio => ww_rd_en,
	combout => \rd_en~combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_en~I\ : cycloneii_io
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
	padio => ww_wr_en,
	combout => \wr_en~combout\);

-- Location: LCCOMB_X27_Y34_N20
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\rd_en~combout\ & (\cs~combout\ & \wr_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_en~combout\,
	datac => \cs~combout\,
	datad => \wr_en~combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y34_N14
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\rd_en~combout\ & (\cs~combout\ & \wr_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_en~combout\,
	datac => \cs~combout\,
	datad => \wr_en~combout\,
	combout => \Mux1~0_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y35_N30
\wire_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wire_clock~0_combout\ = (\cs~combout\ & \clock~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cs~combout\,
	datad => \clock~combout\,
	combout => \wire_clock~0_combout\);

-- Location: LCCOMB_X32_Y35_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\cs~combout\ & ((!\clock~combout\))) # (!\cs~combout\ & (!\wire_clock~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wire_clock~0_combout\,
	datac => \cs~combout\,
	datad => \clock~combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y35_N22
\rtl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\wr_en~combout\ & (!\Mux0~0_combout\)) # (!\wr_en~combout\ & ((\wire_clock~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~combout\,
	datac => \Mux0~0_combout\,
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[0]~I\ : cycloneii_io
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
	padio => ww_writedata(0),
	combout => \writedata~combout\(0));

-- Location: LCCOMB_X32_Y35_N8
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\wr_en~combout\ & \cs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_en~combout\,
	datad => \cs~combout\,
	combout => \Mux11~0_combout\);

-- Location: CLKCTRL_G11
\Mux11~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux11~0clkctrl_outclk\);

-- Location: LCCOMB_X25_Y35_N28
\wire_data[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(0) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(0))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(0),
	datac => wire_data(0),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[0]~I\ : cycloneii_io
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
	padio => ww_add(0),
	combout => \add~combout\(0));

-- Location: LCCOMB_X25_Y35_N26
\wire_wraddress[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(0) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(0)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(0),
	datac => \add~combout\(0),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[1]~I\ : cycloneii_io
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
	padio => ww_add(1),
	combout => \add~combout\(1));

-- Location: LCCOMB_X27_Y35_N16
\wire_wraddress[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(1) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\add~combout\(1))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_wraddress(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add~combout\(1),
	datac => wire_wraddress(1),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(1));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[2]~I\ : cycloneii_io
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
	padio => ww_add(2),
	combout => \add~combout\(2));

-- Location: LCCOMB_X25_Y35_N12
\wire_wraddress[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(2) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(2)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wire_wraddress(2),
	datab => \add~combout\(2),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[3]~I\ : cycloneii_io
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
	padio => ww_add(3),
	combout => \add~combout\(3));

-- Location: LCCOMB_X25_Y35_N22
\wire_wraddress[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(3) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(3)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(3),
	datac => \add~combout\(3),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(3));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[4]~I\ : cycloneii_io
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
	padio => ww_add(4),
	combout => \add~combout\(4));

-- Location: LCCOMB_X25_Y35_N16
\wire_wraddress[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(4) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\add~combout\(4))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_wraddress(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add~combout\(4),
	datac => wire_wraddress(4),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[5]~I\ : cycloneii_io
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
	padio => ww_add(5),
	combout => \add~combout\(5));

-- Location: LCCOMB_X27_Y35_N18
\wire_wraddress[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(5) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(5)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(5),
	datac => \add~combout\(5),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(5));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[6]~I\ : cycloneii_io
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
	padio => ww_add(6),
	combout => \add~combout\(6));

-- Location: LCCOMB_X25_Y35_N18
\wire_wraddress[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(6) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(6)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(6),
	datac => \add~combout\(6),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(6));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[7]~I\ : cycloneii_io
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
	padio => ww_add(7),
	combout => \add~combout\(7));

-- Location: LCCOMB_X25_Y34_N0
\wire_wraddress[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(7) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(7)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(7),
	datac => \add~combout\(7),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(7));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[8]~I\ : cycloneii_io
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
	padio => ww_add(8),
	combout => \add~combout\(8));

-- Location: LCCOMB_X27_Y34_N16
\wire_wraddress[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(8) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\add~combout\(8))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_wraddress(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add~combout\(8),
	datac => wire_wraddress(8),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(8));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[9]~I\ : cycloneii_io
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
	padio => ww_add(9),
	combout => \add~combout\(9));

-- Location: LCCOMB_X25_Y34_N18
\wire_wraddress[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_wraddress(9) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\add~combout\(9)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_wraddress(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_wraddress(9),
	datac => \add~combout\(9),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_wraddress(9));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[1]~I\ : cycloneii_io
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
	padio => ww_writedata(1),
	combout => \writedata~combout\(1));

-- Location: LCCOMB_X25_Y35_N20
\wire_data[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(1) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(1))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(1),
	datac => wire_data(1),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[2]~I\ : cycloneii_io
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
	padio => ww_writedata(2),
	combout => \writedata~combout\(2));

-- Location: LCCOMB_X25_Y35_N14
\wire_data[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(2) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(2))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(2),
	datac => wire_data(2),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[3]~I\ : cycloneii_io
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
	padio => ww_writedata(3),
	combout => \writedata~combout\(3));

-- Location: LCCOMB_X25_Y35_N24
\wire_data[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(3) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(3))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(3),
	datac => wire_data(3),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(3));

-- Location: M4K_X26_Y35
\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "BRAM:BRAM_MAIN1|altsyncram:altsyncram_component|altsyncram_v2s1:auto_generated|ALTSYNCRAM",
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
	port_b_data_out_clock => "none",
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
	portawe => \Mux2~0_combout\,
	portbrewe => \Mux1~0_combout\,
	clk0 => \rtl~0clkctrl_outclk\,
	portadatain => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[4]~I\ : cycloneii_io
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
	padio => ww_writedata(4),
	combout => \writedata~combout\(4));

-- Location: LCCOMB_X25_Y34_N20
\wire_data[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(4) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(4))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(4),
	datac => wire_data(4),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[5]~I\ : cycloneii_io
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
	padio => ww_writedata(5),
	combout => \writedata~combout\(5));

-- Location: LCCOMB_X25_Y34_N14
\wire_data[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(5) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(5))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(5),
	datac => wire_data(5),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(5));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[6]~I\ : cycloneii_io
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
	padio => ww_writedata(6),
	combout => \writedata~combout\(6));

-- Location: LCCOMB_X25_Y34_N24
\wire_data[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(6) = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\writedata~combout\(6))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((wire_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(6),
	datac => wire_data(6),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(6));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[7]~I\ : cycloneii_io
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
	padio => ww_writedata(7),
	combout => \writedata~combout\(7));

-- Location: LCCOMB_X27_Y34_N22
\wire_data[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- wire_data(7) = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\writedata~combout\(7)))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (wire_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wire_data(7),
	datac => \writedata~combout\(7),
	datad => \Mux11~0clkctrl_outclk\,
	combout => wire_data(7));

-- Location: M4K_X26_Y34
\BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "BRAM:BRAM_MAIN1|altsyncram:altsyncram_component|altsyncram_v2s1:auto_generated|ALTSYNCRAM",
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
	port_b_data_out_clock => "none",
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
	portawe => \Mux2~0_combout\,
	portbrewe => \Mux1~0_combout\,
	clk0 => \rtl~0clkctrl_outclk\,
	portadatain => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \BRAM_MAIN1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[0]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[1]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[2]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[3]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[4]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[5]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[6]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(6));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[7]~I\ : cycloneii_io
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
	oe => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(7));
END structure;


