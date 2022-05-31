library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity clock_divider is
    port
    ( 
        clock_in                    : in std_logic;
        reset                       : in std_logic;
        clock_out_1ms               : out std_logic;
        clock_out_1s                : out std_logic
    );
end clock_divider;


architecture Behavior of clock_divider is

    signal count1        : integer   :=  1;
    signal tmp1          : std_logic := '0';
    signal count2        : integer   :=  1;
    signal tmp2          : std_logic := '0';

begin
    -- 1ms
    process(clock_in,reset)
    begin
        if(reset='1') then
            count1<=1;
            tmp1<='0';
        elsif(clock_in'event and clock_in='1') then
            count1 <=count1+1;
            if (count1 = 250000) then
                tmp1 <= NOT tmp1;
                count1 <= 1;
            end if;
        end if;
        clock_out_1ms <= tmp1;
    end process;

    -- 1s
    process(clock_in,reset)
    begin
        if(reset='1') then
            count2<=1;
            tmp2<='0';
        elsif(clock_in'event and clock_in='1') then
            count2 <=count2+1;
            if (count2 = 25000000) then
                tmp2 <= NOT tmp2;
                count2 <= 1;
            end if;
        end if;
        clock_out_1s <= tmp2;
    end process;
end Behavior;