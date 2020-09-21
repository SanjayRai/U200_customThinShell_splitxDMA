set TOP_module VU9P_AXI_ICAP_PR_DESIGN_top
set design_name dynamic_region_cdma 
   
set hlx_path "../../../hlx"

source ${hlx_path}/scripts/device_type.tcl

create_project -in_memory -part [DEVICE_TYPE] 
add_files  ${hlx_path}/checkpoints/$TOP_module.routed_BB.dcp
read_checkpoint -cell U_CL_top ${hlx_path}/checkpoints/CL_top.dynamic.post_synth_opt.dcp
link_design -top $TOP_module -part [DEVICE_TYPE] -reconfig_partitions {U_CL_top}
opt_design -directive Explore
write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_synth_opt.dcp
place_design -verbose -no_bufg_opt -directive Explore
write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_place_phys_opt.dcp
route_design  -verbose -directive Explore
write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_route_phys_opt.dcp
write_debug_probes -force ./bitfiles/$TOP_module.$design_name.ltx
report_timing_summary -file ./reports/$TOP_module.$design_name.timing_summary.rpt
report_drc -file ./reports/$TOP_module.$design_name.drc.rpt

set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
write_bitstream -force -bin_file ./bitfiles/$TOP_module.$design_name.bit      
write_cfgmem  -force -format mcs -size 512 -interface SPIx4 -loadbit "up 0x00000000 ./bitfiles/$TOP_module.$design_name.bit " -file "./bitfiles/$TOP_module.$design_name.mcs"
write_bitstream -force -bin_file ./bitfiles/$TOP_module.$design_name.bit      


