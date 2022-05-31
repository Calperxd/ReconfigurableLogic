-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity SigVar_tb is
end SigVar_tb;

architecture Behavior of SigVar_tb is

    component SigVar
        port
        (
            reset               :       in          std_logic;
            clock               :       in          std_logic;
            A1                  :       in          std_logic_vector(3 downto 0);
            A2                  :       in          std_logic_vector(3 downto 0);
            O1                  :       out         std_logic_vector(2 downto 0);
            O2                  :       out         std_logic_vector(2 downto 0)
        );
    end component;

    signal reset               :                    std_logic;
    signal clock               :                    std_logic;
    signal A1                  :                    std_logic_vector(3 downto 0);
    signal A2                  :                    std_logic_vector(3 downto 0);
    signal O1                  :                    std_logic_vector(2 downto 0);
    signal O2                  :                    std_logic_vector(2 downto 0);

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
        reset           =>              reset,
        clock           =>              clock,
        A1              =>              A1,
        A2              =>              A2,
        O1              =>              O1,
        O2              =>              O2
    );

    in1 : process
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
    end process ;

    in2 : process
    begin
        reset <=    '1';        
        wait for 60 ns;
        reset <=    '0';
        wait for 60 ns;
        reset <=    '1';        
        wait for 120 ns;
        reset <=    '0';
        wait for 120 ns;
        A2 <=   "1111";
        wait for 60 ns;
        A2 <=   "1001";
        wait for 60 ns;
        A2 <=   "1000";
        wait for 60 ns;
        A2 <=   "0111";
        wait for 60 ns;
        wait;
    end process ;

end Behavior ;