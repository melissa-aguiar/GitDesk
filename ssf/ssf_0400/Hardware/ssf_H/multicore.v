module multicore (
	input clk,
	input signed [31:0] io_in,
	output signed [31:0] io_out0, io_out1, io_out2, io_out3, io_out4, io_out5, io_out6, io_out7, io_out8, io_out9, io_out10, io_out11, io_out12, io_out13, io_out14, io_out15, io_out16, io_out17, io_out18, io_out19, io_out20, io_out21, io_out22, io_out23, io_out24, io_out25, io_out26, io_out27, io_out28, io_out29, io_out30, io_out31, io_out32, io_out33, io_out34, io_out35, io_out36, io_out37, io_out38, io_out39, io_out40, io_out41, io_out42, io_out43, io_out44, io_out45, io_out46, io_out47, io_out48, io_out49, io_out50, io_out51, io_out52, io_out53, io_out54, io_out55, io_out56, io_out57, io_out58, io_out59, io_out60, io_out61, io_out62, io_out63, io_out64, io_out65, io_out66, io_out67, io_out68, io_out69, io_out70, io_out71, io_out72, io_out73, io_out74, io_out75, io_out76, io_out77, io_out78, io_out79, io_out80, io_out81, io_out82, io_out83, io_out84, io_out85, io_out86, io_out87, io_out88, io_out89, io_out90, io_out91, io_out92, io_out93, io_out94, io_out95, io_out96, io_out97, io_out98, io_out99, io_out100, io_out101, io_out102, io_out103, io_out104, io_out105, io_out106, io_out107, io_out108, io_out109, io_out110, 
	output [1:0] req_in0, req_in1, req_in2, req_in3, req_in4, req_in5, req_in6, req_in7, req_in8, req_in9, req_in10, req_in11, req_in12, req_in13, req_in14, req_in15, req_in16, req_in17, req_in18, req_in19, req_in20, req_in21, req_in22, req_in23, req_in24, req_in25, req_in26, req_in27, req_in28, req_in29, req_in30, req_in31, req_in32, req_in33, req_in34, req_in35, req_in36, req_in37, req_in38, req_in39, req_in40, req_in41, req_in42, req_in43, req_in44, req_in45, req_in46, req_in47, req_in48, req_in49, req_in50, req_in51, req_in52, req_in53, req_in54, req_in55, req_in56, req_in57, req_in58, req_in59, req_in60, req_in61, req_in62, req_in63, req_in64, req_in65, req_in66, req_in67, req_in68, req_in69, req_in70, req_in71, req_in72, req_in73, req_in74, req_in75, req_in76, req_in77, req_in78, req_in79, req_in80, req_in81, req_in82, req_in83, req_in84, req_in85, req_in86, req_in87, req_in88, req_in89, req_in90, req_in91, req_in92, req_in93, req_in94, req_in95, req_in96, req_in97, req_in98, req_in99, req_in100, req_in101, req_in102, req_in103, req_in104, req_in105, req_in106, req_in107, req_in108, req_in109, req_in110, 
	output [1:0] out_en0, out_en1, out_en2, out_en3, out_en4, out_en5, out_en6, out_en7, out_en8, out_en9, out_en10, out_en11, out_en12, out_en13, out_en14, out_en15, out_en16, out_en17, out_en18, out_en19, out_en20, out_en21, out_en22, out_en23, out_en24, out_en25, out_en26, out_en27, out_en28, out_en29, out_en30, out_en31, out_en32, out_en33, out_en34, out_en35, out_en36, out_en37, out_en38, out_en39, out_en40, out_en41, out_en42, out_en43, out_en44, out_en45, out_en46, out_en47, out_en48, out_en49, out_en50, out_en51, out_en52, out_en53, out_en54, out_en55, out_en56, out_en57, out_en58, out_en59, out_en60, out_en61, out_en62, out_en63, out_en64, out_en65, out_en66, out_en67, out_en68, out_en69, out_en70, out_en71, out_en72, out_en73, out_en74, out_en75, out_en76, out_en77, out_en78, out_en79, out_en80, out_en81, out_en82, out_en83, out_en84, out_en85, out_en86, out_en87, out_en88, out_en89, out_en90, out_en91, out_en92, out_en93, out_en94, out_en95, out_en96, out_en97, out_en98, out_en99, out_en100, out_en101, out_en102, out_en103, out_en104, out_en105, out_en106, out_en107, out_en108, out_en109, out_en110
);

reg rst0, rst1, rst2, rst3, rst4, rst5, rst6, rst7, rst8, rst9, rst10, rst11, rst12, rst13, rst14, rst15, rst16, rst17, rst18, rst19, rst20, rst21, rst22, rst23, rst24, rst25, rst26, rst27, rst28, rst29, rst30, rst31, rst32, rst33, rst34, rst35, rst36, rst37, rst38, rst39, rst40, rst41, rst42, rst43, rst44, rst45, rst46, rst47, rst48, rst49, rst50, rst51, rst52, rst53, rst54, rst55, rst56, rst57, rst58, rst59, rst60, rst61, rst62, rst63, rst64, rst65, rst66, rst67, rst68, rst69, rst70, rst71, rst72, rst73, rst74, rst75, rst76, rst77, rst78, rst79, rst80, rst81, rst82, rst83, rst84, rst85, rst86, rst87, rst88, rst89, rst90, rst91, rst92, rst93, rst94, rst95, rst96, rst97, rst98, rst99, rst100, rst101, rst102, rst103, rst104, rst105, rst106, rst107, rst108, rst109, rst110;
reg signed [31:0] my_io_out;
reg [1:0] my_out_en;
reg [8:0] q;
reg [12:0] cnt;


initial begin
	rst0 = 1;
	rst1 = 1;
	rst2 = 1;
	rst3 = 1;
	rst4 = 1;
	rst5 = 1;
	rst6 = 1;
	rst7 = 1;
	rst8 = 1;
	rst9 = 1;
	rst10 = 1;
	rst11 = 1;
	rst12 = 1;
	rst13 = 1;
	rst14 = 1;
	rst15 = 1;
	rst16 = 1;
	rst17 = 1;
	rst18 = 1;
	rst19 = 1;
	rst20 = 1;
	rst21 = 1;
	rst22 = 1;
	rst23 = 1;
	rst24 = 1;
	rst25 = 1;
	rst26 = 1;
	rst27 = 1;
	rst28 = 1;
	rst29 = 1;
	rst30 = 1;
	rst31 = 1;
	rst32 = 1;
	rst33 = 1;
	rst34 = 1;
	rst35 = 1;
	rst36 = 1;
	rst37 = 1;
	rst38 = 1;
	rst39 = 1;
	rst40 = 1;
	rst41 = 1;
	rst42 = 1;
	rst43 = 1;
	rst44 = 1;
	rst45 = 1;
	rst46 = 1;
	rst47 = 1;
	rst48 = 1;
	rst49 = 1;
	rst50 = 1;
	rst51 = 1;
	rst52 = 1;
	rst53 = 1;
	rst54 = 1;
	rst55 = 1;
	rst56 = 1;
	rst57 = 1;
	rst58 = 1;
	rst59 = 1;
	rst60 = 1;
	rst61 = 1;
	rst62 = 1;
	rst63 = 1;
	rst64 = 1;
	rst65 = 1;
	rst66 = 1;
	rst67 = 1;
	rst68 = 1;
	rst69 = 1;
	rst70 = 1;
	rst71 = 1;
	rst72 = 1;
	rst73 = 1;
	rst74 = 1;
	rst75 = 1;
	rst76 = 1;
	rst77 = 1;
	rst78 = 1;
	rst79 = 1;
	rst80 = 1;
	rst81 = 1;
	rst82 = 1;
	rst83 = 1;
	rst84 = 1;
	rst85 = 1;
	rst86 = 1;
	rst87 = 1;
	rst88 = 1;
	rst89 = 1;
	rst90 = 1;
	rst91 = 1;
	rst92 = 1;
	rst93 = 1;
	rst94 = 1;
	rst95 = 1;
	rst96 = 1;
	rst97 = 1;
	rst98 = 1;
	rst99 = 1;
	rst100 = 1;
	rst101 = 1;
	rst102 = 1;
	rst103 = 1;
	rst104 = 1;
	rst105 = 1;
	rst106 = 1;
	rst107 = 1;
	rst108 = 1;
	rst109 = 1;
	rst110 = 1;
	q = 0;
	cnt = 0;
end

always @(posedge clk) begin
	case (q)
		0: begin rst0 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		1: begin rst1 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		2: begin rst2 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		3: begin rst3 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		4: begin rst4 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		5: begin rst5 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		6: begin rst6 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		7: begin rst7 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		8: begin rst8 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		9: begin rst9 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		10: begin rst10 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		11: begin rst11 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		12: begin rst12 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		13: begin rst13 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		14: begin rst14 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		15: begin rst15 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		16: begin rst16 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		17: begin rst17 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		18: begin rst18 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		19: begin rst19 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		20: begin rst20 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		21: begin rst21 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		22: begin rst22 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		23: begin rst23 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		24: begin rst24 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		25: begin rst25 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		26: begin rst26 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		27: begin rst27 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		28: begin rst28 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		29: begin rst29 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		30: begin rst30 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		31: begin rst31 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		32: begin rst32 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		33: begin rst33 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		34: begin rst34 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		35: begin rst35 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		36: begin rst36 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		37: begin rst37 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		38: begin rst38 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		39: begin rst39 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		40: begin rst40 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		41: begin rst41 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		42: begin rst42 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		43: begin rst43 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		44: begin rst44 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		45: begin rst45 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		46: begin rst46 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		47: begin rst47 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		48: begin rst48 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		49: begin rst49 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		50: begin rst50 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		51: begin rst51 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		52: begin rst52 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		53: begin rst53 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		54: begin rst54 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		55: begin rst55 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		56: begin rst56 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		57: begin rst57 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		58: begin rst58 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		59: begin rst59 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		60: begin rst60 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		61: begin rst61 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		62: begin rst62 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		63: begin rst63 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		64: begin rst64 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		65: begin rst65 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		66: begin rst66 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		67: begin rst67 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		68: begin rst68 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		69: begin rst69 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		70: begin rst70 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		71: begin rst71 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		72: begin rst72 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		73: begin rst73 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		74: begin rst74 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		75: begin rst75 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		76: begin rst76 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		77: begin rst77 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		78: begin rst78 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		79: begin rst79 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		80: begin rst80 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		81: begin rst81 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		82: begin rst82 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		83: begin rst83 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		84: begin rst84 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		85: begin rst85 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		86: begin rst86 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		87: begin rst87 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		88: begin rst88 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		89: begin rst89 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		90: begin rst90 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		91: begin rst91 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		92: begin rst92 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		93: begin rst93 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		94: begin rst94 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		95: begin rst95 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		96: begin rst96 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		97: begin rst97 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		98: begin rst98 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		99: begin rst99 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		100: begin rst100 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		101: begin rst101 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		102: begin rst102 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		103: begin rst103 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		104: begin rst104 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		105: begin rst105 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		106: begin rst106 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		107: begin rst107 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		108: begin rst108 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		109: begin rst109 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		110: begin rst110 <= 0; if (cnt <= 11'd273) cnt=cnt+11'd1; else begin q <= q+9'd1; cnt=0; end	end
		default: q <= 9'd147;
	endcase
end

always @(*) begin
	if (out_en0 == 1) begin my_io_out <= io_out0; my_out_en <= out_en0; end else
	if (out_en1 == 1) begin my_io_out <= io_out1; my_out_en <= out_en1; end else
	if (out_en2 == 1) begin my_io_out <= io_out2; my_out_en <= out_en2; end else
	if (out_en3 == 1) begin my_io_out <= io_out3; my_out_en <= out_en3; end else
	if (out_en4 == 1) begin my_io_out <= io_out4; my_out_en <= out_en4; end else
	if (out_en5 == 1) begin my_io_out <= io_out5; my_out_en <= out_en5; end else
	if (out_en6 == 1) begin my_io_out <= io_out6; my_out_en <= out_en6; end else
	if (out_en7 == 1) begin my_io_out <= io_out7; my_out_en <= out_en7; end else
	if (out_en8 == 1) begin my_io_out <= io_out8; my_out_en <= out_en8; end else
	if (out_en9 == 1) begin my_io_out <= io_out9; my_out_en <= out_en9; end else
	if (out_en10 == 1) begin my_io_out <= io_out10; my_out_en <= out_en10; end else
	if (out_en11 == 1) begin my_io_out <= io_out11; my_out_en <= out_en11; end else
	if (out_en12 == 1) begin my_io_out <= io_out12; my_out_en <= out_en12; end else
	if (out_en13 == 1) begin my_io_out <= io_out13; my_out_en <= out_en13; end else
	if (out_en14 == 1) begin my_io_out <= io_out14; my_out_en <= out_en14; end else
	if (out_en15 == 1) begin my_io_out <= io_out15; my_out_en <= out_en15; end else
	if (out_en16 == 1) begin my_io_out <= io_out16; my_out_en <= out_en16; end else
	if (out_en17 == 1) begin my_io_out <= io_out17; my_out_en <= out_en17; end else
	if (out_en18 == 1) begin my_io_out <= io_out18; my_out_en <= out_en18; end else
	if (out_en19 == 1) begin my_io_out <= io_out19; my_out_en <= out_en19; end else
	if (out_en20 == 1) begin my_io_out <= io_out20; my_out_en <= out_en20; end else
	if (out_en21 == 1) begin my_io_out <= io_out21; my_out_en <= out_en21; end else
	if (out_en22 == 1) begin my_io_out <= io_out22; my_out_en <= out_en22; end else
	if (out_en23 == 1) begin my_io_out <= io_out23; my_out_en <= out_en23; end else
	if (out_en24 == 1) begin my_io_out <= io_out24; my_out_en <= out_en24; end else
	if (out_en25 == 1) begin my_io_out <= io_out25; my_out_en <= out_en25; end else
	if (out_en26 == 1) begin my_io_out <= io_out26; my_out_en <= out_en26; end else
	if (out_en27 == 1) begin my_io_out <= io_out27; my_out_en <= out_en27; end else
	if (out_en28 == 1) begin my_io_out <= io_out28; my_out_en <= out_en28; end else
	if (out_en29 == 1) begin my_io_out <= io_out29; my_out_en <= out_en29; end else
	if (out_en30 == 1) begin my_io_out <= io_out30; my_out_en <= out_en30; end else
	if (out_en31 == 1) begin my_io_out <= io_out31; my_out_en <= out_en31; end else
	if (out_en32 == 1) begin my_io_out <= io_out32; my_out_en <= out_en32; end else
	if (out_en33 == 1) begin my_io_out <= io_out33; my_out_en <= out_en33; end else
	if (out_en34 == 1) begin my_io_out <= io_out34; my_out_en <= out_en34; end else
	if (out_en35 == 1) begin my_io_out <= io_out35; my_out_en <= out_en35; end else
	if (out_en36 == 1) begin my_io_out <= io_out36; my_out_en <= out_en36; end else
	if (out_en37 == 1) begin my_io_out <= io_out37; my_out_en <= out_en37; end else
	if (out_en38 == 1) begin my_io_out <= io_out38; my_out_en <= out_en38; end else
	if (out_en39 == 1) begin my_io_out <= io_out39; my_out_en <= out_en39; end else
	if (out_en40 == 1) begin my_io_out <= io_out40; my_out_en <= out_en40; end else
	if (out_en41 == 1) begin my_io_out <= io_out41; my_out_en <= out_en41; end else
	if (out_en42 == 1) begin my_io_out <= io_out42; my_out_en <= out_en42; end else
	if (out_en43 == 1) begin my_io_out <= io_out43; my_out_en <= out_en43; end else
	if (out_en44 == 1) begin my_io_out <= io_out44; my_out_en <= out_en44; end else
	if (out_en45 == 1) begin my_io_out <= io_out45; my_out_en <= out_en45; end else
	if (out_en46 == 1) begin my_io_out <= io_out46; my_out_en <= out_en46; end else
	if (out_en47 == 1) begin my_io_out <= io_out47; my_out_en <= out_en47; end else
	if (out_en48 == 1) begin my_io_out <= io_out48; my_out_en <= out_en48; end else
	if (out_en49 == 1) begin my_io_out <= io_out49; my_out_en <= out_en49; end else
	if (out_en50 == 1) begin my_io_out <= io_out50; my_out_en <= out_en50; end else
	if (out_en51 == 1) begin my_io_out <= io_out51; my_out_en <= out_en51; end else
	if (out_en52 == 1) begin my_io_out <= io_out52; my_out_en <= out_en52; end else
	if (out_en53 == 1) begin my_io_out <= io_out53; my_out_en <= out_en53; end else
	if (out_en54 == 1) begin my_io_out <= io_out54; my_out_en <= out_en54; end else
	if (out_en55 == 1) begin my_io_out <= io_out55; my_out_en <= out_en55; end else
	if (out_en56 == 1) begin my_io_out <= io_out56; my_out_en <= out_en56; end else
	if (out_en57 == 1) begin my_io_out <= io_out57; my_out_en <= out_en57; end else
	if (out_en58 == 1) begin my_io_out <= io_out58; my_out_en <= out_en58; end else
	if (out_en59 == 1) begin my_io_out <= io_out59; my_out_en <= out_en59; end else
	if (out_en60 == 1) begin my_io_out <= io_out60; my_out_en <= out_en60; end else
	if (out_en61 == 1) begin my_io_out <= io_out61; my_out_en <= out_en61; end else
	if (out_en62 == 1) begin my_io_out <= io_out62; my_out_en <= out_en62; end else
	if (out_en63 == 1) begin my_io_out <= io_out63; my_out_en <= out_en63; end else
	if (out_en64 == 1) begin my_io_out <= io_out64; my_out_en <= out_en64; end else
	if (out_en65 == 1) begin my_io_out <= io_out65; my_out_en <= out_en65; end else
	if (out_en66 == 1) begin my_io_out <= io_out66; my_out_en <= out_en66; end else
	if (out_en67 == 1) begin my_io_out <= io_out67; my_out_en <= out_en67; end else
	if (out_en68 == 1) begin my_io_out <= io_out68; my_out_en <= out_en68; end else
	if (out_en69 == 1) begin my_io_out <= io_out69; my_out_en <= out_en69; end else
	if (out_en70 == 1) begin my_io_out <= io_out70; my_out_en <= out_en70; end else
	if (out_en71 == 1) begin my_io_out <= io_out71; my_out_en <= out_en71; end else
	if (out_en72 == 1) begin my_io_out <= io_out72; my_out_en <= out_en72; end else
	if (out_en73 == 1) begin my_io_out <= io_out73; my_out_en <= out_en73; end else
	if (out_en74 == 1) begin my_io_out <= io_out74; my_out_en <= out_en74; end else
	if (out_en75 == 1) begin my_io_out <= io_out75; my_out_en <= out_en75; end else
	if (out_en76 == 1) begin my_io_out <= io_out76; my_out_en <= out_en76; end else
	if (out_en77 == 1) begin my_io_out <= io_out77; my_out_en <= out_en77; end else
	if (out_en78 == 1) begin my_io_out <= io_out78; my_out_en <= out_en78; end else
	if (out_en79 == 1) begin my_io_out <= io_out79; my_out_en <= out_en79; end else
	if (out_en80 == 1) begin my_io_out <= io_out80; my_out_en <= out_en80; end else
	if (out_en81 == 1) begin my_io_out <= io_out81; my_out_en <= out_en81; end else
	if (out_en82 == 1) begin my_io_out <= io_out82; my_out_en <= out_en82; end else
	if (out_en83 == 1) begin my_io_out <= io_out83; my_out_en <= out_en83; end else
	if (out_en84 == 1) begin my_io_out <= io_out84; my_out_en <= out_en84; end else
	if (out_en85 == 1) begin my_io_out <= io_out85; my_out_en <= out_en85; end else
	if (out_en86 == 1) begin my_io_out <= io_out86; my_out_en <= out_en86; end else
	if (out_en87 == 1) begin my_io_out <= io_out87; my_out_en <= out_en87; end else
	if (out_en88 == 1) begin my_io_out <= io_out88; my_out_en <= out_en88; end else
	if (out_en89 == 1) begin my_io_out <= io_out89; my_out_en <= out_en89; end else
	if (out_en90 == 1) begin my_io_out <= io_out90; my_out_en <= out_en90; end else
	if (out_en91 == 1) begin my_io_out <= io_out91; my_out_en <= out_en91; end else
	if (out_en92 == 1) begin my_io_out <= io_out92; my_out_en <= out_en92; end else
	if (out_en93 == 1) begin my_io_out <= io_out93; my_out_en <= out_en93; end else
	if (out_en94 == 1) begin my_io_out <= io_out94; my_out_en <= out_en94; end else
	if (out_en95 == 1) begin my_io_out <= io_out95; my_out_en <= out_en95; end else
	if (out_en96 == 1) begin my_io_out <= io_out96; my_out_en <= out_en96; end else
	if (out_en97 == 1) begin my_io_out <= io_out97; my_out_en <= out_en97; end else
	if (out_en98 == 1) begin my_io_out <= io_out98; my_out_en <= out_en98; end else
	if (out_en99 == 1) begin my_io_out <= io_out99; my_out_en <= out_en99; end else
	if (out_en100 == 1) begin my_io_out <= io_out100; my_out_en <= out_en100; end else
	if (out_en101 == 1) begin my_io_out <= io_out101; my_out_en <= out_en101; end else
	if (out_en102 == 1) begin my_io_out <= io_out102; my_out_en <= out_en102; end else
	if (out_en103 == 1) begin my_io_out <= io_out103; my_out_en <= out_en103; end else
	if (out_en104 == 1) begin my_io_out <= io_out104; my_out_en <= out_en104; end else
	if (out_en105 == 1) begin my_io_out <= io_out105; my_out_en <= out_en105; end else
	if (out_en106 == 1) begin my_io_out <= io_out106; my_out_en <= out_en106; end else
	if (out_en107 == 1) begin my_io_out <= io_out107; my_out_en <= out_en107; end else
	if (out_en108 == 1) begin my_io_out <= io_out108; my_out_en <= out_en108; end else
	if (out_en109 == 1) begin my_io_out <= io_out109; my_out_en <= out_en109; end else
	if (out_en110 == 1) begin my_io_out <= io_out110; my_out_en <= out_en110; end else
	begin my_io_out <= 0; my_out_en <= 0; end
end

ssf ssf0 (clk, rst0, io_in, io_out0, req_in0, out_en0);
ssf ssf1 (clk, rst1, io_in, io_out1, req_in1, out_en1);
ssf ssf2 (clk, rst2, io_in, io_out2, req_in2, out_en2);
ssf ssf3 (clk, rst3, io_in, io_out3, req_in3, out_en3);
ssf ssf4 (clk, rst4, io_in, io_out4, req_in4, out_en4);
ssf ssf5 (clk, rst5, io_in, io_out5, req_in5, out_en5);
ssf ssf6 (clk, rst6, io_in, io_out6, req_in6, out_en6);
ssf ssf7 (clk, rst7, io_in, io_out7, req_in7, out_en7);
ssf ssf8 (clk, rst8, io_in, io_out8, req_in8, out_en8);
ssf ssf9 (clk, rst9, io_in, io_out9, req_in9, out_en9);
ssf ssf10 (clk, rst10, io_in, io_out10, req_in10, out_en10);
ssf ssf11 (clk, rst11, io_in, io_out11, req_in11, out_en11);
ssf ssf12 (clk, rst12, io_in, io_out12, req_in12, out_en12);
ssf ssf13 (clk, rst13, io_in, io_out13, req_in13, out_en13);
ssf ssf14 (clk, rst14, io_in, io_out14, req_in14, out_en14);
ssf ssf15 (clk, rst15, io_in, io_out15, req_in15, out_en15);
ssf ssf16 (clk, rst16, io_in, io_out16, req_in16, out_en16);
ssf ssf17 (clk, rst17, io_in, io_out17, req_in17, out_en17);
ssf ssf18 (clk, rst18, io_in, io_out18, req_in18, out_en18);
ssf ssf19 (clk, rst19, io_in, io_out19, req_in19, out_en19);
ssf ssf20 (clk, rst20, io_in, io_out20, req_in20, out_en20);
ssf ssf21 (clk, rst21, io_in, io_out21, req_in21, out_en21);
ssf ssf22 (clk, rst22, io_in, io_out22, req_in22, out_en22);
ssf ssf23 (clk, rst23, io_in, io_out23, req_in23, out_en23);
ssf ssf24 (clk, rst24, io_in, io_out24, req_in24, out_en24);
ssf ssf25 (clk, rst25, io_in, io_out25, req_in25, out_en25);
ssf ssf26 (clk, rst26, io_in, io_out26, req_in26, out_en26);
ssf ssf27 (clk, rst27, io_in, io_out27, req_in27, out_en27);
ssf ssf28 (clk, rst28, io_in, io_out28, req_in28, out_en28);
ssf ssf29 (clk, rst29, io_in, io_out29, req_in29, out_en29);
ssf ssf30 (clk, rst30, io_in, io_out30, req_in30, out_en30);
ssf ssf31 (clk, rst31, io_in, io_out31, req_in31, out_en31);
ssf ssf32 (clk, rst32, io_in, io_out32, req_in32, out_en32);
ssf ssf33 (clk, rst33, io_in, io_out33, req_in33, out_en33);
ssf ssf34 (clk, rst34, io_in, io_out34, req_in34, out_en34);
ssf ssf35 (clk, rst35, io_in, io_out35, req_in35, out_en35);
ssf ssf36 (clk, rst36, io_in, io_out36, req_in36, out_en36);
ssf ssf37 (clk, rst37, io_in, io_out37, req_in37, out_en37);
ssf ssf38 (clk, rst38, io_in, io_out38, req_in38, out_en38);
ssf ssf39 (clk, rst39, io_in, io_out39, req_in39, out_en39);
ssf ssf40 (clk, rst40, io_in, io_out40, req_in40, out_en40);
ssf ssf41 (clk, rst41, io_in, io_out41, req_in41, out_en41);
ssf ssf42 (clk, rst42, io_in, io_out42, req_in42, out_en42);
ssf ssf43 (clk, rst43, io_in, io_out43, req_in43, out_en43);
ssf ssf44 (clk, rst44, io_in, io_out44, req_in44, out_en44);
ssf ssf45 (clk, rst45, io_in, io_out45, req_in45, out_en45);
ssf ssf46 (clk, rst46, io_in, io_out46, req_in46, out_en46);
ssf ssf47 (clk, rst47, io_in, io_out47, req_in47, out_en47);
ssf ssf48 (clk, rst48, io_in, io_out48, req_in48, out_en48);
ssf ssf49 (clk, rst49, io_in, io_out49, req_in49, out_en49);
ssf ssf50 (clk, rst50, io_in, io_out50, req_in50, out_en50);
ssf ssf51 (clk, rst51, io_in, io_out51, req_in51, out_en51);
ssf ssf52 (clk, rst52, io_in, io_out52, req_in52, out_en52);
ssf ssf53 (clk, rst53, io_in, io_out53, req_in53, out_en53);
ssf ssf54 (clk, rst54, io_in, io_out54, req_in54, out_en54);
ssf ssf55 (clk, rst55, io_in, io_out55, req_in55, out_en55);
ssf ssf56 (clk, rst56, io_in, io_out56, req_in56, out_en56);
ssf ssf57 (clk, rst57, io_in, io_out57, req_in57, out_en57);
ssf ssf58 (clk, rst58, io_in, io_out58, req_in58, out_en58);
ssf ssf59 (clk, rst59, io_in, io_out59, req_in59, out_en59);
ssf ssf60 (clk, rst60, io_in, io_out60, req_in60, out_en60);
ssf ssf61 (clk, rst61, io_in, io_out61, req_in61, out_en61);
ssf ssf62 (clk, rst62, io_in, io_out62, req_in62, out_en62);
ssf ssf63 (clk, rst63, io_in, io_out63, req_in63, out_en63);
ssf ssf64 (clk, rst64, io_in, io_out64, req_in64, out_en64);
ssf ssf65 (clk, rst65, io_in, io_out65, req_in65, out_en65);
ssf ssf66 (clk, rst66, io_in, io_out66, req_in66, out_en66);
ssf ssf67 (clk, rst67, io_in, io_out67, req_in67, out_en67);
ssf ssf68 (clk, rst68, io_in, io_out68, req_in68, out_en68);
ssf ssf69 (clk, rst69, io_in, io_out69, req_in69, out_en69);
ssf ssf70 (clk, rst70, io_in, io_out70, req_in70, out_en70);
ssf ssf71 (clk, rst71, io_in, io_out71, req_in71, out_en71);
ssf ssf72 (clk, rst72, io_in, io_out72, req_in72, out_en72);
ssf ssf73 (clk, rst73, io_in, io_out73, req_in73, out_en73);
ssf ssf74 (clk, rst74, io_in, io_out74, req_in74, out_en74);
ssf ssf75 (clk, rst75, io_in, io_out75, req_in75, out_en75);
ssf ssf76 (clk, rst76, io_in, io_out76, req_in76, out_en76);
ssf ssf77 (clk, rst77, io_in, io_out77, req_in77, out_en77);
ssf ssf78 (clk, rst78, io_in, io_out78, req_in78, out_en78);
ssf ssf79 (clk, rst79, io_in, io_out79, req_in79, out_en79);
ssf ssf80 (clk, rst80, io_in, io_out80, req_in80, out_en80);
ssf ssf81 (clk, rst81, io_in, io_out81, req_in81, out_en81);
ssf ssf82 (clk, rst82, io_in, io_out82, req_in82, out_en82);
ssf ssf83 (clk, rst83, io_in, io_out83, req_in83, out_en83);
ssf ssf84 (clk, rst84, io_in, io_out84, req_in84, out_en84);
ssf ssf85 (clk, rst85, io_in, io_out85, req_in85, out_en85);
ssf ssf86 (clk, rst86, io_in, io_out86, req_in86, out_en86);
ssf ssf87 (clk, rst87, io_in, io_out87, req_in87, out_en87);
ssf ssf88 (clk, rst88, io_in, io_out88, req_in88, out_en88);
ssf ssf89 (clk, rst89, io_in, io_out89, req_in89, out_en89);
ssf ssf90 (clk, rst90, io_in, io_out90, req_in90, out_en90);
ssf ssf91 (clk, rst91, io_in, io_out91, req_in91, out_en91);
ssf ssf92 (clk, rst92, io_in, io_out92, req_in92, out_en92);
ssf ssf93 (clk, rst93, io_in, io_out93, req_in93, out_en93);
ssf ssf94 (clk, rst94, io_in, io_out94, req_in94, out_en94);
ssf ssf95 (clk, rst95, io_in, io_out95, req_in95, out_en95);
ssf ssf96 (clk, rst96, io_in, io_out96, req_in96, out_en96);
ssf ssf97 (clk, rst97, io_in, io_out97, req_in97, out_en97);
ssf ssf98 (clk, rst98, io_in, io_out98, req_in98, out_en98);
ssf ssf99 (clk, rst99, io_in, io_out99, req_in99, out_en99);
ssf ssf100 (clk, rst100, io_in, io_out100, req_in100, out_en100);
ssf ssf101 (clk, rst101, io_in, io_out101, req_in101, out_en101);
ssf ssf102 (clk, rst102, io_in, io_out102, req_in102, out_en102);
ssf ssf103 (clk, rst103, io_in, io_out103, req_in103, out_en103);
ssf ssf104 (clk, rst104, io_in, io_out104, req_in104, out_en104);
ssf ssf105 (clk, rst105, io_in, io_out105, req_in105, out_en105);
ssf ssf106 (clk, rst106, io_in, io_out106, req_in106, out_en106);
ssf ssf107 (clk, rst107, io_in, io_out107, req_in107, out_en107);
ssf ssf108 (clk, rst108, io_in, io_out108, req_in108, out_en108);
ssf ssf109 (clk, rst109, io_in, io_out109, req_in109, out_en109);
ssf ssf110 (clk, rst110, io_in, io_out110, req_in110, out_en110);
endmodule

