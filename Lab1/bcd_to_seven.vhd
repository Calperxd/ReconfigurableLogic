-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762


library ieee;
use ieee.std_logic_1164.all;


entity bcd_to_seven is
    port(
        bcd_in                  : in            std_logic_vector(3 downto 0);
        bcd_out                 : out       		std_logic_vector(7 downto 0)
    );
end bcd_to_seven;


architecture Behavior of bcd_to_seven is
begin

    process(bcd_in)
    begin
        case (bcd_in) is
            when "0000" => bcd_out <= "00000001";
            when "0001" => bcd_out <= "01001111"; 
            when "0010" => bcd_out <= "00010010"; 
            when "0011" => bcd_out <= "00000110"; 
            when "0100" => bcd_out <= "01001100"; 
            when "0101" => bcd_out <= "00100100"; 
            when "0110" => bcd_out <= "00100000"; 
            when "0111" => bcd_out <= "00001111"; 
            when "1000" => bcd_out <= "00000000"; 
            when "1001" => bcd_out <= "00000100"; 
            when others => bcd_out <= "00100000"; 
        end case;
    end process;
end Behavior ; -- Behavior