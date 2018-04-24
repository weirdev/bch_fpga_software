-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_2 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_processing_system7_0_0/sim/System_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_3_6 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_0_12 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ffa3/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_bram_ctrl_0_0/sim/System_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_0 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_bram_ctrl_0_bram_0/sim/System_axi_bram_ctrl_0_bram_0.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_5/sim/bd_9cfa_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_11/sim/bd_9cfa_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/fa70/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_12/sim/bd_9cfa_m00e_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/571c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_6/sim/bd_9cfa_sarn_0.sv" \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_7/sim/bd_9cfa_srn_0.sv" \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_8/sim/bd_9cfa_sawn_0.sv" \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_9/sim/bd_9cfa_swn_0.sv" \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_10/sim/bd_9cfa_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_2/sim/bd_9cfa_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_3/sim/bd_9cfa_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_4/sim/bd_9cfa_s00sic_0.sv" \
-endlib
-makelib ies_lib/xlconstant_v1_1_3 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_0/sim/bd_9cfa_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../helloworld_working.srcs/sources_1/bd/System/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/ip/ip_1/sim/bd_9cfa_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_smc_0/bd_0/sim/bd_9cfa.v" \
  "../../../bd/System/ip/System_axi_smc_0/sim/System_axi_smc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_rst_ps7_0_50M_0/sim/System_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/sim/System.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

