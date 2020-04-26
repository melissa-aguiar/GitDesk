library verilog;
use verilog.vl_types.all;
entity norm is
    generic(
        \EXP\           : integer := 8;
        \MAN\           : integer := 23
    );
    port(
        sig             : in     vl_logic;
        exp             : in     vl_logic_vector;
        man             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \EXP\ : constant is 1;
    attribute mti_svvh_generic_type of \MAN\ : constant is 1;
end norm;
