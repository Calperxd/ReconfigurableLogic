-- Gabriel Calper
-- Engenharia Eletrônica
-- RA : 1886762


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bcd_to_seven is
    port(
        bcd_in                  : in                        unsigned(3 downto 0);
        bcd_out                 : out       			    unsigned(6 downto 0)
    );
end bcd_to_seven;


architecture Behavior of bcd_to_seven is
begin

    process(bcd_in)
    begin
        case (bcd_in) is
            when "0000" => bcd_out <= "0000001";	--0
            when "0001" => bcd_out <= "1001111"; 	--1
            when "0010" => bcd_out <= "0010010"; 	--2
            when "0011" => bcd_out <= "0000110"; 	--3
            when "0100" => bcd_out <= "1001100"; 	--4
            when "0101" => bcd_out <= "0100100"; 	--5
            when "0110" => bcd_out <= "0100000"; 	--6
            when "0111" => bcd_out <= "0001111"; 	--7
            when "1000" => bcd_out <= "0000000"; 	--8
            when "1001" => bcd_out <= "0000100"; 	--9
            when others => bcd_out <= "0100000"; 	--null
        end case;
    end process;
end Behavior ; -- Behavior