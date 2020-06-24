module rede (
input clk, rst,
input signed [30:0] io_in,
output signed [30:0] io_out,
output [3:0] req_in,
output [3:0] out_en);

wire signed [30:0] in_float;
wire signed [30:0] out_float;

assign in_float = io_in;

wire proc_req_in, proc_out_en;
wire [1:0] addr_in;
wire [1:0] addr_out;

proc_fx #(.NUBITS(31),
.MDATAS(32920),
.MINSTS(624),
.SDEPTH(4),
.NUIOIN(4),
.NUIOOU(4),
.NUGAIN(64),
.MLT(1),
.ADD(1),
.LES(1),
.LAN(1),
.ABS(1),
.NORMS(1),
.SRF(1),
.DFILE("C:/Users/melis/Desktop/GitDesk/rede/rede/Hardware/rede_H/rede_data.mif"),
.IFILE("C:/Users/melis/Desktop/GitDesk/rede/rede/Hardware/rede_H/rede_inst.mif")
) p_rede (clk, rst, in_float, out_float, addr_in, addr_out, proc_req_in, proc_out_en);

assign io_out = out_float;

addr_dec #(4) dec_in (proc_req_in, addr_in , req_in);
addr_dec #(4) dec_out(proc_out_en, addr_out, out_en);

endmodule
