// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

`include "shell_parameters.vh"

module THIN_SHELL_TOP (
  input [3:0]BMC_GPIO,
  output [3:0]o_BMC_GPIO,
  output PR_DECOUPLE,
  output RESET_GATE,
  input BMC_UART_rxd,
  output i_BMC_UART_rxd,
  output BMC_UART_txd,
  input o_BMC_UART_txd,
  inout iic_scl_io,
  inout iic_sda_io,
  output wire iiC_scl_i,
  input wire iiC_scl_o,
  input wire iiC_scl_t,
  output wire iiC_sda_i,
  input wire iiC_sda_o,
  input wire iiC_sda_t,
  output PCIE_USR_CLK_DIV4_62_5MHz,
  input start_devDNA_read,
  output ser_devDNA_out,
  output ser_devDNA_out_valid,
  output [3:0]SHELL_TO_CL_RST,
  output [1:0]cfg_current_speed,
  output cfg_err_cor_out,
  output cfg_err_fatal_out,
  output cfg_err_nonfatal_out,
  output [15:0]cfg_function_status,
  output [4:0]cfg_local_error_out,
  output [5:0]cfg_ltssm_state,
  output [1:0]cfg_max_payload,
  output [2:0]cfg_max_read_req,
  output [2:0]cfg_negotiated_width,
  output cfg_phy_link_down,
  output [1:0]cfg_phy_link_status,
  output cfg_pl_status_change,
  output [511:0]m_axis_cq_tdata,
  output [15:0]m_axis_cq_tkeep,
  output m_axis_cq_tlast,
  input m_axis_cq_tready,
  output [182:0]m_axis_cq_tuser,
  output m_axis_cq_tvalid,
  output [511:0]m_axis_rc_tdata,
  output [15:0]m_axis_rc_tkeep,
  output m_axis_rc_tlast,
  input m_axis_rc_tready,
  output [160:0]m_axis_rc_tuser,
  output m_axis_rc_tvalid,
  input [1:0]m_pcie_cq_np_req,
  input [7:0]pcie4_cfg_control_ds_bus_number,
  input [4:0]pcie4_cfg_control_ds_device_number,
  input [7:0]pcie4_cfg_control_ds_port_number,
  input [63:0]pcie4_cfg_control_dsn,
  input pcie4_cfg_control_err_cor_in,
  input pcie4_cfg_control_err_uncor_in,
  input [3:0]pcie4_cfg_control_flr_done,
  output [3:0]pcie4_cfg_control_flr_in_process,
  output pcie4_cfg_control_hot_reset_out,
  input pcie4_cfg_control_link_training_enable,
  output [251:0]pcie4_cfg_control_vf_flr_in_process,
  output [7:0]pcie4_cfg_fc_nph,
  input [2:0]pcie4_cfg_fc_sel,
  input [3:0]pcie4_cfg_interrupt_intx_vector,
  input [3:0]pcie4_cfg_interrupt_pending,
  output pcie4_cfg_interrupt_sent,
  output pcie4_cfg_mesg_rcvd_recd,
  output [7:0]pcie4_cfg_mesg_rcvd_recd_data,
  output [4:0]pcie4_cfg_mesg_rcvd_recd_type,
  input pcie4_cfg_mesg_tx_transmit,
  input [31:0]pcie4_cfg_mesg_tx_transmit_data,
  output pcie4_cfg_mesg_tx_transmit_done,
  input [2:0]pcie4_cfg_mesg_tx_transmit_type,
  input [9:0]pcie4_cfg_mgmt_addr,
  input [3:0]pcie4_cfg_mgmt_byte_en,
  input pcie4_cfg_mgmt_debug_access,
  input [7:0]pcie4_cfg_mgmt_function_number,
  output [31:0]pcie4_cfg_mgmt_read_data,
  input pcie4_cfg_mgmt_read_en,
  output pcie4_cfg_mgmt_read_write_done,
  input [31:0]pcie4_cfg_mgmt_write_data,
  input pcie4_cfg_mgmt_write_en,
  input [2:0]pcie4_cfg_msi_attr,
  output [31:0]pcie4_cfg_msi_data,
  output [3:0]pcie4_cfg_msi_enable,
  output pcie4_cfg_msi_fail,
  input [7:0]pcie4_cfg_msi_function_number,
  input [31:0]pcie4_cfg_msi_int_vector,
  output pcie4_cfg_msi_mask_update,
  input [31:0]pcie4_cfg_msi_pending_status,
  input pcie4_cfg_msi_pending_status_data_enable,
  input [3:0]pcie4_cfg_msi_pending_status_function_num,
  output pcie4_cfg_msi_sent,
  input pcie4_cfg_msi_tph_present,
  input [8:0]pcie4_cfg_msi_tph_st_tag,
  input [1:0]pcie4_cfg_msi_tph_type,
  output [5:0]pcie_cq_np_req_count,
  input [15:0]pcie_mgt_rxn,
  input [15:0]pcie_mgt_rxp,
  output [15:0]pcie_mgt_txn,
  output [15:0]pcie_mgt_txp,
  output [5:0]pcie_rq_seq_num0,
  output [5:0]pcie_rq_seq_num1,
  output pcie_rq_seq_num_vld0,
  output pcie_rq_seq_num_vld1,
  output phy_rdy_out,
  input [511:0]s_axis_cc_tdata,
  input [15:0]s_axis_cc_tkeep,
  input s_axis_cc_tlast,
  output s_axis_cc_tready,
  input [80:0]s_axis_cc_tuser,
  input s_axis_cc_tvalid,
  input [511:0]s_axis_rq_tdata,
  input [15:0]s_axis_rq_tkeep,
  input s_axis_rq_tlast,
  output [3:0]s_axis_rq_tready,
  input [136:0]s_axis_rq_tuser,
  input s_axis_rq_tvalid,
  output user_clk,
  output user_lnk_up,
  output user_reset,
  input c1_sys_clk_n,
  input c1_sys_clk_p,
  input  sys_clk_p,
  input  sys_clk_n,
  input  sys_rst_n,
  output  sys_rst_n_out,
  output  c1_sys_clk_out
  );

  wire [1:0]i_cfg_current_speed;
  wire i_cfg_err_cor_out;
  wire i_cfg_err_fatal_out;
  wire i_cfg_err_nonfatal_out;
  wire [15:0]i_cfg_function_status;
  wire [4:0]i_cfg_local_error_out;
  wire [5:0]i_cfg_ltssm_state;
  wire [1:0]i_cfg_max_payload;
  wire [2:0]i_cfg_max_read_req;
  wire [2:0]i_cfg_negotiated_width;
  wire i_cfg_phy_link_down;
  wire [1:0]i_cfg_phy_link_status;
  wire i_cfg_pl_status_change;
  wire [511:0]i_m_axis_cq_tdata;
  wire [15:0]i_m_axis_cq_tkeep;
  wire i_m_axis_cq_tlast;
  wire o_m_axis_cq_tready;
  wire [182:0]i_m_axis_cq_tuser;
  wire i_m_axis_cq_tvalid;
  wire [511:0]i_m_axis_rc_tdata;
  wire [15:0]i_m_axis_rc_tkeep;
  wire i_m_axis_rc_tlast;
  wire o_m_axis_rc_tready;
  wire [160:0]i_m_axis_rc_tuser;
  wire i_m_axis_rc_tvalid;
  wire [1:0]o_m_pcie_cq_np_req;
  wire [7:0]o_pcie4_cfg_control_ds_bus_number;
  wire [4:0]o_pcie4_cfg_control_ds_device_number;
  wire [7:0]o_pcie4_cfg_control_ds_port_number;
  wire [63:0]o_pcie4_cfg_control_dsn;
  wire o_pcie4_cfg_control_err_cor_in;
  wire o_pcie4_cfg_control_err_uncor_in;
  wire [3:0]o_pcie4_cfg_control_flr_done;
  wire [3:0]i_pcie4_cfg_control_flr_in_process;
  wire i_pcie4_cfg_control_hot_reset_out;
  wire o_pcie4_cfg_control_link_training_enable;
  wire [251:0]i_pcie4_cfg_control_vf_flr_in_process;
  wire [7:0]i_pcie4_cfg_fc_nph;
  wire [2:0]o_pcie4_cfg_fc_sel;
  wire [3:0]o_pcie4_cfg_interrupt_intx_vector;
  wire [3:0]o_pcie4_cfg_interrupt_pending;
  wire i_pcie4_cfg_interrupt_sent;
  wire i_pcie4_cfg_mesg_rcvd_recd;
  wire [7:0]i_pcie4_cfg_mesg_rcvd_recd_data;
  wire [4:0]i_pcie4_cfg_mesg_rcvd_recd_type;
  wire o_pcie4_cfg_mesg_tx_transmit;
  wire [31:0]o_pcie4_cfg_mesg_tx_transmit_data;
  wire i_pcie4_cfg_mesg_tx_transmit_done;
  wire [2:0]o_pcie4_cfg_mesg_tx_transmit_type;
  wire [9:0]o_pcie4_cfg_mgmt_addr;
  wire [3:0]o_pcie4_cfg_mgmt_byte_en;
  wire o_pcie4_cfg_mgmt_debug_access;
  wire [7:0]o_pcie4_cfg_mgmt_function_number;
  wire [31:0]i_pcie4_cfg_mgmt_read_data;
  wire o_pcie4_cfg_mgmt_read_en;
  wire i_pcie4_cfg_mgmt_read_write_done;
  wire [31:0]o_pcie4_cfg_mgmt_write_data;
  wire o_pcie4_cfg_mgmt_write_en;
  wire [2:0]o_pcie4_cfg_msi_attr;
  wire [31:0]i_pcie4_cfg_msi_data;
  wire [3:0]i_pcie4_cfg_msi_enable;
  wire i_pcie4_cfg_msi_fail;
  wire [7:0]o_pcie4_cfg_msi_function_number;
  wire [31:0]o_pcie4_cfg_msi_int_vector;
  wire i_pcie4_cfg_msi_mask_update;
  wire [31:0]o_pcie4_cfg_msi_pending_status;
  wire o_pcie4_cfg_msi_pending_status_data_enable;
  wire [3:0]o_pcie4_cfg_msi_pending_status_function_num;
  wire i_pcie4_cfg_msi_sent;
  wire o_pcie4_cfg_msi_tph_present;
  wire [8:0]o_pcie4_cfg_msi_tph_st_tag;
  wire [1:0]o_pcie4_cfg_msi_tph_type;
  wire [5:0]i_pcie_cq_np_req_count;
  wire [5:0]i_pcie_rq_seq_num0;
  wire [5:0]i_pcie_rq_seq_num1;
  wire i_pcie_rq_seq_num_vld0;
  wire i_pcie_rq_seq_num_vld1;
  wire i_phy_rdy_out;
  wire [511:0]o_s_axis_cc_tdata;
  wire [15:0]o_s_axis_cc_tkeep;
  wire o_s_axis_cc_tlast;
  wire i_s_axis_cc_tready;
  wire [80:0]o_s_axis_cc_tuser;
  wire o_s_axis_cc_tvalid;
  wire [511:0]o_s_axis_rq_tdata;
  wire [15:0]o_s_axis_rq_tkeep;
  wire o_s_axis_rq_tlast;
  wire [3:0]i_s_axis_rq_tready;
  wire [136:0]o_s_axis_rq_tuser;
  wire o_s_axis_rq_tvalid;
  
  wire sys_clk;
  wire sys_clk_gt;
  wire sys_rst_n_c;
  wire c1_sys_clk_in;
  wire c1_sys_clk_in_bufg;

  wire i_PCIE_USR_CLK_DIV4_62_5MHz;
  wire PR_DECOUPLE;

  wire [31:0] EFUSE_IN_tri_i;

  reg [31:0] SHELL_VERSION_NUMBER = `SHELL_VERSION_NUMBER; // defined in shell_parameters.vh 

  wire [31:0]deviceDNA_PA;
  wire [31:0]deviceDNA_PB;
  wire [31:0]deviceDNA_PC;

  IBUF   sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));
  IBUFDS_GTE4 refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));

  IBUFDS # ( .IBUF_LOW_PWR ("FALSE")) u_ibufg_C1_sys_clk
          (
           .I  (c1_sys_clk_p),
           .IB (c1_sys_clk_n),
           .O  (c1_sys_clk_in)
           );
 BUFG (.I(c1_sys_clk_in), .O(c1_sys_clk_in_bufg));
 assign c1_sys_clk_out = c1_sys_clk_in_bufg;
  
  EFUSE_USR EFUSE_USR_i (.EFUSEUSR(EFUSE_IN_tri_i));

assign PCIE_USR_CLK_DIV4_62_5MHz = i_PCIE_USR_CLK_DIV4_62_5MHz;
assign sys_rst_n_out = sys_rst_n_c;

  PR_decoupler U_PR_decoupler (
  .PR_DECOUPLE(PR_DECOUPLE),
  .i_cfg_current_speed(i_cfg_current_speed),
  .i_cfg_err_cor_out(i_cfg_err_cor_out),
  .i_cfg_err_fatal_out(i_cfg_err_fatal_out),
  .i_cfg_err_nonfatal_out(i_cfg_err_nonfatal_out),
  .i_cfg_function_status(i_cfg_function_status),
  .i_cfg_local_error_out(i_cfg_local_error_out),
  .i_cfg_ltssm_state(i_cfg_ltssm_state),
  .i_cfg_max_payload(i_cfg_max_payload),
  .i_cfg_max_read_req(i_cfg_max_read_req),
  .i_cfg_negotiated_width(i_cfg_negotiated_width),
  .i_cfg_phy_link_down(i_cfg_phy_link_down),
  .i_cfg_phy_link_status(i_cfg_phy_link_status),
  .i_cfg_pl_status_change(i_cfg_pl_status_change),
  .i_m_axis_cq_tdata(i_m_axis_cq_tdata),
  .i_m_axis_cq_tkeep(i_m_axis_cq_tkeep),
  .i_m_axis_cq_tlast(i_m_axis_cq_tlast),
  .o_m_axis_cq_tready(o_m_axis_cq_tready),
  .i_m_axis_cq_tuser(i_m_axis_cq_tuser),
  .i_m_axis_cq_tvalid(i_m_axis_cq_tvalid),
  .i_m_axis_rc_tdata(i_m_axis_rc_tdata),
  .i_m_axis_rc_tkeep(i_m_axis_rc_tkeep),
  .i_m_axis_rc_tlast(i_m_axis_rc_tlast),
  .o_m_axis_rc_tready(o_m_axis_rc_tready),
  .i_m_axis_rc_tuser(i_m_axis_rc_tuser),
  .i_m_axis_rc_tvalid(i_m_axis_rc_tvalid),
  .o_m_pcie_cq_np_req(o_m_pcie_cq_np_req),
  .o_pcie4_cfg_control_ds_bus_number(o_pcie4_cfg_control_ds_bus_number),
  .o_pcie4_cfg_control_ds_device_number(o_pcie4_cfg_control_ds_device_number),
  .o_pcie4_cfg_control_ds_port_number(o_pcie4_cfg_control_ds_port_number),
  .o_pcie4_cfg_control_dsn(o_pcie4_cfg_control_dsn),
  .o_pcie4_cfg_control_err_cor_in(o_pcie4_cfg_control_err_cor_in),
  .o_pcie4_cfg_control_err_uncor_in(o_pcie4_cfg_control_err_uncor_in),
  .o_pcie4_cfg_control_flr_done(o_pcie4_cfg_control_flr_done),
  .i_pcie4_cfg_control_flr_in_process(i_pcie4_cfg_control_flr_in_process),
  .i_pcie4_cfg_control_hot_reset_out(i_pcie4_cfg_control_hot_reset_out),
  .o_pcie4_cfg_control_link_training_enable(o_pcie4_cfg_control_link_training_enable),
  .i_pcie4_cfg_control_vf_flr_in_process(i_pcie4_cfg_control_vf_flr_in_process),
  .i_pcie4_cfg_fc_nph(i_pcie4_cfg_fc_nph),
  .o_pcie4_cfg_fc_sel(o_pcie4_cfg_fc_sel),
  .o_pcie4_cfg_interrupt_intx_vector(o_pcie4_cfg_interrupt_intx_vector),
  .o_pcie4_cfg_interrupt_pending(o_pcie4_cfg_interrupt_pending),
  .i_pcie4_cfg_interrupt_sent(i_pcie4_cfg_interrupt_sent),
  .i_pcie4_cfg_mesg_rcvd_recd(i_pcie4_cfg_mesg_rcvd_recd),
  .i_pcie4_cfg_mesg_rcvd_recd_data(i_pcie4_cfg_mesg_rcvd_recd_data),
  .i_pcie4_cfg_mesg_rcvd_recd_type(i_pcie4_cfg_mesg_rcvd_recd_type),
  .o_pcie4_cfg_mesg_tx_transmit(o_pcie4_cfg_mesg_tx_transmit),
  .o_pcie4_cfg_mesg_tx_transmit_data(o_pcie4_cfg_mesg_tx_transmit_data),
  .i_pcie4_cfg_mesg_tx_transmit_done(i_pcie4_cfg_mesg_tx_transmit_done),
  .o_pcie4_cfg_mesg_tx_transmit_type(o_pcie4_cfg_mesg_tx_transmit_type),
  .o_pcie4_cfg_mgmt_addr(o_pcie4_cfg_mgmt_addr),
  .o_pcie4_cfg_mgmt_byte_en(o_pcie4_cfg_mgmt_byte_en),
  .o_pcie4_cfg_mgmt_debug_access(o_pcie4_cfg_mgmt_debug_access),
  .o_pcie4_cfg_mgmt_function_number(o_pcie4_cfg_mgmt_function_number),
  .i_pcie4_cfg_mgmt_read_data(i_pcie4_cfg_mgmt_read_data),
  .o_pcie4_cfg_mgmt_read_en(o_pcie4_cfg_mgmt_read_en),
  .i_pcie4_cfg_mgmt_read_write_done(i_pcie4_cfg_mgmt_read_write_done),
  .o_pcie4_cfg_mgmt_write_data(o_pcie4_cfg_mgmt_write_data),
  .o_pcie4_cfg_mgmt_write_en(o_pcie4_cfg_mgmt_write_en),
  .o_pcie4_cfg_msi_attr(o_pcie4_cfg_msi_attr),
  .i_pcie4_cfg_msi_data(i_pcie4_cfg_msi_data),
  .i_pcie4_cfg_msi_enable(i_pcie4_cfg_msi_enable),
  .i_pcie4_cfg_msi_fail(i_pcie4_cfg_msi_fail),
  .o_pcie4_cfg_msi_function_number(o_pcie4_cfg_msi_function_number),
  .o_pcie4_cfg_msi_int_vector(o_pcie4_cfg_msi_int_vector),
  .i_pcie4_cfg_msi_mask_update(i_pcie4_cfg_msi_mask_update),
  .o_pcie4_cfg_msi_pending_status(o_pcie4_cfg_msi_pending_status),
  .o_pcie4_cfg_msi_pending_status_data_enable(o_pcie4_cfg_msi_pending_status_data_enable),
  .o_pcie4_cfg_msi_pending_status_function_num(o_pcie4_cfg_msi_pending_status_function_num),
  .i_pcie4_cfg_msi_sent(i_pcie4_cfg_msi_sent),
  .o_pcie4_cfg_msi_tph_present(o_pcie4_cfg_msi_tph_present),
  .o_pcie4_cfg_msi_tph_st_tag(o_pcie4_cfg_msi_tph_st_tag),
  .o_pcie4_cfg_msi_tph_type(o_pcie4_cfg_msi_tph_type),
  .i_pcie_cq_np_req_count(i_pcie_cq_np_req_count),
  .i_pcie_rq_seq_num0(i_pcie_rq_seq_num0),
  .i_pcie_rq_seq_num1(i_pcie_rq_seq_num1),
  .i_pcie_rq_seq_num_vld0(i_pcie_rq_seq_num_vld0),
  .i_pcie_rq_seq_num_vld1(i_pcie_rq_seq_num_vld1),
  .i_phy_rdy_out(i_phy_rdy_out),
  .o_s_axis_cc_tdata(o_s_axis_cc_tdata),
  .o_s_axis_cc_tkeep(o_s_axis_cc_tkeep),
  .o_s_axis_cc_tlast(o_s_axis_cc_tlast),
  .i_s_axis_cc_tready(i_s_axis_cc_tready),
  .o_s_axis_cc_tuser(o_s_axis_cc_tuser),
  .o_s_axis_cc_tvalid(o_s_axis_cc_tvalid),
  .o_s_axis_rq_tdata(o_s_axis_rq_tdata),
  .o_s_axis_rq_tkeep(o_s_axis_rq_tkeep),
  .o_s_axis_rq_tlast(o_s_axis_rq_tlast),
  .i_s_axis_rq_tready(i_s_axis_rq_tready),
  .o_s_axis_rq_tuser(o_s_axis_rq_tuser),
  .o_s_axis_rq_tvalid(o_s_axis_rq_tvalid),
  .cfg_current_speed(cfg_current_speed),
  .cfg_err_cor_out(cfg_err_cor_out),
  .cfg_err_fatal_out(cfg_err_fatal_out),
  .cfg_err_nonfatal_out(cfg_err_nonfatal_out),
  .cfg_function_status(cfg_function_status),
  .cfg_local_error_out(cfg_local_error_out),
  .cfg_ltssm_state(cfg_ltssm_state),
  .cfg_max_payload(cfg_max_payload),
  .cfg_max_read_req(cfg_max_read_req),
  .cfg_negotiated_width(cfg_negotiated_width),
  .cfg_phy_link_down(cfg_phy_link_down),
  .cfg_phy_link_status(cfg_phy_link_status),
  .cfg_pl_status_change(cfg_pl_status_change),
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
  .m_pcie_cq_np_req(m_pcie_cq_np_req),
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
  .pcie4_cfg_mgmt_addr(pcie4_cfg_mgmt_addr),
  .pcie4_cfg_mgmt_byte_en(pcie4_cfg_mgmt_byte_en),
  .pcie4_cfg_mgmt_debug_access(pcie4_cfg_mgmt_debug_access),
  .pcie4_cfg_mgmt_function_number(pcie4_cfg_mgmt_function_number),
  .pcie4_cfg_mgmt_read_data(pcie4_cfg_mgmt_read_data),
  .pcie4_cfg_mgmt_read_en(pcie4_cfg_mgmt_read_en),
  .pcie4_cfg_mgmt_read_write_done(pcie4_cfg_mgmt_read_write_done),
  .pcie4_cfg_mgmt_write_data(pcie4_cfg_mgmt_write_data),
  .pcie4_cfg_mgmt_write_en(pcie4_cfg_mgmt_write_en),
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
  .pcie_cq_np_req_count(pcie_cq_np_req_count),
  .pcie_rq_seq_num0(pcie_rq_seq_num0),
  .pcie_rq_seq_num1(pcie_rq_seq_num1),
  .pcie_rq_seq_num_vld0(pcie_rq_seq_num_vld0),
  .pcie_rq_seq_num_vld1(pcie_rq_seq_num_vld1),
  .phy_rdy_out(phy_rdy_out),
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
  .s_axis_rq_tvalid(s_axis_rq_tvalid)
  );


THIN_SHELL_x THIN_SHELL_x_inst (
  .DEVICE_DNA_A_tri_i(deviceDNA_PA),
  .DEVICE_DNA_B_tri_i(deviceDNA_PB),
  .DEVICE_DNA_C_tri_i(deviceDNA_PC),
  .DEVICE_DNA_D_tri_i(32'h556699aa),
  .EFUSE_i_tri_i(EFUSE_IN_tri_i),
  .PCIE_USR_CLK_DIV4_62_5MHz(i_PCIE_USR_CLK_DIV4_62_5MHz),
  .PR_DECOUPLE(PR_DECOUPLE),
  .RESET_GATE(RESET_GATE),
  .SHELL_TO_CL_RST(SHELL_TO_CL_RST),
  .SHELL_VER_i_tri_i(SHELL_VERSION_NUMBER),
  .cfg_current_speed(i_cfg_current_speed),
  .cfg_err_cor_out(i_cfg_err_cor_out),
  .cfg_err_fatal_out(i_cfg_err_fatal_out),
  .cfg_err_nonfatal_out(i_cfg_err_nonfatal_out),
  .cfg_function_status(i_cfg_function_status),
  .cfg_local_error_out(i_cfg_local_error_out),
  .cfg_ltssm_state(i_cfg_ltssm_state),
  .cfg_max_payload(i_cfg_max_payload),
  .cfg_max_read_req(i_cfg_max_read_req),
  .cfg_negotiated_width(i_cfg_negotiated_width),
  .cfg_phy_link_down(i_cfg_phy_link_down),
  .cfg_phy_link_status(i_cfg_phy_link_status),
  .cfg_pl_status_change(i_cfg_pl_status_change),
  .m_axis_cq_tdata(i_m_axis_cq_tdata),
  .m_axis_cq_tkeep(i_m_axis_cq_tkeep),
  .m_axis_cq_tlast(i_m_axis_cq_tlast),
  .m_axis_cq_tready(o_m_axis_cq_tready),
  .m_axis_cq_tuser(i_m_axis_cq_tuser),
  .m_axis_cq_tvalid(i_m_axis_cq_tvalid),
  .m_axis_rc_tdata(i_m_axis_rc_tdata),
  .m_axis_rc_tkeep(i_m_axis_rc_tkeep),
  .m_axis_rc_tlast(i_m_axis_rc_tlast),
  .m_axis_rc_tready(o_m_axis_rc_tready),
  .m_axis_rc_tuser(i_m_axis_rc_tuser),
  .m_axis_rc_tvalid(i_m_axis_rc_tvalid),
  .m_pcie_cq_np_req(o_m_pcie_cq_np_req),
  .pcie4_cfg_control_ds_bus_number(o_pcie4_cfg_control_ds_bus_number),
  .pcie4_cfg_control_ds_device_number(o_pcie4_cfg_control_ds_device_number),
  .pcie4_cfg_control_ds_port_number(o_pcie4_cfg_control_ds_port_number),
  .pcie4_cfg_control_dsn(o_pcie4_cfg_control_dsn),
  .pcie4_cfg_control_err_cor_in(o_pcie4_cfg_control_err_cor_in),
  .pcie4_cfg_control_err_uncor_in(o_pcie4_cfg_control_err_uncor_in),
  .pcie4_cfg_control_flr_done(o_pcie4_cfg_control_flr_done),
  .pcie4_cfg_control_flr_in_process(i_pcie4_cfg_control_flr_in_process),
  .pcie4_cfg_control_hot_reset_out(i_pcie4_cfg_control_hot_reset_out),
  .pcie4_cfg_control_link_training_enable(o_pcie4_cfg_control_link_training_enable),
  .pcie4_cfg_control_vf_flr_in_process(i_pcie4_cfg_control_vf_flr_in_process),
  .pcie4_cfg_fc_nph(i_pcie4_cfg_fc_nph),
  .pcie4_cfg_fc_sel(o_pcie4_cfg_fc_sel),
  .pcie4_cfg_interrupt_intx_vector(o_pcie4_cfg_interrupt_intx_vector),
  .pcie4_cfg_interrupt_pending(o_pcie4_cfg_interrupt_pending),
  .pcie4_cfg_interrupt_sent(i_pcie4_cfg_interrupt_sent),
  .pcie4_cfg_mesg_rcvd_recd(i_pcie4_cfg_mesg_rcvd_recd),
  .pcie4_cfg_mesg_rcvd_recd_data(i_pcie4_cfg_mesg_rcvd_recd_data),
  .pcie4_cfg_mesg_rcvd_recd_type(i_pcie4_cfg_mesg_rcvd_recd_type),
  .pcie4_cfg_mesg_tx_transmit(o_pcie4_cfg_mesg_tx_transmit),
  .pcie4_cfg_mesg_tx_transmit_data(o_pcie4_cfg_mesg_tx_transmit_data),
  .pcie4_cfg_mesg_tx_transmit_done(i_pcie4_cfg_mesg_tx_transmit_done),
  .pcie4_cfg_mesg_tx_transmit_type(o_pcie4_cfg_mesg_tx_transmit_type),
  .pcie4_cfg_mgmt_addr(o_pcie4_cfg_mgmt_addr),
  .pcie4_cfg_mgmt_byte_en(o_pcie4_cfg_mgmt_byte_en),
  .pcie4_cfg_mgmt_debug_access(o_pcie4_cfg_mgmt_debug_access),
  .pcie4_cfg_mgmt_function_number(o_pcie4_cfg_mgmt_function_number),
  .pcie4_cfg_mgmt_read_data(i_pcie4_cfg_mgmt_read_data),
  .pcie4_cfg_mgmt_read_en(o_pcie4_cfg_mgmt_read_en),
  .pcie4_cfg_mgmt_read_write_done(i_pcie4_cfg_mgmt_read_write_done),
  .pcie4_cfg_mgmt_write_data(o_pcie4_cfg_mgmt_write_data),
  .pcie4_cfg_mgmt_write_en(o_pcie4_cfg_mgmt_write_en),
  .pcie4_cfg_msi_attr(o_pcie4_cfg_msi_attr),
  .pcie4_cfg_msi_data(i_pcie4_cfg_msi_data),
  .pcie4_cfg_msi_enable(i_pcie4_cfg_msi_enable),
  .pcie4_cfg_msi_fail(i_pcie4_cfg_msi_fail),
  .pcie4_cfg_msi_function_number(o_pcie4_cfg_msi_function_number),
  .pcie4_cfg_msi_int_vector(o_pcie4_cfg_msi_int_vector),
  .pcie4_cfg_msi_mask_update(i_pcie4_cfg_msi_mask_update),
  .pcie4_cfg_msi_pending_status(o_pcie4_cfg_msi_pending_status),
  .pcie4_cfg_msi_pending_status_data_enable(o_pcie4_cfg_msi_pending_status_data_enable),
  .pcie4_cfg_msi_pending_status_function_num(o_pcie4_cfg_msi_pending_status_function_num),
  .pcie4_cfg_msi_sent(i_pcie4_cfg_msi_sent),
  .pcie4_cfg_msi_tph_present(o_pcie4_cfg_msi_tph_present),
  .pcie4_cfg_msi_tph_st_tag(o_pcie4_cfg_msi_tph_st_tag),
  .pcie4_cfg_msi_tph_type(o_pcie4_cfg_msi_tph_type),
  .pcie_cq_np_req_count(i_pcie_cq_np_req_count),
  .pcie_mgt_rxn(pcie_mgt_rxn),
  .pcie_mgt_rxp(pcie_mgt_rxp),
  .pcie_mgt_txn(pcie_mgt_txn),
  .pcie_mgt_txp(pcie_mgt_txp),
  .pcie_rq_seq_num0(i_pcie_rq_seq_num0),
  .pcie_rq_seq_num1(i_pcie_rq_seq_num1),
  .pcie_rq_seq_num_vld0(i_pcie_rq_seq_num_vld0),
  .pcie_rq_seq_num_vld1(i_pcie_rq_seq_num_vld1),
  .phy_rdy_out(i_phy_rdy_out),
  .s_axis_cc_tdata(o_s_axis_cc_tdata),
  .s_axis_cc_tkeep(o_s_axis_cc_tkeep),
  .s_axis_cc_tlast(o_s_axis_cc_tlast),
  .s_axis_cc_tready(i_s_axis_cc_tready),
  .s_axis_cc_tuser(o_s_axis_cc_tuser),
  .s_axis_cc_tvalid(o_s_axis_cc_tvalid),
  .s_axis_rq_tdata(o_s_axis_rq_tdata),
  .s_axis_rq_tkeep(o_s_axis_rq_tkeep),
  .s_axis_rq_tlast(o_s_axis_rq_tlast),
  .s_axis_rq_tready(i_s_axis_rq_tready),
  .s_axis_rq_tuser(o_s_axis_rq_tuser),
  .s_axis_rq_tvalid(o_s_axis_rq_tvalid),
  .sys_clk(sys_clk),
  .sys_clk_gt(sys_clk_gt),
  .sys_rst_n(sys_rst_n_c),
  .user_clk(user_clk),
  .user_lnk_up(user_lnk_up),
  .user_reset(user_reset));

device_dna U_device_dna (
    .clk(i_PCIE_USR_CLK_DIV4_62_5MHz),
    .start_devDNA_read(start_devDNA_read),
    .ser_devDNA_out(ser_devDNA_out),
    .ser_devDNA_out_valid(ser_devDNA_out_valid),
    .dev_DNA({deviceDNA_PA, deviceDNA_PB, deviceDNA_PC})
);

  IBUF   BMC_GPIO_ibuf0 (.O(o_BMC_GPIO[0]), .I(BMC_GPIO[0]));
  IBUF   BMC_GPIO_ibuf1 (.O(o_BMC_GPIO[1]), .I(BMC_GPIO[1]));
  IBUF   BMC_GPIO_ibuf2 (.O(o_BMC_GPIO[2]), .I(BMC_GPIO[2]));
  IBUF   BMC_GPIO_ibuf3 (.O(o_BMC_GPIO[3]), .I(BMC_GPIO[3]));

  IBUF   BMC_UART_rxd_ibuf0 (.O(i_BMC_UART_rxd), .I(BMC_UART_rxd));
  OBUF   BMC_UART_txd_ibuf0 (.O(BMC_UART_txd), .I(o_BMC_UART_txd));
  OBUF   RESET_GATE_obuf0 (.O(RESET_GATE), .I(o_RESET_GATE));


  IOBUF iiC_scl_iobuf
       (.I(iiC_scl_o),
        .IO(iic_scl_io),
        .O(iiC_scl_i),
        .T(iiC_scl_t));
  IOBUF iiC_sda_iobuf
       (.I(iiC_sda_o),
        .IO(iic_sda_io),
        .O(iiC_sda_i),
        .T(iiC_sda_t));

endmodule
