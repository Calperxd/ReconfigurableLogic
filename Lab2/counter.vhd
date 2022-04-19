-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port 
    (
        reset           :           in      std_logic;
        clock           :           in      std_logic;
        bcd_4_out1      :           out     unsigned(3 downto 0);
        bcd_4_out2      :           out     unsigned(3 downto 0)
    ) ;
end counter;


architecture Behavior of counter is
    signal count1 : integer :=1;
    signal count2 : integer :=2;
begin
    process(clock, count1, count2)
    begin
        if reset = '1' then
            count1 <= 1;
            count2 <= 2;
        elsif rising_edge(clock) then
            count1 <= count1 + 1;
            if count1 = 9 then
                count2 <= count2 + 1;
                count1 <= 0;
            elsif count1 = 8 then
                if count2 = 6 then
                    count1 <= 1;
                    count2 <= 2;
                end if ;
            end if ;
        end if ;
    end process;

    bcd_4_out1 <= to_unsigned(count1, bcd_4_out1'length);
    bcd_4_out2 <= to_unsigned(count2, bcd_4_out2'length);

end Behavior ;