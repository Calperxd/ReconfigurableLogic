-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BRAM_MAIN is
	PORT
	(
        cs          : in std_logic;
        clock		: IN STD_LOGIC ;
        data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        rdaddress	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
        rden		: IN STD_LOGIC ;
        wraddress	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
        wren		: IN STD_LOGIC ;
        q		    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end BRAM_MAIN;


architecture Behavior of BRAM_MAIN is

    component BRAM is 
        port
        (
            clock		: IN STD_LOGIC ;
            data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            rdaddress	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
            rden		: IN STD_LOGIC ;
            wraddress	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
            wren		: IN STD_LOGIC ;
            q		    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    end component;



    signal wire_clock		                    : STD_LOGIC ;
    signal wire_data		                    : STD_LOGIC_VECTOR (7 DOWNTO 0);
    signal wire_rdaddress	                    : STD_LOGIC_VECTOR (9 DOWNTO 0);
    signal wire_rden		                    : STD_LOGIC ;
    signal wire_wraddress	                    : STD_LOGIC_VECTOR (9 DOWNTO 0);
    signal wire_wren		                    : STD_LOGIC ;
    signal wire_q		                        : STD_LOGIC_VECTOR (7 DOWNTO 0);
    signal op                                   :  std_logic_vector(2 downto 0);
begin

    BRAM_MAIN1 : BRAM port map
        (
            clock		=> wire_clock,
            data		=> wire_data,
            rdaddress	=> wire_rdaddress,
            rden		=> wire_rden,
            wraddress	=> wire_wraddress,
            wren		=> wire_wren,
            q		    => wire_q
        );

    -- write
    write : process(op)
    begin
        case(op) is
            when "011" => -- write
                wire_clock      <= clock;
                wire_data       <= data;
                wire_rdaddress  <= rdaddress;	
                wire_rden       <= rden;		
                wire_wraddress  <= wraddress;
                wire_wren       <= wren;		
                q		        <= wire_q;
            when "111" => -- read
                wire_clock      <= clock;
                wire_data       <= data;
                wire_rdaddress  <= rdaddress;	
                wire_rden       <= rden;		
                wire_wraddress  <= wraddress;
                wire_wren       <= wren;		
                q		        <= wire_q;
            when others => 
                wire_clock <= clock and cs;
                q <= "ZZZZZZZZ";
        end case ;
    end process;

    op(0) <= cs;
    op(1) <= wren;
    op(2) <= rden;

end Behavior;