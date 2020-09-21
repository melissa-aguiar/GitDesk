module positivo_fx
#(
	parameter NUBITS = 32,
	parameter NUGAIN = 128
)

(
	input  [NUBITS-1:0] acc,
	input 		   neg,norm,
	output [NUBITS-1:0] out
);

reg  [NUBITS-1:0] x;


always @(*) begin

	if ((acc[NUBITS-1] == 1) && (neg ==1))
		x <= 0;	
	else
		if(norm ==1)
			x <= acc/NUGAIN;
		else
			x <= acc;	
end

assign out = x;

endmodule
