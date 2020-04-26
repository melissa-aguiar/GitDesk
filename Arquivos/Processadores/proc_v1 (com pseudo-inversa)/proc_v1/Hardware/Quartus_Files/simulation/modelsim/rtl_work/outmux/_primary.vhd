library verilog;
use verilog.vl_types.all;
entity outmux is
    generic(
        NBITS           : integer := 32
    );
    port(
        op              : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        sum             : in     vl_logic_vector;
        mul             : in     vl_logic_vector;
        div             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBITS : constant is 1;
end outmux;
