set TOP_module VU9P_AXI_ICAP_PR_DESIGN_top
set design_name dynamic_region_cdma 
set ROLE_CLK_PERIOD 4.000
   
set hlx_path "../../../hlx"

source ${hlx_path}/scripts/device_type.tcl


create_project -name shell -part [DEVICE_TYPE] -force 
set_property  ip_repo_paths  ../../../hlx/IP/ip_repo [current_project]

source ./add_rtl.tcl

read_verilog [ list \
${hlx_path}/src/hlx_intfc.sv \
${hlx_path}/shell/src/shell_parameters.vh \
${hlx_path}/shell/src/device_dna.v \
${hlx_path}/shell/src/cfg_crc32_37.v \
${hlx_path}/shell/src/cfg_crc_top.v \
${hlx_path}/shell/src/pr_icap.v \
${hlx_path}/shell/src/THIN_SHELL_x.sv \
${hlx_path}/shell/src/THIN_SHELL_TOP.sv \
${hlx_path}/shell/src/CL_top.sv \
${hlx_path}/shell/src/PR_decoupler.v \
${hlx_path}/shell/src/X_SHELL_XDMA.sv \
${hlx_path}/shell/src/shell_top.sv \
${hlx_path}/shell/src/$TOP_module.sv \
]

read_bd "${hlx_path}/BD/dynamic_region_ddr4/dynamic_region_ddr4.bd"
read_bd "${hlx_path}/BD/axi_ic_ddr4_pcim/axi_ic_ddr4_pcim.bd"
read_bd "${hlx_path}/BD/axi_ic_axi4lite/axi_ic_axi4lite.bd"
read_bd "${hlx_path}/BD/PL_X/PL_X.bd"

read_ip "${hlx_path}/IP/debug_bridge_PR/debug_bridge_PR.xci"
read_ip "${hlx_path}/IP/cdma/cdma.xci"
read_ip "${hlx_path}/IP/ila_0/ila_0.xci"
read_ip "${hlx_path}/IP/ila_ICAP/ila_ICAP.xci"
read_ip "${hlx_path}/IP/axi4lite_cc/axi4lite_cc.xci"
read_ip "${hlx_path}/IP/axi4lite_reg_slice/axi4lite_reg_slice.xci"
read_ip "${hlx_path}/IP/axi4mm_cc/axi4mm_cc.xci"
read_ip "${hlx_path}/IP/axi4mm_reg_slice/axi4mm_reg_slice.xci"
read_ip "${hlx_path}/IP/axi4mm_slr_reg_slice/axi4mm_slr_reg_slice.xci"
read_ip "${hlx_path}/IP/axi4lite_slr_reg_slice/axi4lite_slr_reg_slice.xci"
read_ip "${hlx_path}/IP/proc_sys_reset_module/proc_sys_reset_module.xci"

source ./add_x_shell_ip.tcl

read_xdc "${hlx_path}/shell/xdc/$TOP_module.xdc"
read_xdc "${hlx_path}/shell/xdc/CL_top.xdc"
read_xdc "${hlx_path}/xdc/dynamic_region.xdc"

synth_design -include_dirs ../src -top $TOP_module -part [DEVICE_TYPE] 

opt_design  -directive Explore
write_checkpoint -cell U_CL_top ${hlx_path}/checkpoints/CL_top.dynamic.post_synth_opt.dcp
