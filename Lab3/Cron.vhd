-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Cron is
    port
    (
        button              :       in          unsigned(3 downto 0);
        clock               :       in          std_logic;
        O1                  :       out         unsigned(3 downto 0)
    );
end Cron;

architecture Behavior of Cron is

    component debounce is 
        port
        (
            clk     : in  std_logic;
            button  : in  std_logic;
            result  : out std_logic
        );
    end component;
    signal wire_1_O1_reset    : std_logic;
    signal wire_2_O1_start    : std_logic;
    signal wire_2_O1_pause    : std_logic;
    signal wire_2_O1_resume   : std_logic;
begin

    debounce_reset: debounce port map
        (
            clk         => clock,
            button      => button(3),
            result      => wire_1_O1_reset
        );
    debounce_start: debounce port map
        (
            clk         => clock,
            button      => button(2),
            result      => wire_2_O1_start
        );
    debounce_pause: debounce port map
        (
            clk         => clock,
            button      => button(1),
            result      => wire_2_O1_pause
        );
    debounce_resume: debounce port map
        (
            clk         => clock,
            button      => button(0),
            result      => wire_2_O1_resume
        );

    O1(3) <= not wire_1_O1_reset;
    O1(2) <= not wire_2_O1_start;
    O1(1) <= not wire_2_O1_pause;
    O1(0) <= not wire_2_O1_resume;

end Behavior ;