library verilog;
use verilog.vl_types.all;
entity mymult is
    generic(
        EXP             : integer := 8;
        MAN             : integer := 23
    );
    port(
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        e1              : in     vl_logic_vector;
        e2              : in     vl_logic_vector;
        m1              : in     vl_logic_vector;
        m2              : in     vl_logic_vector;
        s_out           : out    vl_logic;
        e_out           : out    vl_logic_vector;
        m_out           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of EXP : constant is 1;
    attribute mti_svvh_generic_type of MAN : constant is 1;
end mymult;
