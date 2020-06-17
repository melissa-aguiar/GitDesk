library verilog;
use verilog.vl_types.all;
entity mem_data is
    generic(
        NADDRE          : integer := 8;
        NBDATA          : integer := 32;
        FNAME           : string  := "data.mif"
    );
    port(
        clk             : in     vl_logic;
        wr              : in     vl_logic;
        addr_w          : in     vl_logic_vector;
        addr_r          : in     vl_logic_vector;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NADDRE : constant is 1;
    attribute mti_svvh_generic_type of NBDATA : constant is 1;
    attribute mti_svvh_generic_type of FNAME : constant is 1;
end mem_data;
