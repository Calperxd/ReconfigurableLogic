--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:03:40:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 26 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios_addr_router IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (86 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (5 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (86 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END Nios_addr_router;

 ARCHITECTURE RTL OF Nios_addr_router IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_nios_addr_router_src_channel_23m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_28m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_33m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_35m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_38m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_43m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_45m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_46m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_48m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_53m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_54m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_55m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_56m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_channel_58m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_29m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_30m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_31m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_39m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_40m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_41m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_49m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_50m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_51m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios_addr_router_src_data_61m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range143w264w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range146w263w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_nios_addr_router_src_channel_1_290_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_src_channel_2_305_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_src_channel_3_320_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_src_channel_4_335_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios_addr_router_src_channel_5_350_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range143w264w(0) <= wire_w_sink_data_range143w(0) AND wire_w_lg_w_sink_data_range146w263w(0);
	wire_w1w(0) <= NOT s_wire_nios_addr_router_src_channel_1_290_dataout;
	wire_w_lg_w_sink_data_range146w263w(0) <= NOT wire_w_sink_data_range146w(0);
	s_wire_nios_addr_router_src_channel_1_290_dataout <= (wire_w_lg_w_sink_data_range143w264w(0) AND sink_data(49));
	s_wire_nios_addr_router_src_channel_2_305_dataout <= ((((((((((NOT sink_data(40)) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49));
	s_wire_nios_addr_router_src_channel_3_320_dataout <= (((((((((sink_data(40) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49));
	s_wire_nios_addr_router_src_channel_4_335_dataout <= (((((((((((NOT sink_data(39)) AND sink_data(40)) AND (NOT sink_data(41))) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49));
	s_wire_nios_addr_router_src_channel_5_350_dataout <= ((((((((((sink_data(39) AND sink_data(40)) AND (NOT sink_data(41))) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND sink_data(49));
	sink_ready <= src_ready;
	src_channel <= ( wire_nios_addr_router_src_channel_53m_dataout & wire_nios_addr_router_src_channel_54m_dataout & wire_nios_addr_router_src_channel_55m_dataout & wire_nios_addr_router_src_channel_56m_dataout & s_wire_nios_addr_router_src_channel_5_350_dataout & wire_nios_addr_router_src_channel_58m_dataout);
	src_data <= ( sink_data(86 DOWNTO 77) & wire_nios_addr_router_src_data_59m_dataout & wire_nios_addr_router_src_data_60m_dataout & wire_nios_addr_router_src_data_61m_dataout & sink_data(73 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range143w(0) <= sink_data(47);
	wire_w_sink_data_range146w(0) <= sink_data(48);
	wire_nios_addr_router_src_channel_23m_dataout <= wire_w1w(0) AND NOT(s_wire_nios_addr_router_src_channel_2_305_dataout);
	wire_nios_addr_router_src_channel_28m_dataout <= s_wire_nios_addr_router_src_channel_1_290_dataout AND NOT(s_wire_nios_addr_router_src_channel_2_305_dataout);
	wire_nios_addr_router_src_channel_33m_dataout <= wire_nios_addr_router_src_channel_23m_dataout AND NOT(s_wire_nios_addr_router_src_channel_3_320_dataout);
	wire_nios_addr_router_src_channel_35m_dataout <= s_wire_nios_addr_router_src_channel_2_305_dataout AND NOT(s_wire_nios_addr_router_src_channel_3_320_dataout);
	wire_nios_addr_router_src_channel_38m_dataout <= wire_nios_addr_router_src_channel_28m_dataout AND NOT(s_wire_nios_addr_router_src_channel_3_320_dataout);
	wire_nios_addr_router_src_channel_43m_dataout <= wire_nios_addr_router_src_channel_33m_dataout AND NOT(s_wire_nios_addr_router_src_channel_4_335_dataout);
	wire_nios_addr_router_src_channel_45m_dataout <= wire_nios_addr_router_src_channel_35m_dataout AND NOT(s_wire_nios_addr_router_src_channel_4_335_dataout);
	wire_nios_addr_router_src_channel_46m_dataout <= s_wire_nios_addr_router_src_channel_3_320_dataout AND NOT(s_wire_nios_addr_router_src_channel_4_335_dataout);
	wire_nios_addr_router_src_channel_48m_dataout <= wire_nios_addr_router_src_channel_38m_dataout AND NOT(s_wire_nios_addr_router_src_channel_4_335_dataout);
	wire_nios_addr_router_src_channel_53m_dataout <= wire_nios_addr_router_src_channel_43m_dataout AND NOT(s_wire_nios_addr_router_src_channel_5_350_dataout);
	wire_nios_addr_router_src_channel_54m_dataout <= s_wire_nios_addr_router_src_channel_4_335_dataout AND NOT(s_wire_nios_addr_router_src_channel_5_350_dataout);
	wire_nios_addr_router_src_channel_55m_dataout <= wire_nios_addr_router_src_channel_45m_dataout AND NOT(s_wire_nios_addr_router_src_channel_5_350_dataout);
	wire_nios_addr_router_src_channel_56m_dataout <= wire_nios_addr_router_src_channel_46m_dataout AND NOT(s_wire_nios_addr_router_src_channel_5_350_dataout);
	wire_nios_addr_router_src_channel_58m_dataout <= wire_nios_addr_router_src_channel_48m_dataout AND NOT(s_wire_nios_addr_router_src_channel_5_350_dataout);
	wire_nios_addr_router_src_data_29m_dataout <= wire_w1w(0) AND NOT(s_wire_nios_addr_router_src_channel_2_305_dataout);
	wire_nios_addr_router_src_data_30m_dataout <= s_wire_nios_addr_router_src_channel_1_290_dataout AND NOT(s_wire_nios_addr_router_src_channel_2_305_dataout);
	wire_nios_addr_router_src_data_31m_dataout <= s_wire_nios_addr_router_src_channel_1_290_dataout AND NOT(s_wire_nios_addr_router_src_channel_2_305_dataout);
	wire_nios_addr_router_src_data_39m_dataout <= wire_nios_addr_router_src_data_29m_dataout AND NOT(s_wire_nios_addr_router_src_channel_3_320_dataout);
	wire_nios_addr_router_src_data_40m_dataout <= wire_nios_addr_router_src_data_30m_dataout AND NOT(s_wire_nios_addr_router_src_channel_3_320_dataout);
	wire_nios_addr_router_src_data_41m_dataout <= wire_nios_addr_router_src_data_31m_dataout OR s_wire_nios_addr_router_src_channel_3_320_dataout;
	wire_nios_addr_router_src_data_49m_dataout <= wire_nios_addr_router_src_data_39m_dataout AND NOT(s_wire_nios_addr_router_src_channel_4_335_dataout);
	wire_nios_addr_router_src_data_50m_dataout <= wire_nios_addr_router_src_data_40m_dataout OR s_wire_nios_addr_router_src_channel_4_335_dataout;
	wire_nios_addr_router_src_data_51m_dataout <= wire_nios_addr_router_src_data_41m_dataout AND NOT(s_wire_nios_addr_router_src_channel_4_335_dataout);
	wire_nios_addr_router_src_data_59m_dataout <= wire_nios_addr_router_src_data_49m_dataout OR s_wire_nios_addr_router_src_channel_5_350_dataout;
	wire_nios_addr_router_src_data_60m_dataout <= wire_nios_addr_router_src_data_50m_dataout AND NOT(s_wire_nios_addr_router_src_channel_5_350_dataout);
	wire_nios_addr_router_src_data_61m_dataout <= wire_nios_addr_router_src_data_51m_dataout OR s_wire_nios_addr_router_src_channel_5_350_dataout;

 END RTL; --Nios_addr_router
--synopsys translate_on
--VALID FILE
