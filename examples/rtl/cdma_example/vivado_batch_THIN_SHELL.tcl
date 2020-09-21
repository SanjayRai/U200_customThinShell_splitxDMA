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
write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_synth.dcp

add_cells_to_pblock pblock_THIN_SHELL_x_inst [get_cells [list dbg_hub]]

set_property USER_CLOCK_ROOT X2Y2  [get_nets -of_objects [get_pins U_CL_top/U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
set_property USER_CLOCK_ROOT X2Y2  [get_nets -of_objects [get_pins U_CL_top/U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
set_property USER_CLOCK_ROOT X2Y8  [get_nets -of_objects [get_pins U_CL_top/U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
set_property USER_CLOCK_ROOT X2Y8  [get_nets -of_objects [get_pins U_CL_top/U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
set_property USER_CLOCK_ROOT X2Y12 [get_nets -of_objects [get_pins U_CL_top/U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
set_property USER_CLOCK_ROOT X2Y12 [get_nets -of_objects [get_pins U_CL_top/U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]

create_generated_clock -name 250M_PROG [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name 400M_PROG [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1] 
create_generated_clock -name 300M_PROG [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT2] 
create_generated_clock -name 250M [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]
create_generated_clock -name 125M [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]

set_clock_groups -name CG_250M_PROG_CLK -asynchronous -group [ get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [get_clocks [list  [get_clocks -of_objects [get_pins U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]] [get_clocks -of_objects [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]]]
set_clock_groups -name CG_400M_PROG_CLK -asynchronous -group [ get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]] -group [get_clocks [list  [get_clocks -of_objects [get_pins U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]] [get_clocks -of_objects [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]]]
set_clock_groups -name CG_300M_PROG_CLK -asynchronous -group [ get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT2]] -group [get_clocks [list  [get_clocks -of_objects [get_pins U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]] [get_clocks -of_objects [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]]]
set_clock_groups -name PROG_CLKS -asynchronous -group [ get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [ get_clocks -of_objects [get_pins U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]] -group [ get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT2]]

set_false_path -through [get_pins {U_CL_top/U_shell_top/PL_X_i/PL_x/axi_gpio_0/gpio_io_*[*]}]

read_xdc "./xdc/dynamic_region_impl.xdc"


opt_design  -directive Explore
write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_synth_opt.dcp

place_design -verbose -no_bufg_opt -directive Explore
write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_place.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_place_phys_opt.dcp
route_design  -verbose -directive Explore
write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_route_phys_opt.dcp
write_debug_probes -force ./bitfiles/$TOP_module.ltx
report_timing_summary -file ./reports/$TOP_module.$design_name.timing_summary.rpt
report_drc -file ./reports/$TOP_module.drc.rpt

update_design -cell U_CL_top -black_box
lock_design -level routing
write_checkpoint -force ${hlx_path}/checkpoints/$TOP_module.routed_BB.dcp   
close_project   
