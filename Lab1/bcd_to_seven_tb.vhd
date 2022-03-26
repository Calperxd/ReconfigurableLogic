-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762


library ieee;
use ieee.std_logic_1164.all;


entity bcd_to_seven_tb is
end bcd_to_seven_tb;


architecture behavior of bcd_to_seven_tb is
    component bcd_to_seven 
        port
        (
            bcd_in                  : in                std_logic_vector(3 downto 0);
            bcd_out                 : out       		std_logic_vector(6 downto 0)
        );
        end component;
    signal  bcd_in          : std_logic_vector(3 downto 0) := (others => '0');
    signal  bcd_out         : std_logic_vector(6 downto 0);

begin
    uut: bcd_to_seven port map 
    (
        bcd_in => bcd_in,
        bcd_out => bcd_out
    );
    process
    begin
        bcd_in <= "0000";
        wait for 100 ns;
        bcd_in <= "0001";
        wait for 100 ns;
        bcd_in <= "0010";
        wait for 100 ns;
        bcd_in <= "0011";
        wait for 100 ns;
        bcd_in <= "0100";
        wait for 100 ns;
        bcd_in <= "0101";
        wait for 100 ns;
        bcd_in <= "0110";
        wait for 100 ns;
        bcd_in <= "0111";
        wait for 100 ns;
        bcd_in <= "1000";
        wait for 100 ns;
        bcd_in <= "1001";
        wait for 100 ns;
    end process;

end;
