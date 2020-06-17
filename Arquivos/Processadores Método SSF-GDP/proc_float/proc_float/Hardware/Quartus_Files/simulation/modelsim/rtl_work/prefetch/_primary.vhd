library verilog;
use verilog.vl_types.all;
entity prefetch is
    generic(
        MINSTW          : integer := 8;
        NBOPCO          : integer := 6;
        NBOPER          : integer := 9
    );
    port(
        rst             : in     vl_logic;
        addr            : in     vl_logic_vector;
        opcode          : out    vl_logic_vector;
        operand         : out    vl_logic_vector;
        instr           : in     vl_logic_vector;
        instr_addr      : out    vl_logic_vector;
        pc_load         : out    vl_logic;
        cmp             : in     vl_logic;
        isp_push        : out    vl_logic;
        isp_pop         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MINSTW : constant is 1;
    attribute mti_svvh_generic_type of NBOPCO : constant is 1;
    attribute mti_svvh_generic_type of NBOPER : constant is 1;
end prefetch;
