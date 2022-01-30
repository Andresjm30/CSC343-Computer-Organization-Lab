transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Programs/intelFPGA_lite/16.1/Projects/Assignment2_1bit_Comparator/mejia_equal.vhd}

