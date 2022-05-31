-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity UC_tb is
end UC_tb;


architecture Behavior of UC_tb is

    component UC
        port
        (
            reset           :   in      std_logic;
            clock           :   in      std_logic;
            UC_in           :   in      unsigned(3 downto 0);
            UC_out_s        :   out     unsigned(6 downto 0);
            UC_out_ms       :   out     unsigned(6 downto 0)
        );
    end component;
    
    signal reset           :        std_logic;
    signal clock           :        std_logic;
    signal UC_in           :        unsigned(3 downto 0);
    signal UC_out_s        :        unsigned(6 downto 0);
    signal UC_out_ms       :        unsigned(6 downto 0);
begin
    Clock_Generator : process
    begin
        clock <= '0';
        wait for 20 ns;
        clock <= '1';
        wait for 20 ns;
    end process;

    uut: UC port map
    (
        reset           => reset,
        clock           => clock,
        UC_in           => UC_in,
        UC_out_s        => UC_out_s,
        UC_out_ms       => UC_out_ms
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
        wait;
    end process ;

end Behavior ;