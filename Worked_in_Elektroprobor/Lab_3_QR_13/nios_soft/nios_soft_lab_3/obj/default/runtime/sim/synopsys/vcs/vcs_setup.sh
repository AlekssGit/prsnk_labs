
# (C) 2001-2021 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2021.10.13.19:05:55

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios_old_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_onchip_memory2_0.hex ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_ociram_default_contents.dat ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_ociram_default_contents.hex ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_ociram_default_contents.mif ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_rf_ram_a.dat ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_rf_ram_a.hex ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_rf_ram_a.mif ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_rf_ram_b.dat ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_rf_ram_b.hex ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_rf_ram_b.mif ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Worked_in_Elektroprobor/Lab_3_QR_13/nios_soft/nios_soft_lab_3/mem_init/hdl_sim/nios_old_onchip_memory2_0.dat ./
  cp -f C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Worked_in_Elektroprobor/Lab_3_QR_13/nios_soft/nios_soft_lab_3/mem_init/nios_old_onchip_memory2_0.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_irq_mapper.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_merlin_arbitrator.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_rsp_xbar_mux_001.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_rsp_xbar_mux.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_rsp_xbar_demux_002.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_cmd_xbar_mux.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_cmd_xbar_demux_001.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_cmd_xbar_demux.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_reset_controller.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_reset_synchronizer.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_id_router_002.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_id_router.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_addr_router_001.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_addr_router.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_avalon_sc_fifo.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_merlin_slave_agent.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_merlin_master_agent.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_merlin_slave_translator.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_merlin_master_translator.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_pio_0.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_onchip_memory2_0.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_jtag_uart_0.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_jtag_debug_module_sysclk.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_jtag_debug_module_tck.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_jtag_debug_module_wrapper.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_oci_test_bench.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old_nios2_qsys_0_test_bench.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/verbosity_pkg.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_conduit_bfm.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_avalon_reset_source.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/altera_avalon_clock_source.sv \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/submodules/nios_old.v \
  C:/Users/alvas/Documents/Univer/6_kurs/PRSNK/Lab_3_QR_13/nios_old/testbench/nios_old_tb/simulation/nios_old_tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
