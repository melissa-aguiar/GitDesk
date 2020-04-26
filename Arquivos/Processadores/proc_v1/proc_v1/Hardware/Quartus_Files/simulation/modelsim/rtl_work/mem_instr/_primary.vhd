library verilog;
use verilog.vl_types.all;
entity mem_instr is
    generic(
        NADDRE          : integer := 8;
        NBDATA          : integer := 12;
        FNAME           : string  := "instr.mif"
    );
    port(
        clk             : in     vl_logic;
        addr            : in     vl_logic_vector;
        data            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NADDRE : constant is 1;
    attribute mti_svvh_generic_type of NBDATA : constant is 1;
    attribute mti_svvh_generic_type of FNAME : constant is 1;
end mem_instr;
