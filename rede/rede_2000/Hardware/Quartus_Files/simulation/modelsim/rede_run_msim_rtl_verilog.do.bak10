transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/rede_H {C:/Users/melis/Desktop/rede/rede/Hardware/rede_H/rede.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/ula_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/stack_pointer.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/reg_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/proc_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/prefetch.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/positivo_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/mem_instr.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/mem_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/instr_dec_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/core_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP {C:/Users/melis/Desktop/rede/rede/Hardware/Proc_IP/addr_dec.v}

vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/rede/rede/Hardware/Quartus_Files/../rede_H {C:/Users/melis/Desktop/rede/rede/Hardware/Quartus_Files/../rede_H/rede_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs="+acc"  rede_tb

add wave *
view structure
view signals
run 500 ns
