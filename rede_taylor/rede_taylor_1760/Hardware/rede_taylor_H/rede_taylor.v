module rede_taylor (
input clk, rst,
input signed [18:0] io_in,
output signed [27:0] io_out,
output [3:0] req_in,
output [3:0] out_en);

wire signed [27:0] in_float;
wire signed [27:0] out_float;

int2float #(.MAN(19),.EXP(8)) i2f (io_in, in_float);

wire proc_req_in, proc_out_en;
wire [1:0] addr_in;
wire [1:0] addr_out;

proc_fl #(.NBMANT(19),
.NBEXPO(8),
.MDATAS(155),
.MINSTS(523),
.SDEPTH(4),
.NUIOIN(4),
.NUIOOU(4),
.EQU(1),
.MLT(1),
.ADD(1),
.NEG(1),
.LES(1),
.LAN(1),
.ABS(1),
.LIN(1),
.SRF(1),
.SIGN(1),
.DFILE("C:/Users/melis/Desktop/GitDesk/rede_taylor/rede_taylor/Hardware/rede_taylor_H/rede_taylor_data.mif"),
.IFILE("C:/Users/melis/Desktop/GitDesk/rede_taylor/rede_taylor/Hardware/rede_taylor_H/rede_taylor_inst.mif")
) p_rede_taylor (clk, rst, in_float, out_float, addr_in, addr_out, proc_req_in, proc_out_en);

float2int #(.EXP(8),.MAN(19)) f2i (out_float, io_out);

addr_dec #(4) dec_in (proc_req_in, addr_in , req_in);
addr_dec #(4) dec_out(proc_out_en, addr_out, out_en);

endmodule
