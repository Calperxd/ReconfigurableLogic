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
            cs          : in std_logic;
            clock		: IN STD_LOGIC ;
            data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            rdaddress	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
            rden		: IN STD_LOGIC ;
            wraddress	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
            wren		: IN STD_LOGIC ;
            q		    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    end component;

    signal    cs        : std_logic;
    signal    clock		: STD_LOGIC ;
    signal    data		: STD_LOGIC_VECTOR (7 DOWNTO 0);
    signal    rdaddress	: STD_LOGIC_VECTOR (9 DOWNTO 0);
    signal    rden		: STD_LOGIC ;
    signal    wraddress	: STD_LOGIC_VECTOR (9 DOWNTO 0);
    signal    wren		: STD_LOGIC ;
    signal    q		    : STD_LOGIC_VECTOR (7 DOWNTO 0);

    --signal escrita                  : integer:= 0;
    --signal leitura                  : integer:= 0;

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
            cs          => cs,
            clock		=> clock,
            data		=> data,
            rdaddress	=> rdaddress,
            rden		=> rden,
            wraddress	=> wraddress,
            wren		=> wren,
            q		    => q
        );

        process
        begin
            -- escrita
            cs          <= '1';
            data        <= "00000001";
            rdaddress   <= "0000000000";
            rden	    <= '0';
            wraddress   <= "0000000000";
            wren        <= '1';
            wait for 120 ns;
            cs          <= '0'; -- alta impedancia
            wait for 120 ns;
            -- leitura
            cs          <= '1';
            data        <= "00000001";
            rdaddress   <= "0000000000";
            rden	    <= '1';
            wraddress   <= "0000000000";
            wren        <= '1';
            wait for 120 ns;
            -- escrita
            cs          <= '1';
            data        <= "00000010";
            rdaddress   <= "0000000000";
            rden	    <= '0';
            wraddress   <= "0000000000";
            wren        <= '1';
            wait for 120 ns;
            -- escrita
            cs          <= '1';
            data        <= "00000010";
            rdaddress   <= "0000000000";
            rden	    <= '0';
            wraddress   <= "0000000000";
            wren        <= '1';
            wait for 120 ns;
            -- leitura
            cs          <= '1';
            data        <= "00000001";
            rdaddress   <= "0000000000";
            rden	    <= '1';
            wraddress   <= "0000000000";
            wren        <= '1';
            wait for 120 ns;
            wait;
        end process ; 
end Behavior;