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


architecture Behavior of BRAM_MAIN is
	signal op       : std_logic_vector(2 downto 0);
begin
	--process
	--begin
		--case op is
			--when "011" =>
			
			--when "101" =>
		
			--when others =>
		--end case ;
	--end process;
	
	op(0) <= CS;
	op(1) <= WR_EN;
	op(2) <= RD_EN;
End architecture;
