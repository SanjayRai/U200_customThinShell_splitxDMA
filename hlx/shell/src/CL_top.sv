// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module CL_top (
  input perstn_in,
  input [3:0]BMC_GPIO,
  input BMC_UART_rxd,
  output BMC_UART_txd,
  input wire iiC_scl_i,
  output wire iiC_scl_o,
  output wire iiC_scl_t,
  input wire iiC_sda_i,
  output wire iiC_sda_o,
  output wire iiC_sda_t,

  input [3:0]SHELL_TO_CL_RST,
  input c0_sys_clk_n,
  input c0_sys_clk_p,
  input c1_sys_clk,
  input c2_sys_clk_n,
  input c2_sys_clk_p,
  input c3_sys_clk_n,
  input c3_sys_clk_p,

  output c0_ddr4_act_n,
  output [16:0]c0_ddr4_adr,
  output [1:0]c0_ddr4_ba,
  output [1:0]c0_ddr4_bg,
  output [0:0]c0_ddr4_ck_c,
  output [0:0]c0_ddr4_ck_t,
  output [0:0]c0_ddr4_cke,
  output [0:0]c0_ddr4_cs_n,
  inout [71:0]c0_ddr4_dq,
  inout [17:0]c0_ddr4_dqs_c,
  inout [17:0]c0_ddr4_dqs_t,
  output [0:0]c0_ddr4_odt,
  output c0_ddr4_par,
  output c0_ddr4_reset_n,

  output c1_ddr4_act_n,
  output [16:0]c1_ddr4_adr,
  output [1:0]c1_ddr4_ba,
  output [1:0]c1_ddr4_bg,
  output [0:0]c1_ddr4_ck_c,
  output [0:0]c1_ddr4_ck_t,
  output [0:0]c1_ddr4_cke,
  output [0:0]c1_ddr4_cs_n,
  inout [71:0]c1_ddr4_dq,
  inout [17:0]c1_ddr4_dqs_c,
  inout [17:0]c1_ddr4_dqs_t,
  output [0:0]c1_ddr4_odt,
  output c1_ddr4_par,
  output c1_ddr4_reset_n,
  output c2_ddr4_act_n,
  output [16:0]c2_ddr4_adr,
  output [1:0]c2_ddr4_ba,
  output [1:0]c2_ddr4_bg,
  output [0:0]c2_ddr4_ck_c,
  output [0:0]c2_ddr4_ck_t,
  output [0:0]c2_ddr4_cke,
  output [0:0]c2_ddr4_cs_n,
  inout [71:0]c2_ddr4_dq,
  inout [17:0]c2_ddr4_dqs_c,
  inout [17:0]c2_ddr4_dqs_t,
  output [0:0]c2_ddr4_odt,
  output c2_ddr4_par,
  output c2_ddr4_reset_n,
  output c3_ddr4_act_n,
  output [16:0]c3_ddr4_adr,
  output [1:0]c3_ddr4_ba,
  output [1:0]c3_ddr4_bg,
  output [0:0]c3_ddr4_ck_c,
  output [0:0]c3_ddr4_ck_t,
  output [0:0]c3_ddr4_cke,
  output [0:0]c3_ddr4_cs_n,
  inout [71:0]c3_ddr4_dq,
  inout [17:0]c3_ddr4_dqs_c,
  inout [17:0]c3_ddr4_dqs_t,
  output [0:0]c3_ddr4_odt,
  output c3_ddr4_par,
  output c3_ddr4_reset_n,
  
  input [1:0]cfg_current_speed,
  input cfg_err_cor_out,
  input cfg_err_fatal_out,
  input cfg_err_nonfatal_out,
  input [15:0]cfg_function_status,
  input [4:0]cfg_local_error_out,
  input [5:0]cfg_ltssm_state,
  input [1:0]cfg_max_payload,
  input [2:0]cfg_max_read_req,
  input [2:0]cfg_negotiated_width,
  input cfg_phy_link_down,
  input [1:0]cfg_phy_link_status,
  input cfg_pl_status_change,
  input [511:0]m_axis_cq_tdata,
  input [15:0]m_axis_cq_tkeep,
  input m_axis_cq_tlast,
  output m_axis_cq_tready,
  input [182:0]m_axis_cq_tuser,
  input m_axis_cq_tvalid,
  input [511:0]m_axis_rc_tdata,
  input [15:0]m_axis_rc_tkeep,
  input m_axis_rc_tlast,
  output m_axis_rc_tready,
  input [160:0]m_axis_rc_tuser,
  input m_axis_rc_tvalid,
  output [1:0]m_pcie_cq_np_req,
  output [7:0]pcie4_cfg_control_ds_bus_number,
  output [4:0]pcie4_cfg_control_ds_device_number,
  output [7:0]pcie4_cfg_control_ds_port_number,
  output [63:0]pcie4_cfg_control_dsn,
  output pcie4_cfg_control_err_cor_in,
  output pcie4_cfg_control_err_uncor_in,
  output [3:0]pcie4_cfg_control_flr_done,
  input [3:0]pcie4_cfg_control_flr_in_process,
  input pcie4_cfg_control_hot_reset_out,
  output pcie4_cfg_control_link_training_enable,
  input [251:0]pcie4_cfg_control_vf_flr_in_process,
  input [7:0]pcie4_cfg_fc_nph,
  output [2:0]pcie4_cfg_fc_sel,
  output [3:0]pcie4_cfg_interrupt_intx_vector,
  output [3:0]pcie4_cfg_interrupt_pending,
  input pcie4_cfg_interrupt_sent,
  input pcie4_cfg_mesg_rcvd_recd,
  input [7:0]pcie4_cfg_mesg_rcvd_recd_data,
  input [4:0]pcie4_cfg_mesg_rcvd_recd_type,
  output pcie4_cfg_mesg_tx_transmit,
  output [31:0]pcie4_cfg_mesg_tx_transmit_data,
  input pcie4_cfg_mesg_tx_transmit_done,
  output [2:0]pcie4_cfg_mesg_tx_transmit_type,
  output [9:0]pcie4_cfg_mgmt_addr,
  output [3:0]pcie4_cfg_mgmt_byte_en,
  output pcie4_cfg_mgmt_debug_access,
  output [7:0]pcie4_cfg_mgmt_function_number,
  input [31:0]pcie4_cfg_mgmt_read_data,
  output pcie4_cfg_mgmt_read_en,
  input pcie4_cfg_mgmt_read_write_done,
  output [31:0]pcie4_cfg_mgmt_write_data,
  output pcie4_cfg_mgmt_write_en,
  output [2:0]pcie4_cfg_msi_attr,
  input [31:0]pcie4_cfg_msi_data,
  input [3:0]pcie4_cfg_msi_enable,
  input pcie4_cfg_msi_fail,
  output [7:0]pcie4_cfg_msi_function_number,
  output [31:0]pcie4_cfg_msi_int_vector,
  input pcie4_cfg_msi_mask_update,
  output [31:0]pcie4_cfg_msi_pending_status,
  output pcie4_cfg_msi_pending_status_data_enable,
  output [3:0]pcie4_cfg_msi_pending_status_function_num,
  input pcie4_cfg_msi_sent,
  output pcie4_cfg_msi_tph_present,
  output [8:0]pcie4_cfg_msi_tph_st_tag,
  output [1:0]pcie4_cfg_msi_tph_type,
  input [5:0]pcie_cq_np_req_count,
  input [5:0]pcie_rq_seq_num0,
  input [5:0]pcie_rq_seq_num1,
  input pcie_rq_seq_num_vld0,
  input pcie_rq_seq_num_vld1,
  input phy_rdy_out,
  output [511:0]s_axis_cc_tdata,
  output [15:0]s_axis_cc_tkeep,
  output s_axis_cc_tlast,
  input s_axis_cc_tready,
  output [80:0]s_axis_cc_tuser,
  output s_axis_cc_tvalid,
  output [511:0]s_axis_rq_tdata,
  output [15:0]s_axis_rq_tkeep,
  output s_axis_rq_tlast,
  input [3:0]s_axis_rq_tready,
  output [136:0]s_axis_rq_tuser,
  output s_axis_rq_tvalid,
  input user_clk,
  input user_lnk_up,
  input user_reset,
  output start_devDNA_read,
  input ser_devDNA_out,
  input ser_devDNA_out_valid,  
  input wire  S_BSCAN_bscanid_en,
  input wire  S_BSCAN_capture,
  input wire  S_BSCAN_drck,
  input wire  S_BSCAN_reset,
  input wire  S_BSCAN_runtest,
  input wire  S_BSCAN_sel,
  input wire  S_BSCAN_shift,
  input wire  S_BSCAN_tck,
  input wire  S_BSCAN_tdi,
  output wire S_BSCAN_tdo,
  input wire  S_BSCAN_tms,
  input wire  S_BSCAN_update
  );

  wire rst_main_n;
  wire MIG_0_RST;
  wire MIG_1_RST;
  wire MIG_2_RST;
  wire MIG_3_RST;
  wire clk_out_125M;
  wire clk_out_250M;
  wire clk_out_300M;
  wire clk_out_400M;
  wire clk_out_PROG;
  wire axi_reset_n_out;
  wire c0_init_calib_complete;
  wire c1_init_calib_complete;
  wire c2_init_calib_complete;
  wire c3_init_calib_complete;

  wire c0_ddr4_app_mem_init_skip;
  wire c0_ddr4_app_restore_complete;
  wire c0_ddr4_app_sref_ack;
  wire c0_ddr4_app_sref_req;
  wire c0_ddr4_app_xsdb_select;
  wire c2_ddr4_app_mem_init_skip;
  wire c2_ddr4_app_restore_complete;
  wire c2_ddr4_app_sref_ack;
  wire c2_ddr4_app_sref_req;
  wire c2_ddr4_app_xsdb_select;
  wire c3_ddr4_app_mem_init_skip;
  wire c3_ddr4_app_restore_complete;
  wire c3_ddr4_app_sref_ack;
  wire c3_ddr4_app_sref_req;
  wire c3_ddr4_app_xsdb_select;
  wire [7:0]C0_DDR_SREF_CTRL_IN;
  wire [7:0]C0_DDR_SREF_CTRL_OUT;
  wire [7:0]C2_DDR_SREF_CTRL_IN;
  wire [7:0]C2_DDR_SREF_CTRL_OUT;
  wire [7:0]C3_DDR_SREF_CTRL_IN;
  wire [7:0]C3_DDR_SREF_CTRL_OUT;

  wire [1:0]cfg_current_speed;
  wire cfg_err_cor_out;
  wire cfg_err_fatal_out;
  wire cfg_err_nonfatal_out;
  wire [15:0]cfg_function_status;
  wire [4:0]cfg_local_error_out;
  wire [5:0]cfg_ltssm_state;
  wire [1:0]cfg_max_payload;
  wire [2:0]cfg_max_read_req;
  wire [2:0]cfg_negotiated_width;
  wire cfg_phy_link_down;
  wire [1:0]cfg_phy_link_status;
  wire cfg_pl_status_change;
  wire [511:0]m_axis_cq_tdata;
  wire [15:0]m_axis_cq_tkeep;
  wire m_axis_cq_tlast;
  wire m_axis_cq_tready;
  wire [182:0]m_axis_cq_tuser;
  wire m_axis_cq_tvalid;
  wire [511:0]m_axis_rc_tdata;
  wire [15:0]m_axis_rc_tkeep;
  wire m_axis_rc_tlast;
  wire m_axis_rc_tready;
  wire [160:0]m_axis_rc_tuser;
  wire m_axis_rc_tvalid;
  wire [1:0]m_pcie_cq_np_req;
  wire [7:0]pcie4_cfg_control_ds_bus_number;
  wire [4:0]pcie4_cfg_control_ds_device_number;
  wire [7:0]pcie4_cfg_control_ds_port_number;
  wire [63:0]pcie4_cfg_control_dsn;
  wire pcie4_cfg_control_err_cor_in;
  wire pcie4_cfg_control_err_uncor_in;
  wire [3:0]pcie4_cfg_control_flr_done;
  wire [3:0]pcie4_cfg_control_flr_in_process;
  wire pcie4_cfg_control_hot_reset_out;
  wire pcie4_cfg_control_link_training_enable;
  wire [251:0]pcie4_cfg_control_vf_flr_in_process;
  wire [7:0]pcie4_cfg_fc_nph;
  wire [2:0]pcie4_cfg_fc_sel;
  wire [3:0]pcie4_cfg_interrupt_intx_vector;
  wire [3:0]pcie4_cfg_interrupt_pending;
  wire pcie4_cfg_interrupt_sent;
  wire pcie4_cfg_mesg_rcvd_recd;
  wire [7:0]pcie4_cfg_mesg_rcvd_recd_data;
  wire [4:0]pcie4_cfg_mesg_rcvd_recd_type;
  wire pcie4_cfg_mesg_tx_transmit;
  wire [31:0]pcie4_cfg_mesg_tx_transmit_data;
  wire pcie4_cfg_mesg_tx_transmit_done;
  wire [2:0]pcie4_cfg_mesg_tx_transmit_type;
  wire [9:0]pcie4_cfg_mgmt_addr;
  wire [3:0]pcie4_cfg_mgmt_byte_en;
  wire pcie4_cfg_mgmt_debug_access;
  wire [7:0]pcie4_cfg_mgmt_function_number;
  wire [31:0]pcie4_cfg_mgmt_read_data;
  wire pcie4_cfg_mgmt_read_en;
  wire pcie4_cfg_mgmt_read_write_done;
  wire [31:0]pcie4_cfg_mgmt_write_data;
  wire pcie4_cfg_mgmt_write_en;
  wire [2:0]pcie4_cfg_msi_attr;
  wire [31:0]pcie4_cfg_msi_data;
  wire [3:0]pcie4_cfg_msi_enable;
  wire pcie4_cfg_msi_fail;
  wire [7:0]pcie4_cfg_msi_function_number;
  wire [31:0]pcie4_cfg_msi_int_vector;
  wire pcie4_cfg_msi_mask_update;
  wire [31:0]pcie4_cfg_msi_pending_status;
  wire pcie4_cfg_msi_pending_status_data_enable;
  wire [3:0]pcie4_cfg_msi_pending_status_function_num;
  wire pcie4_cfg_msi_sent;
  wire pcie4_cfg_msi_tph_present;
  wire [8:0]pcie4_cfg_msi_tph_st_tag;
  wire [1:0]pcie4_cfg_msi_tph_type;
  wire [5:0]pcie_cq_np_req_count;
  wire [5:0]pcie_rq_seq_num0;
  wire [5:0]pcie_rq_seq_num1;
  wire pcie_rq_seq_num_vld0;
  wire pcie_rq_seq_num_vld1;
  wire phy_rdy_out;
  wire [511:0]s_axis_cc_tdata;
  wire [15:0]s_axis_cc_tkeep;
  wire s_axis_cc_tlast;
  wire s_axis_cc_tready;
  wire [80:0]s_axis_cc_tuser;
  wire s_axis_cc_tvalid;
  wire [511:0]s_axis_rq_tdata;
  wire [15:0]s_axis_rq_tkeep;
  wire s_axis_rq_tlast;
  wire [3:0]s_axis_rq_tready;
  wire [136:0]s_axis_rq_tuser;
  wire s_axis_rq_tvalid;
  wire user_clk;
  wire user_lnk_up;
  wire user_reset;

  hlx_AXI_MM_intfc AXI_MM_TO_SHELL_PCIM ();
  hlx_AXI_MM_intfc AXI_MM_TO_SHELL_MIG ();
  hlx_AXI_LITE_intfc M_AXI_LITE_TO_HLS_PR();


  assign  MIG_0_RST =   SHELL_TO_CL_RST[0];
  assign  MIG_1_RST =   SHELL_TO_CL_RST[0];
  assign  MIG_2_RST =   SHELL_TO_CL_RST[0];
  assign  MIG_3_RST =   SHELL_TO_CL_RST[1];
  assign  rst_main_n = ~SHELL_TO_CL_RST[3];

  assign C0_DDR_SREF_CTRL_IN[7] = c0_ddr4_app_sref_ack;
  //assign C0_DDR_SREF_CTRL_IN[6:5] = 2'b00; 
  assign C0_DDR_SREF_CTRL_IN[4:0] = C0_DDR_SREF_CTRL_OUT[4:0];

  assign c0_ddr4_app_xsdb_select = C0_DDR_SREF_CTRL_OUT[4];
  assign c0_ddr4_app_mem_init_skip = C0_DDR_SREF_CTRL_OUT[3];
  assign c0_ddr4_app_restore_complete = C0_DDR_SREF_CTRL_OUT[2];
  // Used to be assign to restore_enable this is no loger needed handled in BD //C0_DDR_SREF_CTRL_OUT[1];
  assign c0_ddr4_app_sref_req = C0_DDR_SREF_CTRL_OUT[0];

  assign C2_DDR_SREF_CTRL_IN[7] = c2_ddr4_app_sref_ack;
  //assign C2_DDR_SREF_CTRL_IN[6:5] = 2'b00; 
  assign C2_DDR_SREF_CTRL_IN[4:0] = C2_DDR_SREF_CTRL_OUT[4:0];

  assign c2_ddr4_app_xsdb_select = C2_DDR_SREF_CTRL_OUT[4];
  assign c2_ddr4_app_mem_init_skip = C2_DDR_SREF_CTRL_OUT[3];
  assign c2_ddr4_app_restore_complete = C2_DDR_SREF_CTRL_OUT[2];
  // Used to be assign to restore_enable this is no loger needed handled in BD //C2_DDR_SREF_CTRL_OUT[1];
  assign c2_ddr4_app_sref_req = C2_DDR_SREF_CTRL_OUT[0];

  assign C3_DDR_SREF_CTRL_IN[7] = c3_ddr4_app_sref_ack;
  assign C3_DDR_SREF_CTRL_IN[6:5] = 2'b00; 
  assign C3_DDR_SREF_CTRL_IN[4:0] = C3_DDR_SREF_CTRL_OUT[4:0];

  assign c3_ddr4_app_xsdb_select = C3_DDR_SREF_CTRL_OUT[4];
  assign c3_ddr4_app_mem_init_skip = C3_DDR_SREF_CTRL_OUT[3];
  assign c3_ddr4_app_restore_complete = C3_DDR_SREF_CTRL_OUT[2];
  // Used to be assign to restore_enable this is no loger needed handled in BD //C3_DDR_SREF_CTRL_OUT[1];
  assign c3_ddr4_app_sref_req = C3_DDR_SREF_CTRL_OUT[0];


  shell_top U_shell_top (
        .BMC_GPIO(BMC_GPIO),
        .BMC_UART_rxd(BMC_UART_rxd),
        .BMC_UART_txd(BMC_UART_txd),
        .C1_SYS_CLK(c1_sys_clk),
        .C0_DDR_SREF_CTRL_IN(C0_DDR_SREF_CTRL_IN),
        .C0_DDR_SREF_CTRL_OUT(C0_DDR_SREF_CTRL_OUT),
        .C2_DDR_SREF_CTRL_IN(C2_DDR_SREF_CTRL_IN),
        .C2_DDR_SREF_CTRL_OUT(C2_DDR_SREF_CTRL_OUT),
        .C3_DDR_SREF_CTRL_IN(C3_DDR_SREF_CTRL_IN),
        .C3_DDR_SREF_CTRL_OUT(C3_DDR_SREF_CTRL_OUT),
        .M_AXI_LITE_TO_HLS_PR_NORTH(M_AXI_LITE_TO_HLS_PR.master),
        .S_AXI_MM_MIG (AXI_MM_TO_SHELL_MIG.slave),
        .S_AXI_MM_PCIM (AXI_MM_TO_SHELL_PCIM.slave),
        .axi_reset_n_out(axi_reset_n_out),
        .c1_ddr4_act_n(c1_ddr4_act_n),
        .c1_ddr4_adr(c1_ddr4_adr),
        .c1_ddr4_ba(c1_ddr4_ba),
        .c1_ddr4_bg(c1_ddr4_bg),
        .c1_ddr4_ck_c(c1_ddr4_ck_c),
        .c1_ddr4_ck_t(c1_ddr4_ck_t),
        .c1_ddr4_cke(c1_ddr4_cke),
        .c1_ddr4_cs_n(c1_ddr4_cs_n),
        .c1_ddr4_par(c1_ddr4_par),
        .c1_ddr4_dq(c1_ddr4_dq),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t),
        .c1_ddr4_odt(c1_ddr4_odt),
        .c1_ddr4_reset_n(c1_ddr4_reset_n),
        .c1_init_calib_complete(c1_init_calib_complete),
        .c0_init_calib_complete(c0_init_calib_complete),
        .c2_init_calib_complete(c2_init_calib_complete),
        .c3_init_calib_complete(c3_init_calib_complete),
        .clk_out_125M(clk_out_125M),
        .clk_out_250M(clk_out_250M),
        .clk_out_300M(clk_out_300M),
        .clk_out_400M(clk_out_400M),
        .clk_out_PROG(clk_out_PROG),
        .MIG_1_RST(MIG_1_RST), // From THin SHell
        .sys_rst_n(perstn_in),
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
  .s_axis_rq_tvalid(s_axis_rq_tvalid),
  .iiC_scl_i(iiC_scl_i),
  .iiC_scl_o(iiC_scl_o),
  .iiC_scl_t(iiC_scl_t),
  .iiC_sda_i(iiC_sda_i),
  .iiC_sda_o(iiC_sda_o),
  .iiC_sda_t(iiC_sda_t),
  .user_clk(user_clk),
  .user_lnk_up(user_lnk_up),
  .user_reset(user_reset));


  //dynamic_region U_dynamic_region (
dynamic_region U_dynamic_region (
        .AXI_RESET_N(axi_reset_n_out),
        .rst_main_n(rst_main_n),
        .CLK_IN_250M(clk_out_250M),
        .CLK_IN_125M(clk_out_125M),
        .CLK_IN_300M(clk_out_300M),
        .CLK_IN_400M(clk_out_400M),
        .CLK_IN_PROG(clk_out_PROG),
        .c1_init_calib_complete(c1_init_calib_complete),
        .start_devDNA_read(start_devDNA_read),
        .ser_devDNA_out(ser_devDNA_out),
        .ser_devDNA_out_valid(ser_devDNA_out_valid),
        .c0_sys_clk_n(c0_sys_clk_n),
        .c0_sys_clk_p(c0_sys_clk_p),
        .c2_sys_clk_n(c2_sys_clk_n),
        .c2_sys_clk_p(c2_sys_clk_p),
        .c3_sys_clk_n(c3_sys_clk_n),
        .c3_sys_clk_p(c3_sys_clk_p),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_par(c0_ddr4_par),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_init_calib_complete(c0_init_calib_complete),
        .c0_ddr4_app_mem_init_skip(c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(c0_ddr4_app_restore_complete),
        .c0_ddr4_app_sref_ack(c0_ddr4_app_sref_ack),
        .c0_ddr4_app_sref_req(c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select),
        .c2_ddr4_act_n(c2_ddr4_act_n),
        .c2_ddr4_adr(c2_ddr4_adr),
        .c2_ddr4_ba(c2_ddr4_ba),
        .c2_ddr4_bg(c2_ddr4_bg),
        .c2_ddr4_ck_c(c2_ddr4_ck_c),
        .c2_ddr4_ck_t(c2_ddr4_ck_t),
        .c2_ddr4_cke(c2_ddr4_cke),
        .c2_ddr4_cs_n(c2_ddr4_cs_n),
        .c2_ddr4_dq(c2_ddr4_dq),
        .c2_ddr4_dqs_c(c2_ddr4_dqs_c),
        .c2_ddr4_dqs_t(c2_ddr4_dqs_t),
        .c2_ddr4_odt(c2_ddr4_odt),
        .c2_ddr4_par(c2_ddr4_par),
        .c2_ddr4_reset_n(c2_ddr4_reset_n),
        .c2_init_calib_complete(c2_init_calib_complete),
        .c2_ddr4_app_mem_init_skip(c2_ddr4_app_mem_init_skip),
        .c2_ddr4_app_restore_complete(c2_ddr4_app_restore_complete),
        .c2_ddr4_app_sref_ack(c2_ddr4_app_sref_ack),
        .c2_ddr4_app_sref_req(c2_ddr4_app_sref_req),
        .c2_ddr4_app_xsdb_select(c2_ddr4_app_xsdb_select),
        .c3_ddr4_act_n(c3_ddr4_act_n),
        .c3_ddr4_adr(c3_ddr4_adr),
        .c3_ddr4_ba(c3_ddr4_ba),
        .c3_ddr4_bg(c3_ddr4_bg),
        .c3_ddr4_ck_c(c3_ddr4_ck_c),
        .c3_ddr4_ck_t(c3_ddr4_ck_t),
        .c3_ddr4_cke(c3_ddr4_cke),
        .c3_ddr4_cs_n(c3_ddr4_cs_n),
        .c3_ddr4_dq(c3_ddr4_dq),
        .c3_ddr4_dqs_c(c3_ddr4_dqs_c),
        .c3_ddr4_dqs_t(c3_ddr4_dqs_t),
        .c3_ddr4_odt(c3_ddr4_odt),
        .c3_ddr4_par(c3_ddr4_par),
        .c3_ddr4_reset_n(c3_ddr4_reset_n),
        .c3_init_calib_complete(c3_init_calib_complete),
        .c3_ddr4_app_mem_init_skip(c3_ddr4_app_mem_init_skip),
        .c3_ddr4_app_restore_complete(c3_ddr4_app_restore_complete),
        .c3_ddr4_app_sref_ack(c3_ddr4_app_sref_ack),
        .c3_ddr4_app_sref_req(c3_ddr4_app_sref_req),
        .c3_ddr4_app_xsdb_select(c3_ddr4_app_xsdb_select),
        .sys_rst_ddr_0(MIG_0_RST),
        .sys_rst_ddr_2(MIG_2_RST),
        .sys_rst_ddr_3(MIG_3_RST),
        .M_AXI_NORTH_TO_STATIC(AXI_MM_TO_SHELL_MIG.master),
        .M_AXI_MM_PCIM(AXI_MM_TO_SHELL_PCIM.master),
        .S_AXI_LITE_FROM_STATIC(M_AXI_LITE_TO_HLS_PR.slave)
        );

 debug_bridge_PR U_debug_bridge_PR (
   .clk(clk_out_125M),                                // input wire clk
   .S_BSCAN_bscanid_en(S_BSCAN_bscanid_en),  // input wire s_bscan_bscanid_en
   .S_BSCAN_capture(S_BSCAN_capture),        // input wire s_bscan_capture
   .S_BSCAN_drck(S_BSCAN_drck),              // input wire s_bscan_drck
   .S_BSCAN_reset(S_BSCAN_reset),            // input wire s_bscan_reset
   .S_BSCAN_runtest(S_BSCAN_runtest),        // input wire s_bscan_runtest
   .S_BSCAN_sel(S_BSCAN_sel),                // input wire s_bscan_sel
   .S_BSCAN_shift(S_BSCAN_shift),            // input wire s_bscan_shift
   .S_BSCAN_tck(S_BSCAN_tck),                // input wire s_bscan_tck
   .S_BSCAN_tdi(S_BSCAN_tdi),                // input wire s_bscan_tdi
   .S_BSCAN_tdo(S_BSCAN_tdo),                // output wire s_bscan_tdo
   .S_BSCAN_tms(S_BSCAN_tms),                // input wire s_bscan_tms
   .S_BSCAN_update(S_BSCAN_update)          // input wire s_bscan_update
 );

endmodule
