module ssfblackbox_tb();
	reg clk;
	wire [1:0] req_in;
	reg signed [31:0] in;
	wire signed [31:0] my_io_out;
	wire [1:0] my_out_en;
	integer data_file, scan_file, my_output;

initial begin 
	data_file = $fopen("signalN.txt", "r");
	my_output = $fopen("myoutput.txt", "w");
	scan_file = $fscanf(data_file, "%d\n", in);
	clk = 0;
end

always #2084 clk = ~clk;

always @(posedge clk) begin
	if (req_in == 1'd1) scan_file = $fscanf(data_file, "%d\n", in);
end

always @(posedge clk) begin
	if (my_out_en == 1'd1) $fwrite(my_output, "%d\n", my_io_out);
end

ssfblackbox ssfblackbox(clk,in,my_io_out,req_in,my_out_en);

endmodule
