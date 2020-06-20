module ula_fx
#(
	parameter NUBITS = 32,
	parameter[NUBITS-1:0] NUGAIN = 64,
	parameter DIV   =  0,
	parameter OR    =  0,
	parameter LOR   =  0,
	parameter GRE   =  0,
	parameter MOD   =  0,
	parameter ADD   =  0,
	parameter MLT   =  0,
	parameter LES   =  0,
	parameter EQU   =  0,
	parameter AND   =  0,
	parameter LAN   =  0,
	parameter INV   =  0,
	parameter LIN   =  0,
	parameter SHR   =  0,
	parameter XOR   =  0,
	parameter SHL   =  0,
	parameter SRS   =  0,
	parameter NRM   =  0,
	parameter ABS   =  0)
(
	input             [       4:0] op,
	input      signed [NUBITS-1:0] in1, in2,
	output     signed [NUBITS-1:0] out
);

// Bitwise --------------------------------------------------------------------

wire        [NUBITS-1:0] us;

generate if ((SHR == 1) || (SHL == 1) || (SRS == 1))
assign us = in2;
endgenerate

wire signed [NUBITS-1:0] div;
wire signed [NUBITS-1:0] orr;
wire signed [NUBITS-1:0] mod;
wire signed [NUBITS-1:0] add;
wire signed [NUBITS-1:0] mlt;
wire signed [NUBITS-1:0] ann;
wire signed [NUBITS-1:0] inv;
wire signed [NUBITS-1:0] shr;
wire signed [NUBITS-1:0] cor;
wire signed [NUBITS-1:0] shl;
wire signed [NUBITS-1:0] srs;
wire signed [NUBITS-1:0] nrm;
reg signed  [NUBITS-1:0] abs;


generate if (DIV == 1) assign div = in1  / in2; else assign div = {NUBITS{1'bx}}; endgenerate
generate if (OR  == 1) assign orr = in1  | in2; else assign orr = {NUBITS{1'bx}}; endgenerate
generate if (MOD == 1) assign mod = in1  % in2; else assign mod = {NUBITS{1'bx}}; endgenerate
generate if (ADD == 1) assign add = in1  + in2; else assign add = {NUBITS{1'bx}}; endgenerate
generate if (MLT == 1) assign mlt = in1  * in2; else assign mlt = {NUBITS{1'bx}}; endgenerate
generate if (AND == 1) assign ann = in1  & in2; else assign ann = {NUBITS{1'bx}}; endgenerate
generate if (INV == 1) assign inv =       ~in2; else assign inv = {NUBITS{1'bx}}; endgenerate
generate if (SHR == 1) assign shr = in1  >> us; else assign shr = {NUBITS{1'bx}}; endgenerate
generate if (XOR == 1) assign cor = in1  ^ in2; else assign cor = {NUBITS{1'bx}}; endgenerate
generate if (SHL == 1) assign shl = in1  << us; else assign shl = {NUBITS{1'bx}}; endgenerate
generate if (SRS == 1) assign srs = in1 >>> us; else assign srs = {NUBITS{1'bx}}; endgenerate
generate if (NRM == 1) assign nrm = in2  / NUGAIN; else assign  nrm = {NUBITS{1'bx}}; endgenerate
generate if (ABS == 1) 
			begin
				always @(*) 
					if(in2[NUBITS-1]) 
						abs = -in2 ;
					else 
						abs = in2; 
			end
			else 
				always@(*) 
					abs = {NUBITS{1'bx}};
endgenerate
			

reg  signed [NUBITS-1:0] ari_out;

always @ (*) begin
	case (op)
		5'd0   : ari_out <=  in2;    // NOP
		5'd1   : ari_out <=  in1;    // LOAD
		5'd2   : ari_out <=  add;    // ADD
		5'd3   : ari_out <=  mlt;    // MLT
		5'd4   : ari_out <=  div;    // DIV
		5'd5   : ari_out <=  mod;    // MOD
		5'd6   : ari_out <=  shl;    // SHL
		5'd7   : ari_out <=  shr;    // SHR
		5'd8   : ari_out <=  srs;    // SRS
		5'd9   : ari_out <=  inv;    // INV
		5'd10  : ari_out <=  ann;    // AND
		5'd11  : ari_out <=  cor;    // XOR
		5'd12  : ari_out <=  orr;    // OR
		5'd16  : ari_out <=  nrm;    // NORM
		5'd17  : ari_out <=  abs;    // ABS
		default: ari_out <= {NUBITS{1'bx}};
	endcase
end

// Logico ---------------------------------------------------------------------

wire les, gre, equ, lin, lan, lor;

generate if  (LES == 1)                assign les = in1  <   in2   ; else assign les = 1'bx; endgenerate
generate if  (GRE == 1)                assign gre = in1  >   in2   ; else assign gre = 1'bx; endgenerate
generate if  (EQU == 1)                assign equ = in1  ==  in2   ; else assign equ = 1'bx; endgenerate
generate if ((LIN == 1) && (INV == 0)) assign lin =         ~in2[0]; else assign lin = 1'bx; endgenerate
generate if ((LAN == 1) && (AND == 0)) assign lan = in1[0] & in2[0]; else assign lan = 1'bx; endgenerate
generate if ((LOR == 1) && (OR  == 0)) assign lor = in1[0] | in2[0]; else assign lor = 1'bx; endgenerate

reg cmp;

always @ (*) begin
	case (op)
		5'd13  : cmp <= les;      // LES
		5'd14  : cmp <= gre;      // GRE
		5'd15  : cmp <= equ;      // EQU
		5'd9   : cmp <= lin;      // LIN
		5'd10  : cmp <= lan;      // LAN
		5'd12  : cmp <= lor;      // LOR
		default: cmp <= 1'bx;
	endcase
end

// Saida ----------------------------------------------------------------------

wire lin_ok, lan_ok, lor_ok;

generate if (LIN == 1) assign lin_ok = (INV == 0) & (op == 5'd9 ); else assign lin_ok = 1'd0; endgenerate
generate if (LAN == 1) assign lan_ok = (AND == 0) & (op == 5'd10); else assign lan_ok = 1'd0; endgenerate
generate if (LOR == 1) assign lor_ok = (OR  == 0) & (op == 5'd12); else assign lor_ok = 1'd0; endgenerate

assign out[NUBITS-1:1] = ari_out[NUBITS-1:1];
assign out[0] = ((op == 5'd13)||(op == 5'd14)||(op == 5'd15) || lin_ok || lan_ok || lor_ok) ? cmp: ari_out[0];

endmodule
