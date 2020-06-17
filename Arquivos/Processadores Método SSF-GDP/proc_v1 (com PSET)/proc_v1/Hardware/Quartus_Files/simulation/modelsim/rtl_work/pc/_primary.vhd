library verilog;
use verilog.vl_types.all;
entity pc is
    generic(
        NBITS           : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        load            : in     vl_logic;
        data            : in     vl_logic_vector;
        addr            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBITS : constant is 1;
end pc;
