-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity UC is
    port
    (
        reset             :   in      std_logic;
        clock             :   in      std_logic;
        UC_in             :   in      unsigned(3 downto 0);
        UC_out_s_1        :   out     unsigned(6 downto 0);
        UC_out_s_2        :   out     unsigned(6 downto 0);
        UC_out_ms_1       :   out     unsigned(6 downto 0);
        UC_out_ms_2       :   out     unsigned(6 downto 0)
    );
end UC;

architecture Behavior of UC is

    component clock_divider is
        port
        ( 
            clock_in                    : in std_logic;
            reset                       : in std_logic;
            clock_out_1ms               : out std_logic;
            clock_out_1s                : out std_logic
        );
    end component;

    component counter_s is
        port 
        (
            reset                       : in      std_logic;
            clock                       : in      std_logic;
            bcd_4_out1                  : out     unsigned(3 downto 0);
            bcd_4_out2                  : out     unsigned(3 downto 0)
        ) ;
    end component;

    component counter_ms is
        port 
        (
            reset                       : in      std_logic;
            clock                       : in      std_logic;
            bcd_4_out1                  : out     unsigned(3 downto 0);
            bcd_4_out2                  : out     unsigned(3 downto 0)
        ) ;
    end component;

    component bcd_to_seven is
        port
        (
            bcd_in                      : in      unsigned(3 downto 0);
            bcd_out                     : out     unsigned(6 downto 0)
        );
    end component;

    signal wire_1                       : unsigned(3 downto 0); -- BCD dez s
    signal wire_2                       : unsigned(3 downto 0); -- BCD unit s
    signal wire_3                       : std_logic; -- clock 1kHz
    signal wire_4                       : std_logic; -- clock 1hz
    signal wire_5                       : std_logic; 
    signal wire_6                       : std_logic; -- reset
    signal wire_7                       : unsigned(3 downto 0); -- BCD dez ms
    signal wire_8                       : unsigned(3 downto 0); -- BCD unit ms
begin

    out_to_counter: clock_divider port map
        (
            clock_in                    => clock,
            reset                       => wire_6,
            clock_out_1ms               => wire_3,
            clock_out_1s                => wire_4
        );
    
    counter_s_1: counter_s port map
        (
            reset           => wire_6,
            clock           => wire_4,
            bcd_4_out1      => wire_1,
            bcd_4_out2      => wire_2
        );

    counter_ms_1: counter_ms port map
        (
            reset           => wire_6,
            clock           => wire_3,
            bcd_4_out1      => wire_7,
            bcd_4_out2      => wire_8
        );

    seven_1_s: bcd_to_seven port map
        (
            bcd_in          => wire_2,
            bcd_out         => UC_out_s_1
        );

    seven_2_s: bcd_to_seven port map
        (
            bcd_in          => wire_1,
            bcd_out         => UC_out_s_2
        );

    seven_1_ms: bcd_to_seven port map
        (
            bcd_in          => wire_8,
            bcd_out         => UC_out_ms_1
        );

    seven_2_ms: bcd_to_seven port map
        (
            bcd_in          => wire_7,
            bcd_out         => UC_out_ms_2
        );
    
    wire_6 <= not reset;
end Behavior;