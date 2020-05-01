module multicore(
	input clk, rst,
	input signed [31:0] io_in,
	output signed [31:0] io_out0, io_out1, io_out2, io_out3,
	output [1:0] req_in0, req_in1, req_in2, req_in3,
	output [1:0] out_en0, out_en1, out_en2, out_en3
);

reg rst0, rst1, rst2, rst3;
reg signed [31:0] my_io_out;
reg [1:0] my_out_en;

initial begin   					//(usa quando tem o while 1==1)
//always @(posedge clk) begin		//(usa quando não tem o while 1==1)
	rst0 = 1;
	rst1 = 1;
	rst2 = 1;
	rst3 = 1;
	#424 rst0 = 0;
	#424 rst1 = 0;
	#424 rst2 = 0;
	#61056 rst3 = 0; #424;	//equivale ao tempo de operação dos outros processadores
end

always @(*) begin
	if (out_en0 ==1) begin
		my_io_out <= io_out0;
		my_out_en <= out_en0;
		end else
	if (out_en1 ==1) begin
		my_io_out <= io_out1;
		my_out_en <= out_en1;
		end else
	if (out_en2 ==1) begin
		my_io_out <= io_out2;
		my_out_en <= out_en2;
		end else
	if (out_en3 ==1) begin
		my_io_out <= io_out3;
		my_out_en <= out_en3;
		end else begin
		my_io_out <= 0;
		my_out_en <= 0;
		end
end

//proc_fix proc_fix (clk, rst, io_in, io_out, req_in, out_en);
proc_fix proc_fix0(clk, rst0, io_in, io_out0, req_in0, out_en0);
proc_fix proc_fix1(clk, rst1, io_in, io_out1, req_in1, out_en1);
proc_fix proc_fix2 (clk, rst2, io_in, io_out2, req_in2, out_en2);
proc_fix proc_fix3 (clk, rst3, io_in, io_out3, req_in3, out_en3);

endmodule
