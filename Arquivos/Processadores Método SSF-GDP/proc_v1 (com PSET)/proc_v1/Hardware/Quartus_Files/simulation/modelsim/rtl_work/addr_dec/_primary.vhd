library verilog;
use verilog.vl_types.all;
entity addr_dec is
    generic(
        NPORT           : integer := 4
    );
    port(
        valid_in        : in     vl_logic;
        index           : in     vl_logic_vector;
        valid_out       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NPORT : constant is 1;
end addr_dec;
