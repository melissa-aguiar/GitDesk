module ula_fx
#(
	parameter NBITS = 32
)
(
	input             [      3:0] op,
	input      signed [NBITS-1:0] in1, in2,
	output     signed [NBITS-1:0] out
);

// Bitwise --------------------------------------------------------------------

reg  signed [NBITS-1:0] ari_out;
wire        [NBITS-1:0] us = in2;

always @ (*) begin
	case (op)
		4'd0   : ari_out <=        in2;    // NOP
		4'd1   : ari_out <=        in1;    // LOAD
		4'd2   : ari_out <=  in1 + in2;    // ADD
		4'd3   : ari_out <=  in1 * in2;    // MLT
		4'd4   : ari_out <=  in1 / in2;    // DIV
		4'd5   : ari_out <=  in1 % in2;    // MOD
		4'd6   : ari_out <=  in1 << us;    // SHL
		4'd7   : ari_out <=  in1 >> us;    // SHR
		4'd8   : ari_out <=  in1>>> us;    // SRS
		4'd9   : ari_out <=       ~in2;    // INV
		4'd10  : ari_out <=  in1 & in2;    // AND
		4'd11  : ari_out <=  in1 ^ in2;    // XOR
		4'd12  : ari_out <=  in1 | in2;    // OR
		default: ari_out <= {NBITS{1'bx}};
	endcase
end

// Logico ---------------------------------------------------------------------

reg cmp;

always @ (*) begin
	case (op)
		4'd13  : cmp <= (in1 <  in2);      // LES
		4'd14  : cmp <= (in1 >  in2);      // GRE
		4'd15  : cmp <= (in1 == in2);      // EQU
		default: cmp <= 1'bx;
	endcase
end

// Saida ----------------------------------------------------------------------

assign out[NBITS-1:1] = ari_out[NBITS-1:1];
assign out[0] = (op < 4'd13) ? ari_out[0] : cmp;

endmodule 