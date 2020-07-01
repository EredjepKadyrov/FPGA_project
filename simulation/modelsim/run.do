vcom -reportprogress 300 -work work C:\FPGA\FPGA_Excercises\07_Exercise_Sheet\07_Task_05\e_modulo_counter.vhd
vcom -reportprogress 300 -work work C:\FPGA\FPGA_Excercises\07_Exercise_Sheet\07_Task_05\e_my_coffee_maker_FSM.vhd
vcom -reportprogress 300 -work work C:\FPGA\FPGA_Excercises\07_Exercise_Sheet\07_Task_05\e_my_coffee_maker_FSM.vht
vsim rtl_work.e_my_coffee_maker_fsm_vhd_tst
do wave.do
run -all