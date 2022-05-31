-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sig is
    port
    (
        reset               :       in          std_logic;
        clock               :       in          std_logic;
        A1                  :       in          std_logic_vector(3 downto 0);
        O1                  :       out         std_logic_vector(2 downto 0)
    );
end Sig;

architecture Behavior of Sig is
    signal wire_1_A1    :   std_logic_vector(3 downto 0);
begin
    process(clock, reset)
    begin
        if reset = '1' then
            O1 <= "000";
        elsif rising_edge(clock) then
            case(wire_1_A1)is
                when "0000"=> O1 <= "000";
                    when "0001"=> O1 <= "001";
                    when "0010"=> O1 <= "001";
                    when "0011"=> O1 <= "010";
                    when "0100"=> O1 <= "001";
                    when "0101"=> O1 <= "010";
                    when "0110"=> O1 <= "010";
                    when "0111"=> O1 <= "011";
                    when "1000"=> O1 <= "001";
                    when "1001"=> O1 <= "010";
                    when "1010"=> O1 <= "010";
                    when "1011"=> O1 <= "011";
                    when "1100"=> O1 <= "010";
                    when "1101"=> O1 <= "011";
                    when "1110"=> O1 <= "011";
                    when "1111"=> O1 <= "100";
                when others => O1 <= "000";
            end case ;
        end if;
    end process ;
    wire_1_A1 <= A1;
end Behavior ;