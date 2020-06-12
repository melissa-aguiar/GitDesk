def main():

    ############################################# PARAMETROS ###########################################################
    procs = 140  # numero de processadores pra gerar o multicore.v e multicore_tb.v
    freq = 6250  # frequencia do clock no _tb
    mlt = 0  # numero de multiplicadores pra colocar entre as entradas do .asm
    nubits = 32  # numero de bits dos processadores

    ############################################# GERAR O COMEÇO DO .ASM ###############################################
    f11 = open("mlt.txt", "w+")
    for i in range(54):
        f11.write("LOAD 0" + '\n')
        for j in range(mlt):
                f11.write("MLT -1" + '\n')
        f11.write("PUSH" + '\n' + "IN" + '\n' + "SET maind_" + str(i) + '\n')
    f11.close()

    ###################################################  MULTICORE #####################################################

    f12 = open("C:/Users/melis/Desktop/GitDesk/multicore/proc_fix/proc_fix/Hardware/proc_fix_H/multicore.v", "w+")
    f12.write("module multicore (" + '\n')
    f12.write("input clk," + '\n')
    f12.write("input signed [" + str(nubits-1) + ":0] io_in," + '\n')
    f12.write("output signed [" + str(nubits-1) + ":0] ")
    for i in range(procs):
        f12.write("io_out" + str(i) + ", ")
    f12.write('\n')
    f12.write("output [1:0] ")
    for i in range(procs):
        f12.write("req_in" + str(i) + ", ")
    f12.write('\n')
    f12.write("output [1:0] ")
    for i in range(procs-1):
        f12.write("out_en" + str(i) + ", ")
    f12.write("out_en" + str(procs-1) + ");")
    f12.write('\n')
    f12.write('\n')

    f12.write("reg ")
    for i in range(procs-1):
        f12.write("rst" + str(i) + ", ")
    f12.write("rst" + str(procs-1) + ";")
    f12.write('\n')
    f12.write("reg signed [" + str(nubits-1) + ":0] my_io_out;")
    f12.write('\n')
    f12.write("reg [1:0] my_out_en;")
    f12.write('\n')
    f12.write("reg [32:0] q, cnt;")
    f12.write('\n')
    f12.write('\n')

    f12.write("initial begin" + '\n')
    for i in range(procs):
        f12.write("rst" + str(i) + " = 1;" + '\n')
    f12.write("q = 0;" + '\n')
    f12.write("cnt = 0;" + '\n')
    f12.write("end" + '\n')
    f12.write('\n')

    f12.write("always @(posedge clk) begin" + '\n')
    f12.write("case (q)" + '\n')
    for i in range(procs):
        f12.write(str(i) + ": begin rst" + str(i) + " <= 0; if (cnt <= 32'd214) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end" + '\n')
    f12.write("default: q <= 32'd147;" + '\n')
    f12.write("endcase" + '\n')
    f12.write("end" + '\n')
    f12.write('\n')

    f12.write("always @(*) begin" + '\n')
    for i in range(procs):
        f12.write("if (out_en" + str(i) + " == 1) begin my_io_out <= io_out" + str(i) + "; my_out_en <= out_en" + str(i) + "; end else" + '\n')
    f12.write("begin my_io_out <= 0; my_out_en <= 0; end" + '\n')
    f12.write("end" + '\n')
    f12.write('\n')

    for i in range(procs):
        f12.write("proc_fix proc_fix" + str(i) + " (clk, rst" + str(i) + ", io_in, io_out" + str(i) + ", req_in" + str(i) + ", out_en" + str(i) + ");" + '\n')
    f12.write("endmodule" + '\n')
    f12.write('\n')
    f12.close()

    ################################################### TESTBENCH MULTICORE ############################################
    f13 = open("C:/Users/melis/Desktop/GitDesk/multicore/proc_fix/proc_fix/Hardware/proc_fix_H/multicore_tb.v", "w+")
    f13.write("module multicore_tb();" + '\n')
    f13.write("reg clk;" + '\n')
    f13.write("wire [1:0] ")
    for i in range(procs - 1):
        f13.write("req_in" + str(i) + ", ")
    f13.write("req_in" + str(procs - 1) + ";" + '\n')
    f13.write("reg signed [" + str(nubits-1) + ":0] in;" + '\n')
    f13.write("wire signed [" + str(nubits-1) + ":0] ")
    for i in range(procs - 1):
        f13.write("io_out" + str(i) + ", ")
    f13.write("io_out" + str(procs - 1) + ";" + '\n')
    f13.write("wire [1:0] ")
    for i in range(procs - 1):
        f13.write("out_en" + str(i) + ", ")
    f13.write("out_en" + str(procs - 1) + ";" + '\n')
    f13.write("integer data_file, scan_file, my_output;" + '\n')
    f13.write('\n')

    f13.write("initial begin " + '\n')
    f13.write("data_file = $fopen(\"signalN.txt\", \"r\");" + '\n')
    f13.write("my_output = $fopen(\"myoutput.txt\", \"w\");" + '\n')
    f13.write("scan_file = $fscanf(data_file, \"%d\\n\", in);" + '\n')
    f13.write("clk = 0;" + '\n')
    f13.write("end" + '\n')
    f13.write('\n')

    f13.write("always #" + str(freq) + " clk = ~clk;" + '\n')
    f13.write('\n')

    f13.write("always @(posedge clk) begin" + '\n')
    f13.write("if ((")
    for i in range(procs - 1):
        f13.write("req_in" + str(i) + " || ")
    f13.write("req_in" + str(procs - 1) + ") == 1'd1)" + '\n')
    f13.write("scan_file = $fscanf(data_file, \"%d\\n\", in);" + '\n')
    f13.write("end" + '\n')
    f13.write('\n')

    f13.write("always @(posedge clk) begin" + '\n')
    for i in range(procs):
        f13.write("if (out_en" + str(i) + " == 1'd1) $fwrite(my_output, \"%d\\n\", io_out" + str(i) + ");" + '\n')
    f13.write("end" + '\n')
    f13.write('\n')

    f13.write("multicore multicore(clk,in,")
    for i in range(procs):
        f13.write("io_out" + str(i) + ",")
    for i in range(procs):
        f13.write("req_in" + str(i) + ",")
    for i in range(procs-1):
        f13.write("out_en" + str(i) + ",")
    f13.write("out_en" + str(procs-1) + ");" + '\n')
    f13.write('\n')
    f13.write("endmodule")
    f13.write('\n')
    f13.close()
if __name__ == "__main__":
    main()