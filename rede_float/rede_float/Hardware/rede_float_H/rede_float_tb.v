module rede_float_tb();

reg         		 clk, rst;
wire			[ 3:0] req_in;
reg signed  [18:0] in;
wire signed [27:0] io_out;
wire 			[ 3:0] out_en;
integer 				 data_file, scan_file, my_output;


initial begin 
	data_file = $fopen("sinaladc.txt", "r");
	my_output = $fopen("myoutput.txt", "w");
	scan_file = $fscanf(data_file, "%d\n", in);
	clk = 0;
	rst = 1;
	#10 rst = 0;
end

always #1 clk = ~clk;

always @(posedge clk) begin
	if (req_in == 4'd1)
		scan_file = $fscanf(data_file, "%d\n", in);
end

always @ (posedge clk) begin
	if (out_en == 4'd1)
		$fwrite(my_output, "%f\n", io_out);
end

rede_float rede_float(clk, rst, in, io_out, req_in, out_en);

endmodule
