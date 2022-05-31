-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity Sig_tb is
end Sig_tb;

architecture Behavior of Sig_tb is
    component SigVar
        port
        (
            reset               :       in          std_logic;
            clock               :       in          std_logic;
            A1                  :       in          std_logic_vector(3 downto 0);
            O1                  :       out         std_logic_vector(2 downto 0)
        );
    end component;

    signal reset               :          std_logic;
    signal clock               :          std_logic;
    signal A1                  :          std_logic_vector(3 downto 0);
    signal O1                  :          std_logic_vector(2 downto 0);
begin
    Clock_Generator : process
    begin
        clock <= '0';
        wait for 20 ns;
        clock <= '1';
        wait for 20 ns;
    end process;

    uut: SigVar port map
    (
        reset       => reset,
        clock       => clock,
        A1          => A1,
        O1          => O1
    );

    process
    begin
        reset <=    '1';        
        wait for 60 ns;
        reset <=    '0';
        wait for 60 ns;
        reset <=    '1';        
        wait for 120 ns;
        reset <=    '0';
        wait for 120 ns;
        A1 <=   "1111";
        wait for 60 ns;
        A1 <=   "1001";
        wait for 60 ns;
        A1 <=   "1000";
        wait for 60 ns;
        A1 <=   "0111";
        wait for 60 ns;
        wait;
    end process;
end Behavior ;