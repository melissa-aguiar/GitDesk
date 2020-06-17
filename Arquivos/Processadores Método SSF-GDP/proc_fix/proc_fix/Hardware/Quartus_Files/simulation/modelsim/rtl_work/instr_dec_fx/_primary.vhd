library verilog;
use verilog.vl_types.all;
entity instr_dec_fx is
    generic(
        NBDATA          : integer := 32;
        NBOPCO          : integer := 6;
        NBOPER          : integer := 9;
        MDATAW          : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : in     vl_logic_vector;
        operand         : in     vl_logic_vector;
        dsp_push        : out    vl_logic;
        dsp_pop         : out    vl_logic;
        ula_op          : out    vl_logic_vector(3 downto 0);
        ula_data        : out    vl_logic_vector;
        mem_wr          : out    vl_logic;
        mem_addr        : out    vl_logic_vector;
        mem_data_in     : in     vl_logic_vector;
        io_in           : in     vl_logic_vector;
        req_in          : out    vl_logic;
        out_en          : out    vl_logic;
        srf             : out    vl_logic;
        neg             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBDATA : constant is 1;
    attribute mti_svvh_generic_type of NBOPCO : constant is 1;
    attribute mti_svvh_generic_type of NBOPER : constant is 1;
    attribute mti_svvh_generic_type of MDATAW : constant is 1;
end instr_dec_fx;
