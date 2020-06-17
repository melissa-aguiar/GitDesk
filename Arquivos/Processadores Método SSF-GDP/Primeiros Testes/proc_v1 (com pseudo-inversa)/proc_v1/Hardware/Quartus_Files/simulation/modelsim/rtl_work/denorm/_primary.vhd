library verilog;
use verilog.vl_types.all;
entity denorm is
    generic(
        EXP             : integer := 8;
        MAN             : integer := 23
    );
    port(
        s1_in           : in     vl_logic;
        s2_in           : in     vl_logic;
        e1_in           : in     vl_logic_vector;
        e2_in           : in     vl_logic_vector;
        m1_in           : in     vl_logic_vector;
        m2_in           : in     vl_logic_vector;
        e_out           : out    vl_logic_vector;
        sm1_out         : out    vl_logic_vector;
        sm2_out         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of EXP : constant is 1;
    attribute mti_svvh_generic_type of MAN : constant is 1;
end denorm;
