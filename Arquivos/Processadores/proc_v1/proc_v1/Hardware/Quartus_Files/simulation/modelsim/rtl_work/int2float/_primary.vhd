library verilog;
use verilog.vl_types.all;
entity int2float is
    generic(
        MAN             : integer := 23;
        EXP             : integer := 8
    );
    port(
        \in\            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MAN : constant is 1;
    attribute mti_svvh_generic_type of EXP : constant is 1;
end int2float;
