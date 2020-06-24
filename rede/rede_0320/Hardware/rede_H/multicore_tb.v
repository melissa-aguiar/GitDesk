module multicore_tb();
	reg clk;
	wire [3:0] req_in0, req_in1, req_in2, req_in3, req_in4, req_in5, req_in6, req_in7, req_in8, req_in9, req_in10, req_in11, req_in12, req_in13, req_in14, req_in15, req_in16, req_in17, req_in18, req_in19, req_in20, req_in21, req_in22, req_in23, req_in24, req_in25, req_in26, req_in27, req_in28, req_in29, req_in30, req_in31, req_in32, req_in33, req_in34, req_in35, req_in36, req_in37, req_in38, req_in39, req_in40, req_in41, req_in42, req_in43, req_in44, req_in45, req_in46, req_in47, req_in48, req_in49, req_in50, req_in51, req_in52, req_in53, req_in54, req_in55, req_in56, req_in57, req_in58, req_in59, req_in60, req_in61, req_in62, req_in63, req_in64, req_in65, req_in66, req_in67, req_in68, req_in69, req_in70, req_in71, req_in72, req_in73, req_in74, req_in75;
	reg signed [30:0] in;
	wire signed [30:0] io_out0, io_out1, io_out2, io_out3, io_out4, io_out5, io_out6, io_out7, io_out8, io_out9, io_out10, io_out11, io_out12, io_out13, io_out14, io_out15, io_out16, io_out17, io_out18, io_out19, io_out20, io_out21, io_out22, io_out23, io_out24, io_out25, io_out26, io_out27, io_out28, io_out29, io_out30, io_out31, io_out32, io_out33, io_out34, io_out35, io_out36, io_out37, io_out38, io_out39, io_out40, io_out41, io_out42, io_out43, io_out44, io_out45, io_out46, io_out47, io_out48, io_out49, io_out50, io_out51, io_out52, io_out53, io_out54, io_out55, io_out56, io_out57, io_out58, io_out59, io_out60, io_out61, io_out62, io_out63, io_out64, io_out65, io_out66, io_out67, io_out68, io_out69, io_out70, io_out71, io_out72, io_out73, io_out74, io_out75;
	wire [3:0] out_en0, out_en1, out_en2, out_en3, out_en4, out_en5, out_en6, out_en7, out_en8, out_en9, out_en10, out_en11, out_en12, out_en13, out_en14, out_en15, out_en16, out_en17, out_en18, out_en19, out_en20, out_en21, out_en22, out_en23, out_en24, out_en25, out_en26, out_en27, out_en28, out_en29, out_en30, out_en31, out_en32, out_en33, out_en34, out_en35, out_en36, out_en37, out_en38, out_en39, out_en40, out_en41, out_en42, out_en43, out_en44, out_en45, out_en46, out_en47, out_en48, out_en49, out_en50, out_en51, out_en52, out_en53, out_en54, out_en55, out_en56, out_en57, out_en58, out_en59, out_en60, out_en61, out_en62, out_en63, out_en64, out_en65, out_en66, out_en67, out_en68, out_en69, out_en70, out_en71, out_en72, out_en73, out_en74, out_en75;
	integer data_file, scan_file, my_output;

initial begin 
	data_file = $fopen("sinaladc.txt", "r");
	my_output = $fopen("myoutput.txt", "w");
	scan_file = $fscanf(data_file, "%d\n", in);
	clk = 0;
end

always #3125 clk = ~clk;

always @(posedge clk) begin
	if ((req_in0 || req_in1 || req_in2 || req_in3 || req_in4 || req_in5 || req_in6 || req_in7 || req_in8 || req_in9 || req_in10 || req_in11 || req_in12 || req_in13 || req_in14 || req_in15 || req_in16 || req_in17 || req_in18 || req_in19 || req_in20 || req_in21 || req_in22 || req_in23 || req_in24 || req_in25 || req_in26 || req_in27 || req_in28 || req_in29 || req_in30 || req_in31 || req_in32 || req_in33 || req_in34 || req_in35 || req_in36 || req_in37 || req_in38 || req_in39 || req_in40 || req_in41 || req_in42 || req_in43 || req_in44 || req_in45 || req_in46 || req_in47 || req_in48 || req_in49 || req_in50 || req_in51 || req_in52 || req_in53 || req_in54 || req_in55 || req_in56 || req_in57 || req_in58 || req_in59 || req_in60 || req_in61 || req_in62 || req_in63 || req_in64 || req_in65 || req_in66 || req_in67 || req_in68 || req_in69 || req_in70 || req_in71 || req_in72 || req_in73 || req_in74 || req_in75) == 1'd1)
		scan_file = $fscanf(data_file, "%d\n", in);
end

always @(posedge clk) begin
	if (out_en0 == 1'd1) $fwrite(my_output, "%d\n", io_out0);
	if (out_en1 == 1'd1) $fwrite(my_output, "%d\n", io_out1);
	if (out_en2 == 1'd1) $fwrite(my_output, "%d\n", io_out2);
	if (out_en3 == 1'd1) $fwrite(my_output, "%d\n", io_out3);
	if (out_en4 == 1'd1) $fwrite(my_output, "%d\n", io_out4);
	if (out_en5 == 1'd1) $fwrite(my_output, "%d\n", io_out5);
	if (out_en6 == 1'd1) $fwrite(my_output, "%d\n", io_out6);
	if (out_en7 == 1'd1) $fwrite(my_output, "%d\n", io_out7);
	if (out_en8 == 1'd1) $fwrite(my_output, "%d\n", io_out8);
	if (out_en9 == 1'd1) $fwrite(my_output, "%d\n", io_out9);
	if (out_en10 == 1'd1) $fwrite(my_output, "%d\n", io_out10);
	if (out_en11 == 1'd1) $fwrite(my_output, "%d\n", io_out11);
	if (out_en12 == 1'd1) $fwrite(my_output, "%d\n", io_out12);
	if (out_en13 == 1'd1) $fwrite(my_output, "%d\n", io_out13);
	if (out_en14 == 1'd1) $fwrite(my_output, "%d\n", io_out14);
	if (out_en15 == 1'd1) $fwrite(my_output, "%d\n", io_out15);
	if (out_en16 == 1'd1) $fwrite(my_output, "%d\n", io_out16);
	if (out_en17 == 1'd1) $fwrite(my_output, "%d\n", io_out17);
	if (out_en18 == 1'd1) $fwrite(my_output, "%d\n", io_out18);
	if (out_en19 == 1'd1) $fwrite(my_output, "%d\n", io_out19);
	if (out_en20 == 1'd1) $fwrite(my_output, "%d\n", io_out20);
	if (out_en21 == 1'd1) $fwrite(my_output, "%d\n", io_out21);
	if (out_en22 == 1'd1) $fwrite(my_output, "%d\n", io_out22);
	if (out_en23 == 1'd1) $fwrite(my_output, "%d\n", io_out23);
	if (out_en24 == 1'd1) $fwrite(my_output, "%d\n", io_out24);
	if (out_en25 == 1'd1) $fwrite(my_output, "%d\n", io_out25);
	if (out_en26 == 1'd1) $fwrite(my_output, "%d\n", io_out26);
	if (out_en27 == 1'd1) $fwrite(my_output, "%d\n", io_out27);
	if (out_en28 == 1'd1) $fwrite(my_output, "%d\n", io_out28);
	if (out_en29 == 1'd1) $fwrite(my_output, "%d\n", io_out29);
	if (out_en30 == 1'd1) $fwrite(my_output, "%d\n", io_out30);
	if (out_en31 == 1'd1) $fwrite(my_output, "%d\n", io_out31);
	if (out_en32 == 1'd1) $fwrite(my_output, "%d\n", io_out32);
	if (out_en33 == 1'd1) $fwrite(my_output, "%d\n", io_out33);
	if (out_en34 == 1'd1) $fwrite(my_output, "%d\n", io_out34);
	if (out_en35 == 1'd1) $fwrite(my_output, "%d\n", io_out35);
	if (out_en36 == 1'd1) $fwrite(my_output, "%d\n", io_out36);
	if (out_en37 == 1'd1) $fwrite(my_output, "%d\n", io_out37);
	if (out_en38 == 1'd1) $fwrite(my_output, "%d\n", io_out38);
	if (out_en39 == 1'd1) $fwrite(my_output, "%d\n", io_out39);
	if (out_en40 == 1'd1) $fwrite(my_output, "%d\n", io_out40);
	if (out_en41 == 1'd1) $fwrite(my_output, "%d\n", io_out41);
	if (out_en42 == 1'd1) $fwrite(my_output, "%d\n", io_out42);
	if (out_en43 == 1'd1) $fwrite(my_output, "%d\n", io_out43);
	if (out_en44 == 1'd1) $fwrite(my_output, "%d\n", io_out44);
	if (out_en45 == 1'd1) $fwrite(my_output, "%d\n", io_out45);
	if (out_en46 == 1'd1) $fwrite(my_output, "%d\n", io_out46);
	if (out_en47 == 1'd1) $fwrite(my_output, "%d\n", io_out47);
	if (out_en48 == 1'd1) $fwrite(my_output, "%d\n", io_out48);
	if (out_en49 == 1'd1) $fwrite(my_output, "%d\n", io_out49);
	if (out_en50 == 1'd1) $fwrite(my_output, "%d\n", io_out50);
	if (out_en51 == 1'd1) $fwrite(my_output, "%d\n", io_out51);
	if (out_en52 == 1'd1) $fwrite(my_output, "%d\n", io_out52);
	if (out_en53 == 1'd1) $fwrite(my_output, "%d\n", io_out53);
	if (out_en54 == 1'd1) $fwrite(my_output, "%d\n", io_out54);
	if (out_en55 == 1'd1) $fwrite(my_output, "%d\n", io_out55);
	if (out_en56 == 1'd1) $fwrite(my_output, "%d\n", io_out56);
	if (out_en57 == 1'd1) $fwrite(my_output, "%d\n", io_out57);
	if (out_en58 == 1'd1) $fwrite(my_output, "%d\n", io_out58);
	if (out_en59 == 1'd1) $fwrite(my_output, "%d\n", io_out59);
	if (out_en60 == 1'd1) $fwrite(my_output, "%d\n", io_out60);
	if (out_en61 == 1'd1) $fwrite(my_output, "%d\n", io_out61);
	if (out_en62 == 1'd1) $fwrite(my_output, "%d\n", io_out62);
	if (out_en63 == 1'd1) $fwrite(my_output, "%d\n", io_out63);
	if (out_en64 == 1'd1) $fwrite(my_output, "%d\n", io_out64);
	if (out_en65 == 1'd1) $fwrite(my_output, "%d\n", io_out65);
	if (out_en66 == 1'd1) $fwrite(my_output, "%d\n", io_out66);
	if (out_en67 == 1'd1) $fwrite(my_output, "%d\n", io_out67);
	if (out_en68 == 1'd1) $fwrite(my_output, "%d\n", io_out68);
	if (out_en69 == 1'd1) $fwrite(my_output, "%d\n", io_out69);
	if (out_en70 == 1'd1) $fwrite(my_output, "%d\n", io_out70);
	if (out_en71 == 1'd1) $fwrite(my_output, "%d\n", io_out71);
	if (out_en72 == 1'd1) $fwrite(my_output, "%d\n", io_out72);
	if (out_en73 == 1'd1) $fwrite(my_output, "%d\n", io_out73);
	if (out_en74 == 1'd1) $fwrite(my_output, "%d\n", io_out74);
	if (out_en75 == 1'd1) $fwrite(my_output, "%d\n", io_out75);
end

multicore multicore(clk,in,io_out0,io_out1,io_out2,io_out3,io_out4,io_out5,io_out6,io_out7,io_out8,io_out9,io_out10,io_out11,io_out12,io_out13,io_out14,io_out15,io_out16,io_out17,io_out18,io_out19,io_out20,io_out21,io_out22,io_out23,io_out24,io_out25,io_out26,io_out27,io_out28,io_out29,io_out30,io_out31,io_out32,io_out33,io_out34,io_out35,io_out36,io_out37,io_out38,io_out39,io_out40,io_out41,io_out42,io_out43,io_out44,io_out45,io_out46,io_out47,io_out48,io_out49,io_out50,io_out51,io_out52,io_out53,io_out54,io_out55,io_out56,io_out57,io_out58,io_out59,io_out60,io_out61,io_out62,io_out63,io_out64,io_out65,io_out66,io_out67,io_out68,io_out69,io_out70,io_out71,io_out72,io_out73,io_out74,io_out75,req_in0,req_in1,req_in2,req_in3,req_in4,req_in5,req_in6,req_in7,req_in8,req_in9,req_in10,req_in11,req_in12,req_in13,req_in14,req_in15,req_in16,req_in17,req_in18,req_in19,req_in20,req_in21,req_in22,req_in23,req_in24,req_in25,req_in26,req_in27,req_in28,req_in29,req_in30,req_in31,req_in32,req_in33,req_in34,req_in35,req_in36,req_in37,req_in38,req_in39,req_in40,req_in41,req_in42,req_in43,req_in44,req_in45,req_in46,req_in47,req_in48,req_in49,req_in50,req_in51,req_in52,req_in53,req_in54,req_in55,req_in56,req_in57,req_in58,req_in59,req_in60,req_in61,req_in62,req_in63,req_in64,req_in65,req_in66,req_in67,req_in68,req_in69,req_in70,req_in71,req_in72,req_in73,req_in74,req_in75,out_en0,out_en1,out_en2,out_en3,out_en4,out_en5,out_en6,out_en7,out_en8,out_en9,out_en10,out_en11,out_en12,out_en13,out_en14,out_en15,out_en16,out_en17,out_en18,out_en19,out_en20,out_en21,out_en22,out_en23,out_en24,out_en25,out_en26,out_en27,out_en28,out_en29,out_en30,out_en31,out_en32,out_en33,out_en34,out_en35,out_en36,out_en37,out_en38,out_en39,out_en40,out_en41,out_en42,out_en43,out_en44,out_en45,out_en46,out_en47,out_en48,out_en49,out_en50,out_en51,out_en52,out_en53,out_en54,out_en55,out_en56,out_en57,out_en58,out_en59,out_en60,out_en61,out_en62,out_en63,out_en64,out_en65,out_en66,out_en67,out_en68,out_en69,out_en70,out_en71,out_en72,out_en73,out_en74,out_en75);

endmodule
