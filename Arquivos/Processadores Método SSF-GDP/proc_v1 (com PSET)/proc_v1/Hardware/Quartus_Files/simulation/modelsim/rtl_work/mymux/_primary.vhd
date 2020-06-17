library verilog;
use verilog.vl_types.all;
entity mymux is
    generic(
        NCOMP           : integer := 2;
        NBITS           : integer := 8
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NCOMP : constant is 1;
    attribute mti_svvh_generic_type of NBITS : constant is 1;
end mymux;
