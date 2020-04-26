library verilog;
use verilog.vl_types.all;
entity stack_pointer is
    generic(
        NDATAW          : integer := 8;
        NDATAS          : vl_logic_vector
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        push            : in     vl_logic;
        pop             : in     vl_logic;
        addr_w          : out    vl_logic_vector;
        addr_r          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NDATAW : constant is 1;
    attribute mti_svvh_generic_type of NDATAS : constant is 4;
end stack_pointer;
