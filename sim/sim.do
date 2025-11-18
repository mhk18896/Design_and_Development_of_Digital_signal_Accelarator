vcom -work ./work ../src/clk_gen.vhd ../src/datamaker.vhd ./src/datasink.vhd
vlog -sv ../src/myfir.sv ../src/TDL_U.sv ../src/MAC.sv
vsim wokr.tb_fir -voptargs=+acc
add wave *
run 100ns