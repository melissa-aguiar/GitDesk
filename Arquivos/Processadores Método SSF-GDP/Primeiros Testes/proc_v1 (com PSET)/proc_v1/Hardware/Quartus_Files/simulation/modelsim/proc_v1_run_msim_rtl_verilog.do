transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/proc_v1_H {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/proc_v1_H/proc_v1.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/ula_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/stack_pointer.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/proc_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/prefetch.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/mem_instr.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/mem_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/int2float.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/instr_dec_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/float2int.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/float2index.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/core_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Proc_IP/addr_dec.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Quartus_Files {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Quartus_Files/positivo.v}

vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/Arquivos\ TCC/Sapho/proc_v1/proc_v1/Hardware/Quartus_Files {C:/Users/melis/Desktop/Arquivos TCC/Sapho/proc_v1/proc_v1/Hardware/Quartus_Files/proc_v1_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  proc_v1_tb

add wave *
view structure
view signals
run 1 us
