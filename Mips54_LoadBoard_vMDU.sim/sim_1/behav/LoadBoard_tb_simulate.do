######################################################################
#
# File name : LoadBoard_tb_simulate.do
# Created on: Sun Jun 17 02:53:50 +0800 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_10 -lib xil_defaultlib xil_defaultlib.LoadBoard_tb xil_defaultlib.glbl

do {LoadBoard_tb_wave.do}

view wave
view structure
view signals

do {LoadBoard_tb.udo}

run 1000ns