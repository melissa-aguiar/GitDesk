module teste_tb();

reg         clk, rst;
reg  [15:0] in;
wire [32:0] io_out;
wire [ 3:0] req_in;
wire [ 3:0] out_en;

initial begin 
	clk = 0;
	in  = 1;
	rst = 1;
	#10 rst = 0;
end

always #1 clk = ~clk;

sapho_final sapho_final(clk, rst, in, io_out, req_in, out_en);

endmodule
