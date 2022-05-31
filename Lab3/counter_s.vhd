-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_s is
    port 
    (
        reset           :           in      std_logic;
        clock           :           in      std_logic;
        bcd_4_out1      :           out     unsigned(3 downto 0);
        bcd_4_out2      :           out     unsigned(3 downto 0)
    ) ;
end counter_s;


architecture Behavior of counter_s is
    signal count1 : integer :=0;
    signal count2 : integer :=0;
begin
    process(reset, clock, count1, count2)
    begin
        if reset = '1' then
            count1 <= 0;
            count2 <= 0;
        elsif rising_edge(clock) then
            count1 <= count1 + 1;
            if count1 = 9 then
                count2 <= count2 + 1;
                count1 <= 0;
            elsif count2 = 6 then
                count2 <= 0;
            end if ;
        end if ;
    end process;

    bcd_4_out1 <= to_unsigned(count1, bcd_4_out1'length);
    bcd_4_out2 <= to_unsigned(count2, bcd_4_out2'length);

end Behavior ;