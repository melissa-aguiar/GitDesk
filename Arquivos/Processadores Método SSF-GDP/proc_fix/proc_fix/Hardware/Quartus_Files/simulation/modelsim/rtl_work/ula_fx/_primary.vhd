library verilog;
use verilog.vl_types.all;
entity ula_fx is
    generic(
        NUBITS          : integer := 32;
        DIV             : integer := 0;
        \OR\            : integer := 0;
        LOR             : integer := 0;
        GRE             : integer := 0;
        \MOD\           : integer := 0;
        ADD             : integer := 0;
        MLT             : integer := 0;
        LES             : integer := 0;
        EQU             : integer := 0;
        \AND\           : integer := 0;
        LAN             : integer := 0;
        INV             : integer := 0;
        LIN             : integer := 0;
        SHR             : integer := 0;
        \XOR\           : integer := 0;
        SHL             : integer := 0;
        SRS             : integer := 0
    );
    port(
        op              : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUBITS : constant is 1;
    attribute mti_svvh_generic_type of DIV : constant is 1;
    attribute mti_svvh_generic_type of \OR\ : constant is 1;
    attribute mti_svvh_generic_type of LOR : constant is 1;
    attribute mti_svvh_generic_type of GRE : constant is 1;
    attribute mti_svvh_generic_type of \MOD\ : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of MLT : constant is 1;
    attribute mti_svvh_generic_type of LES : constant is 1;
    attribute mti_svvh_generic_type of EQU : constant is 1;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of LAN : constant is 1;
    attribute mti_svvh_generic_type of INV : constant is 1;
    attribute mti_svvh_generic_type of LIN : constant is 1;
    attribute mti_svvh_generic_type of SHR : constant is 1;
    attribute mti_svvh_generic_type of \XOR\ : constant is 1;
    attribute mti_svvh_generic_type of SHL : constant is 1;
    attribute mti_svvh_generic_type of SRS : constant is 1;
end ula_fx;
