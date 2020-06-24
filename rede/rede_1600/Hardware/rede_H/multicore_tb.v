module multicore_tb();
	reg clk;
	wire [3:0] req_in0, req_in1, req_in2, req_in3, req_in4, req_in5, req_in6, req_in7, req_in8, req_in9, req_in10, req_in11, req_in12, req_in13, req_in14, req_in15, req_in16, req_in17, req_in18, req_in19, req_in20, req_in21, req_in22, req_in23;
	reg signed [30:0] in;
	wire signed [30:0] io_out0, io_out1, io_out2, io_out3, io_out4, io_out5, io_out6, io_out7, io_out8, io_out9, io_out10, io_out11, io_out12, io_out13, io_out14, io_out15, io_out16, io_out17, io_out18, io_out19, io_out20, io_out21, io_out22, io_out23;
	wire [3:0] out_en0, out_en1, out_en2, out_en3, out_en4, out_en5, out_en6, out_en7, out_en8, out_en9, out_en10, out_en11, out_en12, out_en13, out_en14, out_en15, out_en16, out_en17, out_en18, out_en19, out_en20, out_en21, out_en22, out_en23;
	integer data_file, scan_file, my_output;

initial begin 
	data_file = $fopen("sinaladc.txt", "r");
	my_output = $fopen("myoutput.txt", "w");
	scan_file = $fscanf(data_file, "%d\n", in);
	clk = 0;
end

always #625 clk = ~clk;

always @(posedge clk) begin
	if ((req_in0 || req_in1 || req_in2 || req_in3 || req_in4 || req_in5 || req_in6 || req_in7 || req_in8 || req_in9 || req_in10 || req_in11 || req_in12 || req_in13 || req_in14 || req_in15 || req_in16 || req_in17 || req_in18 || req_in19 || req_in20 || req_in21 || req_in22 || req_in23) == 1'd1)
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
end

multicore multicore(clk,in,io_out0,io_out1,io_out2,io_out3,io_out4,io_out5,io_out6,io_out7,io_out8,io_out9,io_out10,io_out11,io_out12,io_out13,io_out14,io_out15,io_out16,io_out17,io_out18,io_out19,io_out20,io_out21,io_out22,io_out23,req_in0,req_in1,req_in2,req_in3,req_in4,req_in5,req_in6,req_in7,req_in8,req_in9,req_in10,req_in11,req_in12,req_in13,req_in14,req_in15,req_in16,req_in17,req_in18,req_in19,req_in20,req_in21,req_in22,req_in23,out_en0,out_en1,out_en2,out_en3,out_en4,out_en5,out_en6,out_en7,out_en8,out_en9,out_en10,out_en11,out_en12,out_en13,out_en14,out_en15,out_en16,out_en17,out_en18,out_en19,out_en20,out_en21,out_en22,out_en23);

endmodule
