-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity counter_tb is
end counter_tb;



architecture Behavior of counter_tb is

    component counter
        port
        (
            reset           :           in      std_logic;
            clock           :           in      std_logic;
            bcd_4_out1      :           out     unsigned(3 downto 0);
            bcd_4_out2      :           out     unsigned(3 downto 0)
        );
    end component;
    
    signal clock           :           std_logic;
    signal bcd_4_out1      :           unsigned(3 downto 0);
    signal bcd_4_out2      :           unsigned(3 downto 0);
    signal reset           :           std_logic;

begin
    Clock_Generator : process
    begin
        clock <= '0';
        wait for 20 ns;
        clock <= '1';
        wait for 20 ns;
    end process;

    uut: counter port map
    (
        clock                   =>  clock,
        bcd_4_out1              =>  bcd_4_out1,
        bcd_4_out2              =>  bcd_4_out2,
        reset                   =>  reset
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