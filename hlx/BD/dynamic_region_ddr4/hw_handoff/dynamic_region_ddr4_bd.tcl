
################################################################
# This is a generated script based on design: dynamic_region_ddr4
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source dynamic_region_ddr4_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# sref_init_restore_sync, sref_init_restore_sync, sref_init_restore_sync

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu200-fsgd2104-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name dynamic_region_ddr4

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./BD

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2030 -severity "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_gid_msg -ssname BD::TCL -id 2031 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_gid_msg -ssname BD::TCL -id 2032 -severity "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2033 -severity "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2034 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2035 -severity "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_gid_msg -ssname BD::TCL -id 2036 -severity "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2037 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_gid_msg -ssname BD::TCL -id 2038 -severity "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: PR_DDR4_MIG_3
proc create_hier_cell_PR_DDR4_MIG_3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PR_DDR4_MIG_3() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C3_SYS_CLK

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_XSDB_AXIL

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c2_ddr4


  # Create pins
  create_bd_pin -dir I DDR_SREF_CTRL_APP_RESTORE_COMPLETE
  create_bd_pin -dir I DDR_SREF_CTRL_MEM_INIT_SKIP
  create_bd_pin -dir O DDR_SREF_CTRL_SREF_ACK
  create_bd_pin -dir I DDR_SREF_CTRL_SREF_REQ
  create_bd_pin -dir I DDR_SREF_CTRL_XSDB_SEL
  create_bd_pin -dir O -type clk c0_ddr4_ui_clk
  create_bd_pin -dir O c2_init_calib_complete
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type rst sys_rst_ddr_3

  # Create instance: PR_SREF_ILA, and set properties
  set PR_SREF_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 PR_SREF_ILA ]
  set_property -dict [ list \
   CONFIG.C_DATA_DEPTH {4096} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {10} \
 ] $PR_SREF_ILA

  # Create instance: XSDB_RAW_ILA, and set properties
  set XSDB_RAW_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 XSDB_RAW_ILA ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_WIDTH {16} \
   CONFIG.C_PROBE1_WIDTH {9} \
   CONFIG.C_PROBE4_WIDTH {9} \
 ] $XSDB_RAW_ILA

  # Create instance: ddr4_3, and set properties
  set ddr4_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_3 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {250} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.CKE_WIDTH {1} \
   CONFIG.C0.CS_WIDTH {1} \
   CONFIG.C0.DDR4_AxiAddressWidth {34} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CLKFBOUT_MULT {5} \
   CONFIG.C0.DDR4_CLKOUT0_DIVIDE {5} \
   CONFIG.C0.DDR4_CasLatency {17} \
   CONFIG.C0.DDR4_CasWriteLatency {12} \
   CONFIG.C0.DDR4_DIVCLK_DIVIDE {1} \
   CONFIG.C0.DDR4_DataMask {NONE} \
   CONFIG.C0.DDR4_DataWidth {72} \
   CONFIG.C0.DDR4_Ecc {true} \
   CONFIG.C0.DDR4_InputClockPeriod {3332} \
   CONFIG.C0.DDR4_MemoryPart {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0.DDR4_MemoryType {RDIMMs} \
   CONFIG.C0.DDR4_SAVE_RESTORE {true} \
   CONFIG.C0.DDR4_SELF_REFRESH {true} \
   CONFIG.C0.DDR4_TimePeriod {833} \
   CONFIG.C0.ODT_WIDTH {1} \
   CONFIG.PARTIAL_RECONFIG_FLOW_MIG {false} \
 ] $ddr4_3

  # Create instance: myip_AXIL_TO_XSDB_v1_0, and set properties
  set myip_AXIL_TO_XSDB_v1_0 [ create_bd_cell -type ip -vlnv user.org:user:myip_AXIL_TO_XSDB_v1_0:1.0 myip_AXIL_TO_XSDB_v1_0 ]

  # Create instance: proc_sys_reset_MIG_B, and set properties
  set proc_sys_reset_MIG_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_MIG_B ]

  # Create instance: sref_init_restore_sy_0, and set properties
  set block_name sref_init_restore_sync
  set block_cell_name sref_init_restore_sy_0
  if { [catch {set sref_init_restore_sy_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sref_init_restore_sy_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net C0_SYS_CLK_0_1 [get_bd_intf_pins C3_SYS_CLK] [get_bd_intf_pins ddr4_3/C0_SYS_CLK]
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_XSDB_AXIL] [get_bd_intf_pins myip_AXIL_TO_XSDB_v1_0/s00_axi]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins ddr4_3/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net S_AXI_LITE_1 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins ddr4_3/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net ddr4_2_C0_DDR4 [get_bd_intf_pins c2_ddr4] [get_bd_intf_pins ddr4_3/C0_DDR4]

  # Create port connections
  connect_bd_net -net AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1 [get_bd_pins DDR_SREF_CTRL_APP_RESTORE_COMPLETE] [get_bd_pins sref_init_restore_sy_0/shell_restore_complete]
  connect_bd_net -net DDR_SREF_CTRL_MEM_INIT_SKIP_1 [get_bd_pins DDR_SREF_CTRL_MEM_INIT_SKIP] [get_bd_pins sref_init_restore_sy_0/shell_mem_init_skip]
  connect_bd_net -net DDR_SREF_CTRL_SREF_REQ_1 [get_bd_pins DDR_SREF_CTRL_SREF_REQ] [get_bd_pins sref_init_restore_sy_0/shell_sref_req]
  connect_bd_net -net c0_ddr4_app_xsdb_select_0_1 [get_bd_pins DDR_SREF_CTRL_XSDB_SEL] [get_bd_pins PR_SREF_ILA/probe4] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_select]
  connect_bd_net -net ddr4_2_c0_ddr4_app_sref_ack1 [get_bd_pins DDR_SREF_CTRL_SREF_ACK] [get_bd_pins PR_SREF_ILA/probe5] [get_bd_pins ddr4_3/c0_ddr4_app_sref_ack]
  connect_bd_net -net ddr4_2_c0_ddr4_app_xsdb_rd_data [get_bd_pins XSDB_RAW_ILA/probe4] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_rd_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_data]
  connect_bd_net -net ddr4_2_c0_ddr4_app_xsdb_rdy [get_bd_pins PR_SREF_ILA/probe6] [get_bd_pins XSDB_RAW_ILA/probe5] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_rdy] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rdy]
  connect_bd_net -net ddr4_2_c0_ddr4_ui_clk [get_bd_pins c0_ddr4_ui_clk] [get_bd_pins PR_SREF_ILA/clk] [get_bd_pins XSDB_RAW_ILA/clk] [get_bd_pins ddr4_3/c0_ddr4_ui_clk] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aclk] [get_bd_pins proc_sys_reset_MIG_B/slowest_sync_clk] [get_bd_pins sref_init_restore_sy_0/c0_mig_ui_clk]
  connect_bd_net -net ddr4_2_c0_ddr4_ui_clk_sync_rst [get_bd_pins PR_SREF_ILA/probe9] [get_bd_pins ddr4_3/c0_ddr4_ui_clk_sync_rst] [get_bd_pins proc_sys_reset_MIG_B/ext_reset_in] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddr4_2_c0_init_calib_complete [get_bd_pins c2_init_calib_complete] [get_bd_pins PR_SREF_ILA/probe7] [get_bd_pins ddr4_3/c0_init_calib_complete] [get_bd_pins sref_init_restore_sy_0/c0_init_calib_complete]
  connect_bd_net -net ddr4_sync_sys_rst [get_bd_pins PR_SREF_ILA/probe8] [get_bd_pins ddr4_3/sys_rst] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_sys_rst_out]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_addr [get_bd_pins XSDB_RAW_ILA/probe0] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_addr] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_addr]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en [get_bd_pins XSDB_RAW_ILA/probe3] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_rd_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_en]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data [get_bd_pins XSDB_RAW_ILA/probe1] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_wr_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_data]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en [get_bd_pins XSDB_RAW_ILA/probe2] [get_bd_pins ddr4_3/c0_ddr4_app_xsdb_wr_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_en]
  connect_bd_net -net proc_sys_reset_MIG_B_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins ddr4_3/c0_ddr4_aresetn] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aresetn] [get_bd_pins proc_sys_reset_MIG_B/peripheral_aresetn]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip [get_bd_pins PR_SREF_ILA/probe3] [get_bd_pins ddr4_3/c0_ddr4_app_mem_init_skip] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_mem_init_skip]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_complete [get_bd_pins PR_SREF_ILA/probe2] [get_bd_pins ddr4_3/c0_ddr4_app_restore_complete] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_complete]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_en [get_bd_pins PR_SREF_ILA/probe1] [get_bd_pins ddr4_3/c0_ddr4_app_restore_en] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_en]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_sref_req [get_bd_pins PR_SREF_ILA/probe0] [get_bd_pins ddr4_3/c0_ddr4_app_sref_req] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_sref_req]
  connect_bd_net -net sys_rst_ddr_2_1 [get_bd_pins sys_rst_ddr_3] [get_bd_pins sref_init_restore_sy_0/shell_sys_rst_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PR_DDR4_MIG_2
proc create_hier_cell_PR_DDR4_MIG_2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PR_DDR4_MIG_2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C2_SYS_CLK

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_XSDB_AXIL

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c2_ddr4


  # Create pins
  create_bd_pin -dir I AAR_SREF_CTRL_APP_RESTORE_COMPLETE
  create_bd_pin -dir I DDR_SREF_CTRL_MEM_INIT_SKIP
  create_bd_pin -dir O DDR_SREF_CTRL_SREF_ACK
  create_bd_pin -dir I DDR_SREF_CTRL_SREF_REQ
  create_bd_pin -dir I DDR_SREF_CTRL_XSDB_SEL
  create_bd_pin -dir O -type clk c0_ddr4_ui_clk
  create_bd_pin -dir O c2_init_calib_complete
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type rst sys_rst_ddr_2

  # Create instance: PR_SREF_ILA, and set properties
  set PR_SREF_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 PR_SREF_ILA ]
  set_property -dict [ list \
   CONFIG.C_DATA_DEPTH {4096} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {10} \
 ] $PR_SREF_ILA

  # Create instance: XSDB_RAW_ILA, and set properties
  set XSDB_RAW_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 XSDB_RAW_ILA ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_WIDTH {16} \
   CONFIG.C_PROBE1_WIDTH {9} \
   CONFIG.C_PROBE4_WIDTH {9} \
 ] $XSDB_RAW_ILA

  # Create instance: ddr4_2, and set properties
  set ddr4_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_2 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {250} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.CKE_WIDTH {1} \
   CONFIG.C0.CS_WIDTH {1} \
   CONFIG.C0.DDR4_AxiAddressWidth {34} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CLKFBOUT_MULT {5} \
   CONFIG.C0.DDR4_CLKOUT0_DIVIDE {5} \
   CONFIG.C0.DDR4_CasLatency {17} \
   CONFIG.C0.DDR4_CasWriteLatency {12} \
   CONFIG.C0.DDR4_DIVCLK_DIVIDE {1} \
   CONFIG.C0.DDR4_DataMask {NONE} \
   CONFIG.C0.DDR4_DataWidth {72} \
   CONFIG.C0.DDR4_Ecc {true} \
   CONFIG.C0.DDR4_InputClockPeriod {3332} \
   CONFIG.C0.DDR4_MemoryPart {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0.DDR4_MemoryType {RDIMMs} \
   CONFIG.C0.DDR4_SAVE_RESTORE {true} \
   CONFIG.C0.DDR4_SELF_REFRESH {true} \
   CONFIG.C0.DDR4_TimePeriod {833} \
   CONFIG.C0.ODT_WIDTH {1} \
   CONFIG.PARTIAL_RECONFIG_FLOW_MIG {false} \
 ] $ddr4_2

  # Create instance: myip_AXIL_TO_XSDB_v1_0, and set properties
  set myip_AXIL_TO_XSDB_v1_0 [ create_bd_cell -type ip -vlnv user.org:user:myip_AXIL_TO_XSDB_v1_0:1.0 myip_AXIL_TO_XSDB_v1_0 ]

  # Create instance: proc_sys_reset_MIG_B, and set properties
  set proc_sys_reset_MIG_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_MIG_B ]

  # Create instance: sref_init_restore_sy_0, and set properties
  set block_name sref_init_restore_sync
  set block_cell_name sref_init_restore_sy_0
  if { [catch {set sref_init_restore_sy_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sref_init_restore_sy_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net C0_SYS_CLK_0_1 [get_bd_intf_pins C2_SYS_CLK] [get_bd_intf_pins ddr4_2/C0_SYS_CLK]
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_XSDB_AXIL] [get_bd_intf_pins myip_AXIL_TO_XSDB_v1_0/s00_axi]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins ddr4_2/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net S_AXI_LITE_1 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins ddr4_2/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net ddr4_2_C0_DDR4 [get_bd_intf_pins c2_ddr4] [get_bd_intf_pins ddr4_2/C0_DDR4]

  # Create port connections
  connect_bd_net -net AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1 [get_bd_pins AAR_SREF_CTRL_APP_RESTORE_COMPLETE] [get_bd_pins sref_init_restore_sy_0/shell_restore_complete]
  connect_bd_net -net DDR_SREF_CTRL_MEM_INIT_SKIP_1 [get_bd_pins DDR_SREF_CTRL_MEM_INIT_SKIP] [get_bd_pins sref_init_restore_sy_0/shell_mem_init_skip]
  connect_bd_net -net DDR_SREF_CTRL_SREF_REQ_1 [get_bd_pins DDR_SREF_CTRL_SREF_REQ] [get_bd_pins sref_init_restore_sy_0/shell_sref_req]
  connect_bd_net -net c0_ddr4_app_xsdb_select_0_1 [get_bd_pins DDR_SREF_CTRL_XSDB_SEL] [get_bd_pins PR_SREF_ILA/probe4] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_select]
  connect_bd_net -net ddr4_2_c0_ddr4_app_sref_ack1 [get_bd_pins DDR_SREF_CTRL_SREF_ACK] [get_bd_pins PR_SREF_ILA/probe5] [get_bd_pins ddr4_2/c0_ddr4_app_sref_ack]
  connect_bd_net -net ddr4_2_c0_ddr4_app_xsdb_rd_data [get_bd_pins XSDB_RAW_ILA/probe4] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_rd_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_data]
  connect_bd_net -net ddr4_2_c0_ddr4_app_xsdb_rdy [get_bd_pins PR_SREF_ILA/probe6] [get_bd_pins XSDB_RAW_ILA/probe5] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_rdy] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rdy]
  connect_bd_net -net ddr4_2_c0_ddr4_ui_clk [get_bd_pins c0_ddr4_ui_clk] [get_bd_pins PR_SREF_ILA/clk] [get_bd_pins XSDB_RAW_ILA/clk] [get_bd_pins ddr4_2/c0_ddr4_ui_clk] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aclk] [get_bd_pins proc_sys_reset_MIG_B/slowest_sync_clk] [get_bd_pins sref_init_restore_sy_0/c0_mig_ui_clk]
  connect_bd_net -net ddr4_2_c0_ddr4_ui_clk_sync_rst [get_bd_pins PR_SREF_ILA/probe9] [get_bd_pins ddr4_2/c0_ddr4_ui_clk_sync_rst] [get_bd_pins proc_sys_reset_MIG_B/ext_reset_in] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddr4_2_c0_init_calib_complete [get_bd_pins c2_init_calib_complete] [get_bd_pins PR_SREF_ILA/probe7] [get_bd_pins ddr4_2/c0_init_calib_complete] [get_bd_pins sref_init_restore_sy_0/c0_init_calib_complete]
  connect_bd_net -net ddr4_sync_sys_rst [get_bd_pins PR_SREF_ILA/probe8] [get_bd_pins ddr4_2/sys_rst] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_sys_rst_out]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_addr [get_bd_pins XSDB_RAW_ILA/probe0] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_addr] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_addr]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en [get_bd_pins XSDB_RAW_ILA/probe3] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_rd_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_en]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data [get_bd_pins XSDB_RAW_ILA/probe1] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_wr_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_data]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en [get_bd_pins XSDB_RAW_ILA/probe2] [get_bd_pins ddr4_2/c0_ddr4_app_xsdb_wr_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_en]
  connect_bd_net -net proc_sys_reset_MIG_B_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins ddr4_2/c0_ddr4_aresetn] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aresetn] [get_bd_pins proc_sys_reset_MIG_B/peripheral_aresetn]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip [get_bd_pins PR_SREF_ILA/probe3] [get_bd_pins ddr4_2/c0_ddr4_app_mem_init_skip] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_mem_init_skip]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_complete [get_bd_pins PR_SREF_ILA/probe2] [get_bd_pins ddr4_2/c0_ddr4_app_restore_complete] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_complete]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_en [get_bd_pins PR_SREF_ILA/probe1] [get_bd_pins ddr4_2/c0_ddr4_app_restore_en] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_en]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_sref_req [get_bd_pins PR_SREF_ILA/probe0] [get_bd_pins ddr4_2/c0_ddr4_app_sref_req] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_sref_req]
  connect_bd_net -net sys_rst_ddr_2_1 [get_bd_pins sys_rst_ddr_2] [get_bd_pins sref_init_restore_sy_0/shell_sys_rst_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PR_DDR4_MIG_0
proc create_hier_cell_PR_DDR4_MIG_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PR_DDR4_MIG_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_XSDB_AXIL

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c0_ddr4


  # Create pins
  create_bd_pin -dir I DDR_SREF_CTRL_APP_RESTORE_COMPLETE
  create_bd_pin -dir I DDR_SREF_CTRL_MEM_INIT_SKIP
  create_bd_pin -dir O DDR_SREF_CTRL_SREF_ACK
  create_bd_pin -dir I DDR_SREF_CTRL_SREF_REQ
  create_bd_pin -dir I DDR_SREF_CTRL_XSDB_SEL
  create_bd_pin -dir O -type clk c0_ddr4_ui_clk
  create_bd_pin -dir O c0_init_calib_complete
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type rst sys_rst_ddr_2

  # Create instance: PR_SREF_ILA, and set properties
  set PR_SREF_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 PR_SREF_ILA ]
  set_property -dict [ list \
   CONFIG.C_DATA_DEPTH {4096} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {10} \
 ] $PR_SREF_ILA

  # Create instance: XSDB_RAW_ILA, and set properties
  set XSDB_RAW_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 XSDB_RAW_ILA ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_WIDTH {16} \
   CONFIG.C_PROBE1_WIDTH {9} \
   CONFIG.C_PROBE4_WIDTH {9} \
 ] $XSDB_RAW_ILA

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {250} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.CKE_WIDTH {1} \
   CONFIG.C0.CS_WIDTH {1} \
   CONFIG.C0.DDR4_AxiAddressWidth {34} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CLKFBOUT_MULT {5} \
   CONFIG.C0.DDR4_CLKOUT0_DIVIDE {5} \
   CONFIG.C0.DDR4_CasLatency {17} \
   CONFIG.C0.DDR4_CasWriteLatency {12} \
   CONFIG.C0.DDR4_DIVCLK_DIVIDE {1} \
   CONFIG.C0.DDR4_DataMask {NONE} \
   CONFIG.C0.DDR4_DataWidth {72} \
   CONFIG.C0.DDR4_Ecc {true} \
   CONFIG.C0.DDR4_InputClockPeriod {3332} \
   CONFIG.C0.DDR4_MemoryPart {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0.DDR4_MemoryType {RDIMMs} \
   CONFIG.C0.DDR4_SAVE_RESTORE {true} \
   CONFIG.C0.DDR4_SELF_REFRESH {true} \
   CONFIG.C0.DDR4_TimePeriod {833} \
   CONFIG.C0.ODT_WIDTH {1} \
   CONFIG.PARTIAL_RECONFIG_FLOW_MIG {false} \
 ] $ddr4_0

  # Create instance: myip_AXIL_TO_XSDB_v1_0, and set properties
  set myip_AXIL_TO_XSDB_v1_0 [ create_bd_cell -type ip -vlnv user.org:user:myip_AXIL_TO_XSDB_v1_0:1.0 myip_AXIL_TO_XSDB_v1_0 ]

  # Create instance: proc_sys_reset_MIG_B, and set properties
  set proc_sys_reset_MIG_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_MIG_B ]

  # Create instance: sref_init_restore_sy_0, and set properties
  set block_name sref_init_restore_sync
  set block_cell_name sref_init_restore_sy_0
  if { [catch {set sref_init_restore_sy_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sref_init_restore_sy_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net C0_SYS_CLK_0_1 [get_bd_intf_pins C0_SYS_CLK] [get_bd_intf_pins ddr4_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_XSDB_AXIL] [get_bd_intf_pins myip_AXIL_TO_XSDB_v1_0/s00_axi]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net S_AXI_LITE_1 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net ddr4_2_C0_DDR4 [get_bd_intf_pins c0_ddr4] [get_bd_intf_pins ddr4_0/C0_DDR4]

  # Create port connections
  connect_bd_net -net AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1 [get_bd_pins DDR_SREF_CTRL_APP_RESTORE_COMPLETE] [get_bd_pins sref_init_restore_sy_0/shell_restore_complete]
  connect_bd_net -net DDR_SREF_CTRL_MEM_INIT_SKIP_1 [get_bd_pins DDR_SREF_CTRL_MEM_INIT_SKIP] [get_bd_pins sref_init_restore_sy_0/shell_mem_init_skip]
  connect_bd_net -net DDR_SREF_CTRL_SREF_REQ_1 [get_bd_pins DDR_SREF_CTRL_SREF_REQ] [get_bd_pins sref_init_restore_sy_0/shell_sref_req]
  connect_bd_net -net c0_ddr4_app_xsdb_select_0_1 [get_bd_pins DDR_SREF_CTRL_XSDB_SEL] [get_bd_pins PR_SREF_ILA/probe4] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_select]
  connect_bd_net -net ddr4_2_c0_ddr4_app_sref_ack1 [get_bd_pins DDR_SREF_CTRL_SREF_ACK] [get_bd_pins PR_SREF_ILA/probe5] [get_bd_pins ddr4_0/c0_ddr4_app_sref_ack]
  connect_bd_net -net ddr4_2_c0_ddr4_app_xsdb_rd_data [get_bd_pins XSDB_RAW_ILA/probe4] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_rd_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_data]
  connect_bd_net -net ddr4_2_c0_ddr4_app_xsdb_rdy [get_bd_pins PR_SREF_ILA/probe6] [get_bd_pins XSDB_RAW_ILA/probe5] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_rdy] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rdy]
  connect_bd_net -net ddr4_2_c0_ddr4_ui_clk [get_bd_pins c0_ddr4_ui_clk] [get_bd_pins PR_SREF_ILA/clk] [get_bd_pins XSDB_RAW_ILA/clk] [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aclk] [get_bd_pins proc_sys_reset_MIG_B/slowest_sync_clk] [get_bd_pins sref_init_restore_sy_0/c0_mig_ui_clk]
  connect_bd_net -net ddr4_2_c0_ddr4_ui_clk_sync_rst [get_bd_pins PR_SREF_ILA/probe9] [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins proc_sys_reset_MIG_B/ext_reset_in] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddr4_2_c0_init_calib_complete [get_bd_pins c0_init_calib_complete] [get_bd_pins PR_SREF_ILA/probe7] [get_bd_pins ddr4_0/c0_init_calib_complete] [get_bd_pins sref_init_restore_sy_0/c0_init_calib_complete]
  connect_bd_net -net ddr4_sync_sys_rst [get_bd_pins PR_SREF_ILA/probe8] [get_bd_pins ddr4_0/sys_rst] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_sys_rst_out]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_addr [get_bd_pins XSDB_RAW_ILA/probe0] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_addr] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_addr]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en [get_bd_pins XSDB_RAW_ILA/probe3] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_rd_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_en]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data [get_bd_pins XSDB_RAW_ILA/probe1] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_wr_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_data]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en [get_bd_pins XSDB_RAW_ILA/probe2] [get_bd_pins ddr4_0/c0_ddr4_app_xsdb_wr_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_en]
  connect_bd_net -net proc_sys_reset_MIG_B_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aresetn] [get_bd_pins proc_sys_reset_MIG_B/peripheral_aresetn]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip [get_bd_pins PR_SREF_ILA/probe3] [get_bd_pins ddr4_0/c0_ddr4_app_mem_init_skip] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_mem_init_skip]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_complete [get_bd_pins PR_SREF_ILA/probe2] [get_bd_pins ddr4_0/c0_ddr4_app_restore_complete] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_complete]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_en [get_bd_pins PR_SREF_ILA/probe1] [get_bd_pins ddr4_0/c0_ddr4_app_restore_en] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_en]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_sref_req [get_bd_pins PR_SREF_ILA/probe0] [get_bd_pins ddr4_0/c0_ddr4_app_sref_req] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_sref_req]
  connect_bd_net -net sys_rst_ddr_2_1 [get_bd_pins sys_rst_ddr_2] [get_bd_pins sref_init_restore_sy_0/shell_sys_rst_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DDR_SUB_SYS
proc create_hier_cell_DDR_SUB_SYS { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_DDR_SUB_SYS() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR4_S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR4_S_AXI_CTRL

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_XSDB_S_AXIL

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C2_DDR4_S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C2_DDR4_S_AXI_CTRL

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C2_SYS_CLK

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C2_XSDB_S_AXIL

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C3_DDR4_S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C3_DDR4_S_AXI_CTRL

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C3_SYS_CLK

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C3_XSDB_S_AXIL

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c0_ddr4

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c2_ddr4

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c3_ddr4


  # Create pins
  create_bd_pin -dir I c0_ddr4_app_mem_init_skip
  create_bd_pin -dir I c0_ddr4_app_restore_complete
  create_bd_pin -dir O c0_ddr4_app_sref_ack
  create_bd_pin -dir I c0_ddr4_app_sref_req
  create_bd_pin -dir I c0_ddr4_app_xsdb_select
  create_bd_pin -dir O -type clk c0_ddr4_ui_clk
  create_bd_pin -dir O c0_init_calib_complete
  create_bd_pin -dir O -from 0 -to 0 -type rst c0_peripheral_aresetn
  create_bd_pin -dir I c2_ddr4_app_mem_init_skip
  create_bd_pin -dir I c2_ddr4_app_restore_complete
  create_bd_pin -dir O c2_ddr4_app_sref_ack
  create_bd_pin -dir I c2_ddr4_app_sref_req
  create_bd_pin -dir I c2_ddr4_app_xsdb_select
  create_bd_pin -dir O -type clk c2_ddr4_ui_clk
  create_bd_pin -dir O c2_init_calib_complete
  create_bd_pin -dir O -from 0 -to 0 -type rst c2_peripheral_aresetn
  create_bd_pin -dir I c3_ddr4_app_mem_init_skip
  create_bd_pin -dir I c3_ddr4_app_restore_complete
  create_bd_pin -dir O c3_ddr4_app_sref_ack
  create_bd_pin -dir I c3_ddr4_app_sref_req
  create_bd_pin -dir I c3_ddr4_app_xsdb_select
  create_bd_pin -dir O -type clk c3_ddr4_ui_clk
  create_bd_pin -dir O c3_init_calib_complete
  create_bd_pin -dir O -from 0 -to 0 -type rst c3_peripheral_aresetn
  create_bd_pin -dir I -type rst sys_rst_ddr_0
  create_bd_pin -dir I -type rst sys_rst_ddr_2
  create_bd_pin -dir I -type rst sys_rst_ddr_3

  # Create instance: PR_DDR4_MIG_0
  create_hier_cell_PR_DDR4_MIG_0 $hier_obj PR_DDR4_MIG_0

  # Create instance: PR_DDR4_MIG_2
  create_hier_cell_PR_DDR4_MIG_2 $hier_obj PR_DDR4_MIG_2

  # Create instance: PR_DDR4_MIG_3
  create_hier_cell_PR_DDR4_MIG_3 $hier_obj PR_DDR4_MIG_3

  # Create interface connections
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI1_1 [get_bd_intf_pins C2_DDR4_S_AXI] [get_bd_intf_pins PR_DDR4_MIG_2/S_AXI]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI2_1 [get_bd_intf_pins C3_DDR4_S_AXI] [get_bd_intf_pins PR_DDR4_MIG_3/S_AXI]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI_1 [get_bd_intf_pins C0_DDR4_S_AXI] [get_bd_intf_pins PR_DDR4_MIG_0/S_AXI]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI_CTRL1_1 [get_bd_intf_pins C2_DDR4_S_AXI_CTRL] [get_bd_intf_pins PR_DDR4_MIG_2/S_AXI_LITE]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI_CTRL2_1 [get_bd_intf_pins C3_DDR4_S_AXI_CTRL] [get_bd_intf_pins PR_DDR4_MIG_3/S_AXI_LITE]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI_CTRL_1 [get_bd_intf_pins C0_DDR4_S_AXI_CTRL] [get_bd_intf_pins PR_DDR4_MIG_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net C0_SYS_CLK_0_1 [get_bd_intf_pins C2_SYS_CLK] [get_bd_intf_pins PR_DDR4_MIG_2/C2_SYS_CLK]
  connect_bd_intf_net -intf_net C0_SYS_CLK_1 [get_bd_intf_pins C0_SYS_CLK] [get_bd_intf_pins PR_DDR4_MIG_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net C0_S_AXI_1 [get_bd_intf_pins C0_XSDB_S_AXIL] [get_bd_intf_pins PR_DDR4_MIG_0/S_XSDB_AXIL]
  connect_bd_intf_net -intf_net C3_SYS_CLK_1 [get_bd_intf_pins C3_SYS_CLK] [get_bd_intf_pins PR_DDR4_MIG_3/C3_SYS_CLK]
  connect_bd_intf_net -intf_net C3_S_AXI_1 [get_bd_intf_pins C3_XSDB_S_AXIL] [get_bd_intf_pins PR_DDR4_MIG_3/S_XSDB_AXIL]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins C2_XSDB_S_AXIL] [get_bd_intf_pins PR_DDR4_MIG_2/S_XSDB_AXIL]
  connect_bd_intf_net -intf_net PR_DDR4_MIG_0_c2_ddr4 [get_bd_intf_pins c0_ddr4] [get_bd_intf_pins PR_DDR4_MIG_0/c0_ddr4]
  connect_bd_intf_net -intf_net PR_DDR4_MIG_3_c2_ddr4 [get_bd_intf_pins c3_ddr4] [get_bd_intf_pins PR_DDR4_MIG_3/c2_ddr4]
  connect_bd_intf_net -intf_net ddr4_2_C0_DDR4 [get_bd_intf_pins c2_ddr4] [get_bd_intf_pins PR_DDR4_MIG_2/c2_ddr4]

  # Create port connections
  connect_bd_net -net PR_DDR4_MIG_0_DDR_SREF_CTRL_SREF_ACK [get_bd_pins c0_ddr4_app_sref_ack] [get_bd_pins PR_DDR4_MIG_0/DDR_SREF_CTRL_SREF_ACK]
  connect_bd_net -net PR_DDR4_MIG_0_c0_ddr4_ui_clk [get_bd_pins c0_ddr4_ui_clk] [get_bd_pins PR_DDR4_MIG_0/c0_ddr4_ui_clk]
  connect_bd_net -net PR_DDR4_MIG_0_c2_init_calib_complete [get_bd_pins c0_init_calib_complete] [get_bd_pins PR_DDR4_MIG_0/c0_init_calib_complete]
  connect_bd_net -net PR_DDR4_MIG_0_peripheral_aresetn [get_bd_pins c0_peripheral_aresetn] [get_bd_pins PR_DDR4_MIG_0/peripheral_aresetn]
  connect_bd_net -net PR_DDR4_MIG_2_c0_ddr4_app_sref_ack_0 [get_bd_pins c2_ddr4_app_sref_ack] [get_bd_pins PR_DDR4_MIG_2/DDR_SREF_CTRL_SREF_ACK]
  connect_bd_net -net PR_DDR4_MIG_2_c0_ddr4_ui_clk [get_bd_pins c2_ddr4_ui_clk] [get_bd_pins PR_DDR4_MIG_2/c0_ddr4_ui_clk]
  connect_bd_net -net PR_DDR4_MIG_2_c0_init_calib_complete_1 [get_bd_pins c2_init_calib_complete] [get_bd_pins PR_DDR4_MIG_2/c2_init_calib_complete]
  connect_bd_net -net PR_DDR4_MIG_2_peripheral_aresetn [get_bd_pins c2_peripheral_aresetn] [get_bd_pins PR_DDR4_MIG_2/peripheral_aresetn]
  connect_bd_net -net PR_DDR4_MIG_3_DDR_SREF_CTRL_SREF_ACK [get_bd_pins c3_ddr4_app_sref_ack] [get_bd_pins PR_DDR4_MIG_3/DDR_SREF_CTRL_SREF_ACK]
  connect_bd_net -net PR_DDR4_MIG_3_c0_ddr4_ui_clk [get_bd_pins c3_ddr4_ui_clk] [get_bd_pins PR_DDR4_MIG_3/c0_ddr4_ui_clk]
  connect_bd_net -net PR_DDR4_MIG_3_c2_init_calib_complete [get_bd_pins c3_init_calib_complete] [get_bd_pins PR_DDR4_MIG_3/c2_init_calib_complete]
  connect_bd_net -net PR_DDR4_MIG_3_peripheral_aresetn [get_bd_pins c3_peripheral_aresetn] [get_bd_pins PR_DDR4_MIG_3/peripheral_aresetn]
  connect_bd_net -net c0_ddr4_app_mem_init_skip_0_1 [get_bd_pins c2_ddr4_app_mem_init_skip] [get_bd_pins PR_DDR4_MIG_2/DDR_SREF_CTRL_MEM_INIT_SKIP]
  connect_bd_net -net c0_ddr4_app_restore_complete_0_1 [get_bd_pins c2_ddr4_app_restore_complete] [get_bd_pins PR_DDR4_MIG_2/AAR_SREF_CTRL_APP_RESTORE_COMPLETE]
  connect_bd_net -net c0_ddr4_app_sref_req_0_1 [get_bd_pins c2_ddr4_app_sref_req] [get_bd_pins PR_DDR4_MIG_2/DDR_SREF_CTRL_SREF_REQ]
  connect_bd_net -net c0_ddr4_app_xsdb_select_0_1 [get_bd_pins c2_ddr4_app_xsdb_select] [get_bd_pins PR_DDR4_MIG_2/DDR_SREF_CTRL_XSDB_SEL]
  connect_bd_net -net c2_ddr4_app_mem_init_skip2_1 [get_bd_pins c3_ddr4_app_mem_init_skip] [get_bd_pins PR_DDR4_MIG_3/DDR_SREF_CTRL_MEM_INIT_SKIP]
  connect_bd_net -net c2_ddr4_app_restore_complete1_1 [get_bd_pins c3_ddr4_app_restore_complete] [get_bd_pins PR_DDR4_MIG_3/DDR_SREF_CTRL_APP_RESTORE_COMPLETE]
  connect_bd_net -net c2_ddr4_app_sref_req2_1 [get_bd_pins c3_ddr4_app_sref_req] [get_bd_pins PR_DDR4_MIG_3/DDR_SREF_CTRL_SREF_REQ]
  connect_bd_net -net c2_ddr4_app_xsdb_select2_1 [get_bd_pins c3_ddr4_app_xsdb_select] [get_bd_pins PR_DDR4_MIG_3/DDR_SREF_CTRL_XSDB_SEL]
  connect_bd_net -net c3_ddr4_app_mem_init_skip1_1 [get_bd_pins c0_ddr4_app_mem_init_skip] [get_bd_pins PR_DDR4_MIG_0/DDR_SREF_CTRL_MEM_INIT_SKIP]
  connect_bd_net -net c3_ddr4_app_restore_complete1_1 [get_bd_pins c0_ddr4_app_restore_complete] [get_bd_pins PR_DDR4_MIG_0/DDR_SREF_CTRL_APP_RESTORE_COMPLETE]
  connect_bd_net -net c3_ddr4_app_sref_req1_1 [get_bd_pins c0_ddr4_app_sref_req] [get_bd_pins PR_DDR4_MIG_0/DDR_SREF_CTRL_SREF_REQ]
  connect_bd_net -net c3_ddr4_app_xsdb_select1_1 [get_bd_pins c0_ddr4_app_xsdb_select] [get_bd_pins PR_DDR4_MIG_0/DDR_SREF_CTRL_XSDB_SEL]
  connect_bd_net -net sys_rst_0_1 [get_bd_pins sys_rst_ddr_0] [get_bd_pins PR_DDR4_MIG_0/sys_rst_ddr_2]
  connect_bd_net -net sys_rst_0_2 [get_bd_pins sys_rst_ddr_2] [get_bd_pins PR_DDR4_MIG_2/sys_rst_ddr_2]
  connect_bd_net -net sys_rst_0_3 [get_bd_pins sys_rst_ddr_3] [get_bd_pins PR_DDR4_MIG_3/sys_rst_ddr_3]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set C0_SYS_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $C0_SYS_CLK

  set C2_SYS_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C2_SYS_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $C2_SYS_CLK

  set C3_SYS_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C3_SYS_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $C3_SYS_CLK

  set MIG0_DDR4_S_AXI_CTRL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MIG0_DDR4_S_AXI_CTRL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $MIG0_DDR4_S_AXI_CTRL

  set MIG2_DDR4_S_AXI_CTRL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MIG2_DDR4_S_AXI_CTRL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $MIG2_DDR4_S_AXI_CTRL

  set MIG3_DDR4_S_AXI_CTRL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MIG3_DDR4_S_AXI_CTRL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $MIG3_DDR4_S_AXI_CTRL

  set S_AXI_MM_MIG0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MM_MIG0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {6} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {8} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {8} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MM_MIG0

  set S_AXI_MM_MIG2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MM_MIG2 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {6} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {8} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {8} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MM_MIG2

  set S_AXI_MM_MIG3 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MM_MIG3 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {6} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {8} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {8} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MM_MIG3

  set c0_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c0_ddr4 ]

  set c2_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c2_ddr4 ]

  set c3_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c3_ddr4 ]


  # Create ports
  set AXI_RESET_N [ create_bd_port -dir I -type rst AXI_RESET_N ]
  set CLK_IN_250 [ create_bd_port -dir I -type clk -freq_hz 250000000 CLK_IN_250 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXI_MM_MIG0:S_AXI_MM_MIG2:S_AXI_MM_MIG3:MIG0_DDR4_S_AXI_CTRL:MIG3_DDR4_S_AXI_CTRL:MIG2_DDR4_S_AXI_CTRL} \
   CONFIG.ASSOCIATED_RESET {AXI_RESET_N} \
   CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
 ] $CLK_IN_250
  set c0_ddr4_app_mem_init_skip [ create_bd_port -dir I c0_ddr4_app_mem_init_skip ]
  set c0_ddr4_app_restore_complete [ create_bd_port -dir I c0_ddr4_app_restore_complete ]
  set c0_ddr4_app_sref_ack [ create_bd_port -dir O c0_ddr4_app_sref_ack ]
  set c0_ddr4_app_sref_req [ create_bd_port -dir I c0_ddr4_app_sref_req ]
  set c0_ddr4_app_xsdb_select [ create_bd_port -dir I c0_ddr4_app_xsdb_select ]
  set c0_init_calib_complete [ create_bd_port -dir O c0_init_calib_complete ]
  set c2_ddr4_app_mem_init_skip [ create_bd_port -dir I c2_ddr4_app_mem_init_skip ]
  set c2_ddr4_app_restore_complete [ create_bd_port -dir I c2_ddr4_app_restore_complete ]
  set c2_ddr4_app_sref_ack [ create_bd_port -dir O c2_ddr4_app_sref_ack ]
  set c2_ddr4_app_sref_req [ create_bd_port -dir I c2_ddr4_app_sref_req ]
  set c2_ddr4_app_xsdb_select [ create_bd_port -dir I c2_ddr4_app_xsdb_select ]
  set c2_init_calib_complete [ create_bd_port -dir O c2_init_calib_complete ]
  set c3_ddr4_app_mem_init_skip [ create_bd_port -dir I c3_ddr4_app_mem_init_skip ]
  set c3_ddr4_app_restore_complete [ create_bd_port -dir I c3_ddr4_app_restore_complete ]
  set c3_ddr4_app_sref_ack [ create_bd_port -dir O c3_ddr4_app_sref_ack ]
  set c3_ddr4_app_sref_req [ create_bd_port -dir I c3_ddr4_app_sref_req ]
  set c3_ddr4_app_xsdb_select [ create_bd_port -dir I c3_ddr4_app_xsdb_select ]
  set c3_init_calib_complete [ create_bd_port -dir O c3_init_calib_complete ]
  set sys_rst_ddr_0 [ create_bd_port -dir I -type rst sys_rst_ddr_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $sys_rst_ddr_0
  set sys_rst_ddr_2 [ create_bd_port -dir I -type rst sys_rst_ddr_2 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $sys_rst_ddr_2
  set sys_rst_ddr_3 [ create_bd_port -dir I -type rst sys_rst_ddr_3 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $sys_rst_ddr_3

  # Create instance: DDR_SUB_SYS
  create_hier_cell_DDR_SUB_SYS [current_bd_instance .] DDR_SUB_SYS

  # Create instance: axiLite_interconnect_C0, and set properties
  set axiLite_interconnect_C0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axiLite_interconnect_C0 ]

  # Create instance: axiLite_interconnect_C2, and set properties
  set axiLite_interconnect_C2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axiLite_interconnect_C2 ]

  # Create instance: axiLite_interconnect_C3, and set properties
  set axiLite_interconnect_C3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axiLite_interconnect_C3 ]

  # Create instance: axi_interconnect_C0, and set properties
  set axi_interconnect_C0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_C0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect_C0

  # Create instance: axi_interconnect_C2, and set properties
  set axi_interconnect_C2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_C2 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect_C2

  # Create instance: axi_interconnect_C3, and set properties
  set axi_interconnect_C3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_C3 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect_C3

  # Create instance: proc_sys_reset_axi4lite, and set properties
  set proc_sys_reset_axi4lite [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_axi4lite ]

  # Create interface connections
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI_CTRL_1 [get_bd_intf_pins DDR_SUB_SYS/C0_DDR4_S_AXI_CTRL] [get_bd_intf_pins axiLite_interconnect_C0/M00_AXI]
  connect_bd_intf_net -intf_net C0_SYS_CLK_1 [get_bd_intf_ports C0_SYS_CLK] [get_bd_intf_pins DDR_SUB_SYS/C0_SYS_CLK]
  connect_bd_intf_net -intf_net C2_SYS_CLK_1 [get_bd_intf_ports C2_SYS_CLK] [get_bd_intf_pins DDR_SUB_SYS/C2_SYS_CLK]
  connect_bd_intf_net -intf_net C3_SYS_CLK_1 [get_bd_intf_ports C3_SYS_CLK] [get_bd_intf_pins DDR_SUB_SYS/C3_SYS_CLK]
  connect_bd_intf_net -intf_net C3_XSDB_S_AXIL_1 [get_bd_intf_pins DDR_SUB_SYS/C3_XSDB_S_AXIL] [get_bd_intf_pins axiLite_interconnect_C3/M01_AXI]
  connect_bd_intf_net -intf_net DDR_SUB_SYS1_c0_ddr4 [get_bd_intf_ports c0_ddr4] [get_bd_intf_pins DDR_SUB_SYS/c0_ddr4]
  connect_bd_intf_net -intf_net DDR_SUB_SYS1_c2_ddr4 [get_bd_intf_ports c2_ddr4] [get_bd_intf_pins DDR_SUB_SYS/c2_ddr4]
  connect_bd_intf_net -intf_net DDR_SUB_SYS1_c3_ddr4 [get_bd_intf_ports c3_ddr4] [get_bd_intf_pins DDR_SUB_SYS/c3_ddr4]
  connect_bd_intf_net -intf_net MIG0_DDR4_S_AXI_CTRL_1 [get_bd_intf_ports MIG0_DDR4_S_AXI_CTRL] [get_bd_intf_pins axiLite_interconnect_C0/S00_AXI]
  connect_bd_intf_net -intf_net MIG2_DDR4_S_AXI_CTRL_1 [get_bd_intf_ports MIG2_DDR4_S_AXI_CTRL] [get_bd_intf_pins axiLite_interconnect_C2/S00_AXI]
  connect_bd_intf_net -intf_net MIG3_DDR4_S_AXI_CTRL_1 [get_bd_intf_ports MIG3_DDR4_S_AXI_CTRL] [get_bd_intf_pins axiLite_interconnect_C3/S00_AXI]
  connect_bd_intf_net -intf_net S_AXI_MM_MIG0_1 [get_bd_intf_ports S_AXI_MM_MIG0] [get_bd_intf_pins axi_interconnect_C0/S00_AXI]
  connect_bd_intf_net -intf_net S_AXI_MM_MIG2_1 [get_bd_intf_ports S_AXI_MM_MIG2] [get_bd_intf_pins axi_interconnect_C2/S00_AXI]
  connect_bd_intf_net -intf_net S_AXI_MM_MIG3_1 [get_bd_intf_ports S_AXI_MM_MIG3] [get_bd_intf_pins axi_interconnect_C3/S00_AXI]
  connect_bd_intf_net -intf_net axiLite_interconnect_C0_M01_AXI [get_bd_intf_pins DDR_SUB_SYS/C0_XSDB_S_AXIL] [get_bd_intf_pins axiLite_interconnect_C0/M01_AXI]
  connect_bd_intf_net -intf_net axiLite_interconnect_C2_M00_AXI [get_bd_intf_pins DDR_SUB_SYS/C2_DDR4_S_AXI_CTRL] [get_bd_intf_pins axiLite_interconnect_C2/M00_AXI]
  connect_bd_intf_net -intf_net axiLite_interconnect_C2_M01_AXI [get_bd_intf_pins DDR_SUB_SYS/C2_XSDB_S_AXIL] [get_bd_intf_pins axiLite_interconnect_C2/M01_AXI]
  connect_bd_intf_net -intf_net axiLite_interconnect_C3_M00_AXI [get_bd_intf_pins DDR_SUB_SYS/C3_DDR4_S_AXI_CTRL] [get_bd_intf_pins axiLite_interconnect_C3/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins DDR_SUB_SYS/C0_DDR4_S_AXI] [get_bd_intf_pins axi_interconnect_C0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_C2_M00_AXI [get_bd_intf_pins DDR_SUB_SYS/C2_DDR4_S_AXI] [get_bd_intf_pins axi_interconnect_C2/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_C3_M00_AXI [get_bd_intf_pins DDR_SUB_SYS/C3_DDR4_S_AXI] [get_bd_intf_pins axi_interconnect_C3/M00_AXI]

  # Create port connections
  connect_bd_net -net AXI_RESET_N_2 [get_bd_ports AXI_RESET_N] [get_bd_pins proc_sys_reset_axi4lite/ext_reset_in]
  connect_bd_net -net CLK_IN_250_1 [get_bd_ports CLK_IN_250] [get_bd_pins axiLite_interconnect_C0/ACLK] [get_bd_pins axiLite_interconnect_C0/S00_ACLK] [get_bd_pins axiLite_interconnect_C2/ACLK] [get_bd_pins axiLite_interconnect_C2/S00_ACLK] [get_bd_pins axiLite_interconnect_C3/ACLK] [get_bd_pins axiLite_interconnect_C3/S00_ACLK] [get_bd_pins axi_interconnect_C0/ACLK] [get_bd_pins axi_interconnect_C0/S00_ACLK] [get_bd_pins axi_interconnect_C2/ACLK] [get_bd_pins axi_interconnect_C2/S00_ACLK] [get_bd_pins axi_interconnect_C3/ACLK] [get_bd_pins axi_interconnect_C3/S00_ACLK] [get_bd_pins proc_sys_reset_axi4lite/slowest_sync_clk]
  connect_bd_net -net DDR_SUB_SYS1_c0_init_calib_complete [get_bd_ports c0_init_calib_complete] [get_bd_pins DDR_SUB_SYS/c0_init_calib_complete]
  connect_bd_net -net DDR_SUB_SYS1_c2_init_calib_complete [get_bd_ports c2_init_calib_complete] [get_bd_pins DDR_SUB_SYS/c2_init_calib_complete]
  connect_bd_net -net DDR_SUB_SYS1_c3_ddr4_ui_clk [get_bd_pins DDR_SUB_SYS/c3_ddr4_ui_clk] [get_bd_pins axiLite_interconnect_C3/M00_ACLK] [get_bd_pins axiLite_interconnect_C3/M01_ACLK] [get_bd_pins axi_interconnect_C3/M00_ACLK]
  connect_bd_net -net DDR_SUB_SYS1_c3_init_calib_complete [get_bd_ports c3_init_calib_complete] [get_bd_pins DDR_SUB_SYS/c3_init_calib_complete]
  connect_bd_net -net DDR_SUB_SYS_c0_ddr4_app_sref_ack [get_bd_ports c0_ddr4_app_sref_ack] [get_bd_pins DDR_SUB_SYS/c0_ddr4_app_sref_ack]
  connect_bd_net -net DDR_SUB_SYS_c2_ddr4_app_sref_ack [get_bd_ports c2_ddr4_app_sref_ack] [get_bd_pins DDR_SUB_SYS/c2_ddr4_app_sref_ack]
  connect_bd_net -net DDR_SUB_SYS_c3_ddr4_app_sref_ack [get_bd_ports c3_ddr4_app_sref_ack] [get_bd_pins DDR_SUB_SYS/c3_ddr4_app_sref_ack]
  connect_bd_net -net M00_ACLK_1 [get_bd_pins DDR_SUB_SYS/c0_ddr4_ui_clk] [get_bd_pins axiLite_interconnect_C0/M00_ACLK] [get_bd_pins axiLite_interconnect_C0/M01_ACLK] [get_bd_pins axi_interconnect_C0/M00_ACLK]
  connect_bd_net -net M00_ACLK_2 [get_bd_pins DDR_SUB_SYS/c2_ddr4_ui_clk] [get_bd_pins axiLite_interconnect_C2/M00_ACLK] [get_bd_pins axiLite_interconnect_C2/M01_ACLK] [get_bd_pins axi_interconnect_C2/M00_ACLK]
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins DDR_SUB_SYS/c0_peripheral_aresetn] [get_bd_pins axiLite_interconnect_C0/M00_ARESETN] [get_bd_pins axiLite_interconnect_C0/M01_ARESETN] [get_bd_pins axi_interconnect_C0/M00_ARESETN]
  connect_bd_net -net M00_ARESETN_2 [get_bd_pins DDR_SUB_SYS/c3_peripheral_aresetn] [get_bd_pins axiLite_interconnect_C3/M00_ARESETN] [get_bd_pins axiLite_interconnect_C3/M01_ARESETN] [get_bd_pins axi_interconnect_C3/M00_ARESETN]
  connect_bd_net -net M00_ARESETN_3 [get_bd_pins DDR_SUB_SYS/c2_peripheral_aresetn] [get_bd_pins axiLite_interconnect_C2/M00_ARESETN] [get_bd_pins axiLite_interconnect_C2/M01_ARESETN] [get_bd_pins axi_interconnect_C2/M00_ARESETN]
  connect_bd_net -net c0_ddr4_app_mem_init_skip_0_1 [get_bd_ports c0_ddr4_app_mem_init_skip] [get_bd_pins DDR_SUB_SYS/c0_ddr4_app_mem_init_skip]
  connect_bd_net -net c0_ddr4_app_restore_complete_0_1 [get_bd_ports c0_ddr4_app_restore_complete] [get_bd_pins DDR_SUB_SYS/c0_ddr4_app_restore_complete]
  connect_bd_net -net c0_ddr4_app_sref_req_0_1 [get_bd_ports c0_ddr4_app_sref_req] [get_bd_pins DDR_SUB_SYS/c0_ddr4_app_sref_req]
  connect_bd_net -net c0_ddr4_app_xsdb_select_0_1 [get_bd_ports c0_ddr4_app_xsdb_select] [get_bd_pins DDR_SUB_SYS/c0_ddr4_app_xsdb_select]
  connect_bd_net -net c2_ddr4_app_mem_init_skip_0_1 [get_bd_ports c2_ddr4_app_mem_init_skip] [get_bd_pins DDR_SUB_SYS/c2_ddr4_app_mem_init_skip]
  connect_bd_net -net c2_ddr4_app_restore_complete_0_1 [get_bd_ports c2_ddr4_app_restore_complete] [get_bd_pins DDR_SUB_SYS/c2_ddr4_app_restore_complete]
  connect_bd_net -net c2_ddr4_app_sref_req_0_1 [get_bd_ports c2_ddr4_app_sref_req] [get_bd_pins DDR_SUB_SYS/c2_ddr4_app_sref_req]
  connect_bd_net -net c2_ddr4_app_xsdb_select_0_1 [get_bd_ports c2_ddr4_app_xsdb_select] [get_bd_pins DDR_SUB_SYS/c2_ddr4_app_xsdb_select]
  connect_bd_net -net c3_ddr4_app_mem_init_skip_0_1 [get_bd_ports c3_ddr4_app_mem_init_skip] [get_bd_pins DDR_SUB_SYS/c3_ddr4_app_mem_init_skip]
  connect_bd_net -net c3_ddr4_app_restore_complete_0_1 [get_bd_ports c3_ddr4_app_restore_complete] [get_bd_pins DDR_SUB_SYS/c3_ddr4_app_restore_complete]
  connect_bd_net -net c3_ddr4_app_sref_req_0_1 [get_bd_ports c3_ddr4_app_sref_req] [get_bd_pins DDR_SUB_SYS/c3_ddr4_app_sref_req]
  connect_bd_net -net c3_ddr4_app_xsdb_select_0_1 [get_bd_ports c3_ddr4_app_xsdb_select] [get_bd_pins DDR_SUB_SYS/c3_ddr4_app_xsdb_select]
  connect_bd_net -net proc_sys_reset_axi4lite_peripheral_aresetn [get_bd_pins axiLite_interconnect_C0/ARESETN] [get_bd_pins axiLite_interconnect_C0/S00_ARESETN] [get_bd_pins axiLite_interconnect_C2/ARESETN] [get_bd_pins axiLite_interconnect_C2/S00_ARESETN] [get_bd_pins axiLite_interconnect_C3/ARESETN] [get_bd_pins axiLite_interconnect_C3/S00_ARESETN] [get_bd_pins axi_interconnect_C0/ARESETN] [get_bd_pins axi_interconnect_C0/S00_ARESETN] [get_bd_pins axi_interconnect_C2/ARESETN] [get_bd_pins axi_interconnect_C2/S00_ARESETN] [get_bd_pins axi_interconnect_C3/ARESETN] [get_bd_pins axi_interconnect_C3/S00_ARESETN] [get_bd_pins proc_sys_reset_axi4lite/peripheral_aresetn]
  connect_bd_net -net sys_rst_ddr_0_1 [get_bd_ports sys_rst_ddr_0] [get_bd_pins DDR_SUB_SYS/sys_rst_ddr_0]
  connect_bd_net -net sys_rst_ddr_2_1 [get_bd_ports sys_rst_ddr_2] [get_bd_pins DDR_SUB_SYS/sys_rst_ddr_2]
  connect_bd_net -net sys_rst_ddr_3_1 [get_bd_ports sys_rst_ddr_3] [get_bd_pins DDR_SUB_SYS/sys_rst_ddr_3]

  # Create address segments
  assign_bd_address -offset 0x8000000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces S_AXI_MM_MIG0] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x00120000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MIG0_DDR4_S_AXI_CTRL] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] -force
  assign_bd_address -offset 0x8000000800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces S_AXI_MM_MIG2] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x00140000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MIG2_DDR4_S_AXI_CTRL] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] -force
  assign_bd_address -offset 0x8000000C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces S_AXI_MM_MIG3] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x00160000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MIG3_DDR4_S_AXI_CTRL] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] -force
  assign_bd_address -offset 0x00130000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MIG0_DDR4_S_AXI_CTRL] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_0/myip_AXIL_TO_XSDB_v1_0/s00_axi/reg0] -force
  assign_bd_address -offset 0x00150000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MIG2_DDR4_S_AXI_CTRL] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_2/myip_AXIL_TO_XSDB_v1_0/s00_axi/reg0] -force
  assign_bd_address -offset 0x00170000 -range 0x00010000 -target_address_space [get_bd_addr_spaces MIG3_DDR4_S_AXI_CTRL] [get_bd_addr_segs DDR_SUB_SYS/PR_DDR4_MIG_3/myip_AXIL_TO_XSDB_v1_0/s00_axi/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


