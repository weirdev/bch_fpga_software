#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.3 (64-bit)
#
# Filename    : System.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Thu Feb 01 20:57:33 -0600 2018
# SW Build 2018833 on Wed Oct  4 19:58:22 MDT 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: System.sh [-help]
# usage: System.sh [-lib_map_path]
# usage: System.sh [-noclean_files]
# usage: System.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'System.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm axi_infrastructure_v1_1_0 smartconnect_v1_0 axi_protocol_checker_v2_0_0 axi_vip_v1_1_0 processing_system7_vip_v1_0_2 blk_mem_gen_v8_3_6 axi_bram_ctrl_v4_0_12 blk_mem_gen_v8_4_0 xlconstant_v1_1_3 lib_cdc_v1_0_2 proc_sys_reset_v5_0_12)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "System.sh - Script generated by export_simulation (Vivado v2017.3 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_checker_v2_0_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work processing_system7_vip_v1_0_2 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_processing_system7_0_0/sim/System_processing_system7_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work blk_mem_gen_v8_3_6 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_bram_ctrl_v4_0_12 $vhdlan_opts \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ffa3/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/System/ip/System_axi_bram_ctrl_0_0/sim/System_axi_bram_ctrl_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_bram_ctrl_0_bram_0/sim/System_axi_bram_ctrl_0_bram_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_5/sim/bd_9cfa_s00a2s_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_11/sim/bd_9cfa_m00s2a_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/fa70/hdl/sc_exit_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_12/sim/bd_9cfa_m00e_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/sc_node_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_6/sim/bd_9cfa_sarn_0.sv" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_7/sim/bd_9cfa_srn_0.sv" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_8/sim/bd_9cfa_sawn_0.sv" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_9/sim/bd_9cfa_swn_0.sv" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_10/sim/bd_9cfa_sbn_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_2/sim/bd_9cfa_s00mmu_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_3/sim/bd_9cfa_s00tr_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_4/sim/bd_9cfa_s00sic_0.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconstant_v1_1_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_0/sim/bd_9cfa_one_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_12 $vhdlan_opts \
    "$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_1/sim/bd_9cfa_psr_aclk_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/bd_0/sim/bd_9cfa.v" \
    "$ref_dir/../../../bd/System/ip/System_axi_smc_0/sim/System_axi_smc_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/System/ip/System_rst_ps7_0_50M_0/sim/System_rst_ps7_0_50M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/verilog" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl" +incdir+"$ref_dir/../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/verilog" +incdir+"C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/System/sim/System.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.System xil_defaultlib.glbl -o System_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./System_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./System.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key System_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc System_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./System.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: System.sh [-help]\n\
Usage: System.sh [-lib_map_path]\n\
Usage: System.sh [-reset_run]\n\
Usage: System.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
