module proc_fix (
input clk, rst,
input signed [31:0] io_in,
output signed [31:0] io_out,
output [1:0] req_in,
output [1:0] out_en);

wire signed [31:0] in_float;
wire signed [31:0] out_float;

assign in_float = io_in;

wire proc_req_in, proc_out_en;
wire [0:0] addr_in;
wire [0:0] addr_out;

proc_fx #(.NUBITS(32),
.MDATAS(406),
.MINSTS(4727),
.SDEPTH(16),
.NUIOIN(2),
.NUIOOU(2),
.EQU(1),
.MLT(1),
.ADD(1),
.LES(1),
.DIV(1),
.DFILE("C:/Users/melis/Desktop/GitDesk/multicore/proc_fix/proc_fix/Hardware/proc_fix_H/proc_fix_data.mif"),
.IFILE("C:/Users/melis/Desktop/GitDesk/multicore/proc_fix/proc_fix/Hardware/proc_fix_H/proc_fix_inst.mif")
) p_proc_fix (clk, rst, in_float, out_float, addr_in, addr_out, proc_req_in, proc_out_en);

assign io_out = out_float;

addr_dec #(2) dec_in (proc_req_in, addr_in , req_in);
addr_dec #(2) dec_out(proc_out_en, addr_out, out_en);

endmodule
