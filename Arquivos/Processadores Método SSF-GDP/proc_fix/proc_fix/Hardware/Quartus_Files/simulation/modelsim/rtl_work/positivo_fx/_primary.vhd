library verilog;
use verilog.vl_types.all;
entity positivo_fx is
    generic(
        NUBITS          : integer := 32
    );
    port(
        acc             : in     vl_logic_vector;
        ctrl            : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUBITS : constant is 1;
end positivo_fx;
