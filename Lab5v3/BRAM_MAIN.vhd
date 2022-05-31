Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity BRAM_MAIN is
	PORT
	(
		RST       : in  std_logic;        
		CLK       : in  std_logic;        
		READDATA  : out std_logic_vector(7 downto 0);
		WRITEDATA : in  std_logic_vector(7 downto 0);
		WR_EN     : in std_logic;           
		RD_EN     : in std_logic;            
		CS        : in std_logic;           
		ADD       : in std_logic_vector (9 downto 0)
	);
end entity;


Architecture Behavior of BRAM_MAIN is
	signal VDD, GND 		: std_logic;
	signal op				: std_logic_vector(2 downto 0);
	signal wire_RST       	: std_logic;        
	signal wire_CLK       	: std_logic;        
	signal wire_READDATA  	: std_logic_vector(7 downto 0);
	signal wire_WRITEDATA 	: std_logic_vector(7 downto 0);
	signal wire_WR_EN     	: std_logic;           
	signal wire_RD_EN     	: std_logic;            
	signal wire_CS        	: std_logic;           
	signal wire_ADD       	: std_logic_vector (9 downto 0);
Begin

	process(op)
	begin
		case op is
		
			when "011" =>
			-- write
			

			when "101" =>
			-- read


			when others =>
		
		end case ;
	end process;
	
	op(0) <= CS; 
	op(1) <= WR_EN;
	op(2) <= RD_EN;
	VDD <= '1';
	GND <= '0';


End architecture;
