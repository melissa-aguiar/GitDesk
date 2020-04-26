module proc_v1 (
input clk, rst,
input signed [11:0] io_in,
output signed [20:0] io_out,
output [3:0] req_in,
output [3:0] out_en);

wire signed [20:0] in_float;
wire signed [20:0] out_float;

int2float #(.MAN(12),.EXP(8)) i2f (io_in, in_float);

wire proc_req_in, proc_out_en;
wire [1:0] addr_in;
wire [1:0] addr_out;

proc_fl #(.NBMANT(12),
.NBEXPO(8),
.MDATAS(700),
.MINSTS(4934),
.SDEPTH(12),
.NUIOIN(4),
.NUIOOU(4),
.EQU(1),
.MLT(1),
.ADD(1),
.NEG(1),
.LES(1),
.DFILE("C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/proc_v1_H/proc_v1_data.mif"),
.IFILE("C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/proc_v1_H/proc_v1_inst.mif")
) p_proc_v1 (clk, rst, in_float, out_float, addr_in, addr_out, proc_req_in, proc_out_en);

float2int #(.EXP(8),.MAN(12)) f2i (out_float, io_out);

addr_dec #(4) dec_in (proc_req_in, addr_in , req_in);
addr_dec #(4) dec_out(proc_out_en, addr_out, out_en);

endmodule
