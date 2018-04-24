# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir H:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.cache/wt [current_project]
set_property parent.project_path H:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo-z7-10:part0:1.0 [current_project]
set_property ip_output_repo h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib H:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/hdl/System_wrapper.v
add_files H:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/System.bd
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_bram_ctrl_0_0/System_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_bram_ctrl_0_bram_0/System_axi_bram_ctrl_0_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_5/bd_9cfa_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_11/bd_9cfa_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_6/bd_9cfa_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_7/bd_9cfa_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_8/bd_9cfa_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_9/bd_9cfa_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_10/bd_9cfa_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_1/bd_9cfa_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/bd_0/ip/ip_1/bd_9cfa_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_rst_ps7_0_50M_0/System_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_rst_ps7_0_50M_0/System_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all h:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/ip/System_rst_ps7_0_50M_0/System_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all H:/dev/CSASA/vivaldo_starter/helloworld_working/helloworld_working.srcs/sources_1/bd/System/System_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top System_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef System_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file System_wrapper_utilization_synth.rpt -pb System_wrapper_utilization_synth.pb"
