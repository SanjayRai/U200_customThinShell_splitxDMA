  module PR_decoupler (
  input PR_DECOUPLE,
  input [1:0]i_cfg_current_speed,
  input i_cfg_err_cor_out,
  input i_cfg_err_fatal_out,
  input i_cfg_err_nonfatal_out,
  input [15:0]i_cfg_function_status,
  input [4:0]i_cfg_local_error_out,
  input [5:0]i_cfg_ltssm_state,
  input [1:0]i_cfg_max_payload,
  input [2:0]i_cfg_max_read_req,
  input [2:0]i_cfg_negotiated_width,
  input i_cfg_phy_link_down,
  input [1:0]i_cfg_phy_link_status,
  input i_cfg_pl_status_change,
  input [511:0]i_m_axis_cq_tdata,
  input [15:0]i_m_axis_cq_tkeep,
  input i_m_axis_cq_tlast,
  output o_m_axis_cq_tready,
  input [182:0]i_m_axis_cq_tuser,
  input i_m_axis_cq_tvalid,
  input [511:0]i_m_axis_rc_tdata,
  input [15:0]i_m_axis_rc_tkeep,
  input i_m_axis_rc_tlast,
  output o_m_axis_rc_tready,
  input [160:0]i_m_axis_rc_tuser,
  input i_m_axis_rc_tvalid,
  output [1:0]o_m_pcie_cq_np_req,
  output [7:0]o_pcie4_cfg_control_ds_bus_number,
  output [4:0]o_pcie4_cfg_control_ds_device_number,
  output [7:0]o_pcie4_cfg_control_ds_port_number,
  output [63:0]o_pcie4_cfg_control_dsn,
  output o_pcie4_cfg_control_err_cor_in,
  output o_pcie4_cfg_control_err_uncor_in,
  output [3:0]o_pcie4_cfg_control_flr_done,
  input [3:0]i_pcie4_cfg_control_flr_in_process,
  input i_pcie4_cfg_control_hot_reset_out,
  output o_pcie4_cfg_control_link_training_enable,
  input [251:0]i_pcie4_cfg_control_vf_flr_in_process,
  input [7:0]i_pcie4_cfg_fc_nph,
  output [2:0]o_pcie4_cfg_fc_sel,
  output [3:0]o_pcie4_cfg_interrupt_intx_vector,
  output [3:0]o_pcie4_cfg_interrupt_pending,
  input i_pcie4_cfg_interrupt_sent,
  input i_pcie4_cfg_mesg_rcvd_recd,
  input [7:0]i_pcie4_cfg_mesg_rcvd_recd_data,
  input [4:0]i_pcie4_cfg_mesg_rcvd_recd_type,
  output o_pcie4_cfg_mesg_tx_transmit,
  output [31:0]o_pcie4_cfg_mesg_tx_transmit_data,
  input i_pcie4_cfg_mesg_tx_transmit_done,
  output [2:0]o_pcie4_cfg_mesg_tx_transmit_type,
  output [9:0]o_pcie4_cfg_mgmt_addr,
  output [3:0]o_pcie4_cfg_mgmt_byte_en,
  output o_pcie4_cfg_mgmt_debug_access,
  output [7:0]o_pcie4_cfg_mgmt_function_number,
  input [31:0]i_pcie4_cfg_mgmt_read_data,
  output o_pcie4_cfg_mgmt_read_en,
  input i_pcie4_cfg_mgmt_read_write_done,
  output [31:0]o_pcie4_cfg_mgmt_write_data,
  output o_pcie4_cfg_mgmt_write_en,
  output [2:0]o_pcie4_cfg_msi_attr,
  input [31:0]i_pcie4_cfg_msi_data,
  input [3:0]i_pcie4_cfg_msi_enable,
  input i_pcie4_cfg_msi_fail,
  output [7:0]o_pcie4_cfg_msi_function_number,
  output [31:0]o_pcie4_cfg_msi_int_vector,
  input i_pcie4_cfg_msi_mask_update,
  output [31:0]o_pcie4_cfg_msi_pending_status,
  output o_pcie4_cfg_msi_pending_status_data_enable,
  output [3:0]o_pcie4_cfg_msi_pending_status_function_num,
  input i_pcie4_cfg_msi_sent,
  output o_pcie4_cfg_msi_tph_present,
  output [8:0]o_pcie4_cfg_msi_tph_st_tag,
  output [1:0]o_pcie4_cfg_msi_tph_type,
  input [5:0]i_pcie_cq_np_req_count,
  input [5:0]i_pcie_rq_seq_num0,
  input [5:0]i_pcie_rq_seq_num1,
  input i_pcie_rq_seq_num_vld0,
  input i_pcie_rq_seq_num_vld1,
  input i_phy_rdy_out,
  output [511:0]o_s_axis_cc_tdata,
  output [15:0]o_s_axis_cc_tkeep,
  output o_s_axis_cc_tlast,
  input i_s_axis_cc_tready,
  output [80:0]o_s_axis_cc_tuser,
  output o_s_axis_cc_tvalid,
  output [511:0]o_s_axis_rq_tdata,
  output [15:0]o_s_axis_rq_tkeep,
  output o_s_axis_rq_tlast,
  input [3:0]i_s_axis_rq_tready,
  output [136:0]o_s_axis_rq_tuser,
  output o_s_axis_rq_tvalid,

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
  input s_axis_rq_tvalid
  );


  assign cfg_current_speed = i_cfg_current_speed;
  assign cfg_err_cor_out = i_cfg_err_cor_out;
  assign cfg_err_fatal_out = i_cfg_err_fatal_out;
  assign cfg_err_nonfatal_out = i_cfg_err_nonfatal_out;
  assign cfg_function_status = i_cfg_function_status;
  assign cfg_local_error_out = i_cfg_local_error_out;
  assign cfg_ltssm_state = i_cfg_ltssm_state;
  assign cfg_max_payload = i_cfg_max_payload;
  assign cfg_max_read_req = i_cfg_max_read_req;
  assign cfg_negotiated_width = i_cfg_negotiated_width;
  assign cfg_phy_link_down = i_cfg_phy_link_down;
  assign cfg_phy_link_status = i_cfg_phy_link_status;
  assign cfg_pl_status_change = i_cfg_pl_status_change;
  assign m_axis_cq_tdata = i_m_axis_cq_tdata;
  assign m_axis_cq_tkeep = i_m_axis_cq_tkeep;
  assign m_axis_cq_tlast = i_m_axis_cq_tlast;
  assign m_axis_cq_tuser = i_m_axis_cq_tuser;
  assign m_axis_cq_tvalid = i_m_axis_cq_tvalid;
  assign m_axis_rc_tdata = i_m_axis_rc_tdata;
  assign m_axis_rc_tkeep = i_m_axis_rc_tkeep;
  assign m_axis_rc_tlast = i_m_axis_rc_tlast;
  assign m_axis_rc_tuser = i_m_axis_rc_tuser;
  assign m_axis_rc_tvalid = i_m_axis_rc_tvalid;
  assign pcie4_cfg_control_flr_in_process = i_pcie4_cfg_control_flr_in_process;
  assign pcie4_cfg_control_hot_reset_out = i_pcie4_cfg_control_hot_reset_out;
  assign pcie4_cfg_control_vf_flr_in_process = i_pcie4_cfg_control_vf_flr_in_process;
  assign pcie4_cfg_fc_nph = i_pcie4_cfg_fc_nph;
  assign pcie4_cfg_interrupt_sent = i_pcie4_cfg_interrupt_sent;
  assign pcie4_cfg_mesg_rcvd_recd = i_pcie4_cfg_mesg_rcvd_recd;
  assign pcie4_cfg_mesg_rcvd_recd_data = i_pcie4_cfg_mesg_rcvd_recd_data;
  assign pcie4_cfg_mesg_rcvd_recd_type = i_pcie4_cfg_mesg_rcvd_recd_type;
  assign pcie4_cfg_mesg_tx_transmit_done = i_pcie4_cfg_mesg_tx_transmit_done;
  assign pcie4_cfg_mgmt_read_data = i_pcie4_cfg_mgmt_read_data;
  assign pcie4_cfg_mgmt_read_write_done = i_pcie4_cfg_mgmt_read_write_done;
  assign pcie4_cfg_msi_data = i_pcie4_cfg_msi_data;
  assign pcie4_cfg_msi_enable = i_pcie4_cfg_msi_enable;
  assign pcie4_cfg_msi_fail = i_pcie4_cfg_msi_fail;
  assign pcie4_cfg_msi_mask_update = i_pcie4_cfg_msi_mask_update;
  assign pcie4_cfg_msi_sent = i_pcie4_cfg_msi_sent;
  assign pcie_cq_np_req_count = i_pcie_cq_np_req_count;
  assign pcie_rq_seq_num0 = i_pcie_rq_seq_num0;
  assign pcie_rq_seq_num1 = i_pcie_rq_seq_num1;
  assign pcie_rq_seq_num_vld0 = i_pcie_rq_seq_num_vld0;
  assign pcie_rq_seq_num_vld1 = i_pcie_rq_seq_num_vld1;
  assign phy_rdy_out = i_phy_rdy_out;
  assign s_axis_cc_tready = i_s_axis_cc_tready;
  assign s_axis_rq_tready = i_s_axis_rq_tready;


  assign o_m_axis_cq_tready = PR_DECOUPLE ? 1'b0 :  m_axis_cq_tready;
  assign o_m_axis_rc_tready = PR_DECOUPLE ? 1'b0 : m_axis_rc_tready;
  assign o_m_pcie_cq_np_req = PR_DECOUPLE ? 2'd0 : m_pcie_cq_np_req;
  assign o_pcie4_cfg_control_ds_bus_number = PR_DECOUPLE ? 8'd0 : pcie4_cfg_control_ds_bus_number;
  assign o_pcie4_cfg_control_ds_device_number = PR_DECOUPLE ? 5'd0 : pcie4_cfg_control_ds_device_number;
  assign o_pcie4_cfg_control_ds_port_number = PR_DECOUPLE ? 8'd0 : pcie4_cfg_control_ds_port_number;
  assign o_pcie4_cfg_control_dsn = PR_DECOUPLE ? 64'd0 : pcie4_cfg_control_dsn;
  assign o_pcie4_cfg_control_err_cor_in = PR_DECOUPLE ? 1'b0  : pcie4_cfg_control_err_cor_in;
  assign o_pcie4_cfg_control_err_uncor_in = PR_DECOUPLE ? 1'b0  : pcie4_cfg_control_err_uncor_in;
  assign o_pcie4_cfg_control_flr_done = PR_DECOUPLE ? 4'd0 : pcie4_cfg_control_flr_done;
  assign o_pcie4_cfg_control_link_training_enable = PR_DECOUPLE ? 1'b0  : pcie4_cfg_control_link_training_enable;
  assign o_pcie4_cfg_fc_sel = PR_DECOUPLE ? 3'd0 : pcie4_cfg_fc_sel;
  assign o_pcie4_cfg_interrupt_intx_vector = PR_DECOUPLE ? 4'd0 : pcie4_cfg_interrupt_intx_vector;
  assign o_pcie4_cfg_interrupt_pending = PR_DECOUPLE ? 4'd0 : pcie4_cfg_interrupt_pending;
  assign o_pcie4_cfg_mesg_tx_transmit = PR_DECOUPLE ? 1'b0  : pcie4_cfg_mesg_tx_transmit;
  assign o_pcie4_cfg_mesg_tx_transmit_data = PR_DECOUPLE ? 32'd0 : pcie4_cfg_mesg_tx_transmit_data;
  assign o_pcie4_cfg_mesg_tx_transmit_type = PR_DECOUPLE ? 3'd0 : pcie4_cfg_mesg_tx_transmit_type;
  assign o_pcie4_cfg_mgmt_addr = PR_DECOUPLE ? 10'd0 : pcie4_cfg_mgmt_addr;
  assign o_pcie4_cfg_mgmt_byte_en = PR_DECOUPLE ? 4'd0 : pcie4_cfg_mgmt_byte_en;
  assign o_pcie4_cfg_mgmt_debug_access = PR_DECOUPLE ? 1'b0  : pcie4_cfg_mgmt_debug_access;
  assign o_pcie4_cfg_mgmt_function_number = PR_DECOUPLE ? 8'd0 : pcie4_cfg_mgmt_function_number;
  assign o_pcie4_cfg_mgmt_read_en = PR_DECOUPLE ? 1'b0  : pcie4_cfg_mgmt_read_en;
  assign o_pcie4_cfg_mgmt_write_data = PR_DECOUPLE ? 32'd0 : pcie4_cfg_mgmt_write_data;
  assign o_pcie4_cfg_mgmt_write_en = PR_DECOUPLE ? 1'b0  : pcie4_cfg_mgmt_write_en;
  assign o_pcie4_cfg_msi_attr = PR_DECOUPLE ? 3'd0 : pcie4_cfg_msi_attr;
  assign o_pcie4_cfg_msi_function_number = PR_DECOUPLE ? 8'd0 : pcie4_cfg_msi_function_number;
  assign o_pcie4_cfg_msi_int_vector = PR_DECOUPLE ? 32'd0 : pcie4_cfg_msi_int_vector;
  assign o_pcie4_cfg_msi_pending_status = PR_DECOUPLE ? 32'd0 : pcie4_cfg_msi_pending_status;
  assign o_pcie4_cfg_msi_pending_status_data_enable = PR_DECOUPLE ? 1'b0  : pcie4_cfg_msi_pending_status_data_enable;
  assign o_pcie4_cfg_msi_pending_status_function_num = PR_DECOUPLE ? 4'd0 : pcie4_cfg_msi_pending_status_function_num;
  assign o_pcie4_cfg_msi_tph_present = PR_DECOUPLE ? 1'b0  : pcie4_cfg_msi_tph_present;
  assign o_pcie4_cfg_msi_tph_st_tag = PR_DECOUPLE ? 9'd0 : pcie4_cfg_msi_tph_st_tag;
  assign o_pcie4_cfg_msi_tph_type = PR_DECOUPLE ? 2'd0 : pcie4_cfg_msi_tph_type;
  assign o_s_axis_cc_tdata = PR_DECOUPLE ? 512'd0 : s_axis_cc_tdata;
  assign o_s_axis_cc_tkeep = PR_DECOUPLE ? 16'd0 : s_axis_cc_tkeep;
  assign o_s_axis_cc_tlast = PR_DECOUPLE ? 1'b0  : s_axis_cc_tlast;
  assign o_s_axis_cc_tuser = PR_DECOUPLE ? 81'd0 : s_axis_cc_tuser;
  assign o_s_axis_cc_tvalid = PR_DECOUPLE ? 1'b0  : s_axis_cc_tvalid;
  assign o_s_axis_rq_tdata = PR_DECOUPLE ? 512'd0 : s_axis_rq_tdata;
  assign o_s_axis_rq_tkeep = PR_DECOUPLE ? 16'd0 : s_axis_rq_tkeep;
  assign o_s_axis_rq_tlast = PR_DECOUPLE ? 1'b0  : s_axis_rq_tlast;
  assign o_s_axis_rq_tuser = PR_DECOUPLE ? 137'd0 : s_axis_rq_tuser;
  assign o_s_axis_rq_tvalid = PR_DECOUPLE ? 1'b0  : s_axis_rq_tvalid;

  endmodule
