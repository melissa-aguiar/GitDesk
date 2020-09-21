transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/ssf_H {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/ssf_H/ssfblackbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/ssf_H {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/ssf_H/ssf.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/ula_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/stack_pointer.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/proc_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/prefetch.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/positivo_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/mem_instr.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/mem_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/instr_dec_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/core_fx.v}
vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Proc_IP/addr_dec.v}

vlog -vlog01compat -work work +incdir+C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Quartus_Files/../ssf_H {C:/Users/melis/Desktop/GitDesk/ssf/ssf_0640/Hardware/Quartus_Files/../ssf_H/ssfblackbox_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  ssfblackbox_tb

add wave *
view structure
view signals
run 1 ps
