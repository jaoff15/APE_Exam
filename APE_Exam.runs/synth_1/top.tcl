# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7s25ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.cache/wt [current_project]
set_property parent.project_path /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_lib.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/FPGA1.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/FPGA2.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/OSERDES_WRAP.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/RAM0.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/RAM2.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/new/SPI_RX.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/new/SPI_TX.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/TDMS_encoder.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/clocking.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/clocking_1.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/clocking_2.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/imports/QLink_2020/QLINK/decode_serial.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/dvid.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/imports/QLink_2020/QLINK/encode_serial.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/hdmi_driver.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/image_driver.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/imports/QLink_2020/QLINK/qlinkmaster.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_rx_ddr_based.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_rx_pure_vhdl_dd.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_rx_serdes_based.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_tx_ddr_based.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_tx_pure_vhdl_dd.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/new/spi_tx_serdes_based.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/vga_gen.vhd
  /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/sources_1/imports/sources_1/top.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/constrs_1/imports/constrs_1/Arty-S7-50-Rev-B-Master.xdc
set_property used_in_implementation false [get_files /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.srcs/constrs_1/imports/constrs_1/Arty-S7-50-Rev-B-Master.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7s25ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
