module proc_fl
#(
	// parametros para serem configurados externamente -------------------------

	parameter NBMANT = 16,              // Numero de bits da Mantissa
	parameter NBEXPO = 6,               // Numero de bits do Expoente
	parameter MDATAS = 56,              // Numero de enderecos da memoria de dados
	parameter MINSTS = 410,             // Numero de enderecos da memoria de intrucoes
	parameter SDEPTH = 5,               // Numero de bits de endereco da pilha de subrotinas
	parameter NUIOIN = 8,               // Numero de enderecos de IO - entrada
	parameter NUIOOU = 8,               // Numero de ebderecos de IO - saida
	parameter DFILE = "data.mif",       // Inicializacao da memoria de dados
	parameter IFILE = "inst.mif",       // Inicializacao da memoria de programa
	parameter DIV   =  0,               // Cria circuito de divisao

	// parametros configurados internamente ------------------------------------

	parameter NBOPCO = 5,               // Numero de bits de opcode
	parameter MDATAW = $clog2(MDATAS),  // Numero de bits de endereco da memoria de dados
	parameter MINSTW = $clog2(MINSTS)   // Numero de bits de endereco da memoria de instrucao
)
(
	input                              clk, rst,
	input         [NBMANT+NBEXPO   :0] io_in,
	output        [NBMANT+NBEXPO   :0] io_out,
	output        [$clog2(NUIOIN)-1:0] addr_in,
	output        [$clog2(NUIOOU)-1:0] addr_out,
	output                             req_in, out_en
);

// Processador e Mem de instrucao ---------------------------------------------

wire        [MINSTW-1     :0] instr_addr;
wire                          mem_wr;
wire        [MDATAW-1     :0] mem_addr_w, mem_addr_r;
wire signed [NBMANT+NBEXPO:0] mem_data_in;
wire signed [NBMANT+NBEXPO:0] mem_data_out;

assign io_out = mem_data_out;

generate

if (MDATAW > MINSTW) begin

wire [NBOPCO+MDATAW-1:0] instr;

core_fl #(.NBMANT(NBMANT),
          .NBEXPO(NBEXPO),
          .NBOPCO(NBOPCO),
          .MDATAW(MDATAW),
          .MINSTW(MINSTW),
          .SDEPTH(SDEPTH),
          .NBOPER(MDATAW),
          .MDATAS(MDATAS),
          .NUIOIN(NUIOIN),
          .NUIOOU(NUIOOU),
          .DIV   (DIV)  )  core(clk, rst,
                                instr, instr_addr,
                                mem_wr, mem_addr_w, mem_addr_r, mem_data_in, mem_data_out,
                                io_in, addr_in, addr_out, req_in, out_en);

mem_instr # (.NADDRE(MINSTS),
             .NBDATA(NBOPCO+MDATAW),
             .FNAME(IFILE)) minstr(clk, instr_addr, instr);

end else begin

wire [NBOPCO+MINSTW-1:0] instr;

core_fl #(.NBMANT(NBMANT),
          .NBEXPO(NBEXPO),
          .NBOPCO(NBOPCO),
          .MDATAW(MDATAW),
          .MINSTW(MINSTW),
          .SDEPTH(SDEPTH),
          .NBOPER(MINSTW),
          .MDATAS(MDATAS),
          .NUIOIN(NUIOIN),
          .NUIOOU(NUIOOU),
          .DIV   (DIV)  )  core(clk, rst,
                                instr, instr_addr,
                                mem_wr, mem_addr_w, mem_addr_r, mem_data_in, mem_data_out,
                                io_in, addr_in, addr_out, req_in, out_en);

mem_instr # (.NADDRE(MINSTS),
             .NBDATA(NBOPCO+MINSTW),
             .FNAME(IFILE)) minstr(clk, instr_addr, instr);

end

endgenerate

// Memoria de dados -----------------------------------------------------------

mem_data # (.NADDRE(MDATAS),
            .NBDATA(NBMANT+NBEXPO+1),
            .FNAME(DFILE)) mdata(clk, mem_wr, mem_addr_w, mem_addr_r, mem_data_out, mem_data_in);

endmodule 