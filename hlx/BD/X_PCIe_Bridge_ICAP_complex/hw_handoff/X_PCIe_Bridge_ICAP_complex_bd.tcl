
################################################################
# This is a generated script based on design: X_PCIe_Bridge_ICAP_complex
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
# source X_PCIe_Bridge_ICAP_complex_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# pr_icap

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
set design_name X_PCIe_Bridge_ICAP_complex

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


# Hierarchical cell: XDMA_BRIDGE
proc create_hier_cell_XDMA_BRIDGE { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_XDMA_BRIDGE() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_PCIEM

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_cq

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rc

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_pcie4:pcie4_cfg_control_rtl:1.0 pcie4_cfg_control

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie_cfg_fc_rtl:1.0 pcie4_cfg_fc

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie3_cfg_interrupt_rtl:1.0 pcie4_cfg_interrupt

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie3_cfg_msg_received_rtl:1.0 pcie4_cfg_mesg_rcvd

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 pcie4_cfg_mesg_tx

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie3_cfg_msi_rtl:1.0 pcie4_cfg_msi

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_pcie4:pcie4_cfg_mgmt_rtl:1.0 pcie_cfg_mgmt_sd

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_cc

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_rq


  # Create pins
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir I -from 1 -to 0 cfg_current_speed_sd
  create_bd_pin -dir I cfg_err_cor_out_sd
  create_bd_pin -dir I cfg_err_fatal_out_sd
  create_bd_pin -dir I cfg_err_nonfatal_out_sd
  create_bd_pin -dir I -from 15 -to 0 cfg_function_status_sd
  create_bd_pin -dir I -from 4 -to 0 cfg_local_error_out_sd
  create_bd_pin -dir I -from 5 -to 0 cfg_ltssm_state_sd
  create_bd_pin -dir I -from 1 -to 0 cfg_max_payload_sd
  create_bd_pin -dir I -from 2 -to 0 cfg_max_read_req_sd
  create_bd_pin -dir I -from 2 -to 0 cfg_negotiated_width_sd
  create_bd_pin -dir I cfg_phy_link_down_sd
  create_bd_pin -dir I -from 1 -to 0 cfg_phy_link_status_sd
  create_bd_pin -dir I cfg_pl_status_change_sd
  create_bd_pin -dir O -type clk clk_out_250M
  create_bd_pin -dir I -from 5 -to 0 pcie_cq_np_req_count_sd
  create_bd_pin -dir O -from 1 -to 0 pcie_cq_np_req_sd
  create_bd_pin -dir I -from 5 -to 0 pcie_rq_seq_num0_sd
  create_bd_pin -dir I -from 5 -to 0 pcie_rq_seq_num1_sd
  create_bd_pin -dir I pcie_rq_seq_num_vld0_sd
  create_bd_pin -dir I pcie_rq_seq_num_vld1_sd
  create_bd_pin -dir I phy_rdy_out_sd
  create_bd_pin -dir I -type rst sys_rst_n
  create_bd_pin -dir I -type clk user_clk_sd
  create_bd_pin -dir I user_lnk_up_sd
  create_bd_pin -dir I -type rst user_reset_sd

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.ECC_TYPE {0} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma_0 ]
  set_property -dict [ list \
   CONFIG.PF0_DEVICE_ID_mqdma {903F} \
   CONFIG.PF1_DEVICE_ID_mqdma {903F} \
   CONFIG.PF2_DEVICE_ID_mqdma {0007} \
   CONFIG.PF3_DEVICE_ID_mqdma {903F} \
   CONFIG.axi_addr_width {64} \
   CONFIG.axi_bypass_64bit_en {true} \
   CONFIG.axi_bypass_prefetchable {false} \
   CONFIG.axi_data_width {512_bit} \
   CONFIG.axibar_highaddr_0 {0xFFFFFFFFFFFFFFFF} \
   CONFIG.axil_master_64bit_en {true} \
   CONFIG.axil_master_prefetchable {false} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axilite_master_scale {Megabytes} \
   CONFIG.axilite_master_size {4} \
   CONFIG.axist_bypass_en {true} \
   CONFIG.axisten_freq {250} \
   CONFIG.c_s_axi_num_read {32} \
   CONFIG.coreclk_freq {500} \
   CONFIG.en_axi_slave_if {True} \
   CONFIG.en_gt_selection {true} \
   CONFIG.functional_mode {DMA} \
   CONFIG.mode_selection {Advanced} \
   CONFIG.mult_pf_des {true} \
   CONFIG.pciebar2axibar_axil_master {0} \
   CONFIG.pf0_bar0_scale {Megabytes} \
   CONFIG.pf0_bar0_size {4} \
   CONFIG.pf0_device_id {903F} \
   CONFIG.pf0_msi_enabled {true} \
   CONFIG.pf0_msix_cap_pba_bir {BAR_3:2} \
   CONFIG.pf0_msix_cap_table_bir {BAR_3:2} \
   CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
   CONFIG.pl_link_cap_max_link_width {X16} \
   CONFIG.plltype {QPLL1} \
   CONFIG.shell_bridge {true} \
   CONFIG.split_dma {true} \
   CONFIG.tl_pf_enable_reg {2} \
   CONFIG.xdma_axilite_slave {false} \
   CONFIG.xdma_pcie_64bit_en {true} \
   CONFIG.xdma_pcie_prefetchable {false} \
 ] $xdma_0

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins m_axis_cq] [get_bd_intf_pins xdma_0/m_axis_cq]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_axis_cc] [get_bd_intf_pins xdma_0/s_axis_cc]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins s_axis_rq] [get_bd_intf_pins xdma_0/s_axis_rq]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins m_axis_rc] [get_bd_intf_pins xdma_0/m_axis_rc]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins pcie4_cfg_mesg_tx] [get_bd_intf_pins xdma_0/pcie4_cfg_mesg_tx]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins pcie4_cfg_mesg_rcvd] [get_bd_intf_pins xdma_0/pcie4_cfg_mesg_rcvd]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins pcie4_cfg_control] [get_bd_intf_pins xdma_0/pcie4_cfg_control]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins pcie4_cfg_fc] [get_bd_intf_pins xdma_0/pcie4_cfg_fc]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins pcie4_cfg_msi] [get_bd_intf_pins xdma_0/pcie4_cfg_msi]
  connect_bd_intf_net -intf_net Conn10 [get_bd_intf_pins pcie4_cfg_interrupt] [get_bd_intf_pins xdma_0/pcie4_cfg_interrupt]
  connect_bd_intf_net -intf_net Conn11 [get_bd_intf_pins pcie_cfg_mgmt_sd] [get_bd_intf_pins xdma_0/pcie_cfg_mgmt_sd]
  connect_bd_intf_net -intf_net S_AXI_PCIEM_1 [get_bd_intf_pins S_AXI_PCIEM] [get_bd_intf_pins xdma_0/S_AXI_B]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI_PCIEM_1] [get_bd_intf_pins S_AXI_PCIEM] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net xdma_0_M_AXI_BYPASS [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins xdma_0/M_AXI_BYPASS]
  connect_bd_intf_net -intf_net xdma_1_M_AXI_LITE [get_bd_intf_pins M_AXI_B] [get_bd_intf_pins xdma_0/M_AXI_LITE]

  # Create port connections
  connect_bd_net -net cfg_current_speed_sd_1 [get_bd_pins cfg_current_speed_sd] [get_bd_pins xdma_0/cfg_current_speed_sd]
  connect_bd_net -net cfg_err_cor_out_sd_1 [get_bd_pins cfg_err_cor_out_sd] [get_bd_pins xdma_0/cfg_err_cor_out_sd]
  connect_bd_net -net cfg_err_fatal_out_sd_1 [get_bd_pins cfg_err_fatal_out_sd] [get_bd_pins xdma_0/cfg_err_fatal_out_sd]
  connect_bd_net -net cfg_err_nonfatal_out_sd_1 [get_bd_pins cfg_err_nonfatal_out_sd] [get_bd_pins xdma_0/cfg_err_nonfatal_out_sd]
  connect_bd_net -net cfg_function_status_sd_1 [get_bd_pins cfg_function_status_sd] [get_bd_pins xdma_0/cfg_function_status_sd]
  connect_bd_net -net cfg_local_error_out_sd_1 [get_bd_pins cfg_local_error_out_sd] [get_bd_pins xdma_0/cfg_local_error_out_sd]
  connect_bd_net -net cfg_ltssm_state_sd_1 [get_bd_pins cfg_ltssm_state_sd] [get_bd_pins xdma_0/cfg_ltssm_state_sd]
  connect_bd_net -net cfg_max_payload_sd_1 [get_bd_pins cfg_max_payload_sd] [get_bd_pins xdma_0/cfg_max_payload_sd]
  connect_bd_net -net cfg_max_read_req_sd_1 [get_bd_pins cfg_max_read_req_sd] [get_bd_pins xdma_0/cfg_max_read_req_sd]
  connect_bd_net -net cfg_negotiated_width_sd_1 [get_bd_pins cfg_negotiated_width_sd] [get_bd_pins xdma_0/cfg_negotiated_width_sd]
  connect_bd_net -net cfg_phy_link_down_sd_1 [get_bd_pins cfg_phy_link_down_sd] [get_bd_pins xdma_0/cfg_phy_link_down_sd]
  connect_bd_net -net cfg_phy_link_status_sd_1 [get_bd_pins cfg_phy_link_status_sd] [get_bd_pins xdma_0/cfg_phy_link_status_sd]
  connect_bd_net -net cfg_pl_status_change_sd_1 [get_bd_pins cfg_pl_status_change_sd] [get_bd_pins xdma_0/cfg_pl_status_change_sd]
  connect_bd_net -net pcie4_uscale_plus_0_user_lnk_up [get_bd_pins user_lnk_up_sd] [get_bd_pins xdma_0/user_lnk_up_sd]
  connect_bd_net -net pcie_cq_np_req_count_sd_1 [get_bd_pins pcie_cq_np_req_count_sd] [get_bd_pins xdma_0/pcie_cq_np_req_count_sd]
  connect_bd_net -net pcie_rq_seq_num0_sd_1 [get_bd_pins pcie_rq_seq_num0_sd] [get_bd_pins xdma_0/pcie_rq_seq_num0_sd]
  connect_bd_net -net pcie_rq_seq_num1_sd_1 [get_bd_pins pcie_rq_seq_num1_sd] [get_bd_pins xdma_0/pcie_rq_seq_num1_sd]
  connect_bd_net -net pcie_rq_seq_num_vld0_sd_1 [get_bd_pins pcie_rq_seq_num_vld0_sd] [get_bd_pins xdma_0/pcie_rq_seq_num_vld0_sd]
  connect_bd_net -net pcie_rq_seq_num_vld1_sd_1 [get_bd_pins pcie_rq_seq_num_vld1_sd] [get_bd_pins xdma_0/pcie_rq_seq_num_vld1_sd]
  connect_bd_net -net phy_rdy_out_sd_1 [get_bd_pins phy_rdy_out_sd] [get_bd_pins xdma_0/phy_rdy_out_sd]
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net user_clk_sd_1 [get_bd_pins user_clk_sd] [get_bd_pins xdma_0/user_clk_sd]
  connect_bd_net -net user_reset_sd_1 [get_bd_pins user_reset_sd] [get_bd_pins xdma_0/user_reset_sd]
  connect_bd_net -net xdma_0_pcie_cq_np_req_sd [get_bd_pins pcie_cq_np_req_sd] [get_bd_pins xdma_0/pcie_cq_np_req_sd]
  connect_bd_net -net xdma_1_axi_aclk [get_bd_pins clk_out_250M] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins system_ila_0/clk] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_1_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins system_ila_0/resetn] [get_bd_pins xdma_0/axi_aresetn]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xdma_0/usr_irq_req] [get_bd_pins xlconstant_2/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: THIN_SHELL_x
proc create_hier_cell_THIN_SHELL_x { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_THIN_SHELL_x() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_A

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_C

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_D

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 EFUSE_i

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SHELL_VER_i

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_cq

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rc

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_pcie4:pcie4_cfg_control_rtl:1.0 pcie4_cfg_control

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_cfg_fc_rtl:1.0 pcie4_cfg_fc

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie3_cfg_interrupt_rtl:1.0 pcie4_cfg_interrupt

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie3_cfg_msg_received_rtl:1.0 pcie4_cfg_mesg_rcvd

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 pcie4_cfg_mesg_tx

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_pcie4:pcie4_cfg_mgmt_rtl:1.0 pcie4_cfg_mgmt

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie3_cfg_msi_rtl:1.0 pcie4_cfg_msi

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_cc

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_rq


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk PCIE_USR_CLK_DIV4_62_5MHz
  create_bd_pin -dir O -from 0 -to 0 PR_DECOUPLE
  create_bd_pin -dir O -from 0 -to 0 RESET_GATE
  create_bd_pin -dir O -from 3 -to 0 SHELL_TO_CL_RST
  create_bd_pin -dir O -from 1 -to 0 cfg_current_speed
  create_bd_pin -dir O cfg_err_cor_out
  create_bd_pin -dir O cfg_err_fatal_out
  create_bd_pin -dir O cfg_err_nonfatal_out
  create_bd_pin -dir O -from 15 -to 0 cfg_function_status
  create_bd_pin -dir O -from 4 -to 0 cfg_local_error_out
  create_bd_pin -dir O -from 5 -to 0 cfg_ltssm_state
  create_bd_pin -dir O -from 1 -to 0 cfg_max_payload
  create_bd_pin -dir O -from 2 -to 0 cfg_max_read_req
  create_bd_pin -dir O -from 2 -to 0 cfg_negotiated_width
  create_bd_pin -dir O cfg_phy_link_down
  create_bd_pin -dir O -from 1 -to 0 cfg_phy_link_status
  create_bd_pin -dir O cfg_pl_status_change
  create_bd_pin -dir I -from 1 -to 0 m_pcie_cq_np_req
  create_bd_pin -dir O -from 5 -to 0 pcie_cq_np_req_count
  create_bd_pin -dir O -from 5 -to 0 pcie_rq_seq_num0
  create_bd_pin -dir O -from 5 -to 0 pcie_rq_seq_num1
  create_bd_pin -dir O pcie_rq_seq_num_vld0
  create_bd_pin -dir O pcie_rq_seq_num_vld1
  create_bd_pin -dir O phy_rdy_out
  create_bd_pin -dir I -type clk sys_clk
  create_bd_pin -dir I -type clk sys_clk_gt
  create_bd_pin -dir I -type rst sys_rst_n
  create_bd_pin -dir O -type clk user_clk
  create_bd_pin -dir O user_lnk_up
  create_bd_pin -dir O -type rst user_reset

  # Create instance: axi_bram_TAP, and set properties
  set axi_bram_TAP [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_TAP ]
  set_property -dict [ list \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
 ] $axi_bram_TAP

  # Create instance: axi_bram_ctrl_1_bram, and set properties
  set axi_bram_ctrl_1_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_1_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
 ] $axi_bram_ctrl_1_bram

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {4} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_DEVICE_DNA_AB, and set properties
  set axi_gpio_DEVICE_DNA_AB [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_DEVICE_DNA_AB ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_DEVICE_DNA_AB

  # Create instance: axi_gpio_DEVICE_DNA_CD, and set properties
  set axi_gpio_DEVICE_DNA_CD [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_DEVICE_DNA_CD ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_DEVICE_DNA_CD

  # Create instance: axi_gpio_PR_DECOUPLE, and set properties
  set axi_gpio_PR_DECOUPLE [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_PR_DECOUPLE ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_PR_DECOUPLE

  # Create instance: axi_gpio_RESET_GATE, and set properties
  set axi_gpio_RESET_GATE [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_RESET_GATE ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_RESET_GATE

  # Create instance: axi_gpio_SHELL_TO_CL_OUT, and set properties
  set axi_gpio_SHELL_TO_CL_OUT [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_SHELL_TO_CL_OUT ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_GPIO2_WIDTH {4} \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_SHELL_TO_CL_OUT

  # Create instance: axi_gpio_SHELL_VERSION_EFUSE, and set properties
  set axi_gpio_SHELL_VERSION_EFUSE [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_SHELL_VERSION_EFUSE ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_SHELL_VERSION_EFUSE

  # Create instance: axi_hwicap_0, and set properties
  set axi_hwicap_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hwicap:3.0 axi_hwicap_0 ]
  set_property -dict [ list \
   CONFIG.C_ICAP_EXTERNAL {1} \
   CONFIG.C_READ_FIFO_DEPTH {256} \
   CONFIG.C_WRITE_FIFO_DEPTH {1024} \
 ] $axi_hwicap_0

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {2} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_USE_STARTUP {1} \
   CONFIG.C_USE_STARTUP_INT {1} \
 ] $axi_quad_spi_0

  # Create instance: axiltap_0, and set properties
  set axiltap_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie_axi4lite_tap:1.0 axiltap_0 ]
  set_property -dict [ list \
   CONFIG.BAR_SIZE {0xFFFFFFFFFFF00000} \
   CONFIG.TARGET_FUNCTION {0x1} \
 ] $axiltap_0

  # Create instance: credit_handler_0, and set properties
  set credit_handler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_pcie_credit_handler:2.0 credit_handler_0 ]

  # Create instance: pcie4_uscale_plus_0, and set properties
  set pcie4_uscale_plus_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie4_uscale_plus:1.3 pcie4_uscale_plus_0 ]
  set_property -dict [ list \
   CONFIG.AXISTEN_IF_CQ_ALIGNMENT_MODE {Address_Aligned} \
   CONFIG.AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE {true} \
   CONFIG.AXISTEN_IF_EXT_512_RQ_STRADDLE {true} \
   CONFIG.MSI_X_OPTIONS {None} \
   CONFIG.PF0_DEVICE_ID {903f} \
   CONFIG.PF0_MSIX_CAP_PBA_BIR {BAR_0} \
   CONFIG.PF0_MSIX_CAP_PBA_OFFSET {00000000} \
   CONFIG.PF0_MSIX_CAP_TABLE_BIR {BAR_0} \
   CONFIG.PF0_MSIX_CAP_TABLE_OFFSET {00000000} \
   CONFIG.PF0_MSIX_CAP_TABLE_SIZE {0} \
   CONFIG.PF1_DEVICE_ID {923f} \
   CONFIG.PF1_INTERRUPT_PIN {INTA} \
   CONFIG.PF1_MSIX_CAP_PBA_BIR {BAR_1:0} \
   CONFIG.PF1_MSIX_CAP_PBA_OFFSET {00000000} \
   CONFIG.PF1_MSIX_CAP_TABLE_BIR {BAR_1:0} \
   CONFIG.PF1_MSIX_CAP_TABLE_OFFSET {00000000} \
   CONFIG.PF1_MSIX_CAP_TABLE_SIZE {0} \
   CONFIG.PF2_DEVICE_ID {0007} \
   CONFIG.PF3_DEVICE_ID {963F} \
   CONFIG.PL_DISABLE_LANE_REVERSAL {TRUE} \
   CONFIG.PL_LINK_CAP_MAX_LINK_SPEED {8.0_GT/s} \
   CONFIG.PL_LINK_CAP_MAX_LINK_WIDTH {X16} \
   CONFIG.TL_PF_ENABLE_REG {2} \
   CONFIG.axisten_freq {250} \
   CONFIG.axisten_if_enable_client_tag {true} \
   CONFIG.axisten_if_width {512_bit} \
   CONFIG.cfg_pm_if {false} \
   CONFIG.copy_pf0 {false} \
   CONFIG.coreclk_freq {500} \
   CONFIG.en_gt_selection {true} \
   CONFIG.ext_pcie_cfg_space_enabled {false} \
   CONFIG.mode_selection {Advanced} \
   CONFIG.msix_type {HARD} \
   CONFIG.pf0_bar0_scale {Megabytes} \
   CONFIG.pf0_bar0_size {4} \
   CONFIG.pf0_bar1_enabled {false} \
   CONFIG.pf0_bar1_scale {Kilobytes} \
   CONFIG.pf0_bar1_size {128} \
   CONFIG.pf0_bar1_type {N/A} \
   CONFIG.pf0_bar2_enabled {true} \
   CONFIG.pf0_bar2_scale {Kilobytes} \
   CONFIG.pf0_bar2_size {64} \
   CONFIG.pf0_bar2_type {Memory} \
   CONFIG.pf0_bar4_enabled {true} \
   CONFIG.pf0_bar4_scale {Megabytes} \
   CONFIG.pf0_bar4_size {1} \
   CONFIG.pf0_bar4_type {Memory} \
   CONFIG.pf0_msi_enabled {true} \
   CONFIG.pf0_msix_enabled {false} \
   CONFIG.pf1_bar0_64bit {true} \
   CONFIG.pf1_bar0_scale {Megabytes} \
   CONFIG.pf1_bar0_size {1} \
   CONFIG.pf1_bar1_enabled {false} \
   CONFIG.pf1_bar1_scale {Kilobytes} \
   CONFIG.pf1_bar1_size {128} \
   CONFIG.pf1_bar1_type {N/A} \
   CONFIG.pf1_bar2_enabled {false} \
   CONFIG.pf1_bar2_scale {Kilobytes} \
   CONFIG.pf1_bar2_size {128} \
   CONFIG.pf1_bar2_type {N/A} \
   CONFIG.pf1_bar4_enabled {false} \
   CONFIG.pf1_bar4_scale {Kilobytes} \
   CONFIG.pf1_bar4_size {128} \
   CONFIG.pf1_bar4_type {N/A} \
   CONFIG.pf1_msix_enabled {false} \
   CONFIG.pf1_vendor_id {10EE} \
   CONFIG.pf2_bar0_scale {Megabytes} \
   CONFIG.pf2_bar0_size {4} \
   CONFIG.pf2_bar1_enabled {false} \
   CONFIG.pf2_bar1_scale {Kilobytes} \
   CONFIG.pf2_bar1_size {128} \
   CONFIG.pf2_bar1_type {N/A} \
   CONFIG.pf2_bar2_enabled {true} \
   CONFIG.pf2_bar2_scale {Kilobytes} \
   CONFIG.pf2_bar2_size {64} \
   CONFIG.pf2_bar2_type {Memory} \
   CONFIG.pf2_bar4_enabled {true} \
   CONFIG.pf2_bar4_scale {Megabytes} \
   CONFIG.pf2_bar4_size {1} \
   CONFIG.pf2_bar4_type {Memory} \
   CONFIG.pf2_vendor_id {10EE} \
   CONFIG.pf3_bar0_scale {Megabytes} \
   CONFIG.pf3_bar0_size {4} \
   CONFIG.pf3_bar1_enabled {false} \
   CONFIG.pf3_bar1_scale {Kilobytes} \
   CONFIG.pf3_bar1_size {128} \
   CONFIG.pf3_bar1_type {N/A} \
   CONFIG.pf3_bar2_enabled {true} \
   CONFIG.pf3_bar2_scale {Kilobytes} \
   CONFIG.pf3_bar2_size {64} \
   CONFIG.pf3_bar2_type {Memory} \
   CONFIG.pf3_bar4_enabled {true} \
   CONFIG.pf3_bar4_scale {Megabytes} \
   CONFIG.pf3_bar4_size {1} \
   CONFIG.pf3_bar4_type {Memory} \
   CONFIG.pf3_vendor_id {10EE} \
   CONFIG.plltype {QPLL1} \
   CONFIG.tx_fc_if {false} \
   CONFIG.type1_membase_memlimit_enable {Disabled} \
   CONFIG.type1_prefetchable_membase_memlimit {Disabled} \
   CONFIG.vendor_id {10EE} \
 ] $pcie4_uscale_plus_0

  # Create instance: pr_icap_0, and set properties
  set block_name pr_icap
  set block_cell_name pr_icap_0
  if { [catch {set pr_icap_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pr_icap_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.HAS_ARESETN {0} \
   CONFIG.NUM_CLKS {2} \
   CONFIG.NUM_MI {11} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: system_management_wiz_0, and set properties
  set system_management_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_management_wiz:1.3 system_management_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CHANNEL_ENABLE_VP_VN {false} \
 ] $system_management_wiz_0

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUFGCE_DIV {4} \
   CONFIG.C_BUF_TYPE {BUFGCE_DIV} \
 ] $util_ds_buf_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net DBG_axiltap_0_M_AXIS_PCIE_CC [get_bd_intf_pins axiltap_0/M_AXIS_PCIE_CC] [get_bd_intf_pins pcie4_uscale_plus_0/s_axis_cc]
  connect_bd_intf_net -intf_net DBG_axiltap_0_M_AXIS_PCIE_CQ [get_bd_intf_pins axiltap_0/S_AXIS_PCIE_CQ] [get_bd_intf_pins pcie4_uscale_plus_0/m_axis_cq]
  connect_bd_intf_net -intf_net [get_bd_intf_nets DBG_axiltap_0_M_AXIS_PCIE_CQ] [get_bd_intf_pins axiltap_0/S_AXIS_PCIE_CQ] [get_bd_intf_pins credit_handler_0/mon_axis_cq]
  connect_bd_intf_net -intf_net DEVICE_DNA_A [get_bd_intf_pins DEVICE_DNA_A] [get_bd_intf_pins axi_gpio_DEVICE_DNA_AB/GPIO]
  connect_bd_intf_net -intf_net DEVICE_DNA_B [get_bd_intf_pins DEVICE_DNA_B] [get_bd_intf_pins axi_gpio_DEVICE_DNA_AB/GPIO2]
  connect_bd_intf_net -intf_net DEVICE_DNA_C [get_bd_intf_pins DEVICE_DNA_C] [get_bd_intf_pins axi_gpio_DEVICE_DNA_CD/GPIO]
  connect_bd_intf_net -intf_net DEVICE_DNA_D [get_bd_intf_pins DEVICE_DNA_D] [get_bd_intf_pins axi_gpio_DEVICE_DNA_CD/GPIO2]
  connect_bd_intf_net -intf_net EFUSE_i [get_bd_intf_pins EFUSE_i] [get_bd_intf_pins axi_gpio_SHELL_VERSION_EFUSE/GPIO]
  connect_bd_intf_net -intf_net SHELL_VER_i [get_bd_intf_pins SHELL_VER_i] [get_bd_intf_pins axi_gpio_SHELL_VERSION_EFUSE/GPIO2]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins axi_bram_TAP/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_1_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTB [get_bd_intf_pins axi_bram_TAP/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_1_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axiltap_0_M_AXI [get_bd_intf_pins axiltap_0/M_AXI] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axiltap_0_M_AXIS_BYPASS_CQ [get_bd_intf_pins m_axis_cq] [get_bd_intf_pins axiltap_0/M_AXIS_BYPASS_CQ]
  connect_bd_intf_net -intf_net [get_bd_intf_nets axiltap_0_M_AXIS_BYPASS_CQ] [get_bd_intf_pins m_axis_cq] [get_bd_intf_pins credit_handler_0/mon_axis_cq_usr]
  connect_bd_intf_net -intf_net axiltap_M_AXI [get_bd_intf_pins axi_bram_TAP/S_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net pcie4_uscale_plus_0_m_axis_rc [get_bd_intf_pins m_axis_rc] [get_bd_intf_pins pcie4_uscale_plus_0/m_axis_rc]
  connect_bd_intf_net -intf_net pcie4_uscale_plus_0_pcie4_cfg_fc [get_bd_intf_pins pcie4_cfg_fc] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_fc]
  connect_bd_intf_net -intf_net pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd [get_bd_intf_pins pcie4_cfg_mesg_rcvd] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_mesg_rcvd]
  connect_bd_intf_net -intf_net pcie4_uscale_plus_0_pcie4_cfg_mesg_tx [get_bd_intf_pins pcie4_cfg_mesg_tx] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_mesg_tx]
  connect_bd_intf_net -intf_net pcie4_uscale_plus_0_pcie4_mgt [get_bd_intf_pins pcie_mgt] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_mgt]
  connect_bd_intf_net -intf_net smartconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins smartconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M02_AXI [get_bd_intf_pins axi_hwicap_0/S_AXI_LITE] [get_bd_intf_pins smartconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M03_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins smartconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M04_AXI [get_bd_intf_pins smartconnect_0/M04_AXI] [get_bd_intf_pins system_management_wiz_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net smartconnect_0_M05_AXI [get_bd_intf_pins axi_gpio_SHELL_VERSION_EFUSE/S_AXI] [get_bd_intf_pins smartconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M06_AXI [get_bd_intf_pins axi_gpio_DEVICE_DNA_AB/S_AXI] [get_bd_intf_pins smartconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M07_AXI [get_bd_intf_pins axi_gpio_DEVICE_DNA_CD/S_AXI] [get_bd_intf_pins smartconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M08_AXI [get_bd_intf_pins axi_gpio_SHELL_TO_CL_OUT/S_AXI] [get_bd_intf_pins smartconnect_0/M08_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M09_AXI [get_bd_intf_pins axi_gpio_RESET_GATE/S_AXI] [get_bd_intf_pins smartconnect_0/M09_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M10_AXI [get_bd_intf_pins axi_gpio_PR_DECOUPLE/S_AXI] [get_bd_intf_pins smartconnect_0/M10_AXI]
  connect_bd_intf_net -intf_net xdma_0_pcie4_cfg_control [get_bd_intf_pins pcie4_cfg_control] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_control]
  connect_bd_intf_net -intf_net xdma_0_pcie4_cfg_interrupt [get_bd_intf_pins pcie4_cfg_interrupt] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_interrupt]
  connect_bd_intf_net -intf_net xdma_0_pcie4_cfg_msi [get_bd_intf_pins pcie4_cfg_msi] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_msi]
  connect_bd_intf_net -intf_net xdma_0_pcie_cfg_mgmt_sd [get_bd_intf_pins pcie4_cfg_mgmt] [get_bd_intf_pins pcie4_uscale_plus_0/pcie4_cfg_mgmt]
  connect_bd_intf_net -intf_net xdma_0_s_axis_cc [get_bd_intf_pins s_axis_cc] [get_bd_intf_pins axiltap_0/S_AXIS_BYPASS_CC]
  connect_bd_intf_net -intf_net xdma_0_s_axis_rq [get_bd_intf_pins s_axis_rq] [get_bd_intf_pins pcie4_uscale_plus_0/s_axis_rq]

  # Create port connections
  connect_bd_net -net PCIE_USR_CLK_DIV4_62_5MHz [get_bd_pins PCIE_USR_CLK_DIV4_62_5MHz] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_DEVICE_DNA_AB/s_axi_aclk] [get_bd_pins axi_gpio_DEVICE_DNA_CD/s_axi_aclk] [get_bd_pins axi_gpio_PR_DECOUPLE/s_axi_aclk] [get_bd_pins axi_gpio_RESET_GATE/s_axi_aclk] [get_bd_pins axi_gpio_SHELL_TO_CL_OUT/s_axi_aclk] [get_bd_pins axi_gpio_SHELL_VERSION_EFUSE/s_axi_aclk] [get_bd_pins axi_hwicap_0/icap_clk] [get_bd_pins axi_hwicap_0/s_axi_aclk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins pr_icap_0/icap_clk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk1] [get_bd_pins system_management_wiz_0/s_axi_aclk] [get_bd_pins util_ds_buf_0/BUFGCE_O]
  connect_bd_net -net PR_DECOUPLE [get_bd_pins PR_DECOUPLE] [get_bd_pins axi_gpio_PR_DECOUPLE/gpio2_io_i] [get_bd_pins axi_gpio_PR_DECOUPLE/gpio_io_o]
  connect_bd_net -net RESET_GATE [get_bd_pins RESET_GATE] [get_bd_pins axi_gpio_RESET_GATE/gpio_io_o]
  connect_bd_net -net SHELL_TO_CL_RST [get_bd_pins SHELL_TO_CL_RST] [get_bd_pins axi_gpio_SHELL_TO_CL_OUT/gpio2_io_i] [get_bd_pins axi_gpio_SHELL_TO_CL_OUT/gpio_io_o]
  connect_bd_net -net axi_hwicap_0_icap_csib [get_bd_pins axi_hwicap_0/icap_csib] [get_bd_pins pr_icap_0/icap_csib]
  connect_bd_net -net axi_hwicap_0_icap_o [get_bd_pins axi_hwicap_0/icap_o] [get_bd_pins pr_icap_0/icap_din]
  connect_bd_net -net axi_hwicap_0_icap_rdwrb [get_bd_pins axi_hwicap_0/icap_rdwrb] [get_bd_pins pr_icap_0/icap_rdwrb]
  connect_bd_net -net credit_handler_0_m_cfg_current_speed [get_bd_pins cfg_current_speed] [get_bd_pins credit_handler_0/m_cfg_current_speed]
  connect_bd_net -net credit_handler_0_m_cfg_err_cor_out [get_bd_pins cfg_err_cor_out] [get_bd_pins credit_handler_0/m_cfg_err_cor_out]
  connect_bd_net -net credit_handler_0_m_cfg_err_fatal_out [get_bd_pins cfg_err_fatal_out] [get_bd_pins credit_handler_0/m_cfg_err_fatal_out]
  connect_bd_net -net credit_handler_0_m_cfg_err_nonfatal_out [get_bd_pins cfg_err_nonfatal_out] [get_bd_pins credit_handler_0/m_cfg_err_nonfatal_out]
  connect_bd_net -net credit_handler_0_m_cfg_function_status [get_bd_pins cfg_function_status] [get_bd_pins credit_handler_0/m_cfg_function_status]
  connect_bd_net -net credit_handler_0_m_cfg_local_error_out [get_bd_pins cfg_local_error_out] [get_bd_pins credit_handler_0/m_cfg_local_error_out]
  connect_bd_net -net credit_handler_0_m_cfg_ltssm_state [get_bd_pins cfg_ltssm_state] [get_bd_pins credit_handler_0/m_cfg_ltssm_state]
  connect_bd_net -net credit_handler_0_m_cfg_max_payload [get_bd_pins cfg_max_payload] [get_bd_pins credit_handler_0/m_cfg_max_payload]
  connect_bd_net -net credit_handler_0_m_cfg_max_read_req [get_bd_pins cfg_max_read_req] [get_bd_pins credit_handler_0/m_cfg_max_read_req]
  connect_bd_net -net credit_handler_0_m_cfg_negotiated_width [get_bd_pins cfg_negotiated_width] [get_bd_pins credit_handler_0/m_cfg_negotiated_width]
  connect_bd_net -net credit_handler_0_m_cfg_phy_link_down [get_bd_pins cfg_phy_link_down] [get_bd_pins credit_handler_0/m_cfg_phy_link_down]
  connect_bd_net -net credit_handler_0_m_cfg_phy_link_status [get_bd_pins cfg_phy_link_status] [get_bd_pins credit_handler_0/m_cfg_phy_link_status]
  connect_bd_net -net credit_handler_0_m_cfg_pl_status_change [get_bd_pins cfg_pl_status_change] [get_bd_pins credit_handler_0/m_cfg_pl_status_change]
  connect_bd_net -net credit_handler_0_m_pcie_cq_np_req_count [get_bd_pins pcie_cq_np_req_count] [get_bd_pins credit_handler_0/m_pcie_cq_np_req_count]
  connect_bd_net -net credit_handler_0_m_pcie_rq_seq_num0 [get_bd_pins pcie_rq_seq_num0] [get_bd_pins credit_handler_0/m_pcie_rq_seq_num0]
  connect_bd_net -net credit_handler_0_m_pcie_rq_seq_num1 [get_bd_pins pcie_rq_seq_num1] [get_bd_pins credit_handler_0/m_pcie_rq_seq_num1]
  connect_bd_net -net credit_handler_0_m_pcie_rq_seq_num_vld0 [get_bd_pins pcie_rq_seq_num_vld0] [get_bd_pins credit_handler_0/m_pcie_rq_seq_num_vld0]
  connect_bd_net -net credit_handler_0_m_pcie_rq_seq_num_vld1 [get_bd_pins pcie_rq_seq_num_vld1] [get_bd_pins credit_handler_0/m_pcie_rq_seq_num_vld1]
  connect_bd_net -net credit_handler_0_s_pcie_cq_np_req [get_bd_pins credit_handler_0/s_pcie_cq_np_req] [get_bd_pins pcie4_uscale_plus_0/pcie_cq_np_req]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_current_speed [get_bd_pins credit_handler_0/s_cfg_current_speed] [get_bd_pins pcie4_uscale_plus_0/cfg_current_speed]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_err_cor_out [get_bd_pins credit_handler_0/s_cfg_err_cor_out] [get_bd_pins pcie4_uscale_plus_0/cfg_err_cor_out]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_err_fatal_out [get_bd_pins credit_handler_0/s_cfg_err_fatal_out] [get_bd_pins pcie4_uscale_plus_0/cfg_err_fatal_out]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_err_nonfatal_out [get_bd_pins credit_handler_0/s_cfg_err_nonfatal_out] [get_bd_pins pcie4_uscale_plus_0/cfg_err_nonfatal_out]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_function_status [get_bd_pins credit_handler_0/s_cfg_function_status] [get_bd_pins pcie4_uscale_plus_0/cfg_function_status]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_local_error_out [get_bd_pins credit_handler_0/s_cfg_local_error_out] [get_bd_pins pcie4_uscale_plus_0/cfg_local_error_out]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_ltssm_state [get_bd_pins credit_handler_0/s_cfg_ltssm_state] [get_bd_pins pcie4_uscale_plus_0/cfg_ltssm_state]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_max_payload [get_bd_pins credit_handler_0/s_cfg_max_payload] [get_bd_pins pcie4_uscale_plus_0/cfg_max_payload]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_max_read_req [get_bd_pins credit_handler_0/s_cfg_max_read_req] [get_bd_pins pcie4_uscale_plus_0/cfg_max_read_req]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_negotiated_width [get_bd_pins credit_handler_0/s_cfg_negotiated_width] [get_bd_pins pcie4_uscale_plus_0/cfg_negotiated_width]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_phy_link_down [get_bd_pins credit_handler_0/s_cfg_phy_link_down] [get_bd_pins pcie4_uscale_plus_0/cfg_phy_link_down]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_phy_link_status [get_bd_pins credit_handler_0/s_cfg_phy_link_status] [get_bd_pins pcie4_uscale_plus_0/cfg_phy_link_status]
  connect_bd_net -net pcie4_uscale_plus_0_cfg_pl_status_change [get_bd_pins credit_handler_0/s_cfg_pl_status_change] [get_bd_pins pcie4_uscale_plus_0/cfg_pl_status_change]
  connect_bd_net -net pcie4_uscale_plus_0_pcie_cq_np_req_count [get_bd_pins credit_handler_0/s_pcie_cq_np_req_count] [get_bd_pins pcie4_uscale_plus_0/pcie_cq_np_req_count]
  connect_bd_net -net pcie4_uscale_plus_0_pcie_rq_seq_num0 [get_bd_pins credit_handler_0/s_pcie_rq_seq_num0] [get_bd_pins pcie4_uscale_plus_0/pcie_rq_seq_num0]
  connect_bd_net -net pcie4_uscale_plus_0_pcie_rq_seq_num1 [get_bd_pins credit_handler_0/s_pcie_rq_seq_num1] [get_bd_pins pcie4_uscale_plus_0/pcie_rq_seq_num1]
  connect_bd_net -net pcie4_uscale_plus_0_pcie_rq_seq_num_vld0 [get_bd_pins credit_handler_0/s_pcie_rq_seq_num_vld0] [get_bd_pins pcie4_uscale_plus_0/pcie_rq_seq_num_vld0]
  connect_bd_net -net pcie4_uscale_plus_0_pcie_rq_seq_num_vld1 [get_bd_pins credit_handler_0/s_pcie_rq_seq_num_vld1] [get_bd_pins pcie4_uscale_plus_0/pcie_rq_seq_num_vld1]
  connect_bd_net -net pcie4_uscale_plus_0_phy_rdy_out [get_bd_pins phy_rdy_out] [get_bd_pins pcie4_uscale_plus_0/phy_rdy_out]
  connect_bd_net -net pcie4_uscale_plus_0_user_clk1 [get_bd_pins user_clk] [get_bd_pins axi_bram_TAP/s_axi_aclk] [get_bd_pins axiltap_0/aclk] [get_bd_pins credit_handler_0/user_clk] [get_bd_pins pcie4_uscale_plus_0/user_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk] [get_bd_pins util_ds_buf_0/BUFGCE_I]
  connect_bd_net -net pcie4_uscale_plus_0_user_lnk_up [get_bd_pins user_lnk_up] [get_bd_pins credit_handler_0/pcie_link_up] [get_bd_pins pcie4_uscale_plus_0/user_lnk_up]
  connect_bd_net -net pcie4_uscale_plus_0_user_reset [get_bd_pins user_reset] [get_bd_pins pcie4_uscale_plus_0/user_reset] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net pr_icap_0_icap_avail [get_bd_pins axi_hwicap_0/icap_avail] [get_bd_pins pr_icap_0/icap_avail]
  connect_bd_net -net pr_icap_0_icap_dout [get_bd_pins axi_hwicap_0/icap_i] [get_bd_pins pr_icap_0/icap_dout]
  connect_bd_net -net pr_icap_0_icap_pr_status [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins pr_icap_0/icap_pr_status]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_bram_TAP/s_axi_aresetn] [get_bd_pins axiltap_0/aresetn] [get_bd_pins credit_handler_0/user_resetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_DEVICE_DNA_AB/s_axi_aresetn] [get_bd_pins axi_gpio_DEVICE_DNA_CD/s_axi_aresetn] [get_bd_pins axi_gpio_PR_DECOUPLE/s_axi_aresetn] [get_bd_pins axi_gpio_RESET_GATE/s_axi_aresetn] [get_bd_pins axi_gpio_SHELL_TO_CL_OUT/s_axi_aresetn] [get_bd_pins axi_gpio_SHELL_VERSION_EFUSE/s_axi_aresetn] [get_bd_pins axi_hwicap_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins proc_sys_reset_1/interconnect_aresetn] [get_bd_pins system_management_wiz_0/s_axi_aresetn]
  connect_bd_net -net sys_clk_1 [get_bd_pins sys_clk] [get_bd_pins pcie4_uscale_plus_0/sys_clk]
  connect_bd_net -net sys_clk_gt_1 [get_bd_pins sys_clk_gt] [get_bd_pins pcie4_uscale_plus_0/sys_clk_gt]
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins pcie4_uscale_plus_0/sys_reset]
  connect_bd_net -net xdma_0_pcie_cq_np_req_sd [get_bd_pins m_pcie_cq_np_req] [get_bd_pins credit_handler_0/m_pcie_cq_np_req]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_hwicap_0/cap_rel] [get_bd_pins axi_hwicap_0/eos_in] [get_bd_pins axi_quad_spi_0/usrcclkts] [get_bd_pins credit_handler_0/pcie_link_up_toggle_clear] [get_bd_pins util_ds_buf_0/BUFGCE_CLR] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins axi_hwicap_0/cap_gnt] [get_bd_pins util_ds_buf_0/BUFGCE_CE] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SHX
proc create_hier_cell_SHX { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_SHX() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_PCIEM

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_cq

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rc

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_pcie4:pcie4_cfg_control_rtl:1.0 pcie4_cfg_control

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie_cfg_fc_rtl:1.0 pcie4_cfg_fc

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie3_cfg_interrupt_rtl:1.0 pcie4_cfg_interrupt

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie3_cfg_msg_received_rtl:1.0 pcie4_cfg_mesg_rcvd

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 pcie4_cfg_mesg_tx

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie3_cfg_msi_rtl:1.0 pcie4_cfg_msi

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_pcie4:pcie4_cfg_mgmt_rtl:1.0 pcie_cfg_mgmt_sd

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_cc

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_rq


  # Create pins
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir I -from 1 -to 0 cfg_current_speed_sd
  create_bd_pin -dir I cfg_err_cor_out_sd
  create_bd_pin -dir I cfg_err_fatal_out_sd
  create_bd_pin -dir I cfg_err_nonfatal_out_sd
  create_bd_pin -dir I -from 15 -to 0 cfg_function_status_sd
  create_bd_pin -dir I -from 4 -to 0 cfg_local_error_out_sd
  create_bd_pin -dir I -from 5 -to 0 cfg_ltssm_state_sd
  create_bd_pin -dir I -from 1 -to 0 cfg_max_payload_sd
  create_bd_pin -dir I -from 2 -to 0 cfg_max_read_req_sd
  create_bd_pin -dir I -from 2 -to 0 cfg_negotiated_width_sd
  create_bd_pin -dir I cfg_phy_link_down_sd
  create_bd_pin -dir I -from 1 -to 0 cfg_phy_link_status_sd
  create_bd_pin -dir I cfg_pl_status_change_sd
  create_bd_pin -dir O -type clk clk_out_250M
  create_bd_pin -dir I -from 5 -to 0 pcie_cq_np_req_count_sd
  create_bd_pin -dir O -from 1 -to 0 pcie_cq_np_req_sd
  create_bd_pin -dir I -from 5 -to 0 pcie_rq_seq_num0_sd
  create_bd_pin -dir I -from 5 -to 0 pcie_rq_seq_num1_sd
  create_bd_pin -dir I pcie_rq_seq_num_vld0_sd
  create_bd_pin -dir I pcie_rq_seq_num_vld1_sd
  create_bd_pin -dir I phy_rdy_out_sd
  create_bd_pin -dir I -type rst sys_rst_n
  create_bd_pin -dir I -type clk user_clk_sd
  create_bd_pin -dir I user_lnk_up_sd
  create_bd_pin -dir I -type rst user_reset_sd

  # Create instance: XDMA_BRIDGE
  create_hier_cell_XDMA_BRIDGE $hier_obj XDMA_BRIDGE

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins m_axis_cq] [get_bd_intf_pins XDMA_BRIDGE/m_axis_cq]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_axis_cc] [get_bd_intf_pins XDMA_BRIDGE/s_axis_cc]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins s_axis_rq] [get_bd_intf_pins XDMA_BRIDGE/s_axis_rq]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins m_axis_rc] [get_bd_intf_pins XDMA_BRIDGE/m_axis_rc]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins pcie4_cfg_mesg_tx] [get_bd_intf_pins XDMA_BRIDGE/pcie4_cfg_mesg_tx]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins pcie4_cfg_mesg_rcvd] [get_bd_intf_pins XDMA_BRIDGE/pcie4_cfg_mesg_rcvd]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins pcie4_cfg_control] [get_bd_intf_pins XDMA_BRIDGE/pcie4_cfg_control]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins pcie4_cfg_fc] [get_bd_intf_pins XDMA_BRIDGE/pcie4_cfg_fc]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins pcie4_cfg_msi] [get_bd_intf_pins XDMA_BRIDGE/pcie4_cfg_msi]
  connect_bd_intf_net -intf_net Conn10 [get_bd_intf_pins pcie4_cfg_interrupt] [get_bd_intf_pins XDMA_BRIDGE/pcie4_cfg_interrupt]
  connect_bd_intf_net -intf_net Conn11 [get_bd_intf_pins pcie_cfg_mgmt_sd] [get_bd_intf_pins XDMA_BRIDGE/pcie_cfg_mgmt_sd]
  connect_bd_intf_net -intf_net S_AXI_PCIEM_1 [get_bd_intf_pins S_AXI_PCIEM] [get_bd_intf_pins XDMA_BRIDGE/S_AXI_PCIEM]
  connect_bd_intf_net -intf_net XDMA_BRIDGE_M_AXI_B [get_bd_intf_pins M_AXI_B] [get_bd_intf_pins XDMA_BRIDGE/M_AXI_B]

  # Create port connections
  connect_bd_net -net THIN_SHELL_x_user_lnk_up [get_bd_pins user_lnk_up_sd] [get_bd_pins XDMA_BRIDGE/user_lnk_up_sd]
  connect_bd_net -net XDMA_BRIDGE_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins XDMA_BRIDGE/axi_aresetn]
  connect_bd_net -net XDMA_BRIDGE_clk_out_250M [get_bd_pins clk_out_250M] [get_bd_pins XDMA_BRIDGE/clk_out_250M]
  connect_bd_net -net XDMA_BRIDGE_pcie_cq_np_req_sd [get_bd_pins pcie_cq_np_req_sd] [get_bd_pins XDMA_BRIDGE/pcie_cq_np_req_sd]
  connect_bd_net -net cfg_current_speed_sd_1 [get_bd_pins cfg_current_speed_sd] [get_bd_pins XDMA_BRIDGE/cfg_current_speed_sd]
  connect_bd_net -net cfg_err_cor_out_sd_1 [get_bd_pins cfg_err_cor_out_sd] [get_bd_pins XDMA_BRIDGE/cfg_err_cor_out_sd]
  connect_bd_net -net cfg_err_fatal_out_sd_1 [get_bd_pins cfg_err_fatal_out_sd] [get_bd_pins XDMA_BRIDGE/cfg_err_fatal_out_sd]
  connect_bd_net -net cfg_err_nonfatal_out_sd_1 [get_bd_pins cfg_err_nonfatal_out_sd] [get_bd_pins XDMA_BRIDGE/cfg_err_nonfatal_out_sd]
  connect_bd_net -net cfg_function_status_sd_1 [get_bd_pins cfg_function_status_sd] [get_bd_pins XDMA_BRIDGE/cfg_function_status_sd]
  connect_bd_net -net cfg_local_error_out_sd_1 [get_bd_pins cfg_local_error_out_sd] [get_bd_pins XDMA_BRIDGE/cfg_local_error_out_sd]
  connect_bd_net -net cfg_ltssm_state_sd_1 [get_bd_pins cfg_ltssm_state_sd] [get_bd_pins XDMA_BRIDGE/cfg_ltssm_state_sd]
  connect_bd_net -net cfg_max_payload_sd_1 [get_bd_pins cfg_max_payload_sd] [get_bd_pins XDMA_BRIDGE/cfg_max_payload_sd]
  connect_bd_net -net cfg_max_read_req_sd_1 [get_bd_pins cfg_max_read_req_sd] [get_bd_pins XDMA_BRIDGE/cfg_max_read_req_sd]
  connect_bd_net -net cfg_negotiated_width_sd_1 [get_bd_pins cfg_negotiated_width_sd] [get_bd_pins XDMA_BRIDGE/cfg_negotiated_width_sd]
  connect_bd_net -net cfg_phy_link_down_sd_1 [get_bd_pins cfg_phy_link_down_sd] [get_bd_pins XDMA_BRIDGE/cfg_phy_link_down_sd]
  connect_bd_net -net cfg_phy_link_status_sd_1 [get_bd_pins cfg_phy_link_status_sd] [get_bd_pins XDMA_BRIDGE/cfg_phy_link_status_sd]
  connect_bd_net -net cfg_pl_status_change_sd_1 [get_bd_pins cfg_pl_status_change_sd] [get_bd_pins XDMA_BRIDGE/cfg_pl_status_change_sd]
  connect_bd_net -net pcie_cq_np_req_count_sd_1 [get_bd_pins pcie_cq_np_req_count_sd] [get_bd_pins XDMA_BRIDGE/pcie_cq_np_req_count_sd]
  connect_bd_net -net pcie_rq_seq_num0_sd_1 [get_bd_pins pcie_rq_seq_num0_sd] [get_bd_pins XDMA_BRIDGE/pcie_rq_seq_num0_sd]
  connect_bd_net -net pcie_rq_seq_num1_sd_1 [get_bd_pins pcie_rq_seq_num1_sd] [get_bd_pins XDMA_BRIDGE/pcie_rq_seq_num1_sd]
  connect_bd_net -net pcie_rq_seq_num_vld0_sd_1 [get_bd_pins pcie_rq_seq_num_vld0_sd] [get_bd_pins XDMA_BRIDGE/pcie_rq_seq_num_vld0_sd]
  connect_bd_net -net pcie_rq_seq_num_vld1_sd_1 [get_bd_pins pcie_rq_seq_num_vld1_sd] [get_bd_pins XDMA_BRIDGE/pcie_rq_seq_num_vld1_sd]
  connect_bd_net -net phy_rdy_out_sd_1 [get_bd_pins phy_rdy_out_sd] [get_bd_pins XDMA_BRIDGE/phy_rdy_out_sd]
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins XDMA_BRIDGE/sys_rst_n]
  connect_bd_net -net user_clk_sd_1 [get_bd_pins user_clk_sd] [get_bd_pins XDMA_BRIDGE/user_clk_sd]
  connect_bd_net -net user_reset_sd_1 [get_bd_pins user_reset_sd] [get_bd_pins XDMA_BRIDGE/user_reset_sd]

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
  set DEVICE_DNA_A [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_A ]

  set DEVICE_DNA_B [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_B ]

  set DEVICE_DNA_C [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_C ]

  set DEVICE_DNA_D [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DEVICE_DNA_D ]

  set EFUSE_i [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 EFUSE_i ]

  set M_AXI_B [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_B ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $M_AXI_B

  set SHELL_VER_i [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SHELL_VER_i ]

  set S_AXI_MM_PCIM [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MM_PCIM ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {4} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {32} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {32} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MM_PCIM

  set pcie_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt ]


  # Create ports
  set PCIE_USR_CLK_DIV4_62_5MHz [ create_bd_port -dir O -from 0 -to 0 -type clk PCIE_USR_CLK_DIV4_62_5MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {62500000} \
 ] $PCIE_USR_CLK_DIV4_62_5MHz
  set PR_DECOUPLE [ create_bd_port -dir O -from 0 -to 0 PR_DECOUPLE ]
  set RESET_GATE [ create_bd_port -dir O -from 0 -to 0 RESET_GATE ]
  set SHELL_TO_CL_RST [ create_bd_port -dir O -from 3 -to 0 SHELL_TO_CL_RST ]
  set axi_aresetn [ create_bd_port -dir O -type rst axi_aresetn ]
  set clk_out_250M [ create_bd_port -dir O -type clk clk_out_250M ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXI_MM_PCIM:M_AXI_B} \
   CONFIG.ASSOCIATED_RESET {axi_aresetn} \
 ] $clk_out_250M
  set sys_clk [ create_bd_port -dir I -type clk sys_clk ]
  set sys_clk_gt [ create_bd_port -dir I -type clk sys_clk_gt ]
  set sys_rst_n [ create_bd_port -dir I -type rst sys_rst_n ]
  set user_lnk_up_sd [ create_bd_port -dir O user_lnk_up_sd ]

  # Create instance: SHX
  create_hier_cell_SHX [current_bd_instance .] SHX

  # Create instance: THIN_SHELL_x
  create_hier_cell_THIN_SHELL_x [current_bd_instance .] THIN_SHELL_x

  # Create interface connections
  connect_bd_intf_net -intf_net DEVICE_DNA_A [get_bd_intf_ports DEVICE_DNA_A] [get_bd_intf_pins THIN_SHELL_x/DEVICE_DNA_A]
  connect_bd_intf_net -intf_net DEVICE_DNA_B [get_bd_intf_ports DEVICE_DNA_B] [get_bd_intf_pins THIN_SHELL_x/DEVICE_DNA_B]
  connect_bd_intf_net -intf_net DEVICE_DNA_C [get_bd_intf_ports DEVICE_DNA_C] [get_bd_intf_pins THIN_SHELL_x/DEVICE_DNA_C]
  connect_bd_intf_net -intf_net DEVICE_DNA_D [get_bd_intf_ports DEVICE_DNA_D] [get_bd_intf_pins THIN_SHELL_x/DEVICE_DNA_D]
  connect_bd_intf_net -intf_net EFUSE_i [get_bd_intf_ports EFUSE_i] [get_bd_intf_pins THIN_SHELL_x/EFUSE_i]
  connect_bd_intf_net -intf_net SHELL_VER_i [get_bd_intf_ports SHELL_VER_i] [get_bd_intf_pins THIN_SHELL_x/SHELL_VER_i]
  connect_bd_intf_net -intf_net SHX_M_AXI_B [get_bd_intf_ports M_AXI_B] [get_bd_intf_pins SHX/M_AXI_B]
  connect_bd_intf_net -intf_net S_AXI_MM_PCIM_1 [get_bd_intf_ports S_AXI_MM_PCIM] [get_bd_intf_pins SHX/S_AXI_PCIEM]
  connect_bd_intf_net -intf_net m_axis_cq [get_bd_intf_pins SHX/m_axis_cq] [get_bd_intf_pins THIN_SHELL_x/m_axis_cq]
  connect_bd_intf_net -intf_net m_axis_rc [get_bd_intf_pins SHX/m_axis_rc] [get_bd_intf_pins THIN_SHELL_x/m_axis_rc]
  connect_bd_intf_net -intf_net pcie4_cfg_control [get_bd_intf_pins SHX/pcie4_cfg_control] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_control]
  connect_bd_intf_net -intf_net pcie4_cfg_fc [get_bd_intf_pins SHX/pcie4_cfg_fc] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_fc]
  connect_bd_intf_net -intf_net pcie4_cfg_interrupt [get_bd_intf_pins SHX/pcie4_cfg_interrupt] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_interrupt]
  connect_bd_intf_net -intf_net pcie4_cfg_mesg_rcvd [get_bd_intf_pins SHX/pcie4_cfg_mesg_rcvd] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_mesg_rcvd]
  connect_bd_intf_net -intf_net pcie4_cfg_mesg_tx [get_bd_intf_pins SHX/pcie4_cfg_mesg_tx] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_mesg_tx]
  connect_bd_intf_net -intf_net pcie4_cfg_mgmt [get_bd_intf_pins SHX/pcie_cfg_mgmt_sd] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_mgmt]
  connect_bd_intf_net -intf_net pcie4_cfg_msi [get_bd_intf_pins SHX/pcie4_cfg_msi] [get_bd_intf_pins THIN_SHELL_x/pcie4_cfg_msi]
  connect_bd_intf_net -intf_net pcie_mgt [get_bd_intf_ports pcie_mgt] [get_bd_intf_pins THIN_SHELL_x/pcie_mgt]
  connect_bd_intf_net -intf_net s_axis_cc [get_bd_intf_pins SHX/s_axis_cc] [get_bd_intf_pins THIN_SHELL_x/s_axis_cc]
  connect_bd_intf_net -intf_net s_axis_rq [get_bd_intf_pins SHX/s_axis_rq] [get_bd_intf_pins THIN_SHELL_x/s_axis_rq]

  # Create port connections
  connect_bd_net -net PCIE_USR_CLK_DIV4_62_5MHz [get_bd_ports PCIE_USR_CLK_DIV4_62_5MHz] [get_bd_pins THIN_SHELL_x/PCIE_USR_CLK_DIV4_62_5MHz]
  connect_bd_net -net PR_DECOUPLE [get_bd_ports PR_DECOUPLE] [get_bd_pins THIN_SHELL_x/PR_DECOUPLE]
  connect_bd_net -net RESET_GATE [get_bd_ports RESET_GATE] [get_bd_pins THIN_SHELL_x/RESET_GATE]
  connect_bd_net -net SHELL_TO_CL_RST [get_bd_ports SHELL_TO_CL_RST] [get_bd_pins THIN_SHELL_x/SHELL_TO_CL_RST]
  connect_bd_net -net SHX_axi_aresetn [get_bd_ports axi_aresetn] [get_bd_pins SHX/axi_aresetn]
  connect_bd_net -net XDMA_BRIDGE_clk_out_250M [get_bd_ports clk_out_250M] [get_bd_pins SHX/clk_out_250M]
  connect_bd_net -net cfg_current_speed [get_bd_pins SHX/cfg_current_speed_sd] [get_bd_pins THIN_SHELL_x/cfg_current_speed]
  connect_bd_net -net cfg_err_cor_out [get_bd_pins SHX/cfg_err_cor_out_sd] [get_bd_pins THIN_SHELL_x/cfg_err_cor_out]
  connect_bd_net -net cfg_err_fatal_out [get_bd_pins SHX/cfg_err_fatal_out_sd] [get_bd_pins THIN_SHELL_x/cfg_err_fatal_out]
  connect_bd_net -net cfg_err_nonfatal_out [get_bd_pins SHX/cfg_err_nonfatal_out_sd] [get_bd_pins THIN_SHELL_x/cfg_err_nonfatal_out]
  connect_bd_net -net cfg_function_status [get_bd_pins SHX/cfg_function_status_sd] [get_bd_pins THIN_SHELL_x/cfg_function_status]
  connect_bd_net -net cfg_local_error_out [get_bd_pins SHX/cfg_local_error_out_sd] [get_bd_pins THIN_SHELL_x/cfg_local_error_out]
  connect_bd_net -net cfg_ltssm_state [get_bd_pins SHX/cfg_ltssm_state_sd] [get_bd_pins THIN_SHELL_x/cfg_ltssm_state]
  connect_bd_net -net cfg_max_payload [get_bd_pins SHX/cfg_max_payload_sd] [get_bd_pins THIN_SHELL_x/cfg_max_payload]
  connect_bd_net -net cfg_max_read_req [get_bd_pins SHX/cfg_max_read_req_sd] [get_bd_pins THIN_SHELL_x/cfg_max_read_req]
  connect_bd_net -net cfg_negotiated_width [get_bd_pins SHX/cfg_negotiated_width_sd] [get_bd_pins THIN_SHELL_x/cfg_negotiated_width]
  connect_bd_net -net cfg_phy_link_down [get_bd_pins SHX/cfg_phy_link_down_sd] [get_bd_pins THIN_SHELL_x/cfg_phy_link_down]
  connect_bd_net -net cfg_phy_link_status [get_bd_pins SHX/cfg_phy_link_status_sd] [get_bd_pins THIN_SHELL_x/cfg_phy_link_status]
  connect_bd_net -net cfg_pl_status_change [get_bd_pins SHX/cfg_pl_status_change_sd] [get_bd_pins THIN_SHELL_x/cfg_pl_status_change]
  connect_bd_net -net m_pcie_cq_np_req [get_bd_pins SHX/pcie_cq_np_req_sd] [get_bd_pins THIN_SHELL_x/m_pcie_cq_np_req]
  connect_bd_net -net pcie_cq_np_req_count [get_bd_pins SHX/pcie_cq_np_req_count_sd] [get_bd_pins THIN_SHELL_x/pcie_cq_np_req_count]
  connect_bd_net -net pcie_rq_seq_num0 [get_bd_pins SHX/pcie_rq_seq_num0_sd] [get_bd_pins THIN_SHELL_x/pcie_rq_seq_num0]
  connect_bd_net -net pcie_rq_seq_num1 [get_bd_pins SHX/pcie_rq_seq_num1_sd] [get_bd_pins THIN_SHELL_x/pcie_rq_seq_num1]
  connect_bd_net -net pcie_rq_seq_num_vld0 [get_bd_pins SHX/pcie_rq_seq_num_vld0_sd] [get_bd_pins THIN_SHELL_x/pcie_rq_seq_num_vld0]
  connect_bd_net -net pcie_rq_seq_num_vld1 [get_bd_pins SHX/pcie_rq_seq_num_vld1_sd] [get_bd_pins THIN_SHELL_x/pcie_rq_seq_num_vld1]
  connect_bd_net -net phy_rdy_out [get_bd_pins SHX/phy_rdy_out_sd] [get_bd_pins THIN_SHELL_x/phy_rdy_out]
  connect_bd_net -net sys_clk [get_bd_ports sys_clk] [get_bd_pins THIN_SHELL_x/sys_clk]
  connect_bd_net -net sys_clk_gt [get_bd_ports sys_clk_gt] [get_bd_pins THIN_SHELL_x/sys_clk_gt]
  connect_bd_net -net sys_rst_n [get_bd_ports sys_rst_n] [get_bd_pins SHX/sys_rst_n] [get_bd_pins THIN_SHELL_x/sys_rst_n]
  connect_bd_net -net user_clk [get_bd_pins SHX/user_clk_sd] [get_bd_pins THIN_SHELL_x/user_clk]
  connect_bd_net -net user_lnk_up [get_bd_ports user_lnk_up_sd] [get_bd_pins SHX/user_lnk_up_sd] [get_bd_pins THIN_SHELL_x/user_lnk_up]
  connect_bd_net -net user_reset [get_bd_pins SHX/user_reset_sd] [get_bd_pins THIN_SHELL_x/user_reset]

  # Create address segments
  assign_bd_address -offset 0x00002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_bram_TAP/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00040000 -range 0x00001000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_DEVICE_DNA_AB/S_AXI/Reg] -force
  assign_bd_address -offset 0x00041000 -range 0x00001000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_DEVICE_DNA_CD/S_AXI/Reg] -force
  assign_bd_address -offset 0x00060000 -range 0x00010000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_PR_DECOUPLE/S_AXI/Reg] -force
  assign_bd_address -offset 0x00070000 -range 0x00010000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_RESET_GATE/S_AXI/Reg] -force
  assign_bd_address -offset 0x00050000 -range 0x00001000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_SHELL_TO_CL_OUT/S_AXI/Reg] -force
  assign_bd_address -offset 0x00042000 -range 0x00001000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_gpio_SHELL_VERSION_EFUSE/S_AXI/Reg] -force
  assign_bd_address -offset 0x00010000 -range 0x00001000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_hwicap_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x00020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x00030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces THIN_SHELL_x/axiltap_0/M_AXI] [get_bd_addr_segs THIN_SHELL_x/system_management_wiz_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces SHX/XDMA_BRIDGE/xdma_0/M_AXI_LITE] [get_bd_addr_segs M_AXI_B/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces SHX/XDMA_BRIDGE/xdma_0/M_AXI_BYPASS] [get_bd_addr_segs SHX/XDMA_BRIDGE/axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00000000 -range 0x00010000000000000000 -target_address_space [get_bd_addr_spaces S_AXI_MM_PCIM] [get_bd_addr_segs SHX/XDMA_BRIDGE/xdma_0/S_AXI_B/BAR0] -force


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


