module multicore (
	input clk,
	input signed [18:0] io_in,
	output signed [27:0] io_out0, io_out1, io_out2, io_out3, io_out4, io_out5, io_out6, io_out7, io_out8, io_out9, io_out10, io_out11, io_out12, io_out13, io_out14, io_out15, io_out16, io_out17, io_out18, io_out19, io_out20, io_out21, io_out22, io_out23, io_out24, io_out25, io_out26, io_out27, io_out28, io_out29, io_out30, io_out31, io_out32, 
	output [3:0] req_in0, req_in1, req_in2, req_in3, req_in4, req_in5, req_in6, req_in7, req_in8, req_in9, req_in10, req_in11, req_in12, req_in13, req_in14, req_in15, req_in16, req_in17, req_in18, req_in19, req_in20, req_in21, req_in22, req_in23, req_in24, req_in25, req_in26, req_in27, req_in28, req_in29, req_in30, req_in31, req_in32, 
	output [3:0] out_en0, out_en1, out_en2, out_en3, out_en4, out_en5, out_en6, out_en7, out_en8, out_en9, out_en10, out_en11, out_en12, out_en13, out_en14, out_en15, out_en16, out_en17, out_en18, out_en19, out_en20, out_en21, out_en22, out_en23, out_en24, out_en25, out_en26, out_en27, out_en28, out_en29, out_en30, out_en31, out_en32
);

reg rst0, rst1, rst2, rst3, rst4, rst5, rst6, rst7, rst8, rst9, rst10, rst11, rst12, rst13, rst14, rst15, rst16, rst17, rst18, rst19, rst20, rst21, rst22, rst23, rst24, rst25, rst26, rst27, rst28, rst29, rst30, rst31, rst32;
reg signed [27:0] my_io_out;
reg [3:0] my_out_en;
reg [8:0] q;
reg [12:0] cnt;


initial begin
	rst0 = 1;
	rst1 = 1;
	rst2 = 1;
	rst3 = 1;
	rst4 = 1;
	rst5 = 1;
	rst6 = 1;
	rst7 = 1;
	rst8 = 1;
	rst9 = 1;
	rst10 = 1;
	rst11 = 1;
	rst12 = 1;
	rst13 = 1;
	rst14 = 1;
	rst15 = 1;
	rst16 = 1;
	rst17 = 1;
	rst18 = 1;
	rst19 = 1;
	rst20 = 1;
	rst21 = 1;
	rst22 = 1;
	rst23 = 1;
	rst24 = 1;
	rst25 = 1;
	rst26 = 1;
	rst27 = 1;
	rst28 = 1;
	rst29 = 1;
	rst30 = 1;
	rst31 = 1;
	rst32 = 1;
	q = 0;
	cnt = 0;
end

always @(posedge clk) begin
	case (q)
		0: begin rst0 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		1: begin rst1 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		2: begin rst2 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		3: begin rst3 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		4: begin rst4 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		5: begin rst5 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		6: begin rst6 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		7: begin rst7 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		8: begin rst8 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		9: begin rst9 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		10: begin rst10 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		11: begin rst11 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		12: begin rst12 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		13: begin rst13 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		14: begin rst14 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		15: begin rst15 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		16: begin rst16 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		17: begin rst17 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		18: begin rst18 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		19: begin rst19 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		20: begin rst20 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		21: begin rst21 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		22: begin rst22 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		23: begin rst23 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		24: begin rst24 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		25: begin rst25 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		26: begin rst26 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		27: begin rst27 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		28: begin rst28 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		29: begin rst29 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		30: begin rst30 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		31: begin rst31 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		32: begin rst32 <= 0; if (cnt <= 11'd9) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		default: q <= 9'd147;
	endcase
end

always @(*) begin
	if (out_en0 == 1) begin my_io_out <= io_out0; my_out_en <= out_en0; end else
	if (out_en1 == 1) begin my_io_out <= io_out1; my_out_en <= out_en1; end else
	if (out_en2 == 1) begin my_io_out <= io_out2; my_out_en <= out_en2; end else
	if (out_en3 == 1) begin my_io_out <= io_out3; my_out_en <= out_en3; end else
	if (out_en4 == 1) begin my_io_out <= io_out4; my_out_en <= out_en4; end else
	if (out_en5 == 1) begin my_io_out <= io_out5; my_out_en <= out_en5; end else
	if (out_en6 == 1) begin my_io_out <= io_out6; my_out_en <= out_en6; end else
	if (out_en7 == 1) begin my_io_out <= io_out7; my_out_en <= out_en7; end else
	if (out_en8 == 1) begin my_io_out <= io_out8; my_out_en <= out_en8; end else
	if (out_en9 == 1) begin my_io_out <= io_out9; my_out_en <= out_en9; end else
	if (out_en10 == 1) begin my_io_out <= io_out10; my_out_en <= out_en10; end else
	if (out_en11 == 1) begin my_io_out <= io_out11; my_out_en <= out_en11; end else
	if (out_en12 == 1) begin my_io_out <= io_out12; my_out_en <= out_en12; end else
	if (out_en13 == 1) begin my_io_out <= io_out13; my_out_en <= out_en13; end else
	if (out_en14 == 1) begin my_io_out <= io_out14; my_out_en <= out_en14; end else
	if (out_en15 == 1) begin my_io_out <= io_out15; my_out_en <= out_en15; end else
	if (out_en16 == 1) begin my_io_out <= io_out16; my_out_en <= out_en16; end else
	if (out_en17 == 1) begin my_io_out <= io_out17; my_out_en <= out_en17; end else
	if (out_en18 == 1) begin my_io_out <= io_out18; my_out_en <= out_en18; end else
	if (out_en19 == 1) begin my_io_out <= io_out19; my_out_en <= out_en19; end else
	if (out_en20 == 1) begin my_io_out <= io_out20; my_out_en <= out_en20; end else
	if (out_en21 == 1) begin my_io_out <= io_out21; my_out_en <= out_en21; end else
	if (out_en22 == 1) begin my_io_out <= io_out22; my_out_en <= out_en22; end else
	if (out_en23 == 1) begin my_io_out <= io_out23; my_out_en <= out_en23; end else
	if (out_en24 == 1) begin my_io_out <= io_out24; my_out_en <= out_en24; end else
	if (out_en25 == 1) begin my_io_out <= io_out25; my_out_en <= out_en25; end else
	if (out_en26 == 1) begin my_io_out <= io_out26; my_out_en <= out_en26; end else
	if (out_en27 == 1) begin my_io_out <= io_out27; my_out_en <= out_en27; end else
	if (out_en28 == 1) begin my_io_out <= io_out28; my_out_en <= out_en28; end else
	if (out_en29 == 1) begin my_io_out <= io_out29; my_out_en <= out_en29; end else
	if (out_en30 == 1) begin my_io_out <= io_out30; my_out_en <= out_en30; end else
	if (out_en31 == 1) begin my_io_out <= io_out31; my_out_en <= out_en31; end else
	if (out_en32 == 1) begin my_io_out <= io_out32; my_out_en <= out_en32; end else
	begin my_io_out <= 0; my_out_en <= 0; end
end

rede_float rede_float0 (clk, rst0, io_in, io_out0, req_in0, out_en0);
rede_float rede_float1 (clk, rst1, io_in, io_out1, req_in1, out_en1);
rede_float rede_float2 (clk, rst2, io_in, io_out2, req_in2, out_en2);
rede_float rede_float3 (clk, rst3, io_in, io_out3, req_in3, out_en3);
rede_float rede_float4 (clk, rst4, io_in, io_out4, req_in4, out_en4);
rede_float rede_float5 (clk, rst5, io_in, io_out5, req_in5, out_en5);
rede_float rede_float6 (clk, rst6, io_in, io_out6, req_in6, out_en6);
rede_float rede_float7 (clk, rst7, io_in, io_out7, req_in7, out_en7);
rede_float rede_float8 (clk, rst8, io_in, io_out8, req_in8, out_en8);
rede_float rede_float9 (clk, rst9, io_in, io_out9, req_in9, out_en9);
rede_float rede_float10 (clk, rst10, io_in, io_out10, req_in10, out_en10);
rede_float rede_float11 (clk, rst11, io_in, io_out11, req_in11, out_en11);
rede_float rede_float12 (clk, rst12, io_in, io_out12, req_in12, out_en12);
rede_float rede_float13 (clk, rst13, io_in, io_out13, req_in13, out_en13);
rede_float rede_float14 (clk, rst14, io_in, io_out14, req_in14, out_en14);
rede_float rede_float15 (clk, rst15, io_in, io_out15, req_in15, out_en15);
rede_float rede_float16 (clk, rst16, io_in, io_out16, req_in16, out_en16);
rede_float rede_float17 (clk, rst17, io_in, io_out17, req_in17, out_en17);
rede_float rede_float18 (clk, rst18, io_in, io_out18, req_in18, out_en18);
rede_float rede_float19 (clk, rst19, io_in, io_out19, req_in19, out_en19);
rede_float rede_float20 (clk, rst20, io_in, io_out20, req_in20, out_en20);
rede_float rede_float21 (clk, rst21, io_in, io_out21, req_in21, out_en21);
rede_float rede_float22 (clk, rst22, io_in, io_out22, req_in22, out_en22);
rede_float rede_float23 (clk, rst23, io_in, io_out23, req_in23, out_en23);
rede_float rede_float24 (clk, rst24, io_in, io_out24, req_in24, out_en24);
rede_float rede_float25 (clk, rst25, io_in, io_out25, req_in25, out_en25);
rede_float rede_float26 (clk, rst26, io_in, io_out26, req_in26, out_en26);
rede_float rede_float27 (clk, rst27, io_in, io_out27, req_in27, out_en27);
rede_float rede_float28 (clk, rst28, io_in, io_out28, req_in28, out_en28);
rede_float rede_float29 (clk, rst29, io_in, io_out29, req_in29, out_en29);
rede_float rede_float30 (clk, rst30, io_in, io_out30, req_in30, out_en30);
rede_float rede_float31 (clk, rst31, io_in, io_out31, req_in31, out_en31);
rede_float rede_float32 (clk, rst32, io_in, io_out32, req_in32, out_en32);
endmodule

