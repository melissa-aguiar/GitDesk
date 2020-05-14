module multicore(

	input                clk, //rst,
	input signed  [31:0] io_in,
	output signed [31:0] io_out0, io_out1, io_out2, io_out3, io_out4, io_out5, io_out6, io_out7, io_out8, io_out9, io_out10, io_out11, io_out12, io_out13, io_out14, io_out15, io_out16, io_out17, io_out18, io_out19, io_out20, io_out21, io_out22, io_out23, io_out24,// io_out33, io_out34,// io_out35, io_out36,// io_out37, io_out38, io_out39,// io_out42, io_out43, io_out44,// io_out45, io_out46, io_out47, io_out48,// io_out49, io_out50, io_out51, io_out52, //io_out53, io_out54, io_out55, io_out56, io_out57, io_out58,// io_out59, io_out60, io_out61, io_out62, io_out63, io_out64,// io_out65, io_out66, io_out67, io_out68, io_out69, io_out70, io_out71, io_out72,// io_out73, io_out74, io_out75, io_out76, io_out77, io_out78, io_out79, io_out80, io_out81, io_out82,// io_out83, io_out84, io_out85, io_out86, io_out87, io_out88, io_out89, io_out90, io_out91, io_out92, io_out93, io_out94, io_out95, //io_out96, io_out97, io_out98, io_out99, io_out100, io_out101, io_out102, io_out103, io_out104, io_out105, io_out106, io_out107, io_out108, io_out109, io_out110, io_out111, io_out112, io_out113, io_out114,// io_out115, io_out116, io_out117, io_out118, io_out119, io_out120, io_out121, io_out122, io_out123, io_out124, io_out125, io_out126, io_out127, io_out128, io_out129, io_out130, io_out131, io_out132, io_out133, io_out134, io_out135, io_out136, io_out137, io_out138, io_out139, io_out140, io_out141, io_out142, io_out143, io_out144, io_out145, io_out146,
	output		  [ 1:0] req_in0, req_in1, req_in2, req_in3, req_in4, req_in5, req_in6, req_in7, req_in8, req_in9, req_in10, req_in11, req_in12, req_in13, req_in14, req_in15, req_in16, req_in17, req_in18, req_in19, req_in20, req_in21, req_in22, req_in23, req_in24,// req_in33, req_in34,// req_in35, req_in36,// req_in37, req_in38, req_in39,// req_in42, req_in43, req_in44,// req_in45, req_in46, req_in47, req_in48,// req_in49, req_in50, req_in51, req_in52,// req_in53, req_in54, req_in55, req_in56, req_in57, req_in58, //req_in59, req_in60, req_in61, req_in62, req_in63, req_in64,// req_in65, req_in66, req_in67, req_in68, req_in69, req_in70, req_in71, req_in72, //req_in73, req_in74, req_in75, req_in76, req_in77, req_in78, req_in79, req_in80, req_in81, req_in82,// req_in83, req_in84, req_in85, req_in86, req_in87, req_in88, req_in89, req_in90, req_in91, req_in92, req_in93, req_in94, req_in95,// req_in96, req_in97, req_in98, req_in99, req_in100, req_in101, req_in102, req_in103, req_in104, req_in105, req_in106, req_in107, req_in108, req_in109, req_in110, req_in111, req_in112, req_in113, req_in114,// req_in115, req_in116, req_in117, req_in118, req_in119, req_in120, req_in121, req_in122, req_in123, req_in124, req_in125, req_in126, req_in127, req_in128, req_in129, req_in130, req_in131, req_in132, req_in133, req_in134, req_in135, req_in136, req_in137, req_in138, req_in139, req_in140, req_in141, req_in142, req_in143, req_in144, req_in145, req_in146,
	output        [ 1:0] out_en0, out_en1, out_en2, out_en3, out_en4, out_en5, out_en6, out_en7, out_en8, out_en9, out_en10, out_en11, out_en12, out_en13, out_en14, out_en15, out_en16, out_en17, out_en18, out_en19, out_en20, out_en21, out_en22, out_en23, out_en24);//, out_en33, out_en34);//, out_en35, out_en36);//, out_en37, out_en38, out_en39);//, out_en42, out_en43, out_en44);//, out_en45, out_en46, out_en47, out_en48);//, out_en49, out_en50, out_en51, out_en52);//, out_en53, out_en54, out_en55, out_en56, out_en57, out_en58);//, out_en59, out_en60, out_en61, out_en62, out_en63, out_en64);//, out_en65, out_en66, out_en67, out_en68, out_en69, out_en70, out_en71, out_en72);//, out_en73, out_en74, out_en75, out_en76, out_en77, out_en78, out_en79, out_en80, out_en81, out_en82);//, out_en83, out_en84, out_en85, out_en86, out_en87, out_en88, out_en89, out_en90, out_en91, out_en92, out_en93, out_en94, out_en95);//, out_en96, out_en97, out_en98, out_en99, out_en100, out_en101, out_en102, out_en103, out_en104, out_en105, out_en106, out_en107, out_en108, out_en109, out_en110, out_en111, out_en112, out_en113, out_en114);//, out_en115, out_en116, out_en117, out_en118, out_en119, out_en120, out_en121, out_en122, out_en123, out_en124, out_en125, out_en126, out_en127, out_en128, out_en129, out_en130, out_en131, out_en132, out_en133, out_en134, out_en135, out_en136, out_en137, out_en138, out_en139, out_en140, out_en141, out_en142, out_en143, out_en144, out_en145, out_en146);

reg rst0, rst1, rst2, rst3, rst4, rst5, rst6, rst7, rst8, rst9, rst10, rst11, rst12, rst13, rst14, rst15, rst16, rst17, rst18, rst19, rst20, rst21, rst22, rst23, rst24;//, rst33, rst34;//, rst35, rst36;//, rst37, rst38, rst39;//, rst42, rst43, rst44;//, rst45, rst46, rst47, rst48, rst49, rst50, rst51, rst52;//, rst53, rst54, rst55, rst56, rst57, rst58;//, rst59, rst60, rst61, rst62, rst63, rst64;//, rst65, rst66, rst67, rst68, rst69, rst70, rst71, rst72;//, rst73, rst74, rst75, rst76, rst77, rst78, rst79, rst80, rst81, rst82;//, rst83, rst84, rst85, rst86, rst87, rst88, rst89, rst90, rst91, rst92, rst93, rst94, rst95;//, rst96, rst97, rst98, rst99, rst100, rst101, rst102, rst103, rst104, rst105, rst106, rst107, rst108, rst109, rst110, rst111, rst112, rst113, rst114;//, rst115, rst116, rst117, rst118, rst119, rst120, rst121, rst122, rst123, rst124, rst125, rst126, rst127, rst128, rst129, rst130, rst131, rst132, rst133, rst134, rst135, rst136, rst137, rst138, rst139, rst140, rst141, rst142, rst143, rst144, rst145, rst146;

reg signed [31:0] my_io_out;
reg [1:0] my_out_en;
reg [32:0] q, cnt;

//always @(posedge clk) begin
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
	q = 0;
	cnt = 0;
end

always @(posedge clk)
  begin
    case(q)
		
		0: begin rst0 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		1: begin rst1 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		2: begin rst2 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		3: begin rst3 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		4: begin rst4 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		5: begin rst5 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		6: begin rst6 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		7: begin rst7 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		8: begin rst8 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		9: begin rst9 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		10: begin rst10 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		11: begin rst11 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		12: begin rst12 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		13: begin rst13 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		14: begin rst14 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		15: begin rst15 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		16: begin rst16 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		17: begin rst17 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		18: begin rst18 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		19: begin rst19 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		20: begin rst20 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		21: begin rst21 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		22: begin rst22 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		23: begin rst23 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end
		24: begin rst24 <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end

		default : q <=32'd147;
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
	begin my_io_out <= 0; my_out_en <= 0; end
end


//proc_fix proc_fix (clk, rst,  io_in, io_out,  req_in,  out_en);
proc_fix proc_fix0(clk, rst0, io_in, io_out0, req_in0, out_en0);
proc_fix proc_fix1(clk, rst1, io_in, io_out1, req_in1, out_en1);
proc_fix proc_fix2(clk, rst2, io_in, io_out2, req_in2, out_en2);
proc_fix proc_fix3(clk, rst3, io_in, io_out3, req_in3, out_en3);
proc_fix proc_fix4(clk, rst4, io_in, io_out4, req_in4, out_en4);
proc_fix proc_fix5(clk, rst5, io_in, io_out5, req_in5, out_en5);
proc_fix proc_fix6(clk, rst6, io_in, io_out6, req_in6, out_en6);
proc_fix proc_fix7(clk, rst7, io_in, io_out7, req_in7, out_en7);
proc_fix proc_fix8(clk, rst8, io_in, io_out8, req_in8, out_en8);
proc_fix proc_fix9(clk, rst9, io_in, io_out9, req_in9, out_en9);
proc_fix proc_fix10(clk, rst10, io_in, io_out10, req_in10, out_en10);
proc_fix proc_fix11(clk, rst11, io_in, io_out11, req_in11, out_en11);
proc_fix proc_fix12(clk, rst12, io_in, io_out12, req_in12, out_en12);
proc_fix proc_fix13(clk, rst13, io_in, io_out13, req_in13, out_en13);
proc_fix proc_fix14(clk, rst14, io_in, io_out14, req_in14, out_en14);
proc_fix proc_fix15(clk, rst15, io_in, io_out15, req_in15, out_en15);
proc_fix proc_fix16(clk, rst16, io_in, io_out16, req_in16, out_en16);
proc_fix proc_fix17(clk, rst17, io_in, io_out17, req_in17, out_en17);
proc_fix proc_fix18(clk, rst18, io_in, io_out18, req_in18, out_en18);
proc_fix proc_fix19(clk, rst19, io_in, io_out19, req_in19, out_en19);
proc_fix proc_fix20(clk, rst20, io_in, io_out20, req_in20, out_en20);
proc_fix proc_fix21(clk, rst21, io_in, io_out21, req_in21, out_en21);
proc_fix proc_fix22(clk, rst22, io_in, io_out22, req_in22, out_en22);
proc_fix proc_fix23(clk, rst23, io_in, io_out23, req_in23, out_en23);
proc_fix proc_fix24(clk, rst24, io_in, io_out24, req_in24, out_en24);

endmodule
