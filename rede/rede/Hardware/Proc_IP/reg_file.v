module reg_file
#(
	parameter MDATAW = 8
	//parameter FFTSIZ = 3
)
(
	input               srf, //inv,
	input  [MDATAW-1:0] in,
	input  [MDATAW-1:0] addr,
	output [MDATAW-1:0] out
);

/* reg [FFTSIZ-1:0] aux;

integer i;

always @ (*) begin
	for (i = 0; i < FFTSIZ; i = i+1) begin : norm
		aux[i] <= in[FFTSIZ-i];
	end
end

wire [MDATAW-1:0] add = (inv) ? {in[MDATAW-1:FFTSIZ+1], aux, in[0]} : in;

assign out = (srf) ? add + addr: addr; */

assign out = (srf) ? in + addr: addr;

endmodule 