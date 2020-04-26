module generico_v2 (
input clk, rst,
input [15:0] io_in,
output [32:0] io_out,
output [3:0] req_in,
output [3:0] out_en);

wire signed [32:0] in_float;
wire signed [32:0] out_float;

int2float #(.MAN(16),.EXP(16)) i2f (io_in, in_float);

wire proc_req_in, proc_out_en;
wire [1:0] addr_in;
wire [1:0] addr_out;

proc_fl #(.NBMANT(16),
.NBEXPO(16),
.MDATAS(5556),
.MINSTS(36770),
.SDEPTH(16),
.NUIOIN(4),
.NUIOOU(4),
.DFILE("C:/Users/melis/OneDrive/- TCC/Processadores/generico_v2/generico_v2/Hardware/generico_v2_H/generico_v2_data.mif"),
.IFILE("C:/Users/melis/OneDrive/- TCC/Processadores/generico_v2/generico_v2/Hardware/generico_v2_H/generico_v2_inst.mif")
) p_generico_v2 (clk, rst, in_float, out_float, addr_in, addr_out, proc_req_in, proc_out_en);

float2int #(.EXP(16),.MAN(16)) f2i (out_float, io_out);

addr_dec #(4) dec_in (proc_req_in, addr_in , req_in);
addr_dec #(4) dec_out(proc_out_en, addr_out, out_en);

endmodule
