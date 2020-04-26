library verilog;
use verilog.vl_types.all;
entity positivo is
    generic(
        NBMANT          : integer := 12;
        NBEXPO          : integer := 8
    );
    port(
        acc             : in     vl_logic_vector;
        ctrl            : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBMANT : constant is 1;
    attribute mti_svvh_generic_type of NBEXPO : constant is 1;
end positivo;
