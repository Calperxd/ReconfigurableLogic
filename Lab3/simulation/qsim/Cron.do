onerror {quit -f}
vlib work
vlog -work work Cron.vo
vlog -work work Cron.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Cron_vlg_vec_tst
vcd file -direction Cron.msim.vcd
vcd add -internal Cron_vlg_vec_tst/*
vcd add -internal Cron_vlg_vec_tst/i1/*
add wave /*
run -all
