#Включение отображения транскрипта в ModelSim
transcript on
# путь к папке Quartus и Intel ModelSim для подключения платформозависимых библиотек (при необходимости)
# set QUARTUS_ROOTDIR "C:/intelFPGA_lite/20.1.1/quartus"
# берём из пользовательских переменных сред
set QUARTUS_ROOTDIR $::env(QUARTUS_ROOTDIR)

# создание рабочей библиотеки для симуляции
vlib work

# компиляция платформозависимых библиотек (при необходимости)
vlog -work work $QUARTUS_ROOTDIR/eda/sim_lib/altera_primitives.v
vlog -work work $QUARTUS_ROOTDIR/eda/sim_lib/220model.v
vlog -work work $QUARTUS_ROOTDIR/eda/sim_lib/sgate.v
vlog -work work $QUARTUS_ROOTDIR/eda/sim_lib/altera_mf.v
vlog -sv -work work $QUARTUS_ROOTDIR/eda/sim_lib/altera_lnsim.sv
vlog -work work $QUARTUS_ROOTDIR/eda/sim_lib/cycloneive_atoms.v

# компиляция исходников (добавляем необходимые)

vlog -sv -work work +incdir+./ ../semisigments_show.sv
vlog -sv -work work +incdir+./ ../semisegment.sv
vlog -sv -work work +incdir+./ ../generator.sv
vlog -sv -work work +incdir+./ ../bouncing.sv
vlog -sv -work work +incdir+./ ../shift_reg.sv
vlog -sv -work work +incdir+./ ../tb_shift_reg.sv

# указываем топовый TB
# vsim work.tb_shift_reg
vsim -novopt tb_shift_reg

# добавление сигналов к отображению

add wave /tb_shift_reg/clk
add wave /tb_shift_reg/reset
add wave /tb_shift_reg/btn
add wave /tb_shift_reg/device/btn
add wave /tb_shift_reg/test_stage
# add wave /tb_shift_reg/counter
# add wave /tb_shift_reg/device/reset
add wave -bin /tb_shift_reg/device/data_reg



# add wave *


# симуляция и отображение результатов
run 18000000
wave zoom full
# WaveRestoreZoom {161600 ns} [simtime]