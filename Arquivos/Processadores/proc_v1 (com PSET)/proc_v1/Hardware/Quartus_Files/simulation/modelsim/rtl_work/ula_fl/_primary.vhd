library verilog;
use verilog.vl_types.all;
entity ula_fl is
    generic(
        EXP             : integer := 8;
        MAN             : vl_logic_vector;
        DIV             : integer := 0;
        MLT             : integer := 0;
        ADD             : integer := 0;
        LES             : integer := 0;
        EQU             : integer := 0;
        LIN             : integer := 0;
        LAN             : integer := 0;
        GRE             : integer := 0;
        LOR             : integer := 0;
        NEG             : integer := 0
    );
    port(
        op              : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of EXP : constant is 1;
    attribute mti_svvh_generic_type of MAN : constant is 4;
    attribute mti_svvh_generic_type of DIV : constant is 1;
    attribute mti_svvh_generic_type of MLT : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of LES : constant is 1;
    attribute mti_svvh_generic_type of EQU : constant is 1;
    attribute mti_svvh_generic_type of LIN : constant is 1;
    attribute mti_svvh_generic_type of LAN : constant is 1;
    attribute mti_svvh_generic_type of GRE : constant is 1;
    attribute mti_svvh_generic_type of LOR : constant is 1;
    attribute mti_svvh_generic_type of NEG : constant is 1;
end ula_fl;
