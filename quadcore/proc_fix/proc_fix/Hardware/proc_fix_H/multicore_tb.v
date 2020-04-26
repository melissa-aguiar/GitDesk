module multicore_tb();

reg         		 clk;//, rst;
wire			[ 1:0] req_in0, req_in1, req_in2, req_in3;
reg signed  [31:0] in;
wire signed [31:0] io_out0, io_out1, io_out2, io_out3;
wire 			[ 1:0] out_en0, out_en1, out_en2, out_en3;
integer 				 data_file, scan_file, my_output;



initial begin 
	//data_file = $fopen("signalN_48b7e_30.txt", "r");
	data_file = $fopen("signalN.txt", "r");
	my_output = $fopen("myoutput.txt", "w");
	scan_file = $fscanf(data_file, "%d\n", in);
	clk = 0;
	//rst  = 1;
	//#1 rst = 0;
end

always #1 clk = ~clk;



always @(posedge clk) begin
	if ((req_in0 || req_in1 || req_in2 || req_in3) == 1'd1)
		scan_file = $fscanf(data_file, "%d\n", in);
end

always @ (posedge clk) begin
	//if ((out_en || out_en0 || out_en1 || out_en2 || out_en3) == 1'd1)
	//if (out_en == 1'd1)
		//$fwrite(my_output, "%d\n", io_out);
		if (out_en0 == 1'd1)
		$fwrite(my_output, "%d\n", io_out0);
		if (out_en1 == 1'd1)
		$fwrite(my_output, "%d\n", io_out1);
		if (out_en2 == 1'd1)
		$fwrite(my_output, "%d\n", io_out2);
		if (out_en3 == 1'd1)
		$fwrite(my_output, "%d\n", io_out3);
end





multicore multicore(clk, in, io_out0, io_out1, io_out2, io_out3, req_in0, req_in1, req_in2, req_in3, out_en0, out_en1, out_en2, out_en3);

endmodule
