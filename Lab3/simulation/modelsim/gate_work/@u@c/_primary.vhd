library verilog;
use verilog.vl_types.all;
entity UC is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        UC_in           : in     vl_logic_vector(3 downto 0);
        UC_out_s        : out    vl_logic_vector(6 downto 0);
        UC_out_ms       : out    vl_logic_vector(6 downto 0)
    );
end UC;
