-- Gabriel Calper
-- Electronic Engineering
-- RA : 1886762

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SigVar is
    port
    (
        reset               :       in          std_logic;
        clock               :       in          std_logic;
        A1                  :       in          std_logic_vector(3 downto 0);
        A2                  :       in          std_logic_vector(3 downto 0);
        O1                  :       out         std_logic_vector(2 downto 0);
        O2                  :       out         std_logic_vector(2 downto 0)
    );
end SigVar;

architecture Behavior of SigVar is
    function count_ones_for(s : std_logic_vector) return integer is
        variable temp : natural := 0;
    begin
        for i in s'range loop
            if s(i) = '1' then 
                temp := temp + 1;
            end if;
        end loop;
        report "Value of return function is : " & integer'Image(temp);
        return temp;
    end function count_ones_for;


    function count_ones_while(s : std_logic_vector) return integer is
        variable temp   : natural := 0;
        variable i      : natural := 0;
    begin
        while (i <= 3) loop
            if s(i) = '1' then 
                temp := temp + 1;
            end if;
            i:=i + 1;
        end loop;
        return temp;
    end function count_ones_while;


begin



    for_process : process(clock, reset)
        variable ones   : integer;
    begin
        if reset = '1' then
            O1 <= "000";
        elsif rising_edge(clock) then
            O1 <= std_logic_vector(to_unsigned(count_ones_for(A1),O1'length));
        end if ;              
    end process;


    while_process : process(clock, reset)
    variable ones   : integer;
    begin
        if reset = '1' then
            O2 <= "000";
        elsif rising_edge(clock) then
            O2 <= std_logic_vector(to_unsigned(count_ones_while(A2),O1'length));
        end if ;              
    end process;


end Behavior ;