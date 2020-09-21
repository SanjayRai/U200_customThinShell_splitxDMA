# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../scripts/device_type.tcl
create_project -force project_X project_X -part [DEVICE_TYPE] 

set_property  ip_repo_paths  ../IP/ip_repo [current_project]
update_ip_catalog


add_files -fileset sources_1 -norecurse {
../shell/src/cfg_crc32_37.v
../shell/src/cfg_crc_top.v
../shell/src/SREF_ctrl_logic.v
../shell/src/pr_icap.v
../shell/src/sref_init_restore_sync.v
../IP/axi4lite_cc/axi4lite_cc.xci
../IP/axi4lite_reg_slice/axi4lite_reg_slice.xci
../IP/axi4lite_slr_reg_slice/axi4lite_slr_reg_slice.xci
../IP/axi4mm_cc/axi4mm_cc.xci
../IP/axi4mm_reg_slice/axi4mm_reg_slice.xci
../IP/axi4mm_slr_reg_slice/axi4mm_slr_reg_slice.xci
../IP/cdma/cdma.xci
../IP/cdma_2/cdma_2.xci
../IP/debug_bridge_PR/debug_bridge_PR.xci
../IP/ila_0/ila_0.xci
../IP/ila_ICAP/ila_ICAP.xci
../IP/proc_sys_reset_module/proc_sys_reset_module.xci
../BD/axi_ic_axi4lite/axi_ic_axi4lite.bd
../BD/axi_ic_ddr4_pcim/axi_ic_ddr4_pcim.bd
../BD/dynamic_region_ddr4/dynamic_region_ddr4.bd
../BD/PL_X/PL_X.bd
../BD/X_PCIe_Bridge_ICAP_complex/X_PCIe_Bridge_ICAP_complex.bd
}