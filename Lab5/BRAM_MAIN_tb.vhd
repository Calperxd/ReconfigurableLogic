-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity BRAM_MAIN_tb is
end BRAM_MAIN_tb;


architecture Behavior of BRAM_MAIN_tb is

    component BRAM_MAIN is 
        port
        (
            cs                      : in std_logic;
            add 		            : in std_logic_vector(9 DOWNTO 0);  
            clock	    	        : in std_logic;
            writedata		        : in std_logic_vector(7 DOWNTO 0);
            wr_en		            : in std_logic;
            rd_en	        	    : in std_logic;
            readdata		        : out std_logic_vector(7 DOWNTO 0)
        );
    end component;

    signal cs                       :  std_logic;
    signal add 		                :  std_logic_vector(9 DOWNTO 0);  
    signal clock	    	        :  std_logic;
    signal writedata		        :  std_logic_vector(7 DOWNTO 0);
    signal wr_en		            :  std_logic;
    signal rd_en	        	    :  std_logic;
    signal readdata		            :  std_logic_vector(7 DOWNTO 0);

    signal escrita                  : integer:= 0;
    signal leitura                  : integer:= 0;

begin

    Clock_Generator : process
    begin
        clock <= '0';
        wait for 20 ns;
        clock <= '1';
        wait for 20 ns;
    end process;

    uut: BRAM_MAIN port map
        (
            cs                      => cs,
            add 		            => add,
            clock	    	        => clock,
            writedata		        => writedata,
            wr_en		            => wr_en,
            rd_en	        	    => rd_en,
            readdata		        => readdata
        );

        process
        begin
            cs          <= '1';
            wr_en       <= '1';
            rd_en       <= '0';
            add         <= std_logic_vector(to_unsigned(0, add'length));
            writedata   <= std_logic_vector(to_unsigned(1, writedata'length));

            wait for 120 ns;
            cs          <= '1';
            wr_en       <= '1';
            rd_en       <= '0';
            add         <= std_logic_vector(to_unsigned(1, add'length));
            writedata   <= std_logic_vector(to_unsigned(2, writedata'length));
            
            wait for 120 ns;
            cs          <= '1';
            wr_en       <= '1';
            rd_en       <= '0';
            add         <= std_logic_vector(to_unsigned(2, add'length));
            writedata   <= std_logic_vector(to_unsigned(3, writedata'length));

            wait for 120 ns;
            cs          <= '1';
            wr_en       <= '1';
            rd_en       <= '1';
            add         <= std_logic_vector(to_unsigned(2, add'length));
            wait for 120 ns;
            wait;
        end process ; 
end Behavior;