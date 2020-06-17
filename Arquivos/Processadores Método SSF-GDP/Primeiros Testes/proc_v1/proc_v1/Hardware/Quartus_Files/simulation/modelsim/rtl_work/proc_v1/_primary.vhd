library verilog;
use verilog.vl_types.all;
entity proc_v1 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        io_in           : in     vl_logic_vector(11 downto 0);
        io_out          : out    vl_logic_vector(20 downto 0);
        req_in          : out    vl_logic_vector(3 downto 0);
        out_en          : out    vl_logic_vector(3 downto 0)
    );
end proc_v1;
