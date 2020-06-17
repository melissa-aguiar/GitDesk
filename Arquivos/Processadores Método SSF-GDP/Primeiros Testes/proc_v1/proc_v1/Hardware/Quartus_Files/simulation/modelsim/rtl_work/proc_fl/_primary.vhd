library verilog;
use verilog.vl_types.all;
entity proc_fl is
    generic(
        NBMANT          : integer := 16;
        NBEXPO          : integer := 6;
        MDATAS          : integer := 56;
        MINSTS          : integer := 410;
        SDEPTH          : integer := 5;
        NUIOIN          : integer := 8;
        NUIOOU          : integer := 8;
        DFILE           : string  := "data.mif";
        IFILE           : string  := "inst.mif";
        LOR             : integer := 0;
        GRE             : integer := 0;
        DIV             : integer := 0;
        ADD             : integer := 0;
        MLT             : integer := 0;
        CAL             : integer := 0;
        SRF             : integer := 0;
        LES             : integer := 0;
        EQU             : integer := 0;
        NEG             : integer := 0;
        LAN             : integer := 0;
        LIN             : integer := 0;
        \XOR\           : integer := 0;
        NBOPCO          : integer := 6;
        MDATAW          : vl_notype;
        MINSTW          : vl_notype
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        io_in           : in     vl_logic_vector;
        io_out          : out    vl_logic_vector;
        addr_in         : out    vl_logic_vector;
        addr_out        : out    vl_logic_vector;
        req_in          : out    vl_logic;
        out_en          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBMANT : constant is 1;
    attribute mti_svvh_generic_type of NBEXPO : constant is 1;
    attribute mti_svvh_generic_type of MDATAS : constant is 1;
    attribute mti_svvh_generic_type of MINSTS : constant is 1;
    attribute mti_svvh_generic_type of SDEPTH : constant is 1;
    attribute mti_svvh_generic_type of NUIOIN : constant is 1;
    attribute mti_svvh_generic_type of NUIOOU : constant is 1;
    attribute mti_svvh_generic_type of DFILE : constant is 1;
    attribute mti_svvh_generic_type of IFILE : constant is 1;
    attribute mti_svvh_generic_type of LOR : constant is 1;
    attribute mti_svvh_generic_type of GRE : constant is 1;
    attribute mti_svvh_generic_type of DIV : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of MLT : constant is 1;
    attribute mti_svvh_generic_type of CAL : constant is 1;
    attribute mti_svvh_generic_type of SRF : constant is 1;
    attribute mti_svvh_generic_type of LES : constant is 1;
    attribute mti_svvh_generic_type of EQU : constant is 1;
    attribute mti_svvh_generic_type of NEG : constant is 1;
    attribute mti_svvh_generic_type of LAN : constant is 1;
    attribute mti_svvh_generic_type of LIN : constant is 1;
    attribute mti_svvh_generic_type of \XOR\ : constant is 1;
    attribute mti_svvh_generic_type of NBOPCO : constant is 1;
    attribute mti_svvh_generic_type of MDATAW : constant is 3;
    attribute mti_svvh_generic_type of MINSTW : constant is 3;
end proc_fl;
