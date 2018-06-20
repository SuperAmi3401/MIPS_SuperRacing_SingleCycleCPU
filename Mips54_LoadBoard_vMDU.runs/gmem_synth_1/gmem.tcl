# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath C:/modeltech_pe_10.4c/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.cache/wt [current_project]
set_property parent.project_path D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip -quiet d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem.xci
set_property is_locked true [get_files d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top gmem -part xc7a100tcsg324-1 -mode out_of_context

rename_ref -prefix_all gmem_

write_checkpoint -force -noxdef gmem.dcp

catch { report_utilization -file gmem_utilization_synth.rpt -pb gmem_utilization_synth.pb }

if { [catch {
  file copy -force D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.runs/gmem_synth_1/gmem.dcp d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.ip_user_files/ip/gmem]} {
  catch { 
    file copy -force d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem_stub.v D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.ip_user_files/ip/gmem
  }
}

if {[file isdir D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.ip_user_files/ip/gmem]} {
  catch { 
    file copy -force d:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.srcs/sources_1/ip/gmem/gmem_stub.vhdl D:/WeCloudSync/6.MI_PROJECTS/VIVADO_PROJECT/Mips54_App/Mips54_App/Mips54_LoadBoard_vMDU.ip_user_files/ip/gmem
  }
}
