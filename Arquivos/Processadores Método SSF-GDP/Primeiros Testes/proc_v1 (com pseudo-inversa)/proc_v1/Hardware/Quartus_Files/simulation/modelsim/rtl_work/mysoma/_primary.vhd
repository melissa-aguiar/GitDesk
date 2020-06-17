library verilog;
use verilog.vl_types.all;
entity mysoma is
    generic(
        EXP             : integer := 8;
        MAN             : integer := 23
    );
    port(
        e_in            : in     vl_logic_vector;
        sm1_in          : in     vl_logic_vector;
        sm2_in          : in     vl_logic_vector;
        s_out           : out    vl_logic;
        e_out           : out    vl_logic_vector;
        m_out           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of EXP : constant is 1;
    attribute mti_svvh_generic_type of MAN : constant is 1;
end mysoma;
