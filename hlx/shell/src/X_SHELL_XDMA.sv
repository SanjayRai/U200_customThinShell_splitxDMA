//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Aug  4 10:22:13 2020
//Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
//Command     : generate_target X_PCIe_Bridge_ICAP_complex.bd
//Design      : X_PCIe_Bridge_ICAP_complex
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SHX_imp_107RLWT
   (M_AXI_B_araddr,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_aruser,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awuser,
    M_AXI_B_awvalid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_PCIEM_araddr,
    S_AXI_PCIEM_arburst,
    S_AXI_PCIEM_arid,
    S_AXI_PCIEM_arlen,
    S_AXI_PCIEM_arready,
    S_AXI_PCIEM_arregion,
    S_AXI_PCIEM_arsize,
    S_AXI_PCIEM_arvalid,
    S_AXI_PCIEM_awaddr,
    S_AXI_PCIEM_awburst,
    S_AXI_PCIEM_awid,
    S_AXI_PCIEM_awlen,
    S_AXI_PCIEM_awready,
    S_AXI_PCIEM_awregion,
    S_AXI_PCIEM_awsize,
    S_AXI_PCIEM_awvalid,
    S_AXI_PCIEM_bid,
    S_AXI_PCIEM_bready,
    S_AXI_PCIEM_bresp,
    S_AXI_PCIEM_bvalid,
    S_AXI_PCIEM_rdata,
    S_AXI_PCIEM_rid,
    S_AXI_PCIEM_rlast,
    S_AXI_PCIEM_rready,
    S_AXI_PCIEM_rresp,
    S_AXI_PCIEM_ruser,
    S_AXI_PCIEM_rvalid,
    S_AXI_PCIEM_wdata,
    S_AXI_PCIEM_wlast,
    S_AXI_PCIEM_wready,
    S_AXI_PCIEM_wstrb,
    S_AXI_PCIEM_wuser,
    S_AXI_PCIEM_wvalid,
    axi_aresetn,
    cfg_current_speed_sd,
    cfg_err_cor_out_sd,
    cfg_err_fatal_out_sd,
    cfg_err_nonfatal_out_sd,
    cfg_function_status_sd,
    cfg_local_error_out_sd,
    cfg_ltssm_state_sd,
    cfg_max_payload_sd,
    cfg_max_read_req_sd,
    cfg_negotiated_width_sd,
    cfg_phy_link_down_sd,
    cfg_phy_link_status_sd,
    cfg_pl_status_change_sd,
    clk_out_250M,
    m_axis_cq_tdata,
    m_axis_cq_tkeep,
    m_axis_cq_tlast,
    m_axis_cq_tready,
    m_axis_cq_tuser,
    m_axis_cq_tvalid,
    m_axis_rc_tdata,
    m_axis_rc_tkeep,
    m_axis_rc_tlast,
    m_axis_rc_tready,
    m_axis_rc_tuser,
    m_axis_rc_tvalid,
    pcie4_cfg_control_ds_bus_number,
    pcie4_cfg_control_ds_device_number,
    pcie4_cfg_control_ds_port_number,
    pcie4_cfg_control_dsn,
    pcie4_cfg_control_err_cor_in,
    pcie4_cfg_control_err_uncor_in,
    pcie4_cfg_control_flr_done,
    pcie4_cfg_control_flr_in_process,
    pcie4_cfg_control_hot_reset_out,
    pcie4_cfg_control_link_training_enable,
    pcie4_cfg_control_vf_flr_in_process,
    pcie4_cfg_fc_nph,
    pcie4_cfg_fc_sel,
    pcie4_cfg_interrupt_intx_vector,
    pcie4_cfg_interrupt_pending,
    pcie4_cfg_interrupt_sent,
    pcie4_cfg_mesg_rcvd_recd,
    pcie4_cfg_mesg_rcvd_recd_data,
    pcie4_cfg_mesg_rcvd_recd_type,
    pcie4_cfg_mesg_tx_transmit,
    pcie4_cfg_mesg_tx_transmit_data,
    pcie4_cfg_mesg_tx_transmit_done,
    pcie4_cfg_mesg_tx_transmit_type,
    pcie4_cfg_msi_attr,
    pcie4_cfg_msi_data,
    pcie4_cfg_msi_enable,
    pcie4_cfg_msi_fail,
    pcie4_cfg_msi_function_number,
    pcie4_cfg_msi_int_vector,
    pcie4_cfg_msi_mask_update,
    pcie4_cfg_msi_pending_status,
    pcie4_cfg_msi_pending_status_data_enable,
    pcie4_cfg_msi_pending_status_function_num,
    pcie4_cfg_msi_sent,
    pcie4_cfg_msi_tph_present,
    pcie4_cfg_msi_tph_st_tag,
    pcie4_cfg_msi_tph_type,
    pcie_cfg_mgmt_sd_addr,
    pcie_cfg_mgmt_sd_byte_en,
    pcie_cfg_mgmt_sd_debug_access,
    pcie_cfg_mgmt_sd_function_number,
    pcie_cfg_mgmt_sd_read_data,
    pcie_cfg_mgmt_sd_read_en,
    pcie_cfg_mgmt_sd_read_write_done,
    pcie_cfg_mgmt_sd_write_data,
    pcie_cfg_mgmt_sd_write_en,
    pcie_cq_np_req_count_sd,
    pcie_cq_np_req_sd,
    pcie_rq_seq_num0_sd,
    pcie_rq_seq_num1_sd,
    pcie_rq_seq_num_vld0_sd,
    pcie_rq_seq_num_vld1_sd,
    phy_rdy_out_sd,
    s_axis_cc_tdata,
    s_axis_cc_tkeep,
    s_axis_cc_tlast,
    s_axis_cc_tready,
    s_axis_cc_tuser,
    s_axis_cc_tvalid,
    s_axis_rq_tdata,
    s_axis_rq_tkeep,
    s_axis_rq_tlast,
    s_axis_rq_tready,
    s_axis_rq_tuser,
    s_axis_rq_tvalid,
    sys_rst_n,
    user_clk_sd,
    user_lnk_up_sd,
    user_reset_sd);
  output [31:0]M_AXI_B_araddr;
  output [2:0]M_AXI_B_arprot;
  input M_AXI_B_arready;
  output [10:0]M_AXI_B_aruser;
  output M_AXI_B_arvalid;
  output [31:0]M_AXI_B_awaddr;
  output [2:0]M_AXI_B_awprot;
  input M_AXI_B_awready;
  output [10:0]M_AXI_B_awuser;
  output M_AXI_B_awvalid;
  output M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input M_AXI_B_bvalid;
  input [31:0]M_AXI_B_rdata;
  output M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input M_AXI_B_rvalid;
  output [31:0]M_AXI_B_wdata;
  input M_AXI_B_wready;
  output [3:0]M_AXI_B_wstrb;
  output M_AXI_B_wvalid;
  input [63:0]S_AXI_PCIEM_araddr;
  input [1:0]S_AXI_PCIEM_arburst;
  input [3:0]S_AXI_PCIEM_arid;
  input [7:0]S_AXI_PCIEM_arlen;
  output S_AXI_PCIEM_arready;
  input [3:0]S_AXI_PCIEM_arregion;
  input [2:0]S_AXI_PCIEM_arsize;
  input S_AXI_PCIEM_arvalid;
  input [63:0]S_AXI_PCIEM_awaddr;
  input [1:0]S_AXI_PCIEM_awburst;
  input [3:0]S_AXI_PCIEM_awid;
  input [7:0]S_AXI_PCIEM_awlen;
  output S_AXI_PCIEM_awready;
  input [3:0]S_AXI_PCIEM_awregion;
  input [2:0]S_AXI_PCIEM_awsize;
  input S_AXI_PCIEM_awvalid;
  output [3:0]S_AXI_PCIEM_bid;
  input S_AXI_PCIEM_bready;
  output [1:0]S_AXI_PCIEM_bresp;
  output S_AXI_PCIEM_bvalid;
  output [511:0]S_AXI_PCIEM_rdata;
  output [3:0]S_AXI_PCIEM_rid;
  output S_AXI_PCIEM_rlast;
  input S_AXI_PCIEM_rready;
  output [1:0]S_AXI_PCIEM_rresp;
  output [63:0]S_AXI_PCIEM_ruser;
  output S_AXI_PCIEM_rvalid;
  input [511:0]S_AXI_PCIEM_wdata;
  input S_AXI_PCIEM_wlast;
  output S_AXI_PCIEM_wready;
  input [63:0]S_AXI_PCIEM_wstrb;
  input [63:0]S_AXI_PCIEM_wuser;
  input S_AXI_PCIEM_wvalid;
  output axi_aresetn;
  input [1:0]cfg_current_speed_sd;
  input cfg_err_cor_out_sd;
  input cfg_err_fatal_out_sd;
  input cfg_err_nonfatal_out_sd;
  input [15:0]cfg_function_status_sd;
  input [4:0]cfg_local_error_out_sd;
  input [5:0]cfg_ltssm_state_sd;
  input [1:0]cfg_max_payload_sd;
  input [2:0]cfg_max_read_req_sd;
  input [2:0]cfg_negotiated_width_sd;
  input cfg_phy_link_down_sd;
  input [1:0]cfg_phy_link_status_sd;
  input cfg_pl_status_change_sd;
  output clk_out_250M;
  input [511:0]m_axis_cq_tdata;
  input [15:0]m_axis_cq_tkeep;
  input m_axis_cq_tlast;
  output m_axis_cq_tready;
  input [182:0]m_axis_cq_tuser;
  input m_axis_cq_tvalid;
  input [511:0]m_axis_rc_tdata;
  input [15:0]m_axis_rc_tkeep;
  input m_axis_rc_tlast;
  output m_axis_rc_tready;
  input [160:0]m_axis_rc_tuser;
  input m_axis_rc_tvalid;
  output [7:0]pcie4_cfg_control_ds_bus_number;
  output [4:0]pcie4_cfg_control_ds_device_number;
  output [7:0]pcie4_cfg_control_ds_port_number;
  output [63:0]pcie4_cfg_control_dsn;
  output pcie4_cfg_control_err_cor_in;
  output pcie4_cfg_control_err_uncor_in;
  output [3:0]pcie4_cfg_control_flr_done;
  input [3:0]pcie4_cfg_control_flr_in_process;
  input pcie4_cfg_control_hot_reset_out;
  output pcie4_cfg_control_link_training_enable;
  input [251:0]pcie4_cfg_control_vf_flr_in_process;
  input [7:0]pcie4_cfg_fc_nph;
  output [2:0]pcie4_cfg_fc_sel;
  output [3:0]pcie4_cfg_interrupt_intx_vector;
  output [3:0]pcie4_cfg_interrupt_pending;
  input pcie4_cfg_interrupt_sent;
  input pcie4_cfg_mesg_rcvd_recd;
  input [7:0]pcie4_cfg_mesg_rcvd_recd_data;
  input [4:0]pcie4_cfg_mesg_rcvd_recd_type;
  output pcie4_cfg_mesg_tx_transmit;
  output [31:0]pcie4_cfg_mesg_tx_transmit_data;
  input pcie4_cfg_mesg_tx_transmit_done;
  output [2:0]pcie4_cfg_mesg_tx_transmit_type;
  output [2:0]pcie4_cfg_msi_attr;
  input [31:0]pcie4_cfg_msi_data;
  input [3:0]pcie4_cfg_msi_enable;
  input pcie4_cfg_msi_fail;
  output [7:0]pcie4_cfg_msi_function_number;
  output [31:0]pcie4_cfg_msi_int_vector;
  input pcie4_cfg_msi_mask_update;
  output [31:0]pcie4_cfg_msi_pending_status;
  output pcie4_cfg_msi_pending_status_data_enable;
  output [3:0]pcie4_cfg_msi_pending_status_function_num;
  input pcie4_cfg_msi_sent;
  output pcie4_cfg_msi_tph_present;
  output [8:0]pcie4_cfg_msi_tph_st_tag;
  output [1:0]pcie4_cfg_msi_tph_type;
  output [9:0]pcie_cfg_mgmt_sd_addr;
  output [3:0]pcie_cfg_mgmt_sd_byte_en;
  output pcie_cfg_mgmt_sd_debug_access;
  output [7:0]pcie_cfg_mgmt_sd_function_number;
  input [31:0]pcie_cfg_mgmt_sd_read_data;
  output pcie_cfg_mgmt_sd_read_en;
  input pcie_cfg_mgmt_sd_read_write_done;
  output [31:0]pcie_cfg_mgmt_sd_write_data;
  output pcie_cfg_mgmt_sd_write_en;
  input [5:0]pcie_cq_np_req_count_sd;
  output [1:0]pcie_cq_np_req_sd;
  input [5:0]pcie_rq_seq_num0_sd;
  input [5:0]pcie_rq_seq_num1_sd;
  input pcie_rq_seq_num_vld0_sd;
  input pcie_rq_seq_num_vld1_sd;
  input phy_rdy_out_sd;
  output [511:0]s_axis_cc_tdata;
  output [15:0]s_axis_cc_tkeep;
  output s_axis_cc_tlast;
  input s_axis_cc_tready;
  output [80:0]s_axis_cc_tuser;
  output s_axis_cc_tvalid;
  output [511:0]s_axis_rq_tdata;
  output [15:0]s_axis_rq_tkeep;
  output s_axis_rq_tlast;
  input [3:0]s_axis_rq_tready;
  output [136:0]s_axis_rq_tuser;
  output s_axis_rq_tvalid;
  input sys_rst_n;
  input user_clk_sd;
  input user_lnk_up_sd;
  input user_reset_sd;

  wire [3:0]Conn10_INTx_VECTOR;
  wire [3:0]Conn10_PENDING;
  wire Conn10_SENT;
  wire [9:0]Conn11_ADDR;
  wire [3:0]Conn11_BYTE_EN;
  wire Conn11_DEBUG_ACCESS;
  wire [7:0]Conn11_FUNCTION_NUMBER;
  wire [31:0]Conn11_READ_DATA;
  wire Conn11_READ_EN;
  wire Conn11_READ_WRITE_DONE;
  wire [31:0]Conn11_WRITE_DATA;
  wire Conn11_WRITE_EN;
  wire [511:0]Conn1_TDATA;
  wire [15:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire [182:0]Conn1_TUSER;
  wire Conn1_TVALID;
  wire [511:0]Conn2_TDATA;
  wire [15:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire [80:0]Conn2_TUSER;
  wire Conn2_TVALID;
  wire [511:0]Conn3_TDATA;
  wire [15:0]Conn3_TKEEP;
  wire Conn3_TLAST;
  wire [3:0]Conn3_TREADY;
  wire [136:0]Conn3_TUSER;
  wire Conn3_TVALID;
  wire [511:0]Conn4_TDATA;
  wire [15:0]Conn4_TKEEP;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire [160:0]Conn4_TUSER;
  wire Conn4_TVALID;
  wire Conn5_TRANSMIT;
  wire [31:0]Conn5_TRANSMIT_DATA;
  wire Conn5_TRANSMIT_DONE;
  wire [2:0]Conn5_TRANSMIT_TYPE;
  wire Conn6_recd;
  wire [7:0]Conn6_recd_data;
  wire [4:0]Conn6_recd_type;
  wire [7:0]Conn7_ds_bus_number;
  wire [4:0]Conn7_ds_device_number;
  wire [7:0]Conn7_ds_port_number;
  wire [63:0]Conn7_dsn;
  wire Conn7_err_cor_in;
  wire Conn7_err_uncor_in;
  wire [3:0]Conn7_flr_done;
  wire [3:0]Conn7_flr_in_process;
  wire Conn7_hot_reset_out;
  wire Conn7_link_training_enable;
  wire [251:0]Conn7_vf_flr_in_process;
  wire [7:0]Conn8_NPH;
  wire [2:0]Conn8_SEL;
  wire [2:0]Conn9_attr;
  wire [31:0]Conn9_data;
  wire [3:0]Conn9_enable;
  wire Conn9_fail;
  wire [7:0]Conn9_function_number;
  wire [31:0]Conn9_int_vector;
  wire Conn9_mask_update;
  wire [31:0]Conn9_pending_status;
  wire Conn9_pending_status_data_enable;
  wire [3:0]Conn9_pending_status_function_num;
  wire Conn9_sent;
  wire Conn9_tph_present;
  wire [8:0]Conn9_tph_st_tag;
  wire [1:0]Conn9_tph_type;
  wire [63:0]S_AXI_PCIEM_1_ARADDR;
  wire [1:0]S_AXI_PCIEM_1_ARBURST;
  wire [3:0]S_AXI_PCIEM_1_ARID;
  wire [7:0]S_AXI_PCIEM_1_ARLEN;
  wire S_AXI_PCIEM_1_ARREADY;
  wire [3:0]S_AXI_PCIEM_1_ARREGION;
  wire [2:0]S_AXI_PCIEM_1_ARSIZE;
  wire S_AXI_PCIEM_1_ARVALID;
  wire [63:0]S_AXI_PCIEM_1_AWADDR;
  wire [1:0]S_AXI_PCIEM_1_AWBURST;
  wire [3:0]S_AXI_PCIEM_1_AWID;
  wire [7:0]S_AXI_PCIEM_1_AWLEN;
  wire S_AXI_PCIEM_1_AWREADY;
  wire [3:0]S_AXI_PCIEM_1_AWREGION;
  wire [2:0]S_AXI_PCIEM_1_AWSIZE;
  wire S_AXI_PCIEM_1_AWVALID;
  wire [3:0]S_AXI_PCIEM_1_BID;
  wire S_AXI_PCIEM_1_BREADY;
  wire [1:0]S_AXI_PCIEM_1_BRESP;
  wire S_AXI_PCIEM_1_BVALID;
  wire [511:0]S_AXI_PCIEM_1_RDATA;
  wire [3:0]S_AXI_PCIEM_1_RID;
  wire S_AXI_PCIEM_1_RLAST;
  wire S_AXI_PCIEM_1_RREADY;
  wire [1:0]S_AXI_PCIEM_1_RRESP;
  wire [63:0]S_AXI_PCIEM_1_RUSER;
  wire S_AXI_PCIEM_1_RVALID;
  wire [511:0]S_AXI_PCIEM_1_WDATA;
  wire S_AXI_PCIEM_1_WLAST;
  wire S_AXI_PCIEM_1_WREADY;
  wire [63:0]S_AXI_PCIEM_1_WSTRB;
  wire [63:0]S_AXI_PCIEM_1_WUSER;
  wire S_AXI_PCIEM_1_WVALID;
  wire THIN_SHELL_x_user_lnk_up;
  wire [31:0]XDMA_BRIDGE_M_AXI_B_ARADDR;
  wire [2:0]XDMA_BRIDGE_M_AXI_B_ARPROT;
  wire XDMA_BRIDGE_M_AXI_B_ARREADY;
  wire [10:0]XDMA_BRIDGE_M_AXI_B_ARUSER;
  wire XDMA_BRIDGE_M_AXI_B_ARVALID;
  wire [31:0]XDMA_BRIDGE_M_AXI_B_AWADDR;
  wire [2:0]XDMA_BRIDGE_M_AXI_B_AWPROT;
  wire XDMA_BRIDGE_M_AXI_B_AWREADY;
  wire [10:0]XDMA_BRIDGE_M_AXI_B_AWUSER;
  wire XDMA_BRIDGE_M_AXI_B_AWVALID;
  wire XDMA_BRIDGE_M_AXI_B_BREADY;
  wire [1:0]XDMA_BRIDGE_M_AXI_B_BRESP;
  wire XDMA_BRIDGE_M_AXI_B_BVALID;
  wire [31:0]XDMA_BRIDGE_M_AXI_B_RDATA;
  wire XDMA_BRIDGE_M_AXI_B_RREADY;
  wire [1:0]XDMA_BRIDGE_M_AXI_B_RRESP;
  wire XDMA_BRIDGE_M_AXI_B_RVALID;
  wire [31:0]XDMA_BRIDGE_M_AXI_B_WDATA;
  wire XDMA_BRIDGE_M_AXI_B_WREADY;
  wire [3:0]XDMA_BRIDGE_M_AXI_B_WSTRB;
  wire XDMA_BRIDGE_M_AXI_B_WVALID;
  wire XDMA_BRIDGE_axi_aresetn;
  wire XDMA_BRIDGE_clk_out_250M;
  wire [1:0]XDMA_BRIDGE_pcie_cq_np_req_sd;
  wire [1:0]cfg_current_speed_sd_1;
  wire cfg_err_cor_out_sd_1;
  wire cfg_err_fatal_out_sd_1;
  wire cfg_err_nonfatal_out_sd_1;
  wire [15:0]cfg_function_status_sd_1;
  wire [4:0]cfg_local_error_out_sd_1;
  wire [5:0]cfg_ltssm_state_sd_1;
  wire [1:0]cfg_max_payload_sd_1;
  wire [2:0]cfg_max_read_req_sd_1;
  wire [2:0]cfg_negotiated_width_sd_1;
  wire cfg_phy_link_down_sd_1;
  wire [1:0]cfg_phy_link_status_sd_1;
  wire cfg_pl_status_change_sd_1;
  wire [5:0]pcie_cq_np_req_count_sd_1;
  wire [5:0]pcie_rq_seq_num0_sd_1;
  wire [5:0]pcie_rq_seq_num1_sd_1;
  wire pcie_rq_seq_num_vld0_sd_1;
  wire pcie_rq_seq_num_vld1_sd_1;
  wire phy_rdy_out_sd_1;
  wire sys_rst_n_1;
  wire user_clk_sd_1;
  wire user_reset_sd_1;

  assign Conn10_SENT = pcie4_cfg_interrupt_sent;
  assign Conn11_READ_DATA = pcie_cfg_mgmt_sd_read_data[31:0];
  assign Conn11_READ_WRITE_DONE = pcie_cfg_mgmt_sd_read_write_done;
  assign Conn1_TDATA = m_axis_cq_tdata[511:0];
  assign Conn1_TKEEP = m_axis_cq_tkeep[15:0];
  assign Conn1_TLAST = m_axis_cq_tlast;
  assign Conn1_TUSER = m_axis_cq_tuser[182:0];
  assign Conn1_TVALID = m_axis_cq_tvalid;
  assign Conn2_TREADY = s_axis_cc_tready;
  assign Conn3_TREADY = s_axis_rq_tready[3:0];
  assign Conn4_TDATA = m_axis_rc_tdata[511:0];
  assign Conn4_TKEEP = m_axis_rc_tkeep[15:0];
  assign Conn4_TLAST = m_axis_rc_tlast;
  assign Conn4_TUSER = m_axis_rc_tuser[160:0];
  assign Conn4_TVALID = m_axis_rc_tvalid;
  assign Conn5_TRANSMIT_DONE = pcie4_cfg_mesg_tx_transmit_done;
  assign Conn6_recd = pcie4_cfg_mesg_rcvd_recd;
  assign Conn6_recd_data = pcie4_cfg_mesg_rcvd_recd_data[7:0];
  assign Conn6_recd_type = pcie4_cfg_mesg_rcvd_recd_type[4:0];
  assign Conn7_flr_in_process = pcie4_cfg_control_flr_in_process[3:0];
  assign Conn7_hot_reset_out = pcie4_cfg_control_hot_reset_out;
  assign Conn7_vf_flr_in_process = pcie4_cfg_control_vf_flr_in_process[251:0];
  assign Conn8_NPH = pcie4_cfg_fc_nph[7:0];
  assign Conn9_data = pcie4_cfg_msi_data[31:0];
  assign Conn9_enable = pcie4_cfg_msi_enable[3:0];
  assign Conn9_fail = pcie4_cfg_msi_fail;
  assign Conn9_mask_update = pcie4_cfg_msi_mask_update;
  assign Conn9_sent = pcie4_cfg_msi_sent;
  assign M_AXI_B_araddr[31:0] = XDMA_BRIDGE_M_AXI_B_ARADDR;
  assign M_AXI_B_arprot[2:0] = XDMA_BRIDGE_M_AXI_B_ARPROT;
  assign M_AXI_B_aruser[10:0] = XDMA_BRIDGE_M_AXI_B_ARUSER;
  assign M_AXI_B_arvalid = XDMA_BRIDGE_M_AXI_B_ARVALID;
  assign M_AXI_B_awaddr[31:0] = XDMA_BRIDGE_M_AXI_B_AWADDR;
  assign M_AXI_B_awprot[2:0] = XDMA_BRIDGE_M_AXI_B_AWPROT;
  assign M_AXI_B_awuser[10:0] = XDMA_BRIDGE_M_AXI_B_AWUSER;
  assign M_AXI_B_awvalid = XDMA_BRIDGE_M_AXI_B_AWVALID;
  assign M_AXI_B_bready = XDMA_BRIDGE_M_AXI_B_BREADY;
  assign M_AXI_B_rready = XDMA_BRIDGE_M_AXI_B_RREADY;
  assign M_AXI_B_wdata[31:0] = XDMA_BRIDGE_M_AXI_B_WDATA;
  assign M_AXI_B_wstrb[3:0] = XDMA_BRIDGE_M_AXI_B_WSTRB;
  assign M_AXI_B_wvalid = XDMA_BRIDGE_M_AXI_B_WVALID;
  assign S_AXI_PCIEM_1_ARADDR = S_AXI_PCIEM_araddr[63:0];
  assign S_AXI_PCIEM_1_ARBURST = S_AXI_PCIEM_arburst[1:0];
  assign S_AXI_PCIEM_1_ARID = S_AXI_PCIEM_arid[3:0];
  assign S_AXI_PCIEM_1_ARLEN = S_AXI_PCIEM_arlen[7:0];
  assign S_AXI_PCIEM_1_ARREGION = S_AXI_PCIEM_arregion[3:0];
  assign S_AXI_PCIEM_1_ARSIZE = S_AXI_PCIEM_arsize[2:0];
  assign S_AXI_PCIEM_1_ARVALID = S_AXI_PCIEM_arvalid;
  assign S_AXI_PCIEM_1_AWADDR = S_AXI_PCIEM_awaddr[63:0];
  assign S_AXI_PCIEM_1_AWBURST = S_AXI_PCIEM_awburst[1:0];
  assign S_AXI_PCIEM_1_AWID = S_AXI_PCIEM_awid[3:0];
  assign S_AXI_PCIEM_1_AWLEN = S_AXI_PCIEM_awlen[7:0];
  assign S_AXI_PCIEM_1_AWREGION = S_AXI_PCIEM_awregion[3:0];
  assign S_AXI_PCIEM_1_AWSIZE = S_AXI_PCIEM_awsize[2:0];
  assign S_AXI_PCIEM_1_AWVALID = S_AXI_PCIEM_awvalid;
  assign S_AXI_PCIEM_1_BREADY = S_AXI_PCIEM_bready;
  assign S_AXI_PCIEM_1_RREADY = S_AXI_PCIEM_rready;
  assign S_AXI_PCIEM_1_WDATA = S_AXI_PCIEM_wdata[511:0];
  assign S_AXI_PCIEM_1_WLAST = S_AXI_PCIEM_wlast;
  assign S_AXI_PCIEM_1_WSTRB = S_AXI_PCIEM_wstrb[63:0];
  assign S_AXI_PCIEM_1_WUSER = S_AXI_PCIEM_wuser[63:0];
  assign S_AXI_PCIEM_1_WVALID = S_AXI_PCIEM_wvalid;
  assign S_AXI_PCIEM_arready = S_AXI_PCIEM_1_ARREADY;
  assign S_AXI_PCIEM_awready = S_AXI_PCIEM_1_AWREADY;
  assign S_AXI_PCIEM_bid[3:0] = S_AXI_PCIEM_1_BID;
  assign S_AXI_PCIEM_bresp[1:0] = S_AXI_PCIEM_1_BRESP;
  assign S_AXI_PCIEM_bvalid = S_AXI_PCIEM_1_BVALID;
  assign S_AXI_PCIEM_rdata[511:0] = S_AXI_PCIEM_1_RDATA;
  assign S_AXI_PCIEM_rid[3:0] = S_AXI_PCIEM_1_RID;
  assign S_AXI_PCIEM_rlast = S_AXI_PCIEM_1_RLAST;
  assign S_AXI_PCIEM_rresp[1:0] = S_AXI_PCIEM_1_RRESP;
  assign S_AXI_PCIEM_ruser[63:0] = S_AXI_PCIEM_1_RUSER;
  assign S_AXI_PCIEM_rvalid = S_AXI_PCIEM_1_RVALID;
  assign S_AXI_PCIEM_wready = S_AXI_PCIEM_1_WREADY;
  assign THIN_SHELL_x_user_lnk_up = user_lnk_up_sd;
  assign XDMA_BRIDGE_M_AXI_B_ARREADY = M_AXI_B_arready;
  assign XDMA_BRIDGE_M_AXI_B_AWREADY = M_AXI_B_awready;
  assign XDMA_BRIDGE_M_AXI_B_BRESP = M_AXI_B_bresp[1:0];
  assign XDMA_BRIDGE_M_AXI_B_BVALID = M_AXI_B_bvalid;
  assign XDMA_BRIDGE_M_AXI_B_RDATA = M_AXI_B_rdata[31:0];
  assign XDMA_BRIDGE_M_AXI_B_RRESP = M_AXI_B_rresp[1:0];
  assign XDMA_BRIDGE_M_AXI_B_RVALID = M_AXI_B_rvalid;
  assign XDMA_BRIDGE_M_AXI_B_WREADY = M_AXI_B_wready;
  assign axi_aresetn = XDMA_BRIDGE_axi_aresetn;
  assign cfg_current_speed_sd_1 = cfg_current_speed_sd[1:0];
  assign cfg_err_cor_out_sd_1 = cfg_err_cor_out_sd;
  assign cfg_err_fatal_out_sd_1 = cfg_err_fatal_out_sd;
  assign cfg_err_nonfatal_out_sd_1 = cfg_err_nonfatal_out_sd;
  assign cfg_function_status_sd_1 = cfg_function_status_sd[15:0];
  assign cfg_local_error_out_sd_1 = cfg_local_error_out_sd[4:0];
  assign cfg_ltssm_state_sd_1 = cfg_ltssm_state_sd[5:0];
  assign cfg_max_payload_sd_1 = cfg_max_payload_sd[1:0];
  assign cfg_max_read_req_sd_1 = cfg_max_read_req_sd[2:0];
  assign cfg_negotiated_width_sd_1 = cfg_negotiated_width_sd[2:0];
  assign cfg_phy_link_down_sd_1 = cfg_phy_link_down_sd;
  assign cfg_phy_link_status_sd_1 = cfg_phy_link_status_sd[1:0];
  assign cfg_pl_status_change_sd_1 = cfg_pl_status_change_sd;
  assign clk_out_250M = XDMA_BRIDGE_clk_out_250M;
  assign m_axis_cq_tready = Conn1_TREADY;
  assign m_axis_rc_tready = Conn4_TREADY;
  assign pcie4_cfg_control_ds_bus_number[7:0] = Conn7_ds_bus_number;
  assign pcie4_cfg_control_ds_device_number[4:0] = Conn7_ds_device_number;
  assign pcie4_cfg_control_ds_port_number[7:0] = Conn7_ds_port_number;
  assign pcie4_cfg_control_dsn[63:0] = Conn7_dsn;
  assign pcie4_cfg_control_err_cor_in = Conn7_err_cor_in;
  assign pcie4_cfg_control_err_uncor_in = Conn7_err_uncor_in;
  assign pcie4_cfg_control_flr_done[3:0] = Conn7_flr_done;
  assign pcie4_cfg_control_link_training_enable = Conn7_link_training_enable;
  assign pcie4_cfg_fc_sel[2:0] = Conn8_SEL;
  assign pcie4_cfg_interrupt_intx_vector[3:0] = Conn10_INTx_VECTOR;
  assign pcie4_cfg_interrupt_pending[3:0] = Conn10_PENDING;
  assign pcie4_cfg_mesg_tx_transmit = Conn5_TRANSMIT;
  assign pcie4_cfg_mesg_tx_transmit_data[31:0] = Conn5_TRANSMIT_DATA;
  assign pcie4_cfg_mesg_tx_transmit_type[2:0] = Conn5_TRANSMIT_TYPE;
  assign pcie4_cfg_msi_attr[2:0] = Conn9_attr;
  assign pcie4_cfg_msi_function_number[7:0] = Conn9_function_number;
  assign pcie4_cfg_msi_int_vector[31:0] = Conn9_int_vector;
  assign pcie4_cfg_msi_pending_status[31:0] = Conn9_pending_status;
  assign pcie4_cfg_msi_pending_status_data_enable = Conn9_pending_status_data_enable;
  assign pcie4_cfg_msi_pending_status_function_num[3:0] = Conn9_pending_status_function_num;
  assign pcie4_cfg_msi_tph_present = Conn9_tph_present;
  assign pcie4_cfg_msi_tph_st_tag[8:0] = Conn9_tph_st_tag;
  assign pcie4_cfg_msi_tph_type[1:0] = Conn9_tph_type;
  assign pcie_cfg_mgmt_sd_addr[9:0] = Conn11_ADDR;
  assign pcie_cfg_mgmt_sd_byte_en[3:0] = Conn11_BYTE_EN;
  assign pcie_cfg_mgmt_sd_debug_access = Conn11_DEBUG_ACCESS;
  assign pcie_cfg_mgmt_sd_function_number[7:0] = Conn11_FUNCTION_NUMBER;
  assign pcie_cfg_mgmt_sd_read_en = Conn11_READ_EN;
  assign pcie_cfg_mgmt_sd_write_data[31:0] = Conn11_WRITE_DATA;
  assign pcie_cfg_mgmt_sd_write_en = Conn11_WRITE_EN;
  assign pcie_cq_np_req_count_sd_1 = pcie_cq_np_req_count_sd[5:0];
  assign pcie_cq_np_req_sd[1:0] = XDMA_BRIDGE_pcie_cq_np_req_sd;
  assign pcie_rq_seq_num0_sd_1 = pcie_rq_seq_num0_sd[5:0];
  assign pcie_rq_seq_num1_sd_1 = pcie_rq_seq_num1_sd[5:0];
  assign pcie_rq_seq_num_vld0_sd_1 = pcie_rq_seq_num_vld0_sd;
  assign pcie_rq_seq_num_vld1_sd_1 = pcie_rq_seq_num_vld1_sd;
  assign phy_rdy_out_sd_1 = phy_rdy_out_sd;
  assign s_axis_cc_tdata[511:0] = Conn2_TDATA;
  assign s_axis_cc_tkeep[15:0] = Conn2_TKEEP;
  assign s_axis_cc_tlast = Conn2_TLAST;
  assign s_axis_cc_tuser[80:0] = Conn2_TUSER;
  assign s_axis_cc_tvalid = Conn2_TVALID;
  assign s_axis_rq_tdata[511:0] = Conn3_TDATA;
  assign s_axis_rq_tkeep[15:0] = Conn3_TKEEP;
  assign s_axis_rq_tlast = Conn3_TLAST;
  assign s_axis_rq_tuser[136:0] = Conn3_TUSER;
  assign s_axis_rq_tvalid = Conn3_TVALID;
  assign sys_rst_n_1 = sys_rst_n;
  assign user_clk_sd_1 = user_clk_sd;
  assign user_reset_sd_1 = user_reset_sd;
  XDMA_BRIDGE_imp_13BRCJX XDMA_BRIDGE
       (.M_AXI_B_araddr(XDMA_BRIDGE_M_AXI_B_ARADDR),
        .M_AXI_B_arprot(XDMA_BRIDGE_M_AXI_B_ARPROT),
        .M_AXI_B_arready(XDMA_BRIDGE_M_AXI_B_ARREADY),
        .M_AXI_B_aruser(XDMA_BRIDGE_M_AXI_B_ARUSER),
        .M_AXI_B_arvalid(XDMA_BRIDGE_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(XDMA_BRIDGE_M_AXI_B_AWADDR),
        .M_AXI_B_awprot(XDMA_BRIDGE_M_AXI_B_AWPROT),
        .M_AXI_B_awready(XDMA_BRIDGE_M_AXI_B_AWREADY),
        .M_AXI_B_awuser(XDMA_BRIDGE_M_AXI_B_AWUSER),
        .M_AXI_B_awvalid(XDMA_BRIDGE_M_AXI_B_AWVALID),
        .M_AXI_B_bready(XDMA_BRIDGE_M_AXI_B_BREADY),
        .M_AXI_B_bresp(XDMA_BRIDGE_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(XDMA_BRIDGE_M_AXI_B_BVALID),
        .M_AXI_B_rdata(XDMA_BRIDGE_M_AXI_B_RDATA),
        .M_AXI_B_rready(XDMA_BRIDGE_M_AXI_B_RREADY),
        .M_AXI_B_rresp(XDMA_BRIDGE_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(XDMA_BRIDGE_M_AXI_B_RVALID),
        .M_AXI_B_wdata(XDMA_BRIDGE_M_AXI_B_WDATA),
        .M_AXI_B_wready(XDMA_BRIDGE_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(XDMA_BRIDGE_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(XDMA_BRIDGE_M_AXI_B_WVALID),
        .S_AXI_PCIEM_araddr(S_AXI_PCIEM_1_ARADDR),
        .S_AXI_PCIEM_arburst(S_AXI_PCIEM_1_ARBURST),
        .S_AXI_PCIEM_arid(S_AXI_PCIEM_1_ARID),
        .S_AXI_PCIEM_arlen(S_AXI_PCIEM_1_ARLEN),
        .S_AXI_PCIEM_arready(S_AXI_PCIEM_1_ARREADY),
        .S_AXI_PCIEM_arregion(S_AXI_PCIEM_1_ARREGION),
        .S_AXI_PCIEM_arsize(S_AXI_PCIEM_1_ARSIZE),
        .S_AXI_PCIEM_arvalid(S_AXI_PCIEM_1_ARVALID),
        .S_AXI_PCIEM_awaddr(S_AXI_PCIEM_1_AWADDR),
        .S_AXI_PCIEM_awburst(S_AXI_PCIEM_1_AWBURST),
        .S_AXI_PCIEM_awid(S_AXI_PCIEM_1_AWID),
        .S_AXI_PCIEM_awlen(S_AXI_PCIEM_1_AWLEN),
        .S_AXI_PCIEM_awready(S_AXI_PCIEM_1_AWREADY),
        .S_AXI_PCIEM_awregion(S_AXI_PCIEM_1_AWREGION),
        .S_AXI_PCIEM_awsize(S_AXI_PCIEM_1_AWSIZE),
        .S_AXI_PCIEM_awvalid(S_AXI_PCIEM_1_AWVALID),
        .S_AXI_PCIEM_bid(S_AXI_PCIEM_1_BID),
        .S_AXI_PCIEM_bready(S_AXI_PCIEM_1_BREADY),
        .S_AXI_PCIEM_bresp(S_AXI_PCIEM_1_BRESP),
        .S_AXI_PCIEM_bvalid(S_AXI_PCIEM_1_BVALID),
        .S_AXI_PCIEM_rdata(S_AXI_PCIEM_1_RDATA),
        .S_AXI_PCIEM_rid(S_AXI_PCIEM_1_RID),
        .S_AXI_PCIEM_rlast(S_AXI_PCIEM_1_RLAST),
        .S_AXI_PCIEM_rready(S_AXI_PCIEM_1_RREADY),
        .S_AXI_PCIEM_rresp(S_AXI_PCIEM_1_RRESP),
        .S_AXI_PCIEM_ruser(S_AXI_PCIEM_1_RUSER),
        .S_AXI_PCIEM_rvalid(S_AXI_PCIEM_1_RVALID),
        .S_AXI_PCIEM_wdata(S_AXI_PCIEM_1_WDATA),
        .S_AXI_PCIEM_wlast(S_AXI_PCIEM_1_WLAST),
        .S_AXI_PCIEM_wready(S_AXI_PCIEM_1_WREADY),
        .S_AXI_PCIEM_wstrb(S_AXI_PCIEM_1_WSTRB),
        .S_AXI_PCIEM_wuser(S_AXI_PCIEM_1_WUSER),
        .S_AXI_PCIEM_wvalid(S_AXI_PCIEM_1_WVALID),
        .axi_aresetn(XDMA_BRIDGE_axi_aresetn),
        .cfg_current_speed_sd(cfg_current_speed_sd_1),
        .cfg_err_cor_out_sd(cfg_err_cor_out_sd_1),
        .cfg_err_fatal_out_sd(cfg_err_fatal_out_sd_1),
        .cfg_err_nonfatal_out_sd(cfg_err_nonfatal_out_sd_1),
        .cfg_function_status_sd(cfg_function_status_sd_1),
        .cfg_local_error_out_sd(cfg_local_error_out_sd_1),
        .cfg_ltssm_state_sd(cfg_ltssm_state_sd_1),
        .cfg_max_payload_sd(cfg_max_payload_sd_1),
        .cfg_max_read_req_sd(cfg_max_read_req_sd_1),
        .cfg_negotiated_width_sd(cfg_negotiated_width_sd_1),
        .cfg_phy_link_down_sd(cfg_phy_link_down_sd_1),
        .cfg_phy_link_status_sd(cfg_phy_link_status_sd_1),
        .cfg_pl_status_change_sd(cfg_pl_status_change_sd_1),
        .clk_out_250M(XDMA_BRIDGE_clk_out_250M),
        .m_axis_cq_tdata(Conn1_TDATA),
        .m_axis_cq_tkeep(Conn1_TKEEP),
        .m_axis_cq_tlast(Conn1_TLAST),
        .m_axis_cq_tready(Conn1_TREADY),
        .m_axis_cq_tuser(Conn1_TUSER),
        .m_axis_cq_tvalid(Conn1_TVALID),
        .m_axis_rc_tdata(Conn4_TDATA),
        .m_axis_rc_tkeep(Conn4_TKEEP),
        .m_axis_rc_tlast(Conn4_TLAST),
        .m_axis_rc_tready(Conn4_TREADY),
        .m_axis_rc_tuser(Conn4_TUSER),
        .m_axis_rc_tvalid(Conn4_TVALID),
        .pcie4_cfg_control_ds_bus_number(Conn7_ds_bus_number),
        .pcie4_cfg_control_ds_device_number(Conn7_ds_device_number),
        .pcie4_cfg_control_ds_port_number(Conn7_ds_port_number),
        .pcie4_cfg_control_dsn(Conn7_dsn),
        .pcie4_cfg_control_err_cor_in(Conn7_err_cor_in),
        .pcie4_cfg_control_err_uncor_in(Conn7_err_uncor_in),
        .pcie4_cfg_control_flr_done(Conn7_flr_done),
        .pcie4_cfg_control_flr_in_process(Conn7_flr_in_process),
        .pcie4_cfg_control_hot_reset_out(Conn7_hot_reset_out),
        .pcie4_cfg_control_link_training_enable(Conn7_link_training_enable),
        .pcie4_cfg_control_vf_flr_in_process(Conn7_vf_flr_in_process),
        .pcie4_cfg_fc_nph(Conn8_NPH),
        .pcie4_cfg_fc_sel(Conn8_SEL),
        .pcie4_cfg_interrupt_intx_vector(Conn10_INTx_VECTOR),
        .pcie4_cfg_interrupt_pending(Conn10_PENDING),
        .pcie4_cfg_interrupt_sent(Conn10_SENT),
        .pcie4_cfg_mesg_rcvd_recd(Conn6_recd),
        .pcie4_cfg_mesg_rcvd_recd_data(Conn6_recd_data),
        .pcie4_cfg_mesg_rcvd_recd_type(Conn6_recd_type),
        .pcie4_cfg_mesg_tx_transmit(Conn5_TRANSMIT),
        .pcie4_cfg_mesg_tx_transmit_data(Conn5_TRANSMIT_DATA),
        .pcie4_cfg_mesg_tx_transmit_done(Conn5_TRANSMIT_DONE),
        .pcie4_cfg_mesg_tx_transmit_type(Conn5_TRANSMIT_TYPE),
        .pcie4_cfg_msi_attr(Conn9_attr),
        .pcie4_cfg_msi_data(Conn9_data),
        .pcie4_cfg_msi_enable(Conn9_enable),
        .pcie4_cfg_msi_fail(Conn9_fail),
        .pcie4_cfg_msi_function_number(Conn9_function_number),
        .pcie4_cfg_msi_int_vector(Conn9_int_vector),
        .pcie4_cfg_msi_mask_update(Conn9_mask_update),
        .pcie4_cfg_msi_pending_status(Conn9_pending_status),
        .pcie4_cfg_msi_pending_status_data_enable(Conn9_pending_status_data_enable),
        .pcie4_cfg_msi_pending_status_function_num(Conn9_pending_status_function_num),
        .pcie4_cfg_msi_sent(Conn9_sent),
        .pcie4_cfg_msi_tph_present(Conn9_tph_present),
        .pcie4_cfg_msi_tph_st_tag(Conn9_tph_st_tag),
        .pcie4_cfg_msi_tph_type(Conn9_tph_type),
        .pcie_cfg_mgmt_sd_addr(Conn11_ADDR),
        .pcie_cfg_mgmt_sd_byte_en(Conn11_BYTE_EN),
        .pcie_cfg_mgmt_sd_debug_access(Conn11_DEBUG_ACCESS),
        .pcie_cfg_mgmt_sd_function_number(Conn11_FUNCTION_NUMBER),
        .pcie_cfg_mgmt_sd_read_data(Conn11_READ_DATA),
        .pcie_cfg_mgmt_sd_read_en(Conn11_READ_EN),
        .pcie_cfg_mgmt_sd_read_write_done(Conn11_READ_WRITE_DONE),
        .pcie_cfg_mgmt_sd_write_data(Conn11_WRITE_DATA),
        .pcie_cfg_mgmt_sd_write_en(Conn11_WRITE_EN),
        .pcie_cq_np_req_count_sd(pcie_cq_np_req_count_sd_1),
        .pcie_cq_np_req_sd(XDMA_BRIDGE_pcie_cq_np_req_sd),
        .pcie_rq_seq_num0_sd(pcie_rq_seq_num0_sd_1),
        .pcie_rq_seq_num1_sd(pcie_rq_seq_num1_sd_1),
        .pcie_rq_seq_num_vld0_sd(pcie_rq_seq_num_vld0_sd_1),
        .pcie_rq_seq_num_vld1_sd(pcie_rq_seq_num_vld1_sd_1),
        .phy_rdy_out_sd(phy_rdy_out_sd_1),
        .s_axis_cc_tdata(Conn2_TDATA),
        .s_axis_cc_tkeep(Conn2_TKEEP),
        .s_axis_cc_tlast(Conn2_TLAST),
        .s_axis_cc_tready(Conn2_TREADY),
        .s_axis_cc_tuser(Conn2_TUSER),
        .s_axis_cc_tvalid(Conn2_TVALID),
        .s_axis_rq_tdata(Conn3_TDATA),
        .s_axis_rq_tkeep(Conn3_TKEEP),
        .s_axis_rq_tlast(Conn3_TLAST),
        .s_axis_rq_tready(Conn3_TREADY),
        .s_axis_rq_tuser(Conn3_TUSER),
        .s_axis_rq_tvalid(Conn3_TVALID),
        .sys_rst_n(sys_rst_n_1),
        .user_clk_sd(user_clk_sd_1),
        .user_lnk_up_sd(THIN_SHELL_x_user_lnk_up),
        .user_reset_sd(user_reset_sd_1));
endmodule

module XDMA_BRIDGE_imp_13BRCJX
   (M_AXI_B_araddr,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_aruser,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awuser,
    M_AXI_B_awvalid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_PCIEM_araddr,
    S_AXI_PCIEM_arburst,
    S_AXI_PCIEM_arid,
    S_AXI_PCIEM_arlen,
    S_AXI_PCIEM_arready,
    S_AXI_PCIEM_arregion,
    S_AXI_PCIEM_arsize,
    S_AXI_PCIEM_arvalid,
    S_AXI_PCIEM_awaddr,
    S_AXI_PCIEM_awburst,
    S_AXI_PCIEM_awid,
    S_AXI_PCIEM_awlen,
    S_AXI_PCIEM_awready,
    S_AXI_PCIEM_awregion,
    S_AXI_PCIEM_awsize,
    S_AXI_PCIEM_awvalid,
    S_AXI_PCIEM_bid,
    S_AXI_PCIEM_bready,
    S_AXI_PCIEM_bresp,
    S_AXI_PCIEM_bvalid,
    S_AXI_PCIEM_rdata,
    S_AXI_PCIEM_rid,
    S_AXI_PCIEM_rlast,
    S_AXI_PCIEM_rready,
    S_AXI_PCIEM_rresp,
    S_AXI_PCIEM_ruser,
    S_AXI_PCIEM_rvalid,
    S_AXI_PCIEM_wdata,
    S_AXI_PCIEM_wlast,
    S_AXI_PCIEM_wready,
    S_AXI_PCIEM_wstrb,
    S_AXI_PCIEM_wuser,
    S_AXI_PCIEM_wvalid,
    axi_aresetn,
    cfg_current_speed_sd,
    cfg_err_cor_out_sd,
    cfg_err_fatal_out_sd,
    cfg_err_nonfatal_out_sd,
    cfg_function_status_sd,
    cfg_local_error_out_sd,
    cfg_ltssm_state_sd,
    cfg_max_payload_sd,
    cfg_max_read_req_sd,
    cfg_negotiated_width_sd,
    cfg_phy_link_down_sd,
    cfg_phy_link_status_sd,
    cfg_pl_status_change_sd,
    clk_out_250M,
    m_axis_cq_tdata,
    m_axis_cq_tkeep,
    m_axis_cq_tlast,
    m_axis_cq_tready,
    m_axis_cq_tuser,
    m_axis_cq_tvalid,
    m_axis_rc_tdata,
    m_axis_rc_tkeep,
    m_axis_rc_tlast,
    m_axis_rc_tready,
    m_axis_rc_tuser,
    m_axis_rc_tvalid,
    pcie4_cfg_control_ds_bus_number,
    pcie4_cfg_control_ds_device_number,
    pcie4_cfg_control_ds_port_number,
    pcie4_cfg_control_dsn,
    pcie4_cfg_control_err_cor_in,
    pcie4_cfg_control_err_uncor_in,
    pcie4_cfg_control_flr_done,
    pcie4_cfg_control_flr_in_process,
    pcie4_cfg_control_hot_reset_out,
    pcie4_cfg_control_link_training_enable,
    pcie4_cfg_control_vf_flr_in_process,
    pcie4_cfg_fc_nph,
    pcie4_cfg_fc_sel,
    pcie4_cfg_interrupt_intx_vector,
    pcie4_cfg_interrupt_pending,
    pcie4_cfg_interrupt_sent,
    pcie4_cfg_mesg_rcvd_recd,
    pcie4_cfg_mesg_rcvd_recd_data,
    pcie4_cfg_mesg_rcvd_recd_type,
    pcie4_cfg_mesg_tx_transmit,
    pcie4_cfg_mesg_tx_transmit_data,
    pcie4_cfg_mesg_tx_transmit_done,
    pcie4_cfg_mesg_tx_transmit_type,
    pcie4_cfg_msi_attr,
    pcie4_cfg_msi_data,
    pcie4_cfg_msi_enable,
    pcie4_cfg_msi_fail,
    pcie4_cfg_msi_function_number,
    pcie4_cfg_msi_int_vector,
    pcie4_cfg_msi_mask_update,
    pcie4_cfg_msi_pending_status,
    pcie4_cfg_msi_pending_status_data_enable,
    pcie4_cfg_msi_pending_status_function_num,
    pcie4_cfg_msi_sent,
    pcie4_cfg_msi_tph_present,
    pcie4_cfg_msi_tph_st_tag,
    pcie4_cfg_msi_tph_type,
    pcie_cfg_mgmt_sd_addr,
    pcie_cfg_mgmt_sd_byte_en,
    pcie_cfg_mgmt_sd_debug_access,
    pcie_cfg_mgmt_sd_function_number,
    pcie_cfg_mgmt_sd_read_data,
    pcie_cfg_mgmt_sd_read_en,
    pcie_cfg_mgmt_sd_read_write_done,
    pcie_cfg_mgmt_sd_write_data,
    pcie_cfg_mgmt_sd_write_en,
    pcie_cq_np_req_count_sd,
    pcie_cq_np_req_sd,
    pcie_rq_seq_num0_sd,
    pcie_rq_seq_num1_sd,
    pcie_rq_seq_num_vld0_sd,
    pcie_rq_seq_num_vld1_sd,
    phy_rdy_out_sd,
    s_axis_cc_tdata,
    s_axis_cc_tkeep,
    s_axis_cc_tlast,
    s_axis_cc_tready,
    s_axis_cc_tuser,
    s_axis_cc_tvalid,
    s_axis_rq_tdata,
    s_axis_rq_tkeep,
    s_axis_rq_tlast,
    s_axis_rq_tready,
    s_axis_rq_tuser,
    s_axis_rq_tvalid,
    sys_rst_n,
    user_clk_sd,
    user_lnk_up_sd,
    user_reset_sd);
  output [31:0]M_AXI_B_araddr;
  output [2:0]M_AXI_B_arprot;
  input M_AXI_B_arready;
  output [10:0]M_AXI_B_aruser;
  output M_AXI_B_arvalid;
  output [31:0]M_AXI_B_awaddr;
  output [2:0]M_AXI_B_awprot;
  input M_AXI_B_awready;
  output [10:0]M_AXI_B_awuser;
  output M_AXI_B_awvalid;
  output M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input M_AXI_B_bvalid;
  input [31:0]M_AXI_B_rdata;
  output M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input M_AXI_B_rvalid;
  output [31:0]M_AXI_B_wdata;
  input M_AXI_B_wready;
  output [3:0]M_AXI_B_wstrb;
  output M_AXI_B_wvalid;
  input [63:0]S_AXI_PCIEM_araddr;
  input [1:0]S_AXI_PCIEM_arburst;
  input [3:0]S_AXI_PCIEM_arid;
  input [7:0]S_AXI_PCIEM_arlen;
  output S_AXI_PCIEM_arready;
  input [3:0]S_AXI_PCIEM_arregion;
  input [2:0]S_AXI_PCIEM_arsize;
  input S_AXI_PCIEM_arvalid;
  input [63:0]S_AXI_PCIEM_awaddr;
  input [1:0]S_AXI_PCIEM_awburst;
  input [3:0]S_AXI_PCIEM_awid;
  input [7:0]S_AXI_PCIEM_awlen;
  output S_AXI_PCIEM_awready;
  input [3:0]S_AXI_PCIEM_awregion;
  input [2:0]S_AXI_PCIEM_awsize;
  input S_AXI_PCIEM_awvalid;
  output [3:0]S_AXI_PCIEM_bid;
  input S_AXI_PCIEM_bready;
  output [1:0]S_AXI_PCIEM_bresp;
  output S_AXI_PCIEM_bvalid;
  output [511:0]S_AXI_PCIEM_rdata;
  output [3:0]S_AXI_PCIEM_rid;
  output S_AXI_PCIEM_rlast;
  input S_AXI_PCIEM_rready;
  output [1:0]S_AXI_PCIEM_rresp;
  output [63:0]S_AXI_PCIEM_ruser;
  output S_AXI_PCIEM_rvalid;
  input [511:0]S_AXI_PCIEM_wdata;
  input S_AXI_PCIEM_wlast;
  output S_AXI_PCIEM_wready;
  input [63:0]S_AXI_PCIEM_wstrb;
  input [63:0]S_AXI_PCIEM_wuser;
  input S_AXI_PCIEM_wvalid;
  output axi_aresetn;
  input [1:0]cfg_current_speed_sd;
  input cfg_err_cor_out_sd;
  input cfg_err_fatal_out_sd;
  input cfg_err_nonfatal_out_sd;
  input [15:0]cfg_function_status_sd;
  input [4:0]cfg_local_error_out_sd;
  input [5:0]cfg_ltssm_state_sd;
  input [1:0]cfg_max_payload_sd;
  input [2:0]cfg_max_read_req_sd;
  input [2:0]cfg_negotiated_width_sd;
  input cfg_phy_link_down_sd;
  input [1:0]cfg_phy_link_status_sd;
  input cfg_pl_status_change_sd;
  output clk_out_250M;
  input [511:0]m_axis_cq_tdata;
  input [15:0]m_axis_cq_tkeep;
  input m_axis_cq_tlast;
  output m_axis_cq_tready;
  input [182:0]m_axis_cq_tuser;
  input m_axis_cq_tvalid;
  input [511:0]m_axis_rc_tdata;
  input [15:0]m_axis_rc_tkeep;
  input m_axis_rc_tlast;
  output m_axis_rc_tready;
  input [160:0]m_axis_rc_tuser;
  input m_axis_rc_tvalid;
  output [7:0]pcie4_cfg_control_ds_bus_number;
  output [4:0]pcie4_cfg_control_ds_device_number;
  output [7:0]pcie4_cfg_control_ds_port_number;
  output [63:0]pcie4_cfg_control_dsn;
  output pcie4_cfg_control_err_cor_in;
  output pcie4_cfg_control_err_uncor_in;
  output [3:0]pcie4_cfg_control_flr_done;
  input [3:0]pcie4_cfg_control_flr_in_process;
  input pcie4_cfg_control_hot_reset_out;
  output pcie4_cfg_control_link_training_enable;
  input [251:0]pcie4_cfg_control_vf_flr_in_process;
  input [7:0]pcie4_cfg_fc_nph;
  output [2:0]pcie4_cfg_fc_sel;
  output [3:0]pcie4_cfg_interrupt_intx_vector;
  output [3:0]pcie4_cfg_interrupt_pending;
  input pcie4_cfg_interrupt_sent;
  input pcie4_cfg_mesg_rcvd_recd;
  input [7:0]pcie4_cfg_mesg_rcvd_recd_data;
  input [4:0]pcie4_cfg_mesg_rcvd_recd_type;
  output pcie4_cfg_mesg_tx_transmit;
  output [31:0]pcie4_cfg_mesg_tx_transmit_data;
  input pcie4_cfg_mesg_tx_transmit_done;
  output [2:0]pcie4_cfg_mesg_tx_transmit_type;
  output [2:0]pcie4_cfg_msi_attr;
  input [31:0]pcie4_cfg_msi_data;
  input [3:0]pcie4_cfg_msi_enable;
  input pcie4_cfg_msi_fail;
  output [7:0]pcie4_cfg_msi_function_number;
  output [31:0]pcie4_cfg_msi_int_vector;
  input pcie4_cfg_msi_mask_update;
  output [31:0]pcie4_cfg_msi_pending_status;
  output pcie4_cfg_msi_pending_status_data_enable;
  output [3:0]pcie4_cfg_msi_pending_status_function_num;
  input pcie4_cfg_msi_sent;
  output pcie4_cfg_msi_tph_present;
  output [8:0]pcie4_cfg_msi_tph_st_tag;
  output [1:0]pcie4_cfg_msi_tph_type;
  output [9:0]pcie_cfg_mgmt_sd_addr;
  output [3:0]pcie_cfg_mgmt_sd_byte_en;
  output pcie_cfg_mgmt_sd_debug_access;
  output [7:0]pcie_cfg_mgmt_sd_function_number;
  input [31:0]pcie_cfg_mgmt_sd_read_data;
  output pcie_cfg_mgmt_sd_read_en;
  input pcie_cfg_mgmt_sd_read_write_done;
  output [31:0]pcie_cfg_mgmt_sd_write_data;
  output pcie_cfg_mgmt_sd_write_en;
  input [5:0]pcie_cq_np_req_count_sd;
  output [1:0]pcie_cq_np_req_sd;
  input [5:0]pcie_rq_seq_num0_sd;
  input [5:0]pcie_rq_seq_num1_sd;
  input pcie_rq_seq_num_vld0_sd;
  input pcie_rq_seq_num_vld1_sd;
  input phy_rdy_out_sd;
  output [511:0]s_axis_cc_tdata;
  output [15:0]s_axis_cc_tkeep;
  output s_axis_cc_tlast;
  input s_axis_cc_tready;
  output [80:0]s_axis_cc_tuser;
  output s_axis_cc_tvalid;
  output [511:0]s_axis_rq_tdata;
  output [15:0]s_axis_rq_tkeep;
  output s_axis_rq_tlast;
  input [3:0]s_axis_rq_tready;
  output [136:0]s_axis_rq_tuser;
  output s_axis_rq_tvalid;
  input sys_rst_n;
  input user_clk_sd;
  input user_lnk_up_sd;
  input user_reset_sd;

  wire [3:0]Conn10_INTx_VECTOR;
  wire [3:0]Conn10_PENDING;
  wire Conn10_SENT;
  wire [9:0]Conn11_ADDR;
  wire [3:0]Conn11_BYTE_EN;
  wire Conn11_DEBUG_ACCESS;
  wire [7:0]Conn11_FUNCTION_NUMBER;
  wire [31:0]Conn11_READ_DATA;
  wire Conn11_READ_EN;
  wire Conn11_READ_WRITE_DONE;
  wire [31:0]Conn11_WRITE_DATA;
  wire Conn11_WRITE_EN;
  wire [511:0]Conn1_TDATA;
  wire [15:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire [182:0]Conn1_TUSER;
  wire Conn1_TVALID;
  wire [511:0]Conn2_TDATA;
  wire [15:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire [80:0]Conn2_TUSER;
  wire Conn2_TVALID;
  wire [511:0]Conn3_TDATA;
  wire [15:0]Conn3_TKEEP;
  wire Conn3_TLAST;
  wire [3:0]Conn3_TREADY;
  wire [136:0]Conn3_TUSER;
  wire Conn3_TVALID;
  wire [511:0]Conn4_TDATA;
  wire [15:0]Conn4_TKEEP;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire [160:0]Conn4_TUSER;
  wire Conn4_TVALID;
  wire Conn5_TRANSMIT;
  wire [31:0]Conn5_TRANSMIT_DATA;
  wire Conn5_TRANSMIT_DONE;
  wire [2:0]Conn5_TRANSMIT_TYPE;
  wire Conn6_recd;
  wire [7:0]Conn6_recd_data;
  wire [4:0]Conn6_recd_type;
  wire [7:0]Conn7_ds_bus_number;
  wire [4:0]Conn7_ds_device_number;
  wire [7:0]Conn7_ds_port_number;
  wire [63:0]Conn7_dsn;
  wire Conn7_err_cor_in;
  wire Conn7_err_uncor_in;
  wire [3:0]Conn7_flr_done;
  wire [3:0]Conn7_flr_in_process;
  wire Conn7_hot_reset_out;
  wire Conn7_link_training_enable;
  wire [251:0]Conn7_vf_flr_in_process;
  wire [7:0]Conn8_NPH;
  wire [2:0]Conn8_SEL;
  wire [2:0]Conn9_attr;
  wire [31:0]Conn9_data;
  wire [3:0]Conn9_enable;
  wire Conn9_fail;
  wire [7:0]Conn9_function_number;
  wire [31:0]Conn9_int_vector;
  wire Conn9_mask_update;
  wire [31:0]Conn9_pending_status;
  wire Conn9_pending_status_data_enable;
  wire [3:0]Conn9_pending_status_function_num;
  wire Conn9_sent;
  wire Conn9_tph_present;
  wire [8:0]Conn9_tph_st_tag;
  wire [1:0]Conn9_tph_type;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]S_AXI_PCIEM_1_ARADDR;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_PCIEM_1_ARBURST;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_PCIEM_1_ARID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_PCIEM_1_ARLEN;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_ARREADY;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARREGION" *) (* DONT_TOUCH *) wire [3:0]S_AXI_PCIEM_1_ARREGION;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_PCIEM_1_ARSIZE;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_ARVALID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]S_AXI_PCIEM_1_AWADDR;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_PCIEM_1_AWBURST;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_PCIEM_1_AWID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_PCIEM_1_AWLEN;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_AWREADY;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWREGION" *) (* DONT_TOUCH *) wire [3:0]S_AXI_PCIEM_1_AWREGION;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_PCIEM_1_AWSIZE;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_AWVALID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_PCIEM_1_BID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_BREADY;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_PCIEM_1_BRESP;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_BVALID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_PCIEM_1_RDATA;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_PCIEM_1_RID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_RLAST;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_RREADY;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_PCIEM_1_RRESP;
  wire [63:0]S_AXI_PCIEM_1_RUSER;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_RVALID;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_PCIEM_1_WDATA;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_WLAST;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_WREADY;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]S_AXI_PCIEM_1_WSTRB;
  wire [63:0]S_AXI_PCIEM_1_WUSER;
  (* CONN_BUS_INFO = "S_AXI_PCIEM_1 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire S_AXI_PCIEM_1_WVALID;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [1:0]cfg_current_speed_sd_1;
  wire cfg_err_cor_out_sd_1;
  wire cfg_err_fatal_out_sd_1;
  wire cfg_err_nonfatal_out_sd_1;
  wire [15:0]cfg_function_status_sd_1;
  wire [4:0]cfg_local_error_out_sd_1;
  wire [5:0]cfg_ltssm_state_sd_1;
  wire [1:0]cfg_max_payload_sd_1;
  wire [2:0]cfg_max_read_req_sd_1;
  wire [2:0]cfg_negotiated_width_sd_1;
  wire cfg_phy_link_down_sd_1;
  wire [1:0]cfg_phy_link_status_sd_1;
  wire cfg_pl_status_change_sd_1;
  wire pcie4_uscale_plus_0_user_lnk_up;
  wire [5:0]pcie_cq_np_req_count_sd_1;
  wire [5:0]pcie_rq_seq_num0_sd_1;
  wire [5:0]pcie_rq_seq_num1_sd_1;
  wire pcie_rq_seq_num_vld0_sd_1;
  wire pcie_rq_seq_num_vld1_sd_1;
  wire phy_rdy_out_sd_1;
  wire sys_rst_n_1;
  wire user_clk_sd_1;
  wire user_reset_sd_1;
  wire [63:0]xdma_0_M_AXI_BYPASS_ARADDR;
  wire [1:0]xdma_0_M_AXI_BYPASS_ARBURST;
  wire [3:0]xdma_0_M_AXI_BYPASS_ARCACHE;
  wire [3:0]xdma_0_M_AXI_BYPASS_ARID;
  wire [7:0]xdma_0_M_AXI_BYPASS_ARLEN;
  wire xdma_0_M_AXI_BYPASS_ARLOCK;
  wire [2:0]xdma_0_M_AXI_BYPASS_ARPROT;
  wire xdma_0_M_AXI_BYPASS_ARREADY;
  wire [2:0]xdma_0_M_AXI_BYPASS_ARSIZE;
  wire xdma_0_M_AXI_BYPASS_ARVALID;
  wire [63:0]xdma_0_M_AXI_BYPASS_AWADDR;
  wire [1:0]xdma_0_M_AXI_BYPASS_AWBURST;
  wire [3:0]xdma_0_M_AXI_BYPASS_AWCACHE;
  wire [3:0]xdma_0_M_AXI_BYPASS_AWID;
  wire [7:0]xdma_0_M_AXI_BYPASS_AWLEN;
  wire xdma_0_M_AXI_BYPASS_AWLOCK;
  wire [2:0]xdma_0_M_AXI_BYPASS_AWPROT;
  wire xdma_0_M_AXI_BYPASS_AWREADY;
  wire [2:0]xdma_0_M_AXI_BYPASS_AWSIZE;
  wire xdma_0_M_AXI_BYPASS_AWVALID;
  wire [3:0]xdma_0_M_AXI_BYPASS_BID;
  wire xdma_0_M_AXI_BYPASS_BREADY;
  wire [1:0]xdma_0_M_AXI_BYPASS_BRESP;
  wire xdma_0_M_AXI_BYPASS_BVALID;
  wire [511:0]xdma_0_M_AXI_BYPASS_RDATA;
  wire [3:0]xdma_0_M_AXI_BYPASS_RID;
  wire xdma_0_M_AXI_BYPASS_RLAST;
  wire xdma_0_M_AXI_BYPASS_RREADY;
  wire [1:0]xdma_0_M_AXI_BYPASS_RRESP;
  wire xdma_0_M_AXI_BYPASS_RVALID;
  wire [511:0]xdma_0_M_AXI_BYPASS_WDATA;
  wire xdma_0_M_AXI_BYPASS_WLAST;
  wire xdma_0_M_AXI_BYPASS_WREADY;
  wire [63:0]xdma_0_M_AXI_BYPASS_WSTRB;
  wire xdma_0_M_AXI_BYPASS_WVALID;
  wire [1:0]xdma_0_pcie_cq_np_req_sd;
  wire [31:0]xdma_1_M_AXI_LITE_ARADDR;
  wire [2:0]xdma_1_M_AXI_LITE_ARPROT;
  wire xdma_1_M_AXI_LITE_ARREADY;
  wire [10:0]xdma_1_M_AXI_LITE_ARUSER;
  wire xdma_1_M_AXI_LITE_ARVALID;
  wire [31:0]xdma_1_M_AXI_LITE_AWADDR;
  wire [2:0]xdma_1_M_AXI_LITE_AWPROT;
  wire xdma_1_M_AXI_LITE_AWREADY;
  wire [10:0]xdma_1_M_AXI_LITE_AWUSER;
  wire xdma_1_M_AXI_LITE_AWVALID;
  wire xdma_1_M_AXI_LITE_BREADY;
  wire [1:0]xdma_1_M_AXI_LITE_BRESP;
  wire xdma_1_M_AXI_LITE_BVALID;
  wire [31:0]xdma_1_M_AXI_LITE_RDATA;
  wire xdma_1_M_AXI_LITE_RREADY;
  wire [1:0]xdma_1_M_AXI_LITE_RRESP;
  wire xdma_1_M_AXI_LITE_RVALID;
  wire [31:0]xdma_1_M_AXI_LITE_WDATA;
  wire xdma_1_M_AXI_LITE_WREADY;
  wire [3:0]xdma_1_M_AXI_LITE_WSTRB;
  wire xdma_1_M_AXI_LITE_WVALID;
  wire xdma_1_axi_aclk;
  wire xdma_1_axi_aresetn;
  wire [0:0]xlconstant_2_dout;

  assign Conn10_SENT = pcie4_cfg_interrupt_sent;
  assign Conn11_READ_DATA = pcie_cfg_mgmt_sd_read_data[31:0];
  assign Conn11_READ_WRITE_DONE = pcie_cfg_mgmt_sd_read_write_done;
  assign Conn1_TDATA = m_axis_cq_tdata[511:0];
  assign Conn1_TKEEP = m_axis_cq_tkeep[15:0];
  assign Conn1_TLAST = m_axis_cq_tlast;
  assign Conn1_TUSER = m_axis_cq_tuser[182:0];
  assign Conn1_TVALID = m_axis_cq_tvalid;
  assign Conn2_TREADY = s_axis_cc_tready;
  assign Conn3_TREADY = s_axis_rq_tready[3:0];
  assign Conn4_TDATA = m_axis_rc_tdata[511:0];
  assign Conn4_TKEEP = m_axis_rc_tkeep[15:0];
  assign Conn4_TLAST = m_axis_rc_tlast;
  assign Conn4_TUSER = m_axis_rc_tuser[160:0];
  assign Conn4_TVALID = m_axis_rc_tvalid;
  assign Conn5_TRANSMIT_DONE = pcie4_cfg_mesg_tx_transmit_done;
  assign Conn6_recd = pcie4_cfg_mesg_rcvd_recd;
  assign Conn6_recd_data = pcie4_cfg_mesg_rcvd_recd_data[7:0];
  assign Conn6_recd_type = pcie4_cfg_mesg_rcvd_recd_type[4:0];
  assign Conn7_flr_in_process = pcie4_cfg_control_flr_in_process[3:0];
  assign Conn7_hot_reset_out = pcie4_cfg_control_hot_reset_out;
  assign Conn7_vf_flr_in_process = pcie4_cfg_control_vf_flr_in_process[251:0];
  assign Conn8_NPH = pcie4_cfg_fc_nph[7:0];
  assign Conn9_data = pcie4_cfg_msi_data[31:0];
  assign Conn9_enable = pcie4_cfg_msi_enable[3:0];
  assign Conn9_fail = pcie4_cfg_msi_fail;
  assign Conn9_mask_update = pcie4_cfg_msi_mask_update;
  assign Conn9_sent = pcie4_cfg_msi_sent;
  assign M_AXI_B_araddr[31:0] = xdma_1_M_AXI_LITE_ARADDR;
  assign M_AXI_B_arprot[2:0] = xdma_1_M_AXI_LITE_ARPROT;
  assign M_AXI_B_aruser[10:0] = xdma_1_M_AXI_LITE_ARUSER;
  assign M_AXI_B_arvalid = xdma_1_M_AXI_LITE_ARVALID;
  assign M_AXI_B_awaddr[31:0] = xdma_1_M_AXI_LITE_AWADDR;
  assign M_AXI_B_awprot[2:0] = xdma_1_M_AXI_LITE_AWPROT;
  assign M_AXI_B_awuser[10:0] = xdma_1_M_AXI_LITE_AWUSER;
  assign M_AXI_B_awvalid = xdma_1_M_AXI_LITE_AWVALID;
  assign M_AXI_B_bready = xdma_1_M_AXI_LITE_BREADY;
  assign M_AXI_B_rready = xdma_1_M_AXI_LITE_RREADY;
  assign M_AXI_B_wdata[31:0] = xdma_1_M_AXI_LITE_WDATA;
  assign M_AXI_B_wstrb[3:0] = xdma_1_M_AXI_LITE_WSTRB;
  assign M_AXI_B_wvalid = xdma_1_M_AXI_LITE_WVALID;
  assign S_AXI_PCIEM_1_ARADDR = S_AXI_PCIEM_araddr[63:0];
  assign S_AXI_PCIEM_1_ARBURST = S_AXI_PCIEM_arburst[1:0];
  assign S_AXI_PCIEM_1_ARID = S_AXI_PCIEM_arid[3:0];
  assign S_AXI_PCIEM_1_ARLEN = S_AXI_PCIEM_arlen[7:0];
  assign S_AXI_PCIEM_1_ARREGION = S_AXI_PCIEM_arregion[3:0];
  assign S_AXI_PCIEM_1_ARSIZE = S_AXI_PCIEM_arsize[2:0];
  assign S_AXI_PCIEM_1_ARVALID = S_AXI_PCIEM_arvalid;
  assign S_AXI_PCIEM_1_AWADDR = S_AXI_PCIEM_awaddr[63:0];
  assign S_AXI_PCIEM_1_AWBURST = S_AXI_PCIEM_awburst[1:0];
  assign S_AXI_PCIEM_1_AWID = S_AXI_PCIEM_awid[3:0];
  assign S_AXI_PCIEM_1_AWLEN = S_AXI_PCIEM_awlen[7:0];
  assign S_AXI_PCIEM_1_AWREGION = S_AXI_PCIEM_awregion[3:0];
  assign S_AXI_PCIEM_1_AWSIZE = S_AXI_PCIEM_awsize[2:0];
  assign S_AXI_PCIEM_1_AWVALID = S_AXI_PCIEM_awvalid;
  assign S_AXI_PCIEM_1_BREADY = S_AXI_PCIEM_bready;
  assign S_AXI_PCIEM_1_RREADY = S_AXI_PCIEM_rready;
  assign S_AXI_PCIEM_1_WDATA = S_AXI_PCIEM_wdata[511:0];
  assign S_AXI_PCIEM_1_WLAST = S_AXI_PCIEM_wlast;
  assign S_AXI_PCIEM_1_WSTRB = S_AXI_PCIEM_wstrb[63:0];
  assign S_AXI_PCIEM_1_WUSER = S_AXI_PCIEM_wuser[63:0];
  assign S_AXI_PCIEM_1_WVALID = S_AXI_PCIEM_wvalid;
  assign S_AXI_PCIEM_arready = S_AXI_PCIEM_1_ARREADY;
  assign S_AXI_PCIEM_awready = S_AXI_PCIEM_1_AWREADY;
  assign S_AXI_PCIEM_bid[3:0] = S_AXI_PCIEM_1_BID;
  assign S_AXI_PCIEM_bresp[1:0] = S_AXI_PCIEM_1_BRESP;
  assign S_AXI_PCIEM_bvalid = S_AXI_PCIEM_1_BVALID;
  assign S_AXI_PCIEM_rdata[511:0] = S_AXI_PCIEM_1_RDATA;
  assign S_AXI_PCIEM_rid[3:0] = S_AXI_PCIEM_1_RID;
  assign S_AXI_PCIEM_rlast = S_AXI_PCIEM_1_RLAST;
  assign S_AXI_PCIEM_rresp[1:0] = S_AXI_PCIEM_1_RRESP;
  assign S_AXI_PCIEM_ruser[63:0] = S_AXI_PCIEM_1_RUSER;
  assign S_AXI_PCIEM_rvalid = S_AXI_PCIEM_1_RVALID;
  assign S_AXI_PCIEM_wready = S_AXI_PCIEM_1_WREADY;
  assign axi_aresetn = xdma_1_axi_aresetn;
  assign cfg_current_speed_sd_1 = cfg_current_speed_sd[1:0];
  assign cfg_err_cor_out_sd_1 = cfg_err_cor_out_sd;
  assign cfg_err_fatal_out_sd_1 = cfg_err_fatal_out_sd;
  assign cfg_err_nonfatal_out_sd_1 = cfg_err_nonfatal_out_sd;
  assign cfg_function_status_sd_1 = cfg_function_status_sd[15:0];
  assign cfg_local_error_out_sd_1 = cfg_local_error_out_sd[4:0];
  assign cfg_ltssm_state_sd_1 = cfg_ltssm_state_sd[5:0];
  assign cfg_max_payload_sd_1 = cfg_max_payload_sd[1:0];
  assign cfg_max_read_req_sd_1 = cfg_max_read_req_sd[2:0];
  assign cfg_negotiated_width_sd_1 = cfg_negotiated_width_sd[2:0];
  assign cfg_phy_link_down_sd_1 = cfg_phy_link_down_sd;
  assign cfg_phy_link_status_sd_1 = cfg_phy_link_status_sd[1:0];
  assign cfg_pl_status_change_sd_1 = cfg_pl_status_change_sd;
  assign clk_out_250M = xdma_1_axi_aclk;
  assign m_axis_cq_tready = Conn1_TREADY;
  assign m_axis_rc_tready = Conn4_TREADY;
  assign pcie4_cfg_control_ds_bus_number[7:0] = Conn7_ds_bus_number;
  assign pcie4_cfg_control_ds_device_number[4:0] = Conn7_ds_device_number;
  assign pcie4_cfg_control_ds_port_number[7:0] = Conn7_ds_port_number;
  assign pcie4_cfg_control_dsn[63:0] = Conn7_dsn;
  assign pcie4_cfg_control_err_cor_in = Conn7_err_cor_in;
  assign pcie4_cfg_control_err_uncor_in = Conn7_err_uncor_in;
  assign pcie4_cfg_control_flr_done[3:0] = Conn7_flr_done;
  assign pcie4_cfg_control_link_training_enable = Conn7_link_training_enable;
  assign pcie4_cfg_fc_sel[2:0] = Conn8_SEL;
  assign pcie4_cfg_interrupt_intx_vector[3:0] = Conn10_INTx_VECTOR;
  assign pcie4_cfg_interrupt_pending[3:0] = Conn10_PENDING;
  assign pcie4_cfg_mesg_tx_transmit = Conn5_TRANSMIT;
  assign pcie4_cfg_mesg_tx_transmit_data[31:0] = Conn5_TRANSMIT_DATA;
  assign pcie4_cfg_mesg_tx_transmit_type[2:0] = Conn5_TRANSMIT_TYPE;
  assign pcie4_cfg_msi_attr[2:0] = Conn9_attr;
  assign pcie4_cfg_msi_function_number[7:0] = Conn9_function_number;
  assign pcie4_cfg_msi_int_vector[31:0] = Conn9_int_vector;
  assign pcie4_cfg_msi_pending_status[31:0] = Conn9_pending_status;
  assign pcie4_cfg_msi_pending_status_data_enable = Conn9_pending_status_data_enable;
  assign pcie4_cfg_msi_pending_status_function_num[3:0] = Conn9_pending_status_function_num;
  assign pcie4_cfg_msi_tph_present = Conn9_tph_present;
  assign pcie4_cfg_msi_tph_st_tag[8:0] = Conn9_tph_st_tag;
  assign pcie4_cfg_msi_tph_type[1:0] = Conn9_tph_type;
  assign pcie4_uscale_plus_0_user_lnk_up = user_lnk_up_sd;
  assign pcie_cfg_mgmt_sd_addr[9:0] = Conn11_ADDR;
  assign pcie_cfg_mgmt_sd_byte_en[3:0] = Conn11_BYTE_EN;
  assign pcie_cfg_mgmt_sd_debug_access = Conn11_DEBUG_ACCESS;
  assign pcie_cfg_mgmt_sd_function_number[7:0] = Conn11_FUNCTION_NUMBER;
  assign pcie_cfg_mgmt_sd_read_en = Conn11_READ_EN;
  assign pcie_cfg_mgmt_sd_write_data[31:0] = Conn11_WRITE_DATA;
  assign pcie_cfg_mgmt_sd_write_en = Conn11_WRITE_EN;
  assign pcie_cq_np_req_count_sd_1 = pcie_cq_np_req_count_sd[5:0];
  assign pcie_cq_np_req_sd[1:0] = xdma_0_pcie_cq_np_req_sd;
  assign pcie_rq_seq_num0_sd_1 = pcie_rq_seq_num0_sd[5:0];
  assign pcie_rq_seq_num1_sd_1 = pcie_rq_seq_num1_sd[5:0];
  assign pcie_rq_seq_num_vld0_sd_1 = pcie_rq_seq_num_vld0_sd;
  assign pcie_rq_seq_num_vld1_sd_1 = pcie_rq_seq_num_vld1_sd;
  assign phy_rdy_out_sd_1 = phy_rdy_out_sd;
  assign s_axis_cc_tdata[511:0] = Conn2_TDATA;
  assign s_axis_cc_tkeep[15:0] = Conn2_TKEEP;
  assign s_axis_cc_tlast = Conn2_TLAST;
  assign s_axis_cc_tuser[80:0] = Conn2_TUSER;
  assign s_axis_cc_tvalid = Conn2_TVALID;
  assign s_axis_rq_tdata[511:0] = Conn3_TDATA;
  assign s_axis_rq_tkeep[15:0] = Conn3_TKEEP;
  assign s_axis_rq_tlast = Conn3_TLAST;
  assign s_axis_rq_tuser[136:0] = Conn3_TUSER;
  assign s_axis_rq_tvalid = Conn3_TVALID;
  assign sys_rst_n_1 = sys_rst_n;
  assign user_clk_sd_1 = user_clk_sd;
  assign user_reset_sd_1 = user_reset_sd;
  assign xdma_1_M_AXI_LITE_ARREADY = M_AXI_B_arready;
  assign xdma_1_M_AXI_LITE_AWREADY = M_AXI_B_awready;
  assign xdma_1_M_AXI_LITE_BRESP = M_AXI_B_bresp[1:0];
  assign xdma_1_M_AXI_LITE_BVALID = M_AXI_B_bvalid;
  assign xdma_1_M_AXI_LITE_RDATA = M_AXI_B_rdata[31:0];
  assign xdma_1_M_AXI_LITE_RRESP = M_AXI_B_rresp[1:0];
  assign xdma_1_M_AXI_LITE_RVALID = M_AXI_B_rvalid;
  assign xdma_1_M_AXI_LITE_WREADY = M_AXI_B_wready;
  X_PCIe_Bridge_ICAP_complex_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(xdma_1_axi_aclk),
        .s_axi_araddr(xdma_0_M_AXI_BYPASS_ARADDR[14:0]),
        .s_axi_arburst(xdma_0_M_AXI_BYPASS_ARBURST),
        .s_axi_arcache(xdma_0_M_AXI_BYPASS_ARCACHE),
        .s_axi_aresetn(xdma_1_axi_aresetn),
        .s_axi_arid(xdma_0_M_AXI_BYPASS_ARID),
        .s_axi_arlen(xdma_0_M_AXI_BYPASS_ARLEN),
        .s_axi_arlock(xdma_0_M_AXI_BYPASS_ARLOCK),
        .s_axi_arprot(xdma_0_M_AXI_BYPASS_ARPROT),
        .s_axi_arready(xdma_0_M_AXI_BYPASS_ARREADY),
        .s_axi_arsize(xdma_0_M_AXI_BYPASS_ARSIZE),
        .s_axi_arvalid(xdma_0_M_AXI_BYPASS_ARVALID),
        .s_axi_awaddr(xdma_0_M_AXI_BYPASS_AWADDR[14:0]),
        .s_axi_awburst(xdma_0_M_AXI_BYPASS_AWBURST),
        .s_axi_awcache(xdma_0_M_AXI_BYPASS_AWCACHE),
        .s_axi_awid(xdma_0_M_AXI_BYPASS_AWID),
        .s_axi_awlen(xdma_0_M_AXI_BYPASS_AWLEN),
        .s_axi_awlock(xdma_0_M_AXI_BYPASS_AWLOCK),
        .s_axi_awprot(xdma_0_M_AXI_BYPASS_AWPROT),
        .s_axi_awready(xdma_0_M_AXI_BYPASS_AWREADY),
        .s_axi_awsize(xdma_0_M_AXI_BYPASS_AWSIZE),
        .s_axi_awvalid(xdma_0_M_AXI_BYPASS_AWVALID),
        .s_axi_bid(xdma_0_M_AXI_BYPASS_BID),
        .s_axi_bready(xdma_0_M_AXI_BYPASS_BREADY),
        .s_axi_bresp(xdma_0_M_AXI_BYPASS_BRESP),
        .s_axi_bvalid(xdma_0_M_AXI_BYPASS_BVALID),
        .s_axi_rdata(xdma_0_M_AXI_BYPASS_RDATA),
        .s_axi_rid(xdma_0_M_AXI_BYPASS_RID),
        .s_axi_rlast(xdma_0_M_AXI_BYPASS_RLAST),
        .s_axi_rready(xdma_0_M_AXI_BYPASS_RREADY),
        .s_axi_rresp(xdma_0_M_AXI_BYPASS_RRESP),
        .s_axi_rvalid(xdma_0_M_AXI_BYPASS_RVALID),
        .s_axi_wdata(xdma_0_M_AXI_BYPASS_WDATA),
        .s_axi_wlast(xdma_0_M_AXI_BYPASS_WLAST),
        .s_axi_wready(xdma_0_M_AXI_BYPASS_WREADY),
        .s_axi_wstrb(xdma_0_M_AXI_BYPASS_WSTRB),
        .s_axi_wvalid(xdma_0_M_AXI_BYPASS_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  X_PCIe_Bridge_ICAP_complex_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(S_AXI_PCIEM_1_ARADDR),
        .SLOT_0_AXI_arburst(S_AXI_PCIEM_1_ARBURST),
        .SLOT_0_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_0_AXI_arid(S_AXI_PCIEM_1_ARID),
        .SLOT_0_AXI_arlen(S_AXI_PCIEM_1_ARLEN),
        .SLOT_0_AXI_arlock(1'b0),
        .SLOT_0_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arready(S_AXI_PCIEM_1_ARREADY),
        .SLOT_0_AXI_arregion(S_AXI_PCIEM_1_ARREGION),
        .SLOT_0_AXI_arsize(S_AXI_PCIEM_1_ARSIZE),
        .SLOT_0_AXI_arvalid(S_AXI_PCIEM_1_ARVALID),
        .SLOT_0_AXI_awaddr(S_AXI_PCIEM_1_AWADDR),
        .SLOT_0_AXI_awburst(S_AXI_PCIEM_1_AWBURST),
        .SLOT_0_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_0_AXI_awid(S_AXI_PCIEM_1_AWID),
        .SLOT_0_AXI_awlen(S_AXI_PCIEM_1_AWLEN),
        .SLOT_0_AXI_awlock(1'b0),
        .SLOT_0_AXI_awprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awready(S_AXI_PCIEM_1_AWREADY),
        .SLOT_0_AXI_awregion(S_AXI_PCIEM_1_AWREGION),
        .SLOT_0_AXI_awsize(S_AXI_PCIEM_1_AWSIZE),
        .SLOT_0_AXI_awvalid(S_AXI_PCIEM_1_AWVALID),
        .SLOT_0_AXI_bid(S_AXI_PCIEM_1_BID),
        .SLOT_0_AXI_bready(S_AXI_PCIEM_1_BREADY),
        .SLOT_0_AXI_bresp(S_AXI_PCIEM_1_BRESP),
        .SLOT_0_AXI_bvalid(S_AXI_PCIEM_1_BVALID),
        .SLOT_0_AXI_rdata(S_AXI_PCIEM_1_RDATA),
        .SLOT_0_AXI_rid(S_AXI_PCIEM_1_RID),
        .SLOT_0_AXI_rlast(S_AXI_PCIEM_1_RLAST),
        .SLOT_0_AXI_rready(S_AXI_PCIEM_1_RREADY),
        .SLOT_0_AXI_rresp(S_AXI_PCIEM_1_RRESP),
        .SLOT_0_AXI_rvalid(S_AXI_PCIEM_1_RVALID),
        .SLOT_0_AXI_wdata(S_AXI_PCIEM_1_WDATA),
        .SLOT_0_AXI_wlast(S_AXI_PCIEM_1_WLAST),
        .SLOT_0_AXI_wready(S_AXI_PCIEM_1_WREADY),
        .SLOT_0_AXI_wstrb(S_AXI_PCIEM_1_WSTRB),
        .SLOT_0_AXI_wvalid(S_AXI_PCIEM_1_WVALID),
        .clk(xdma_1_axi_aclk),
        .resetn(xdma_1_axi_aresetn));
  X_PCIe_Bridge_ICAP_complex_xdma_0_0 xdma_0
       (.axi_aclk(xdma_1_axi_aclk),
        .axi_aresetn(xdma_1_axi_aresetn),
        .cfg_current_speed_sd(cfg_current_speed_sd_1),
        .cfg_ds_bus_number_sd(Conn7_ds_bus_number),
        .cfg_ds_device_number_sd(Conn7_ds_device_number),
        .cfg_ds_port_number_sd(Conn7_ds_port_number),
        .cfg_dsn_sd(Conn7_dsn),
        .cfg_err_cor_in_sd(Conn7_err_cor_in),
        .cfg_err_cor_out_sd(cfg_err_cor_out_sd_1),
        .cfg_err_fatal_out_sd(cfg_err_fatal_out_sd_1),
        .cfg_err_nonfatal_out_sd(cfg_err_nonfatal_out_sd_1),
        .cfg_err_uncor_in_sd(Conn7_err_uncor_in),
        .cfg_fc_nph_sd(Conn8_NPH),
        .cfg_fc_sel_sd(Conn8_SEL),
        .cfg_flr_done_sd(Conn7_flr_done),
        .cfg_flr_in_process_sd(Conn7_flr_in_process),
        .cfg_function_status_sd(cfg_function_status_sd_1),
        .cfg_hot_reset_out_sd(Conn7_hot_reset_out),
        .cfg_interrupt_int_sd(Conn10_INTx_VECTOR),
        .cfg_interrupt_msi_attr_sd(Conn9_attr),
        .cfg_interrupt_msi_data_sd(Conn9_data),
        .cfg_interrupt_msi_enable_sd(Conn9_enable),
        .cfg_interrupt_msi_fail_sd(Conn9_fail),
        .cfg_interrupt_msi_function_number_sd(Conn9_function_number),
        .cfg_interrupt_msi_int_sd(Conn9_int_vector),
        .cfg_interrupt_msi_mask_update_sd(Conn9_mask_update),
        .cfg_interrupt_msi_pending_status_data_enable_sd(Conn9_pending_status_data_enable),
        .cfg_interrupt_msi_pending_status_function_num_sd(Conn9_pending_status_function_num),
        .cfg_interrupt_msi_pending_status_sd(Conn9_pending_status),
        .cfg_interrupt_msi_sent_sd(Conn9_sent),
        .cfg_interrupt_msi_tph_present_sd(Conn9_tph_present),
        .cfg_interrupt_msi_tph_st_tag_sd(Conn9_tph_st_tag),
        .cfg_interrupt_msi_tph_type_sd(Conn9_tph_type),
        .cfg_interrupt_pending_sd(Conn10_PENDING),
        .cfg_interrupt_sent_sd(Conn10_SENT),
        .cfg_link_training_enable_sd(Conn7_link_training_enable),
        .cfg_local_error_out_sd(cfg_local_error_out_sd_1),
        .cfg_ltssm_state_sd(cfg_ltssm_state_sd_1),
        .cfg_max_payload_sd(cfg_max_payload_sd_1),
        .cfg_max_read_req_sd(cfg_max_read_req_sd_1),
        .cfg_mgmt_addr_sd(Conn11_ADDR),
        .cfg_mgmt_byte_enable_sd(Conn11_BYTE_EN),
        .cfg_mgmt_function_number_sd(Conn11_FUNCTION_NUMBER),
        .cfg_mgmt_read_data_sd(Conn11_READ_DATA),
        .cfg_mgmt_read_sd(Conn11_READ_EN),
        .cfg_mgmt_read_write_done_sd(Conn11_READ_WRITE_DONE),
        .cfg_mgmt_type1_cfg_reg_access_sd(Conn11_DEBUG_ACCESS),
        .cfg_mgmt_write_data_sd(Conn11_WRITE_DATA),
        .cfg_mgmt_write_sd(Conn11_WRITE_EN),
        .cfg_msg_received_data_sd(Conn6_recd_data),
        .cfg_msg_received_sd(Conn6_recd),
        .cfg_msg_received_type_sd(Conn6_recd_type),
        .cfg_msg_transmit_data_sd(Conn5_TRANSMIT_DATA),
        .cfg_msg_transmit_done_sd(Conn5_TRANSMIT_DONE),
        .cfg_msg_transmit_sd(Conn5_TRANSMIT),
        .cfg_msg_transmit_type_sd(Conn5_TRANSMIT_TYPE),
        .cfg_negotiated_width_sd(cfg_negotiated_width_sd_1),
        .cfg_phy_link_down_sd(cfg_phy_link_down_sd_1),
        .cfg_phy_link_status_sd(cfg_phy_link_status_sd_1),
        .cfg_pl_status_change_sd(cfg_pl_status_change_sd_1),
        .cfg_vf_flr_in_process_sd(Conn7_vf_flr_in_process),
        .m_axib_araddr(xdma_0_M_AXI_BYPASS_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_BYPASS_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_BYPASS_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_BYPASS_ARID),
        .m_axib_arlen(xdma_0_M_AXI_BYPASS_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_BYPASS_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_BYPASS_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_BYPASS_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_BYPASS_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_BYPASS_ARVALID),
        .m_axib_awaddr(xdma_0_M_AXI_BYPASS_AWADDR),
        .m_axib_awburst(xdma_0_M_AXI_BYPASS_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_BYPASS_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_BYPASS_AWID),
        .m_axib_awlen(xdma_0_M_AXI_BYPASS_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_BYPASS_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_BYPASS_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_BYPASS_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_BYPASS_AWSIZE),
        .m_axib_awvalid(xdma_0_M_AXI_BYPASS_AWVALID),
        .m_axib_bid(xdma_0_M_AXI_BYPASS_BID),
        .m_axib_bready(xdma_0_M_AXI_BYPASS_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_BYPASS_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_BYPASS_BVALID),
        .m_axib_rdata(xdma_0_M_AXI_BYPASS_RDATA),
        .m_axib_rid(xdma_0_M_AXI_BYPASS_RID),
        .m_axib_rlast(xdma_0_M_AXI_BYPASS_RLAST),
        .m_axib_rready(xdma_0_M_AXI_BYPASS_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_BYPASS_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_BYPASS_RVALID),
        .m_axib_wdata(xdma_0_M_AXI_BYPASS_WDATA),
        .m_axib_wlast(xdma_0_M_AXI_BYPASS_WLAST),
        .m_axib_wready(xdma_0_M_AXI_BYPASS_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_BYPASS_WSTRB),
        .m_axib_wvalid(xdma_0_M_AXI_BYPASS_WVALID),
        .m_axil_araddr(xdma_1_M_AXI_LITE_ARADDR),
        .m_axil_arprot(xdma_1_M_AXI_LITE_ARPROT),
        .m_axil_arready(xdma_1_M_AXI_LITE_ARREADY),
        .m_axil_aruser(xdma_1_M_AXI_LITE_ARUSER),
        .m_axil_arvalid(xdma_1_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(xdma_1_M_AXI_LITE_AWADDR),
        .m_axil_awprot(xdma_1_M_AXI_LITE_AWPROT),
        .m_axil_awready(xdma_1_M_AXI_LITE_AWREADY),
        .m_axil_awuser(xdma_1_M_AXI_LITE_AWUSER),
        .m_axil_awvalid(xdma_1_M_AXI_LITE_AWVALID),
        .m_axil_bready(xdma_1_M_AXI_LITE_BREADY),
        .m_axil_bresp(xdma_1_M_AXI_LITE_BRESP),
        .m_axil_bvalid(xdma_1_M_AXI_LITE_BVALID),
        .m_axil_rdata(xdma_1_M_AXI_LITE_RDATA),
        .m_axil_rready(xdma_1_M_AXI_LITE_RREADY),
        .m_axil_rresp(xdma_1_M_AXI_LITE_RRESP),
        .m_axil_rvalid(xdma_1_M_AXI_LITE_RVALID),
        .m_axil_wdata(xdma_1_M_AXI_LITE_WDATA),
        .m_axil_wready(xdma_1_M_AXI_LITE_WREADY),
        .m_axil_wstrb(xdma_1_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(xdma_1_M_AXI_LITE_WVALID),
        .m_axis_cq_tdata_sd(Conn1_TDATA),
        .m_axis_cq_tkeep_sd(Conn1_TKEEP),
        .m_axis_cq_tlast_sd(Conn1_TLAST),
        .m_axis_cq_tready_sd(Conn1_TREADY),
        .m_axis_cq_tuser_sd(Conn1_TUSER),
        .m_axis_cq_tvalid_sd(Conn1_TVALID),
        .m_axis_rc_tdata_sd(Conn4_TDATA),
        .m_axis_rc_tkeep_sd(Conn4_TKEEP),
        .m_axis_rc_tlast_sd(Conn4_TLAST),
        .m_axis_rc_tready_sd(Conn4_TREADY),
        .m_axis_rc_tuser_sd(Conn4_TUSER),
        .m_axis_rc_tvalid_sd(Conn4_TVALID),
        .pcie_cq_np_req_count_sd(pcie_cq_np_req_count_sd_1),
        .pcie_cq_np_req_sd(xdma_0_pcie_cq_np_req_sd),
        .pcie_rq_seq_num0_sd(pcie_rq_seq_num0_sd_1),
        .pcie_rq_seq_num1_sd(pcie_rq_seq_num1_sd_1),
        .pcie_rq_seq_num_vld0_sd(pcie_rq_seq_num_vld0_sd_1),
        .pcie_rq_seq_num_vld1_sd(pcie_rq_seq_num_vld1_sd_1),
        .pcie_tfc_npd_av_sd({1'b0,1'b0,1'b0,1'b0}),
        .pcie_tfc_nph_av_sd({1'b0,1'b0,1'b0,1'b0}),
        .phy_rdy_out_sd(phy_rdy_out_sd_1),
        .s_axib_araddr(S_AXI_PCIEM_1_ARADDR),
        .s_axib_arburst(S_AXI_PCIEM_1_ARBURST),
        .s_axib_arid(S_AXI_PCIEM_1_ARID),
        .s_axib_arlen(S_AXI_PCIEM_1_ARLEN),
        .s_axib_arready(S_AXI_PCIEM_1_ARREADY),
        .s_axib_arregion(S_AXI_PCIEM_1_ARREGION),
        .s_axib_arsize(S_AXI_PCIEM_1_ARSIZE),
        .s_axib_arvalid(S_AXI_PCIEM_1_ARVALID),
        .s_axib_awaddr(S_AXI_PCIEM_1_AWADDR),
        .s_axib_awburst(S_AXI_PCIEM_1_AWBURST),
        .s_axib_awid(S_AXI_PCIEM_1_AWID),
        .s_axib_awlen(S_AXI_PCIEM_1_AWLEN),
        .s_axib_awready(S_AXI_PCIEM_1_AWREADY),
        .s_axib_awregion(S_AXI_PCIEM_1_AWREGION),
        .s_axib_awsize(S_AXI_PCIEM_1_AWSIZE),
        .s_axib_awvalid(S_AXI_PCIEM_1_AWVALID),
        .s_axib_bid(S_AXI_PCIEM_1_BID),
        .s_axib_bready(S_AXI_PCIEM_1_BREADY),
        .s_axib_bresp(S_AXI_PCIEM_1_BRESP),
        .s_axib_bvalid(S_AXI_PCIEM_1_BVALID),
        .s_axib_rdata(S_AXI_PCIEM_1_RDATA),
        .s_axib_rid(S_AXI_PCIEM_1_RID),
        .s_axib_rlast(S_AXI_PCIEM_1_RLAST),
        .s_axib_rready(S_AXI_PCIEM_1_RREADY),
        .s_axib_rresp(S_AXI_PCIEM_1_RRESP),
        .s_axib_ruser(S_AXI_PCIEM_1_RUSER),
        .s_axib_rvalid(S_AXI_PCIEM_1_RVALID),
        .s_axib_wdata(S_AXI_PCIEM_1_WDATA),
        .s_axib_wlast(S_AXI_PCIEM_1_WLAST),
        .s_axib_wready(S_AXI_PCIEM_1_WREADY),
        .s_axib_wstrb(S_AXI_PCIEM_1_WSTRB),
        .s_axib_wuser(S_AXI_PCIEM_1_WUSER),
        .s_axib_wvalid(S_AXI_PCIEM_1_WVALID),
        .s_axis_cc_tdata_sd(Conn2_TDATA),
        .s_axis_cc_tkeep_sd(Conn2_TKEEP),
        .s_axis_cc_tlast_sd(Conn2_TLAST),
        .s_axis_cc_tready_sd({Conn2_TREADY,Conn2_TREADY,Conn2_TREADY,Conn2_TREADY}),
        .s_axis_cc_tuser_sd(Conn2_TUSER),
        .s_axis_cc_tvalid_sd(Conn2_TVALID),
        .s_axis_rq_tdata_sd(Conn3_TDATA),
        .s_axis_rq_tkeep_sd(Conn3_TKEEP),
        .s_axis_rq_tlast_sd(Conn3_TLAST),
        .s_axis_rq_tready_sd(Conn3_TREADY),
        .s_axis_rq_tuser_sd(Conn3_TUSER),
        .s_axis_rq_tvalid_sd(Conn3_TVALID),
        .sys_rst_n(sys_rst_n_1),
        .user_clk_sd(user_clk_sd_1),
        .user_lnk_up_sd(pcie4_uscale_plus_0_user_lnk_up),
        .user_reset_sd(user_reset_sd_1),
        .usr_irq_req(xlconstant_2_dout));
  X_PCIe_Bridge_ICAP_complex_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule

(* CORE_GENERATION_INFO = "X_PCIe_Bridge_ICAP_complex,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=X_PCIe_Bridge_ICAP_complex,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "X_PCIe_Bridge_ICAP_complex.hwdef" *) 
module X_PCIe_Bridge_ICAP_complex
   (M_AXI_B_araddr,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_aruser,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awuser,
    M_AXI_B_awvalid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_MM_PCIM_araddr,
    S_AXI_MM_PCIM_arburst,
    S_AXI_MM_PCIM_arid,
    S_AXI_MM_PCIM_arlen,
    S_AXI_MM_PCIM_arready,
    S_AXI_MM_PCIM_arregion,
    S_AXI_MM_PCIM_arsize,
    S_AXI_MM_PCIM_arvalid,
    S_AXI_MM_PCIM_awaddr,
    S_AXI_MM_PCIM_awburst,
    S_AXI_MM_PCIM_awid,
    S_AXI_MM_PCIM_awlen,
    S_AXI_MM_PCIM_awready,
    S_AXI_MM_PCIM_awregion,
    S_AXI_MM_PCIM_awsize,
    S_AXI_MM_PCIM_awvalid,
    S_AXI_MM_PCIM_bid,
    S_AXI_MM_PCIM_bready,
    S_AXI_MM_PCIM_bresp,
    S_AXI_MM_PCIM_bvalid,
    S_AXI_MM_PCIM_rdata,
    S_AXI_MM_PCIM_rid,
    S_AXI_MM_PCIM_rlast,
    S_AXI_MM_PCIM_rready,
    S_AXI_MM_PCIM_rresp,
    S_AXI_MM_PCIM_ruser,
    S_AXI_MM_PCIM_rvalid,
    S_AXI_MM_PCIM_wdata,
    S_AXI_MM_PCIM_wlast,
    S_AXI_MM_PCIM_wready,
    S_AXI_MM_PCIM_wstrb,
    S_AXI_MM_PCIM_wuser,
    S_AXI_MM_PCIM_wvalid,
    axi_aresetn,
    clk_out_250M,
    sys_rst_n,
  cfg_current_speed,
  cfg_err_cor_out,
  cfg_err_fatal_out,
  cfg_err_nonfatal_out,
  cfg_function_status,
  cfg_local_error_out,
  cfg_ltssm_state,
  cfg_max_payload,
  cfg_max_read_req,
  cfg_negotiated_width,
  cfg_phy_link_down,
  cfg_phy_link_status,
  cfg_pl_status_change,
  m_axis_cq_tdata,
  m_axis_cq_tkeep,
  m_axis_cq_tlast,
  m_axis_cq_tready,
  m_axis_cq_tuser,
  m_axis_cq_tvalid,
  m_axis_rc_tdata,
  m_axis_rc_tkeep,
  m_axis_rc_tlast,
  m_axis_rc_tready,
  m_axis_rc_tuser,
  m_axis_rc_tvalid,
  m_pcie_cq_np_req,
  pcie4_cfg_control_ds_bus_number,
  pcie4_cfg_control_ds_device_number,
  pcie4_cfg_control_ds_port_number,
  pcie4_cfg_control_dsn,
  pcie4_cfg_control_err_cor_in,
  pcie4_cfg_control_err_uncor_in,
  pcie4_cfg_control_flr_done,
  pcie4_cfg_control_flr_in_process,
  pcie4_cfg_control_hot_reset_out,
  pcie4_cfg_control_link_training_enable,
  pcie4_cfg_control_vf_flr_in_process,
  pcie4_cfg_fc_nph,
  pcie4_cfg_fc_sel,
  pcie4_cfg_interrupt_intx_vector,
  pcie4_cfg_interrupt_pending,
  pcie4_cfg_interrupt_sent,
  pcie4_cfg_mesg_rcvd_recd,
  pcie4_cfg_mesg_rcvd_recd_data,
  pcie4_cfg_mesg_rcvd_recd_type,
  pcie4_cfg_mesg_tx_transmit,
  pcie4_cfg_mesg_tx_transmit_data,
  pcie4_cfg_mesg_tx_transmit_done,
  pcie4_cfg_mesg_tx_transmit_type,
  pcie4_cfg_mgmt_addr,
  pcie4_cfg_mgmt_byte_en,
  pcie4_cfg_mgmt_debug_access,
  pcie4_cfg_mgmt_function_number,
  pcie4_cfg_mgmt_read_data,
  pcie4_cfg_mgmt_read_en,
  pcie4_cfg_mgmt_read_write_done,
  pcie4_cfg_mgmt_write_data,
  pcie4_cfg_mgmt_write_en,
  pcie4_cfg_msi_attr,
  pcie4_cfg_msi_data,
  pcie4_cfg_msi_enable,
  pcie4_cfg_msi_fail,
  pcie4_cfg_msi_function_number,
  pcie4_cfg_msi_int_vector,
  pcie4_cfg_msi_mask_update,
  pcie4_cfg_msi_pending_status,
  pcie4_cfg_msi_pending_status_data_enable,
  pcie4_cfg_msi_pending_status_function_num,
  pcie4_cfg_msi_sent,
  pcie4_cfg_msi_tph_present,
  pcie4_cfg_msi_tph_st_tag,
  pcie4_cfg_msi_tph_type,
  pcie_cq_np_req_count,
  pcie_rq_seq_num0,
  pcie_rq_seq_num1,
  pcie_rq_seq_num_vld0,
  pcie_rq_seq_num_vld1,
  phy_rdy_out,
  s_axis_cc_tdata,
  s_axis_cc_tkeep,
  s_axis_cc_tlast,
  s_axis_cc_tready,
  s_axis_cc_tuser,
  s_axis_cc_tvalid,
  s_axis_rq_tdata,
  s_axis_rq_tkeep,
  s_axis_rq_tlast,
  s_axis_rq_tready,
  s_axis_rq_tuser,
  s_axis_rq_tvalid,
  user_clk,
  user_lnk_up,
  user_reset);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_B, ADDR_WIDTH 32, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 0, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_B_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B ARPROT" *) output [2:0]M_AXI_B_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B ARREADY" *) input M_AXI_B_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B ARUSER" *) output [10:0]M_AXI_B_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B ARVALID" *) output M_AXI_B_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B AWADDR" *) output [31:0]M_AXI_B_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B AWPROT" *) output [2:0]M_AXI_B_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B AWREADY" *) input M_AXI_B_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B AWUSER" *) output [10:0]M_AXI_B_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B AWVALID" *) output M_AXI_B_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B BREADY" *) output M_AXI_B_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B BRESP" *) input [1:0]M_AXI_B_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B BVALID" *) input M_AXI_B_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B RDATA" *) input [31:0]M_AXI_B_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B RREADY" *) output M_AXI_B_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B RRESP" *) input [1:0]M_AXI_B_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B RVALID" *) input M_AXI_B_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B WDATA" *) output [31:0]M_AXI_B_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B WREADY" *) input M_AXI_B_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B WSTRB" *) output [3:0]M_AXI_B_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B WVALID" *) output M_AXI_B_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MM_PCIM, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_MM_PCIM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARBURST" *) input [1:0]S_AXI_MM_PCIM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARID" *) input [3:0]S_AXI_MM_PCIM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARLEN" *) input [7:0]S_AXI_MM_PCIM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARREADY" *) output S_AXI_MM_PCIM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARREGION" *) input [3:0]S_AXI_MM_PCIM_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARSIZE" *) input [2:0]S_AXI_MM_PCIM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM ARVALID" *) input S_AXI_MM_PCIM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWADDR" *) input [63:0]S_AXI_MM_PCIM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWBURST" *) input [1:0]S_AXI_MM_PCIM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWID" *) input [3:0]S_AXI_MM_PCIM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWLEN" *) input [7:0]S_AXI_MM_PCIM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWREADY" *) output S_AXI_MM_PCIM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWREGION" *) input [3:0]S_AXI_MM_PCIM_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWSIZE" *) input [2:0]S_AXI_MM_PCIM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM AWVALID" *) input S_AXI_MM_PCIM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM BID" *) output [3:0]S_AXI_MM_PCIM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM BREADY" *) input S_AXI_MM_PCIM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM BRESP" *) output [1:0]S_AXI_MM_PCIM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM BVALID" *) output S_AXI_MM_PCIM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RDATA" *) output [511:0]S_AXI_MM_PCIM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RID" *) output [3:0]S_AXI_MM_PCIM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RLAST" *) output S_AXI_MM_PCIM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RREADY" *) input S_AXI_MM_PCIM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RRESP" *) output [1:0]S_AXI_MM_PCIM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RUSER" *) output [63:0]S_AXI_MM_PCIM_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM RVALID" *) output S_AXI_MM_PCIM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM WDATA" *) input [511:0]S_AXI_MM_PCIM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM WLAST" *) input S_AXI_MM_PCIM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM WREADY" *) output S_AXI_MM_PCIM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM WSTRB" *) input [63:0]S_AXI_MM_PCIM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM WUSER" *) input [63:0]S_AXI_MM_PCIM_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_PCIM WVALID" *) input S_AXI_MM_PCIM_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_250M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_250M, ASSOCIATED_BUSIF S_AXI_MM_PCIM:M_AXI_B, ASSOCIATED_RESET axi_aresetn, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output clk_out_250M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input sys_rst_n;
  input wire [1:0]cfg_current_speed;
  input wire cfg_err_cor_out;
  input wire cfg_err_fatal_out;
  input wire cfg_err_nonfatal_out;
  input wire [15:0]cfg_function_status;
  input wire [4:0]cfg_local_error_out;
  input wire [5:0]cfg_ltssm_state;
  input wire [1:0]cfg_max_payload;
  input wire [2:0]cfg_max_read_req;
  input wire [2:0]cfg_negotiated_width;
  input wire cfg_phy_link_down;
  input wire [1:0]cfg_phy_link_status;
  input wire cfg_pl_status_change;
  input wire [511:0]m_axis_cq_tdata;
  input wire [15:0]m_axis_cq_tkeep;
  input wire m_axis_cq_tlast;
  output wire m_axis_cq_tready;
  input wire [182:0]m_axis_cq_tuser;
  input wire m_axis_cq_tvalid;
  input wire [511:0]m_axis_rc_tdata;
  input wire [15:0]m_axis_rc_tkeep;
  input wire m_axis_rc_tlast;
  output wire m_axis_rc_tready;
  input wire [160:0]m_axis_rc_tuser;
  input wire m_axis_rc_tvalid;
  output wire [1:0]m_pcie_cq_np_req;
  output wire [7:0]pcie4_cfg_control_ds_bus_number;
  output wire [4:0]pcie4_cfg_control_ds_device_number;
  output wire [7:0]pcie4_cfg_control_ds_port_number;
  output wire [63:0]pcie4_cfg_control_dsn;
  output wire pcie4_cfg_control_err_cor_in;
  output wire pcie4_cfg_control_err_uncor_in;
  output wire [3:0]pcie4_cfg_control_flr_done;
  input wire [3:0]pcie4_cfg_control_flr_in_process;
  input wire pcie4_cfg_control_hot_reset_out;
  output wire pcie4_cfg_control_link_training_enable;
  input wire [251:0]pcie4_cfg_control_vf_flr_in_process;
  input wire [7:0]pcie4_cfg_fc_nph;
  output wire [2:0]pcie4_cfg_fc_sel;
  output wire [3:0]pcie4_cfg_interrupt_intx_vector;
  output wire [3:0]pcie4_cfg_interrupt_pending;
  input wire pcie4_cfg_interrupt_sent;
  input wire pcie4_cfg_mesg_rcvd_recd;
  input wire [7:0]pcie4_cfg_mesg_rcvd_recd_data;
  input wire [4:0]pcie4_cfg_mesg_rcvd_recd_type;
  output wire pcie4_cfg_mesg_tx_transmit;
  output wire [31:0]pcie4_cfg_mesg_tx_transmit_data;
  input wire pcie4_cfg_mesg_tx_transmit_done;
  output wire [2:0]pcie4_cfg_mesg_tx_transmit_type;
  output wire [9:0]pcie4_cfg_mgmt_addr;
  output wire [3:0]pcie4_cfg_mgmt_byte_en;
  output wire pcie4_cfg_mgmt_debug_access;
  output wire [7:0]pcie4_cfg_mgmt_function_number;
  input wire [31:0]pcie4_cfg_mgmt_read_data;
  output wire pcie4_cfg_mgmt_read_en;
  input wire pcie4_cfg_mgmt_read_write_done;
  output wire [31:0]pcie4_cfg_mgmt_write_data;
  output wire pcie4_cfg_mgmt_write_en;
  output wire [2:0]pcie4_cfg_msi_attr;
  input wire [31:0]pcie4_cfg_msi_data;
  input wire [3:0]pcie4_cfg_msi_enable;
  input wire pcie4_cfg_msi_fail;
  output wire [7:0]pcie4_cfg_msi_function_number;
  output wire [31:0]pcie4_cfg_msi_int_vector;
  input wire pcie4_cfg_msi_mask_update;
  output wire [31:0]pcie4_cfg_msi_pending_status;
  output wire pcie4_cfg_msi_pending_status_data_enable;
  output wire [3:0]pcie4_cfg_msi_pending_status_function_num;
  input wire pcie4_cfg_msi_sent;
  output wire pcie4_cfg_msi_tph_present;
  output wire [8:0]pcie4_cfg_msi_tph_st_tag;
  output wire [1:0]pcie4_cfg_msi_tph_type;
  input wire [5:0]pcie_cq_np_req_count;
  input wire [5:0]pcie_rq_seq_num0;
  input wire [5:0]pcie_rq_seq_num1;
  input wire pcie_rq_seq_num_vld0;
  input wire pcie_rq_seq_num_vld1;
  input wire phy_rdy_out;
  output wire [511:0]s_axis_cc_tdata;
  output wire [15:0]s_axis_cc_tkeep;
  output wire s_axis_cc_tlast;
  input wire s_axis_cc_tready;
  output wire [80:0]s_axis_cc_tuser;
  output wire s_axis_cc_tvalid;
  output wire [511:0]s_axis_rq_tdata;
  output wire [15:0]s_axis_rq_tkeep;
  output wire s_axis_rq_tlast;
  input wire [3:0]s_axis_rq_tready;
  output wire [136:0]s_axis_rq_tuser;
  output wire s_axis_rq_tvalid;
  input wire user_clk;
  input  wire user_lnk_up;
  input wire user_reset;

  wire [31:0]SHX_M_AXI_B_ARADDR;
  wire [2:0]SHX_M_AXI_B_ARPROT;
  wire SHX_M_AXI_B_ARREADY;
  wire [10:0]SHX_M_AXI_B_ARUSER;
  wire SHX_M_AXI_B_ARVALID;
  wire [31:0]SHX_M_AXI_B_AWADDR;
  wire [2:0]SHX_M_AXI_B_AWPROT;
  wire SHX_M_AXI_B_AWREADY;
  wire [10:0]SHX_M_AXI_B_AWUSER;
  wire SHX_M_AXI_B_AWVALID;
  wire SHX_M_AXI_B_BREADY;
  wire [1:0]SHX_M_AXI_B_BRESP;
  wire SHX_M_AXI_B_BVALID;
  wire [31:0]SHX_M_AXI_B_RDATA;
  wire SHX_M_AXI_B_RREADY;
  wire [1:0]SHX_M_AXI_B_RRESP;
  wire SHX_M_AXI_B_RVALID;
  wire [31:0]SHX_M_AXI_B_WDATA;
  wire SHX_M_AXI_B_WREADY;
  wire [3:0]SHX_M_AXI_B_WSTRB;
  wire SHX_M_AXI_B_WVALID;
  wire SHX_axi_aresetn;
  wire [63:0]S_AXI_MM_PCIM_1_ARADDR;
  wire [1:0]S_AXI_MM_PCIM_1_ARBURST;
  wire [3:0]S_AXI_MM_PCIM_1_ARID;
  wire [7:0]S_AXI_MM_PCIM_1_ARLEN;
  wire S_AXI_MM_PCIM_1_ARREADY;
  wire [3:0]S_AXI_MM_PCIM_1_ARREGION;
  wire [2:0]S_AXI_MM_PCIM_1_ARSIZE;
  wire S_AXI_MM_PCIM_1_ARVALID;
  wire [63:0]S_AXI_MM_PCIM_1_AWADDR;
  wire [1:0]S_AXI_MM_PCIM_1_AWBURST;
  wire [3:0]S_AXI_MM_PCIM_1_AWID;
  wire [7:0]S_AXI_MM_PCIM_1_AWLEN;
  wire S_AXI_MM_PCIM_1_AWREADY;
  wire [3:0]S_AXI_MM_PCIM_1_AWREGION;
  wire [2:0]S_AXI_MM_PCIM_1_AWSIZE;
  wire S_AXI_MM_PCIM_1_AWVALID;
  wire [3:0]S_AXI_MM_PCIM_1_BID;
  wire S_AXI_MM_PCIM_1_BREADY;
  wire [1:0]S_AXI_MM_PCIM_1_BRESP;
  wire S_AXI_MM_PCIM_1_BVALID;
  wire [511:0]S_AXI_MM_PCIM_1_RDATA;
  wire [3:0]S_AXI_MM_PCIM_1_RID;
  wire S_AXI_MM_PCIM_1_RLAST;
  wire S_AXI_MM_PCIM_1_RREADY;
  wire [1:0]S_AXI_MM_PCIM_1_RRESP;
  wire [63:0]S_AXI_MM_PCIM_1_RUSER;
  wire S_AXI_MM_PCIM_1_RVALID;
  wire [511:0]S_AXI_MM_PCIM_1_WDATA;
  wire S_AXI_MM_PCIM_1_WLAST;
  wire S_AXI_MM_PCIM_1_WREADY;
  wire [63:0]S_AXI_MM_PCIM_1_WSTRB;
  wire [63:0]S_AXI_MM_PCIM_1_WUSER;
  wire S_AXI_MM_PCIM_1_WVALID;
  wire XDMA_BRIDGE_clk_out_250M;

  assign M_AXI_B_araddr[31:0] = SHX_M_AXI_B_ARADDR;
  assign M_AXI_B_arprot[2:0] = SHX_M_AXI_B_ARPROT;
  assign M_AXI_B_aruser[10:0] = SHX_M_AXI_B_ARUSER;
  assign M_AXI_B_arvalid = SHX_M_AXI_B_ARVALID;
  assign M_AXI_B_awaddr[31:0] = SHX_M_AXI_B_AWADDR;
  assign M_AXI_B_awprot[2:0] = SHX_M_AXI_B_AWPROT;
  assign M_AXI_B_awuser[10:0] = SHX_M_AXI_B_AWUSER;
  assign M_AXI_B_awvalid = SHX_M_AXI_B_AWVALID;
  assign M_AXI_B_bready = SHX_M_AXI_B_BREADY;
  assign M_AXI_B_rready = SHX_M_AXI_B_RREADY;
  assign M_AXI_B_wdata[31:0] = SHX_M_AXI_B_WDATA;
  assign M_AXI_B_wstrb[3:0] = SHX_M_AXI_B_WSTRB;
  assign M_AXI_B_wvalid = SHX_M_AXI_B_WVALID;
  assign SHX_M_AXI_B_ARREADY = M_AXI_B_arready;
  assign SHX_M_AXI_B_AWREADY = M_AXI_B_awready;
  assign SHX_M_AXI_B_BRESP = M_AXI_B_bresp[1:0];
  assign SHX_M_AXI_B_BVALID = M_AXI_B_bvalid;
  assign SHX_M_AXI_B_RDATA = M_AXI_B_rdata[31:0];
  assign SHX_M_AXI_B_RRESP = M_AXI_B_rresp[1:0];
  assign SHX_M_AXI_B_RVALID = M_AXI_B_rvalid;
  assign SHX_M_AXI_B_WREADY = M_AXI_B_wready;
  assign S_AXI_MM_PCIM_1_ARADDR = S_AXI_MM_PCIM_araddr[63:0];
  assign S_AXI_MM_PCIM_1_ARBURST = S_AXI_MM_PCIM_arburst[1:0];
  assign S_AXI_MM_PCIM_1_ARID = S_AXI_MM_PCIM_arid[3:0];
  assign S_AXI_MM_PCIM_1_ARLEN = S_AXI_MM_PCIM_arlen[7:0];
  assign S_AXI_MM_PCIM_1_ARREGION = S_AXI_MM_PCIM_arregion[3:0];
  assign S_AXI_MM_PCIM_1_ARSIZE = S_AXI_MM_PCIM_arsize[2:0];
  assign S_AXI_MM_PCIM_1_ARVALID = S_AXI_MM_PCIM_arvalid;
  assign S_AXI_MM_PCIM_1_AWADDR = S_AXI_MM_PCIM_awaddr[63:0];
  assign S_AXI_MM_PCIM_1_AWBURST = S_AXI_MM_PCIM_awburst[1:0];
  assign S_AXI_MM_PCIM_1_AWID = S_AXI_MM_PCIM_awid[3:0];
  assign S_AXI_MM_PCIM_1_AWLEN = S_AXI_MM_PCIM_awlen[7:0];
  assign S_AXI_MM_PCIM_1_AWREGION = S_AXI_MM_PCIM_awregion[3:0];
  assign S_AXI_MM_PCIM_1_AWSIZE = S_AXI_MM_PCIM_awsize[2:0];
  assign S_AXI_MM_PCIM_1_AWVALID = S_AXI_MM_PCIM_awvalid;
  assign S_AXI_MM_PCIM_1_BREADY = S_AXI_MM_PCIM_bready;
  assign S_AXI_MM_PCIM_1_RREADY = S_AXI_MM_PCIM_rready;
  assign S_AXI_MM_PCIM_1_WDATA = S_AXI_MM_PCIM_wdata[511:0];
  assign S_AXI_MM_PCIM_1_WLAST = S_AXI_MM_PCIM_wlast;
  assign S_AXI_MM_PCIM_1_WSTRB = S_AXI_MM_PCIM_wstrb[63:0];
  assign S_AXI_MM_PCIM_1_WUSER = S_AXI_MM_PCIM_wuser[63:0];
  assign S_AXI_MM_PCIM_1_WVALID = S_AXI_MM_PCIM_wvalid;
  assign S_AXI_MM_PCIM_arready = S_AXI_MM_PCIM_1_ARREADY;
  assign S_AXI_MM_PCIM_awready = S_AXI_MM_PCIM_1_AWREADY;
  assign S_AXI_MM_PCIM_bid[3:0] = S_AXI_MM_PCIM_1_BID;
  assign S_AXI_MM_PCIM_bresp[1:0] = S_AXI_MM_PCIM_1_BRESP;
  assign S_AXI_MM_PCIM_bvalid = S_AXI_MM_PCIM_1_BVALID;
  assign S_AXI_MM_PCIM_rdata[511:0] = S_AXI_MM_PCIM_1_RDATA;
  assign S_AXI_MM_PCIM_rid[3:0] = S_AXI_MM_PCIM_1_RID;
  assign S_AXI_MM_PCIM_rlast = S_AXI_MM_PCIM_1_RLAST;
  assign S_AXI_MM_PCIM_rresp[1:0] = S_AXI_MM_PCIM_1_RRESP;
  assign S_AXI_MM_PCIM_ruser[63:0] = S_AXI_MM_PCIM_1_RUSER;
  assign S_AXI_MM_PCIM_rvalid = S_AXI_MM_PCIM_1_RVALID;
  assign S_AXI_MM_PCIM_wready = S_AXI_MM_PCIM_1_WREADY;
  assign axi_aresetn = SHX_axi_aresetn;
  assign clk_out_250M = XDMA_BRIDGE_clk_out_250M;
  SHX_imp_107RLWT SHX
       (.M_AXI_B_araddr(SHX_M_AXI_B_ARADDR),
        .M_AXI_B_arprot(SHX_M_AXI_B_ARPROT),
        .M_AXI_B_arready(SHX_M_AXI_B_ARREADY),
        .M_AXI_B_aruser(SHX_M_AXI_B_ARUSER),
        .M_AXI_B_arvalid(SHX_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(SHX_M_AXI_B_AWADDR),
        .M_AXI_B_awprot(SHX_M_AXI_B_AWPROT),
        .M_AXI_B_awready(SHX_M_AXI_B_AWREADY),
        .M_AXI_B_awuser(SHX_M_AXI_B_AWUSER),
        .M_AXI_B_awvalid(SHX_M_AXI_B_AWVALID),
        .M_AXI_B_bready(SHX_M_AXI_B_BREADY),
        .M_AXI_B_bresp(SHX_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(SHX_M_AXI_B_BVALID),
        .M_AXI_B_rdata(SHX_M_AXI_B_RDATA),
        .M_AXI_B_rready(SHX_M_AXI_B_RREADY),
        .M_AXI_B_rresp(SHX_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(SHX_M_AXI_B_RVALID),
        .M_AXI_B_wdata(SHX_M_AXI_B_WDATA),
        .M_AXI_B_wready(SHX_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(SHX_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(SHX_M_AXI_B_WVALID),
        .S_AXI_PCIEM_araddr(S_AXI_MM_PCIM_1_ARADDR),
        .S_AXI_PCIEM_arburst(S_AXI_MM_PCIM_1_ARBURST),
        .S_AXI_PCIEM_arid(S_AXI_MM_PCIM_1_ARID),
        .S_AXI_PCIEM_arlen(S_AXI_MM_PCIM_1_ARLEN),
        .S_AXI_PCIEM_arready(S_AXI_MM_PCIM_1_ARREADY),
        .S_AXI_PCIEM_arregion(S_AXI_MM_PCIM_1_ARREGION),
        .S_AXI_PCIEM_arsize(S_AXI_MM_PCIM_1_ARSIZE),
        .S_AXI_PCIEM_arvalid(S_AXI_MM_PCIM_1_ARVALID),
        .S_AXI_PCIEM_awaddr(S_AXI_MM_PCIM_1_AWADDR),
        .S_AXI_PCIEM_awburst(S_AXI_MM_PCIM_1_AWBURST),
        .S_AXI_PCIEM_awid(S_AXI_MM_PCIM_1_AWID),
        .S_AXI_PCIEM_awlen(S_AXI_MM_PCIM_1_AWLEN),
        .S_AXI_PCIEM_awready(S_AXI_MM_PCIM_1_AWREADY),
        .S_AXI_PCIEM_awregion(S_AXI_MM_PCIM_1_AWREGION),
        .S_AXI_PCIEM_awsize(S_AXI_MM_PCIM_1_AWSIZE),
        .S_AXI_PCIEM_awvalid(S_AXI_MM_PCIM_1_AWVALID),
        .S_AXI_PCIEM_bid(S_AXI_MM_PCIM_1_BID),
        .S_AXI_PCIEM_bready(S_AXI_MM_PCIM_1_BREADY),
        .S_AXI_PCIEM_bresp(S_AXI_MM_PCIM_1_BRESP),
        .S_AXI_PCIEM_bvalid(S_AXI_MM_PCIM_1_BVALID),
        .S_AXI_PCIEM_rdata(S_AXI_MM_PCIM_1_RDATA),
        .S_AXI_PCIEM_rid(S_AXI_MM_PCIM_1_RID),
        .S_AXI_PCIEM_rlast(S_AXI_MM_PCIM_1_RLAST),
        .S_AXI_PCIEM_rready(S_AXI_MM_PCIM_1_RREADY),
        .S_AXI_PCIEM_rresp(S_AXI_MM_PCIM_1_RRESP),
        .S_AXI_PCIEM_ruser(S_AXI_MM_PCIM_1_RUSER),
        .S_AXI_PCIEM_rvalid(S_AXI_MM_PCIM_1_RVALID),
        .S_AXI_PCIEM_wdata(S_AXI_MM_PCIM_1_WDATA),
        .S_AXI_PCIEM_wlast(S_AXI_MM_PCIM_1_WLAST),
        .S_AXI_PCIEM_wready(S_AXI_MM_PCIM_1_WREADY),
        .S_AXI_PCIEM_wstrb(S_AXI_MM_PCIM_1_WSTRB),
        .S_AXI_PCIEM_wuser(S_AXI_MM_PCIM_1_WUSER),
        .S_AXI_PCIEM_wvalid(S_AXI_MM_PCIM_1_WVALID),
        .axi_aresetn(SHX_axi_aresetn),
        .cfg_current_speed_sd(cfg_current_speed),
        .cfg_err_cor_out_sd(cfg_err_cor_out),
        .cfg_err_fatal_out_sd(cfg_err_fatal_out),
        .cfg_err_nonfatal_out_sd(cfg_err_nonfatal_out),
        .cfg_function_status_sd(cfg_function_status),
        .cfg_local_error_out_sd(cfg_local_error_out),
        .cfg_ltssm_state_sd(cfg_ltssm_state),
        .cfg_max_payload_sd(cfg_max_payload),
        .cfg_max_read_req_sd(cfg_max_read_req),
        .cfg_negotiated_width_sd(cfg_negotiated_width),
        .cfg_phy_link_down_sd(cfg_phy_link_down),
        .cfg_phy_link_status_sd(cfg_phy_link_status),
        .cfg_pl_status_change_sd(cfg_pl_status_change),
        .clk_out_250M(XDMA_BRIDGE_clk_out_250M),
        .m_axis_cq_tdata(m_axis_cq_tdata),
        .m_axis_cq_tkeep(m_axis_cq_tkeep),
        .m_axis_cq_tlast(m_axis_cq_tlast),
        .m_axis_cq_tready(m_axis_cq_tready),
        .m_axis_cq_tuser(m_axis_cq_tuser),
        .m_axis_cq_tvalid(m_axis_cq_tvalid),
        .m_axis_rc_tdata(m_axis_rc_tdata),
        .m_axis_rc_tkeep(m_axis_rc_tkeep),
        .m_axis_rc_tlast(m_axis_rc_tlast),
        .m_axis_rc_tready(m_axis_rc_tready),
        .m_axis_rc_tuser(m_axis_rc_tuser),
        .m_axis_rc_tvalid(m_axis_rc_tvalid),
        .pcie4_cfg_control_ds_bus_number(pcie4_cfg_control_ds_bus_number),
        .pcie4_cfg_control_ds_device_number(pcie4_cfg_control_ds_device_number),
        .pcie4_cfg_control_ds_port_number(pcie4_cfg_control_ds_port_number),
        .pcie4_cfg_control_dsn(pcie4_cfg_control_dsn),
        .pcie4_cfg_control_err_cor_in(pcie4_cfg_control_err_cor_in),
        .pcie4_cfg_control_err_uncor_in(pcie4_cfg_control_err_uncor_in),
        .pcie4_cfg_control_flr_done(pcie4_cfg_control_flr_done),
        .pcie4_cfg_control_flr_in_process(pcie4_cfg_control_flr_in_process),
        .pcie4_cfg_control_hot_reset_out(pcie4_cfg_control_hot_reset_out),
        .pcie4_cfg_control_link_training_enable(pcie4_cfg_control_link_training_enable),
        .pcie4_cfg_control_vf_flr_in_process(pcie4_cfg_control_vf_flr_in_process),
        .pcie4_cfg_fc_nph(pcie4_cfg_fc_nph),
        .pcie4_cfg_fc_sel(pcie4_cfg_fc_sel),
        .pcie4_cfg_interrupt_intx_vector(pcie4_cfg_interrupt_intx_vector),
        .pcie4_cfg_interrupt_pending(pcie4_cfg_interrupt_pending),
        .pcie4_cfg_interrupt_sent(pcie4_cfg_interrupt_sent),
        .pcie4_cfg_mesg_rcvd_recd(pcie4_cfg_mesg_rcvd_recd),
        .pcie4_cfg_mesg_rcvd_recd_data(pcie4_cfg_mesg_rcvd_recd_data),
        .pcie4_cfg_mesg_rcvd_recd_type(pcie4_cfg_mesg_rcvd_recd_type),
        .pcie4_cfg_mesg_tx_transmit(pcie4_cfg_mesg_tx_transmit),
        .pcie4_cfg_mesg_tx_transmit_data(pcie4_cfg_mesg_tx_transmit_data),
        .pcie4_cfg_mesg_tx_transmit_done(pcie4_cfg_mesg_tx_transmit_done),
        .pcie4_cfg_mesg_tx_transmit_type(pcie4_cfg_mesg_tx_transmit_type),
        .pcie4_cfg_msi_attr(pcie4_cfg_msi_attr),
        .pcie4_cfg_msi_data(pcie4_cfg_msi_data),
        .pcie4_cfg_msi_enable(pcie4_cfg_msi_enable),
        .pcie4_cfg_msi_fail(pcie4_cfg_msi_fail),
        .pcie4_cfg_msi_function_number(pcie4_cfg_msi_function_number),
        .pcie4_cfg_msi_int_vector(pcie4_cfg_msi_int_vector),
        .pcie4_cfg_msi_mask_update(pcie4_cfg_msi_mask_update),
        .pcie4_cfg_msi_pending_status(pcie4_cfg_msi_pending_status),
        .pcie4_cfg_msi_pending_status_data_enable(pcie4_cfg_msi_pending_status_data_enable),
        .pcie4_cfg_msi_pending_status_function_num(pcie4_cfg_msi_pending_status_function_num),
        .pcie4_cfg_msi_sent(pcie4_cfg_msi_sent),
        .pcie4_cfg_msi_tph_present(pcie4_cfg_msi_tph_present),
        .pcie4_cfg_msi_tph_st_tag(pcie4_cfg_msi_tph_st_tag),
        .pcie4_cfg_msi_tph_type(pcie4_cfg_msi_tph_type),
        .pcie_cfg_mgmt_sd_addr(pcie4_cfg_mgmt_addr),
        .pcie_cfg_mgmt_sd_byte_en(pcie4_cfg_mgmt_byte_en),
        .pcie_cfg_mgmt_sd_debug_access(pcie4_cfg_mgmt_debug_access),
        .pcie_cfg_mgmt_sd_function_number(pcie4_cfg_mgmt_function_number),
        .pcie_cfg_mgmt_sd_read_data(pcie4_cfg_mgmt_read_data),
        .pcie_cfg_mgmt_sd_read_en(pcie4_cfg_mgmt_read_en),
        .pcie_cfg_mgmt_sd_read_write_done(pcie4_cfg_mgmt_read_write_done),
        .pcie_cfg_mgmt_sd_write_data(pcie4_cfg_mgmt_write_data),
        .pcie_cfg_mgmt_sd_write_en(pcie4_cfg_mgmt_write_en),
        .pcie_cq_np_req_count_sd(pcie_cq_np_req_count),
        .pcie_cq_np_req_sd(m_pcie_cq_np_req),
        .pcie_rq_seq_num0_sd(pcie_rq_seq_num0),
        .pcie_rq_seq_num1_sd(pcie_rq_seq_num1),
        .pcie_rq_seq_num_vld0_sd(pcie_rq_seq_num_vld0),
        .pcie_rq_seq_num_vld1_sd(pcie_rq_seq_num_vld1),
        .phy_rdy_out_sd(phy_rdy_out),
        .s_axis_cc_tdata(s_axis_cc_tdata),
        .s_axis_cc_tkeep(s_axis_cc_tkeep),
        .s_axis_cc_tlast(s_axis_cc_tlast),
        .s_axis_cc_tready(s_axis_cc_tready),
        .s_axis_cc_tuser(s_axis_cc_tuser),
        .s_axis_cc_tvalid(s_axis_cc_tvalid),
        .s_axis_rq_tdata(s_axis_rq_tdata),
        .s_axis_rq_tkeep(s_axis_rq_tkeep),
        .s_axis_rq_tlast(s_axis_rq_tlast),
        .s_axis_rq_tready(s_axis_rq_tready),
        .s_axis_rq_tuser(s_axis_rq_tuser),
        .s_axis_rq_tvalid(s_axis_rq_tvalid),
        .sys_rst_n(sys_rst_n),
        .user_clk_sd(user_clk),
        .user_lnk_up_sd(user_lnk_up),
        .user_reset_sd(user_reset));
endmodule