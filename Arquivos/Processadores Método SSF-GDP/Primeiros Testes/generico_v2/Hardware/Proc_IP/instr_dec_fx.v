module instr_dec_fx
#(
	parameter NBDATA = 32,              // Numero de bits dos dados
	parameter NBOPCO = 5,               // Numero de bits de opcode
	parameter NBOPER = 9,               // Numero de bits de operando
	parameter MDATAW = 8                // Numero de bits de endereco da memoria de dados
)
(
	input                   clk, rst,
	input      [NBOPCO-1:0] opcode,
	input      [NBOPER-1:0] operand,

	output reg              dsp_push, dsp_pop,

	output reg [       3:0] ula_op,
	output     [NBDATA-1:0] ula_data,

	output reg              mem_wr,
	output     [MDATAW-1:0] mem_addr,
	input      [NBDATA-1:0] mem_data_in,

	input      [NBDATA-1:0] io_in,
	output reg              req_in, out_en,

	output reg              srf
);

always @ (posedge clk or posedge rst) begin
	if (rst) begin
						ula_op  <= 4'd0;
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
	end else case (opcode)
		   0   : begin
						ula_op  <= 4'd0;     // NOP  -> nao faz nada
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   1   : begin
						ula_op  <= 4'd1;     // LOAD -> carrega accumulador com dado da memoria
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   2   : begin
						ula_op  <= 4'd0;     // SET  -> carrega memoria com valor do acumulador
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   3   : begin
						ula_op  <= 4'd4;     // SDIV  -> divide com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   4   : begin
						ula_op  <= 4'd3;     // MULT -> multiplica dado da memoria com o acumulador
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   5   : begin
						ula_op  <= 4'd5;     // SMOD -> modulo da divisao com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   6   : begin
						ula_op  <= 4'd0;     // JZ
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   7   : begin
						ula_op  <= 4'd0;     // JMP
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   8   : begin
						ula_op  <= 4'd0;     // PUSH
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   9   : begin
						ula_op  <= 4'd6;     // SSHL -> shift pra esquerda com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   10  : begin
						ula_op  <= 4'd2;     // SADD -> adicao com a pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   11  : begin
						ula_op  <= 4'd3;     // SMLT -> multiplicacao com a pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   12  : begin
						ula_op  <= 4'd0;     // CALL
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   13  : begin
						ula_op  <= 4'd0;     // RETURN
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   14  : begin
						ula_op  <= 4'd1;     // PLD  -> PUSH e LOAD
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   15  : begin
						ula_op  <= 4'd1;     // SETP -> SET e POP
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   16  : begin
						ula_op  <= 4'd0;     // SRF  -> Set Register File
						srf     <= 1'b1;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   17  : begin
						ula_op  <= 4'd8;     // SSRS -> Shift pra direita com sinal usando a pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   18  : begin
						ula_op  <= 4'd13;    // SLES -> Menor do que com a pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
			19  : begin
						ula_op  <= 4'd15;    // SEQU -> Igual com a pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   21  : begin
						ula_op  <= 4'd1;     // IN   -> Input de dados
						srf     <= 1'b0;
						req_in  <= 1'b1;
						out_en  <= 1'b0;
					end
		   22  : begin
						ula_op  <= 4'd0;     // OUT  -> Output de Dados
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b1;
					end
		   23  : begin
						ula_op  <= 4'd7;     // SSHR  -> Shift pra direita com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   24  : begin
						ula_op  <= 4'd9;     // INV  -> Inverte bit a bit o acumulador
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   25  : begin
						ula_op  <= 4'd10;    // SAND -> and bit a bit com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   26  : begin
						ula_op  <= 4'd11;    // SXOR -> ou exclusivo bit a bit com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   27  : begin
						ula_op  <= 4'd12;    // SOR -> ou bit a bit com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		   28  : begin
						ula_op  <= 4'd14;    // SGRE -> maior do que com pilha
						srf     <= 1'b0;
						req_in  <= 1'b0;
						out_en  <= 1'b0;
					end
		default: begin
						ula_op  <= 4'dx;
						srf     <= 1'bx;
						req_in  <= 1'bx;
						out_en  <= 1'bx;
					end
	endcase
end

always @ (*) begin
	case (opcode)
		   0 : begin                        // NOP
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   1 : begin                        // LOAD
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   2 : begin                        // SET
						mem_wr   <= 1'b1;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   3 : begin                        // SDIV
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   4 : begin                        // MULT
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   5 : begin                        // SMOD
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   6 : begin                        // JZ
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   7 : begin                        // JMP
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   8 : begin                        // PUSH
						mem_wr   <= 1'b1;
						dsp_push <= 1'b1;
						dsp_pop  <= 1'b0;
					end
		   9 : begin                        // SSHL
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   10: begin                        // SADD
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   11: begin                        // SMLT
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   12: begin                        // CALL
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   13: begin                        // RETURN
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   14: begin                        // PLD
						mem_wr   <= 1'b1;
						dsp_push <= 1'b1;
						dsp_pop  <= 1'b0;
					end
		   15: begin                        // SETP
						mem_wr   <= 1'b1;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   16: begin                        // SRF -> Set Register File
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   17: begin                        // SSRS
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   18: begin                        // SLES
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
			19: begin                        // SEQU
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   21: begin                        // IN
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   22: begin                        // OUT
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   23: begin                        // SSHR
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   24: begin                        // INV
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b0;
					end
		   25: begin                        // SAND
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   26: begin                        // SXOR
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   27: begin                        // SOR
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		   28: begin                        // SGRE
						mem_wr   <= 1'b0;
						dsp_push <= 1'b0;
						dsp_pop  <= 1'b1;
					end
		default: begin
						mem_wr   <= 1'bx;
						dsp_push <= 1'bx;
						dsp_pop  <= 1'bx;
					end
	endcase
end

assign ula_data = (req_in) ? io_in : mem_data_in;
assign mem_addr = operand[MDATAW-1:0];

endmodule 