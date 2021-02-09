module multicore_tb();
	reg clk;
	wire [3:0] req_in0, req_in1, req_in2, req_in3, req_in4, req_in5, req_in6, req_in7, req_in8, req_in9, req_in10, req_in11, req_in12, req_in13, req_in14, req_in15, req_in16, req_in17, req_in18, req_in19, req_in20, req_in21, req_in22, req_in23, req_in24, req_in25, req_in26, req_in27, req_in28, req_in29, req_in30, req_in31, req_in32, req_in33, req_in34, req_in35, req_in36, req_in37, req_in38, req_in39, req_in40, req_in41, req_in42, req_in43, req_in44, req_in45, req_in46, req_in47, req_in48, req_in49, req_in50;
	reg signed [18:0] in;
	wire signed [27:0] io_out0, io_out1, io_out2, io_out3, io_out4, io_out5, io_out6, io_out7, io_out8, io_out9, io_out10, io_out11, io_out12, io_out13, io_out14, io_out15, io_out16, io_out17, io_out18, io_out19, io_out20, io_out21, io_out22, io_out23, io_out24, io_out25, io_out26, io_out27, io_out28, io_out29, io_out30, io_out31, io_out32, io_out33, io_out34, io_out35, io_out36, io_out37, io_out38, io_out39, io_out40, io_out41, io_out42, io_out43, io_out44, io_out45, io_out46, io_out47, io_out48, io_out49, io_out50;
	wire [3:0] out_en0, out_en1, out_en2, out_en3, out_en4, out_en5, out_en6, out_en7, out_en8, out_en9, out_en10, out_en11, out_en12, out_en13, out_en14, out_en15, out_en16, out_en17, out_en18, out_en19, out_en20, out_en21, out_en22, out_en23, out_en24, out_en25, out_en26, out_en27, out_en28, out_en29, out_en30, out_en31, out_en32, out_en33, out_en34, out_en35, out_en36, out_en37, out_en38, out_en39, out_en40, out_en41, out_en42, out_en43, out_en44, out_en45, out_en46, out_en47, out_en48, out_en49, out_en50;
	integer data_file, scan_file, my_output;

initial begin 
	data_file = $fopen("sinal_entrada.txt", "r");
	my_output = $fopen("myoutput.txt", "w");
	scan_file = $fscanf(data_file, "%d\n", in);
	clk = 0;
end

always #2048 clk = ~clk;

always @(posedge clk) begin
	if ((req_in0 || req_in1 || req_in2 || req_in3 || req_in4 || req_in5 || req_in6 || req_in7 || req_in8 || req_in9 || req_in10 || req_in11 || req_in12 || req_in13 || req_in14 || req_in15 || req_in16 || req_in17 || req_in18 || req_in19 || req_in20 || req_in21 || req_in22 || req_in23 || req_in24 || req_in25 || req_in26 || req_in27 || req_in28 || req_in29 || req_in30 || req_in31 || req_in32 || req_in33 || req_in34 || req_in35 || req_in36 || req_in37 || req_in38 || req_in39 || req_in40 || req_in41 || req_in42 || req_in43 || req_in44 || req_in45 || req_in46 || req_in47 || req_in48 || req_in49 || req_in50) == 4'd1)
		scan_file = $fscanf(data_file, "%d\n", in);
end

always @(posedge clk) begin
	if (out_en0 == 4'd1) $fwrite(my_output, "%d\n", io_out0);
	if (out_en1 == 4'd1) $fwrite(my_output, "%d\n", io_out1);
	if (out_en2 == 4'd1) $fwrite(my_output, "%d\n", io_out2);
	if (out_en3 == 4'd1) $fwrite(my_output, "%d\n", io_out3);
	if (out_en4 == 4'd1) $fwrite(my_output, "%d\n", io_out4);
	if (out_en5 == 4'd1) $fwrite(my_output, "%d\n", io_out5);
	if (out_en6 == 4'd1) $fwrite(my_output, "%d\n", io_out6);
	if (out_en7 == 4'd1) $fwrite(my_output, "%d\n", io_out7);
	if (out_en8 == 4'd1) $fwrite(my_output, "%d\n", io_out8);
	if (out_en9 == 4'd1) $fwrite(my_output, "%d\n", io_out9);
	if (out_en10 == 4'd1) $fwrite(my_output, "%d\n", io_out10);
	if (out_en11 == 4'd1) $fwrite(my_output, "%d\n", io_out11);
	if (out_en12 == 4'd1) $fwrite(my_output, "%d\n", io_out12);
	if (out_en13 == 4'd1) $fwrite(my_output, "%d\n", io_out13);
	if (out_en14 == 4'd1) $fwrite(my_output, "%d\n", io_out14);
	if (out_en15 == 4'd1) $fwrite(my_output, "%d\n", io_out15);
	if (out_en16 == 4'd1) $fwrite(my_output, "%d\n", io_out16);
	if (out_en17 == 4'd1) $fwrite(my_output, "%d\n", io_out17);
	if (out_en18 == 4'd1) $fwrite(my_output, "%d\n", io_out18);
	if (out_en19 == 4'd1) $fwrite(my_output, "%d\n", io_out19);
	if (out_en20 == 4'd1) $fwrite(my_output, "%d\n", io_out20);
	if (out_en21 == 4'd1) $fwrite(my_output, "%d\n", io_out21);
	if (out_en22 == 4'd1) $fwrite(my_output, "%d\n", io_out22);
	if (out_en23 == 4'd1) $fwrite(my_output, "%d\n", io_out23);
	if (out_en24 == 4'd1) $fwrite(my_output, "%d\n", io_out24);
	if (out_en25 == 4'd1) $fwrite(my_output, "%d\n", io_out25);
	if (out_en26 == 4'd1) $fwrite(my_output, "%d\n", io_out26);
	if (out_en27 == 4'd1) $fwrite(my_output, "%d\n", io_out27);
	if (out_en28 == 4'd1) $fwrite(my_output, "%d\n", io_out28);
	if (out_en29 == 4'd1) $fwrite(my_output, "%d\n", io_out29);
	if (out_en30 == 4'd1) $fwrite(my_output, "%d\n", io_out30);
	if (out_en31 == 4'd1) $fwrite(my_output, "%d\n", io_out31);
	if (out_en32 == 4'd1) $fwrite(my_output, "%d\n", io_out32);
	if (out_en33 == 4'd1) $fwrite(my_output, "%d\n", io_out33);
	if (out_en34 == 4'd1) $fwrite(my_output, "%d\n", io_out34);
	if (out_en35 == 4'd1) $fwrite(my_output, "%d\n", io_out35);
	if (out_en36 == 4'd1) $fwrite(my_output, "%d\n", io_out36);
	if (out_en37 == 4'd1) $fwrite(my_output, "%d\n", io_out37);
	if (out_en38 == 4'd1) $fwrite(my_output, "%d\n", io_out38);
	if (out_en39 == 4'd1) $fwrite(my_output, "%d\n", io_out39);
	if (out_en40 == 4'd1) $fwrite(my_output, "%d\n", io_out40);
	if (out_en41 == 4'd1) $fwrite(my_output, "%d\n", io_out41);
	if (out_en42 == 4'd1) $fwrite(my_output, "%d\n", io_out42);
	if (out_en43 == 4'd1) $fwrite(my_output, "%d\n", io_out43);
	if (out_en44 == 4'd1) $fwrite(my_output, "%d\n", io_out44);
	if (out_en45 == 4'd1) $fwrite(my_output, "%d\n", io_out45);
	if (out_en46 == 4'd1) $fwrite(my_output, "%d\n", io_out46);
	if (out_en47 == 4'd1) $fwrite(my_output, "%d\n", io_out47);
	if (out_en48 == 4'd1) $fwrite(my_output, "%d\n", io_out48);
	if (out_en49 == 4'd1) $fwrite(my_output, "%d\n", io_out49);
	if (out_en50 == 4'd1) $fwrite(my_output, "%d\n", io_out50);
end

multicore multicore(clk,in,io_out0,io_out1,io_out2,io_out3,io_out4,io_out5,io_out6,io_out7,io_out8,io_out9,io_out10,io_out11,io_out12,io_out13,io_out14,io_out15,io_out16,io_out17,io_out18,io_out19,io_out20,io_out21,io_out22,io_out23,io_out24,io_out25,io_out26,io_out27,io_out28,io_out29,io_out30,io_out31,io_out32,io_out33,io_out34,io_out35,io_out36,io_out37,io_out38,io_out39,io_out40,io_out41,io_out42,io_out43,io_out44,io_out45,io_out46,io_out47,io_out48,io_out49,io_out50,req_in0,req_in1,req_in2,req_in3,req_in4,req_in5,req_in6,req_in7,req_in8,req_in9,req_in10,req_in11,req_in12,req_in13,req_in14,req_in15,req_in16,req_in17,req_in18,req_in19,req_in20,req_in21,req_in22,req_in23,req_in24,req_in25,req_in26,req_in27,req_in28,req_in29,req_in30,req_in31,req_in32,req_in33,req_in34,req_in35,req_in36,req_in37,req_in38,req_in39,req_in40,req_in41,req_in42,req_in43,req_in44,req_in45,req_in46,req_in47,req_in48,req_in49,req_in50,out_en0,out_en1,out_en2,out_en3,out_en4,out_en5,out_en6,out_en7,out_en8,out_en9,out_en10,out_en11,out_en12,out_en13,out_en14,out_en15,out_en16,out_en17,out_en18,out_en19,out_en20,out_en21,out_en22,out_en23,out_en24,out_en25,out_en26,out_en27,out_en28,out_en29,out_en30,out_en31,out_en32,out_en33,out_en34,out_en35,out_en36,out_en37,out_en38,out_en39,out_en40,out_en41,out_en42,out_en43,out_en44,out_en45,out_en46,out_en47,out_en48,out_en49,out_en50);

endmodule
