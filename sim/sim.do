vcom -work ./work ../src/clk_gen.vhd ../src/data_maker.vhd ../src/data_sink.vhd
vlog -sv ../src/myfir.sv ../src/TDL_U.sv ../src/MAC.sv
vlog -sv ../tb/tb_fir.sv
vsim work.tb_fir -voptargs=+acc
add wave *
run 100ns