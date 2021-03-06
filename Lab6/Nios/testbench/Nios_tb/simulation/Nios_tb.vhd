-- Nios_tb.vhd

-- Generated using ACDS version 13.0sp1 232 at 2022.05.29.21:22:34

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Nios_tb is
end entity Nios_tb;

architecture rtl of Nios_tb is
	component Nios is
		port (
			clk_clk                          : in  std_logic                    := 'X';             -- clk
			pio_0_external_connection_export : in  std_logic_vector(2 downto 0) := (others => 'X'); -- export
			pio_1_external_connection_export : out std_logic_vector(2 downto 0)                     -- export
		);
	end component Nios;

	component altera_avalon_clock_source is
		generic (
			CLOCK_RATE : positive := 10;
			CLOCK_UNIT : positive := 1000000
		);
		port (
			clk : out std_logic   -- clk
		);
	end component altera_avalon_clock_source;

	component altera_conduit_bfm is
		port (
			sig_export : out std_logic_vector(2 downto 0)   -- export
		);
	end component altera_conduit_bfm;

	component altera_conduit_bfm_0002 is
		port (
			sig_export : in std_logic_vector(2 downto 0) := (others => 'X')  -- export
		);
	end component altera_conduit_bfm_0002;

	signal nios_inst_clk_bfm_clk_clk                              : std_logic;                    -- Nios_inst_clk_bfm:clk -> Nios_inst:clk_clk
	signal nios_inst_pio_0_external_connection_bfm_conduit_export : std_logic_vector(2 downto 0); -- Nios_inst_pio_0_external_connection_bfm:sig_export -> Nios_inst:pio_0_external_connection_export
	signal nios_inst_pio_1_external_connection_export             : std_logic_vector(2 downto 0); -- Nios_inst:pio_1_external_connection_export -> Nios_inst_pio_1_external_connection_bfm:sig_export

begin

	nios_inst : component Nios
		port map (
			clk_clk                          => nios_inst_clk_bfm_clk_clk,                              --                       clk.clk
			pio_0_external_connection_export => nios_inst_pio_0_external_connection_bfm_conduit_export, -- pio_0_external_connection.export
			pio_1_external_connection_export => nios_inst_pio_1_external_connection_export              -- pio_1_external_connection.export
		);

	nios_inst_clk_bfm : component altera_avalon_clock_source
		generic map (
			CLOCK_RATE => 50000000,
			CLOCK_UNIT => 1
		)
		port map (
			clk => nios_inst_clk_bfm_clk_clk  -- clk.clk
		);

	nios_inst_pio_0_external_connection_bfm : component altera_conduit_bfm
		port map (
			sig_export => nios_inst_pio_0_external_connection_bfm_conduit_export  -- conduit.export
		);

	nios_inst_pio_1_external_connection_bfm : component altera_conduit_bfm_0002
		port map (
			sig_export => nios_inst_pio_1_external_connection_export  -- conduit.export
		);

end architecture rtl; -- of Nios_tb
