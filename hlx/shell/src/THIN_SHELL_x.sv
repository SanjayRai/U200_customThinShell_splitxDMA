module THIN_SHELL_x
   (DEVICE_DNA_A_tri_i,
    DEVICE_DNA_B_tri_i,
    DEVICE_DNA_C_tri_i,
    DEVICE_DNA_D_tri_i,
    EFUSE_i_tri_i,
    PCIE_USR_CLK_DIV4_62_5MHz,
    PR_DECOUPLE,
    RESET_GATE,
    SHELL_TO_CL_RST,
    SHELL_VER_i_tri_i,
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
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
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
    sys_clk,
    sys_clk_gt,
    sys_rst_n,
    user_clk,
    user_lnk_up,
    user_reset);
  input [31:0]DEVICE_DNA_A_tri_i;
  input [31:0]DEVICE_DNA_B_tri_i;
  input [31:0]DEVICE_DNA_C_tri_i;
  input [31:0]DEVICE_DNA_D_tri_i;
  input [31:0]EFUSE_i_tri_i;
  output [0:0]PCIE_USR_CLK_DIV4_62_5MHz;
  output [0:0]PR_DECOUPLE;
  output [0:0]RESET_GATE;
  output [3:0]SHELL_TO_CL_RST;
  input [31:0]SHELL_VER_i_tri_i;
  output [1:0]cfg_current_speed;
  output cfg_err_cor_out;
  output cfg_err_fatal_out;
  output cfg_err_nonfatal_out;
  output [15:0]cfg_function_status;
  output [4:0]cfg_local_error_out;
  output [5:0]cfg_ltssm_state;
  output [1:0]cfg_max_payload;
  output [2:0]cfg_max_read_req;
  output [2:0]cfg_negotiated_width;
  output cfg_phy_link_down;
  output [1:0]cfg_phy_link_status;
  output cfg_pl_status_change;
  output [511:0]m_axis_cq_tdata;
  output [15:0]m_axis_cq_tkeep;
  output m_axis_cq_tlast;
  input m_axis_cq_tready;
  output [182:0]m_axis_cq_tuser;
  output m_axis_cq_tvalid;
  output [511:0]m_axis_rc_tdata;
  output [15:0]m_axis_rc_tkeep;
  output m_axis_rc_tlast;
  input m_axis_rc_tready;
  output [160:0]m_axis_rc_tuser;
  output m_axis_rc_tvalid;
  input [1:0]m_pcie_cq_np_req;
  input [7:0]pcie4_cfg_control_ds_bus_number;
  input [4:0]pcie4_cfg_control_ds_device_number;
  input [7:0]pcie4_cfg_control_ds_port_number;
  input [63:0]pcie4_cfg_control_dsn;
  input pcie4_cfg_control_err_cor_in;
  input pcie4_cfg_control_err_uncor_in;
  input [3:0]pcie4_cfg_control_flr_done;
  output [3:0]pcie4_cfg_control_flr_in_process;
  output pcie4_cfg_control_hot_reset_out;
  input pcie4_cfg_control_link_training_enable;
  output [251:0]pcie4_cfg_control_vf_flr_in_process;
  output [7:0]pcie4_cfg_fc_nph;
  input [2:0]pcie4_cfg_fc_sel;
  input [3:0]pcie4_cfg_interrupt_intx_vector;
  input [3:0]pcie4_cfg_interrupt_pending;
  output pcie4_cfg_interrupt_sent;
  output pcie4_cfg_mesg_rcvd_recd;
  output [7:0]pcie4_cfg_mesg_rcvd_recd_data;
  output [4:0]pcie4_cfg_mesg_rcvd_recd_type;
  input pcie4_cfg_mesg_tx_transmit;
  input [31:0]pcie4_cfg_mesg_tx_transmit_data;
  output pcie4_cfg_mesg_tx_transmit_done;
  input [2:0]pcie4_cfg_mesg_tx_transmit_type;
  input [9:0]pcie4_cfg_mgmt_addr;
  input [3:0]pcie4_cfg_mgmt_byte_en;
  input pcie4_cfg_mgmt_debug_access;
  input [7:0]pcie4_cfg_mgmt_function_number;
  output [31:0]pcie4_cfg_mgmt_read_data;
  input pcie4_cfg_mgmt_read_en;
  output pcie4_cfg_mgmt_read_write_done;
  input [31:0]pcie4_cfg_mgmt_write_data;
  input pcie4_cfg_mgmt_write_en;
  input [2:0]pcie4_cfg_msi_attr;
  output [31:0]pcie4_cfg_msi_data;
  output [3:0]pcie4_cfg_msi_enable;
  output pcie4_cfg_msi_fail;
  input [7:0]pcie4_cfg_msi_function_number;
  input [31:0]pcie4_cfg_msi_int_vector;
  output pcie4_cfg_msi_mask_update;
  input [31:0]pcie4_cfg_msi_pending_status;
  input pcie4_cfg_msi_pending_status_data_enable;
  input [3:0]pcie4_cfg_msi_pending_status_function_num;
  output pcie4_cfg_msi_sent;
  input pcie4_cfg_msi_tph_present;
  input [8:0]pcie4_cfg_msi_tph_st_tag;
  input [1:0]pcie4_cfg_msi_tph_type;
  output [5:0]pcie_cq_np_req_count;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  output [5:0]pcie_rq_seq_num0;
  output [5:0]pcie_rq_seq_num1;
  output pcie_rq_seq_num_vld0;
  output pcie_rq_seq_num_vld1;
  output phy_rdy_out;
  input [511:0]s_axis_cc_tdata;
  input [15:0]s_axis_cc_tkeep;
  input s_axis_cc_tlast;
  output s_axis_cc_tready;
  input [80:0]s_axis_cc_tuser;
  input s_axis_cc_tvalid;
  input [511:0]s_axis_rq_tdata;
  input [15:0]s_axis_rq_tkeep;
  input s_axis_rq_tlast;
  output [3:0]s_axis_rq_tready;
  input [136:0]s_axis_rq_tuser;
  input s_axis_rq_tvalid;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;
  output user_clk;
  output user_lnk_up;
  output user_reset;

  wire [511:0]DBG_axiltap_0_M_AXIS_PCIE_CC_TDATA;
  wire [15:0]DBG_axiltap_0_M_AXIS_PCIE_CC_TKEEP;
  wire DBG_axiltap_0_M_AXIS_PCIE_CC_TLAST;
  wire [3:0]DBG_axiltap_0_M_AXIS_PCIE_CC_TREADY;
  wire [80:0]DBG_axiltap_0_M_AXIS_PCIE_CC_TUSER;
  wire DBG_axiltap_0_M_AXIS_PCIE_CC_TVALID;
  wire [511:0]DBG_axiltap_0_M_AXIS_PCIE_CQ_TDATA;
  wire [15:0]DBG_axiltap_0_M_AXIS_PCIE_CQ_TKEEP;
  wire DBG_axiltap_0_M_AXIS_PCIE_CQ_TLAST;
  wire DBG_axiltap_0_M_AXIS_PCIE_CQ_TREADY;
  wire [182:0]DBG_axiltap_0_M_AXIS_PCIE_CQ_TUSER;
  wire DBG_axiltap_0_M_AXIS_PCIE_CQ_TVALID;
  wire [31:0]DEVICE_DNA_A_TRI_I;
  wire [31:0]DEVICE_DNA_B_TRI_I;
  wire [31:0]DEVICE_DNA_C_TRI_I;
  wire [31:0]DEVICE_DNA_D_TRI_I;
  wire [31:0]EFUSE_i_TRI_I;
  wire [0:0]PCIE_USR_CLK_DIV4_62_5MHz;
  wire [0:0]PR_DECOUPLE;
  wire [0:0]RESET_GATE;
  wire [3:0]SHELL_TO_CL_RST;
  wire [31:0]SHELL_VER_i_TRI_I;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTB_EN;
  wire axi_bram_ctrl_1_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTB_WE;
  wire axi_hwicap_0_icap_csib;
  wire [31:0]axi_hwicap_0_icap_o;
  wire axi_hwicap_0_icap_rdwrb;
  wire [511:0]axiltap_0_M_AXIS_BYPASS_CQ_TDATA;
  wire [15:0]axiltap_0_M_AXIS_BYPASS_CQ_TKEEP;
  wire axiltap_0_M_AXIS_BYPASS_CQ_TLAST;
  wire axiltap_0_M_AXIS_BYPASS_CQ_TREADY;
  wire [182:0]axiltap_0_M_AXIS_BYPASS_CQ_TUSER;
  wire axiltap_0_M_AXIS_BYPASS_CQ_TVALID;
  wire [31:0]axiltap_0_M_AXI_ARADDR;
  wire [2:0]axiltap_0_M_AXI_ARPROT;
  wire axiltap_0_M_AXI_ARREADY;
  wire axiltap_0_M_AXI_ARVALID;
  wire [31:0]axiltap_0_M_AXI_AWADDR;
  wire [2:0]axiltap_0_M_AXI_AWPROT;
  wire axiltap_0_M_AXI_AWREADY;
  wire axiltap_0_M_AXI_AWVALID;
  wire axiltap_0_M_AXI_BREADY;
  wire [1:0]axiltap_0_M_AXI_BRESP;
  wire axiltap_0_M_AXI_BVALID;
  wire [31:0]axiltap_0_M_AXI_RDATA;
  wire axiltap_0_M_AXI_RREADY;
  wire [1:0]axiltap_0_M_AXI_RRESP;
  wire axiltap_0_M_AXI_RVALID;
  wire [31:0]axiltap_0_M_AXI_WDATA;
  wire axiltap_0_M_AXI_WREADY;
  wire [3:0]axiltap_0_M_AXI_WSTRB;
  wire axiltap_0_M_AXI_WVALID;
  wire [12:0]axiltap_M_AXI_ARADDR;
  wire [2:0]axiltap_M_AXI_ARPROT;
  wire axiltap_M_AXI_ARREADY;
  wire axiltap_M_AXI_ARVALID;
  wire [12:0]axiltap_M_AXI_AWADDR;
  wire [2:0]axiltap_M_AXI_AWPROT;
  wire axiltap_M_AXI_AWREADY;
  wire axiltap_M_AXI_AWVALID;
  wire axiltap_M_AXI_BREADY;
  wire [1:0]axiltap_M_AXI_BRESP;
  wire axiltap_M_AXI_BVALID;
  wire [31:0]axiltap_M_AXI_RDATA;
  wire axiltap_M_AXI_RREADY;
  wire [1:0]axiltap_M_AXI_RRESP;
  wire axiltap_M_AXI_RVALID;
  wire [31:0]axiltap_M_AXI_WDATA;
  wire axiltap_M_AXI_WREADY;
  wire [3:0]axiltap_M_AXI_WSTRB;
  wire axiltap_M_AXI_WVALID;
  wire [1:0]credit_handler_0_m_cfg_current_speed;
  wire credit_handler_0_m_cfg_err_cor_out;
  wire credit_handler_0_m_cfg_err_fatal_out;
  wire credit_handler_0_m_cfg_err_nonfatal_out;
  wire [15:0]credit_handler_0_m_cfg_function_status;
  wire [4:0]credit_handler_0_m_cfg_local_error_out;
  wire [5:0]credit_handler_0_m_cfg_ltssm_state;
  wire [1:0]credit_handler_0_m_cfg_max_payload;
  wire [2:0]credit_handler_0_m_cfg_max_read_req;
  wire [2:0]credit_handler_0_m_cfg_negotiated_width;
  wire credit_handler_0_m_cfg_phy_link_down;
  wire [1:0]credit_handler_0_m_cfg_phy_link_status;
  wire credit_handler_0_m_cfg_pl_status_change;
  wire [5:0]credit_handler_0_m_pcie_cq_np_req_count;
  wire [5:0]credit_handler_0_m_pcie_rq_seq_num0;
  wire [5:0]credit_handler_0_m_pcie_rq_seq_num1;
  wire credit_handler_0_m_pcie_rq_seq_num_vld0;
  wire credit_handler_0_m_pcie_rq_seq_num_vld1;
  wire [1:0]credit_handler_0_s_pcie_cq_np_req;
  wire [1:0]pcie4_uscale_plus_0_cfg_current_speed;
  wire pcie4_uscale_plus_0_cfg_err_cor_out;
  wire pcie4_uscale_plus_0_cfg_err_fatal_out;
  wire pcie4_uscale_plus_0_cfg_err_nonfatal_out;
  wire [15:0]pcie4_uscale_plus_0_cfg_function_status;
  wire [4:0]pcie4_uscale_plus_0_cfg_local_error_out;
  wire [5:0]pcie4_uscale_plus_0_cfg_ltssm_state;
  wire [1:0]pcie4_uscale_plus_0_cfg_max_payload;
  wire [2:0]pcie4_uscale_plus_0_cfg_max_read_req;
  wire [2:0]pcie4_uscale_plus_0_cfg_negotiated_width;
  wire pcie4_uscale_plus_0_cfg_phy_link_down;
  wire [1:0]pcie4_uscale_plus_0_cfg_phy_link_status;
  wire pcie4_uscale_plus_0_cfg_pl_status_change;
  wire [511:0]pcie4_uscale_plus_0_m_axis_rc_TDATA;
  wire [15:0]pcie4_uscale_plus_0_m_axis_rc_TKEEP;
  wire pcie4_uscale_plus_0_m_axis_rc_TLAST;
  wire pcie4_uscale_plus_0_m_axis_rc_TREADY;
  wire [160:0]pcie4_uscale_plus_0_m_axis_rc_TUSER;
  wire pcie4_uscale_plus_0_m_axis_rc_TVALID;
  wire [7:0]pcie4_uscale_plus_0_pcie4_cfg_fc_NPH;
  wire [2:0]pcie4_uscale_plus_0_pcie4_cfg_fc_SEL;
  wire pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd;
  wire [7:0]pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd_data;
  wire [4:0]pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd_type;
  wire pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT;
  wire [31:0]pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_DATA;
  wire pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_DONE;
  wire [2:0]pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_TYPE;
  wire [15:0]pcie4_uscale_plus_0_pcie4_mgt_rxn;
  wire [15:0]pcie4_uscale_plus_0_pcie4_mgt_rxp;
  wire [15:0]pcie4_uscale_plus_0_pcie4_mgt_txn;
  wire [15:0]pcie4_uscale_plus_0_pcie4_mgt_txp;
  wire [5:0]pcie4_uscale_plus_0_pcie_cq_np_req_count;
  wire [5:0]pcie4_uscale_plus_0_pcie_rq_seq_num0;
  wire [5:0]pcie4_uscale_plus_0_pcie_rq_seq_num1;
  wire pcie4_uscale_plus_0_pcie_rq_seq_num_vld0;
  wire pcie4_uscale_plus_0_pcie_rq_seq_num_vld1;
  wire pcie4_uscale_plus_0_phy_rdy_out;
  wire pcie4_uscale_plus_0_user_clk1;
  wire pcie4_uscale_plus_0_user_lnk_up;
  wire pcie4_uscale_plus_0_user_reset;
  wire pr_icap_0_icap_avail;
  wire [31:0]pr_icap_0_icap_dout;
  wire [3:0]pr_icap_0_icap_pr_status;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [8:0]smartconnect_0_M01_AXI_ARADDR;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [8:0]smartconnect_0_M01_AXI_AWADDR;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [8:0]smartconnect_0_M02_AXI_ARADDR;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [8:0]smartconnect_0_M02_AXI_AWADDR;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [6:0]smartconnect_0_M03_AXI_ARADDR;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [6:0]smartconnect_0_M03_AXI_AWADDR;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [12:0]smartconnect_0_M04_AXI_ARADDR;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [12:0]smartconnect_0_M04_AXI_AWADDR;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [31:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [3:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [8:0]smartconnect_0_M05_AXI_ARADDR;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [8:0]smartconnect_0_M05_AXI_AWADDR;
  wire smartconnect_0_M05_AXI_AWREADY;
  wire smartconnect_0_M05_AXI_AWVALID;
  wire smartconnect_0_M05_AXI_BREADY;
  wire [1:0]smartconnect_0_M05_AXI_BRESP;
  wire smartconnect_0_M05_AXI_BVALID;
  wire [31:0]smartconnect_0_M05_AXI_RDATA;
  wire smartconnect_0_M05_AXI_RREADY;
  wire [1:0]smartconnect_0_M05_AXI_RRESP;
  wire smartconnect_0_M05_AXI_RVALID;
  wire [31:0]smartconnect_0_M05_AXI_WDATA;
  wire smartconnect_0_M05_AXI_WREADY;
  wire [3:0]smartconnect_0_M05_AXI_WSTRB;
  wire smartconnect_0_M05_AXI_WVALID;
  wire [8:0]smartconnect_0_M06_AXI_ARADDR;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [8:0]smartconnect_0_M06_AXI_AWADDR;
  wire smartconnect_0_M06_AXI_AWREADY;
  wire smartconnect_0_M06_AXI_AWVALID;
  wire smartconnect_0_M06_AXI_BREADY;
  wire [1:0]smartconnect_0_M06_AXI_BRESP;
  wire smartconnect_0_M06_AXI_BVALID;
  wire [31:0]smartconnect_0_M06_AXI_RDATA;
  wire smartconnect_0_M06_AXI_RREADY;
  wire [1:0]smartconnect_0_M06_AXI_RRESP;
  wire smartconnect_0_M06_AXI_RVALID;
  wire [31:0]smartconnect_0_M06_AXI_WDATA;
  wire smartconnect_0_M06_AXI_WREADY;
  wire [3:0]smartconnect_0_M06_AXI_WSTRB;
  wire smartconnect_0_M06_AXI_WVALID;
  wire [8:0]smartconnect_0_M07_AXI_ARADDR;
  wire smartconnect_0_M07_AXI_ARREADY;
  wire smartconnect_0_M07_AXI_ARVALID;
  wire [8:0]smartconnect_0_M07_AXI_AWADDR;
  wire smartconnect_0_M07_AXI_AWREADY;
  wire smartconnect_0_M07_AXI_AWVALID;
  wire smartconnect_0_M07_AXI_BREADY;
  wire [1:0]smartconnect_0_M07_AXI_BRESP;
  wire smartconnect_0_M07_AXI_BVALID;
  wire [31:0]smartconnect_0_M07_AXI_RDATA;
  wire smartconnect_0_M07_AXI_RREADY;
  wire [1:0]smartconnect_0_M07_AXI_RRESP;
  wire smartconnect_0_M07_AXI_RVALID;
  wire [31:0]smartconnect_0_M07_AXI_WDATA;
  wire smartconnect_0_M07_AXI_WREADY;
  wire [3:0]smartconnect_0_M07_AXI_WSTRB;
  wire smartconnect_0_M07_AXI_WVALID;
  wire [8:0]smartconnect_0_M08_AXI_ARADDR;
  wire smartconnect_0_M08_AXI_ARREADY;
  wire smartconnect_0_M08_AXI_ARVALID;
  wire [8:0]smartconnect_0_M08_AXI_AWADDR;
  wire smartconnect_0_M08_AXI_AWREADY;
  wire smartconnect_0_M08_AXI_AWVALID;
  wire smartconnect_0_M08_AXI_BREADY;
  wire [1:0]smartconnect_0_M08_AXI_BRESP;
  wire smartconnect_0_M08_AXI_BVALID;
  wire [31:0]smartconnect_0_M08_AXI_RDATA;
  wire smartconnect_0_M08_AXI_RREADY;
  wire [1:0]smartconnect_0_M08_AXI_RRESP;
  wire smartconnect_0_M08_AXI_RVALID;
  wire [31:0]smartconnect_0_M08_AXI_WDATA;
  wire smartconnect_0_M08_AXI_WREADY;
  wire [3:0]smartconnect_0_M08_AXI_WSTRB;
  wire smartconnect_0_M08_AXI_WVALID;
  wire [8:0]smartconnect_0_M09_AXI_ARADDR;
  wire smartconnect_0_M09_AXI_ARREADY;
  wire smartconnect_0_M09_AXI_ARVALID;
  wire [8:0]smartconnect_0_M09_AXI_AWADDR;
  wire smartconnect_0_M09_AXI_AWREADY;
  wire smartconnect_0_M09_AXI_AWVALID;
  wire smartconnect_0_M09_AXI_BREADY;
  wire [1:0]smartconnect_0_M09_AXI_BRESP;
  wire smartconnect_0_M09_AXI_BVALID;
  wire [31:0]smartconnect_0_M09_AXI_RDATA;
  wire smartconnect_0_M09_AXI_RREADY;
  wire [1:0]smartconnect_0_M09_AXI_RRESP;
  wire smartconnect_0_M09_AXI_RVALID;
  wire [31:0]smartconnect_0_M09_AXI_WDATA;
  wire smartconnect_0_M09_AXI_WREADY;
  wire [3:0]smartconnect_0_M09_AXI_WSTRB;
  wire smartconnect_0_M09_AXI_WVALID;
  wire [8:0]smartconnect_0_M10_AXI_ARADDR;
  wire smartconnect_0_M10_AXI_ARREADY;
  wire smartconnect_0_M10_AXI_ARVALID;
  wire [8:0]smartconnect_0_M10_AXI_AWADDR;
  wire smartconnect_0_M10_AXI_AWREADY;
  wire smartconnect_0_M10_AXI_AWVALID;
  wire smartconnect_0_M10_AXI_BREADY;
  wire [1:0]smartconnect_0_M10_AXI_BRESP;
  wire smartconnect_0_M10_AXI_BVALID;
  wire [31:0]smartconnect_0_M10_AXI_RDATA;
  wire smartconnect_0_M10_AXI_RREADY;
  wire [1:0]smartconnect_0_M10_AXI_RRESP;
  wire smartconnect_0_M10_AXI_RVALID;
  wire [31:0]smartconnect_0_M10_AXI_WDATA;
  wire smartconnect_0_M10_AXI_WREADY;
  wire [3:0]smartconnect_0_M10_AXI_WSTRB;
  wire smartconnect_0_M10_AXI_WVALID;
  wire sys_clk_1;
  wire sys_clk_gt_1;
  wire sys_rst_n_1;
  wire [7:0]xdma_0_pcie4_cfg_control_ds_bus_number;
  wire [4:0]xdma_0_pcie4_cfg_control_ds_device_number;
  wire [7:0]xdma_0_pcie4_cfg_control_ds_port_number;
  wire [63:0]xdma_0_pcie4_cfg_control_dsn;
  wire xdma_0_pcie4_cfg_control_err_cor_in;
  wire xdma_0_pcie4_cfg_control_err_uncor_in;
  wire [3:0]xdma_0_pcie4_cfg_control_flr_done;
  wire [3:0]xdma_0_pcie4_cfg_control_flr_in_process;
  wire xdma_0_pcie4_cfg_control_hot_reset_out;
  wire xdma_0_pcie4_cfg_control_link_training_enable;
  wire [251:0]xdma_0_pcie4_cfg_control_vf_flr_in_process;
  wire [3:0]xdma_0_pcie4_cfg_interrupt_INTx_VECTOR;
  wire [3:0]xdma_0_pcie4_cfg_interrupt_PENDING;
  wire xdma_0_pcie4_cfg_interrupt_SENT;
  wire [2:0]xdma_0_pcie4_cfg_msi_attr;
  wire [31:0]xdma_0_pcie4_cfg_msi_data;
  wire [3:0]xdma_0_pcie4_cfg_msi_enable;
  wire xdma_0_pcie4_cfg_msi_fail;
  wire [7:0]xdma_0_pcie4_cfg_msi_function_number;
  wire [31:0]xdma_0_pcie4_cfg_msi_int_vector;
  wire xdma_0_pcie4_cfg_msi_mask_update;
  wire [31:0]xdma_0_pcie4_cfg_msi_pending_status;
  wire xdma_0_pcie4_cfg_msi_pending_status_data_enable;
  wire [3:0]xdma_0_pcie4_cfg_msi_pending_status_function_num;
  wire xdma_0_pcie4_cfg_msi_sent;
  wire xdma_0_pcie4_cfg_msi_tph_present;
  wire [8:0]xdma_0_pcie4_cfg_msi_tph_st_tag;
  wire [1:0]xdma_0_pcie4_cfg_msi_tph_type;
  wire [9:0]xdma_0_pcie_cfg_mgmt_sd_ADDR;
  wire [3:0]xdma_0_pcie_cfg_mgmt_sd_BYTE_EN;
  wire xdma_0_pcie_cfg_mgmt_sd_DEBUG_ACCESS;
  wire [7:0]xdma_0_pcie_cfg_mgmt_sd_FUNCTION_NUMBER;
  wire [31:0]xdma_0_pcie_cfg_mgmt_sd_READ_DATA;
  wire xdma_0_pcie_cfg_mgmt_sd_READ_EN;
  wire xdma_0_pcie_cfg_mgmt_sd_READ_WRITE_DONE;
  wire [31:0]xdma_0_pcie_cfg_mgmt_sd_WRITE_DATA;
  wire xdma_0_pcie_cfg_mgmt_sd_WRITE_EN;
  wire [1:0]xdma_0_pcie_cq_np_req_sd;
  wire [511:0]xdma_0_s_axis_cc_TDATA;
  wire [15:0]xdma_0_s_axis_cc_TKEEP;
  wire xdma_0_s_axis_cc_TLAST;
  wire xdma_0_s_axis_cc_TREADY;
  wire [80:0]xdma_0_s_axis_cc_TUSER;
  wire xdma_0_s_axis_cc_TVALID;
  wire [511:0]xdma_0_s_axis_rq_TDATA;
  wire [15:0]xdma_0_s_axis_rq_TKEEP;
  wire xdma_0_s_axis_rq_TLAST;
  wire [3:0]xdma_0_s_axis_rq_TREADY;
  wire [136:0]xdma_0_s_axis_rq_TUSER;
  wire xdma_0_s_axis_rq_TVALID;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign DEVICE_DNA_A_TRI_I = DEVICE_DNA_A_tri_i[31:0];
  assign DEVICE_DNA_B_TRI_I = DEVICE_DNA_B_tri_i[31:0];
  assign DEVICE_DNA_C_TRI_I = DEVICE_DNA_C_tri_i[31:0];
  assign DEVICE_DNA_D_TRI_I = DEVICE_DNA_D_tri_i[31:0];
  assign EFUSE_i_TRI_I = EFUSE_i_tri_i[31:0];
  assign SHELL_VER_i_TRI_I = SHELL_VER_i_tri_i[31:0];
  assign axiltap_0_M_AXIS_BYPASS_CQ_TREADY = m_axis_cq_tready;
  assign cfg_current_speed[1:0] = credit_handler_0_m_cfg_current_speed;
  assign cfg_err_cor_out = credit_handler_0_m_cfg_err_cor_out;
  assign cfg_err_fatal_out = credit_handler_0_m_cfg_err_fatal_out;
  assign cfg_err_nonfatal_out = credit_handler_0_m_cfg_err_nonfatal_out;
  assign cfg_function_status[15:0] = credit_handler_0_m_cfg_function_status;
  assign cfg_local_error_out[4:0] = credit_handler_0_m_cfg_local_error_out;
  assign cfg_ltssm_state[5:0] = credit_handler_0_m_cfg_ltssm_state;
  assign cfg_max_payload[1:0] = credit_handler_0_m_cfg_max_payload;
  assign cfg_max_read_req[2:0] = credit_handler_0_m_cfg_max_read_req;
  assign cfg_negotiated_width[2:0] = credit_handler_0_m_cfg_negotiated_width;
  assign cfg_phy_link_down = credit_handler_0_m_cfg_phy_link_down;
  assign cfg_phy_link_status[1:0] = credit_handler_0_m_cfg_phy_link_status;
  assign cfg_pl_status_change = credit_handler_0_m_cfg_pl_status_change;
  assign m_axis_cq_tdata[511:0] = axiltap_0_M_AXIS_BYPASS_CQ_TDATA;
  assign m_axis_cq_tkeep[15:0] = axiltap_0_M_AXIS_BYPASS_CQ_TKEEP;
  assign m_axis_cq_tlast = axiltap_0_M_AXIS_BYPASS_CQ_TLAST;
  assign m_axis_cq_tuser[182:0] = axiltap_0_M_AXIS_BYPASS_CQ_TUSER;
  assign m_axis_cq_tvalid = axiltap_0_M_AXIS_BYPASS_CQ_TVALID;
  assign m_axis_rc_tdata[511:0] = pcie4_uscale_plus_0_m_axis_rc_TDATA;
  assign m_axis_rc_tkeep[15:0] = pcie4_uscale_plus_0_m_axis_rc_TKEEP;
  assign m_axis_rc_tlast = pcie4_uscale_plus_0_m_axis_rc_TLAST;
  assign m_axis_rc_tuser[160:0] = pcie4_uscale_plus_0_m_axis_rc_TUSER;
  assign m_axis_rc_tvalid = pcie4_uscale_plus_0_m_axis_rc_TVALID;
  assign pcie4_cfg_control_flr_in_process[3:0] = xdma_0_pcie4_cfg_control_flr_in_process;
  assign pcie4_cfg_control_hot_reset_out = xdma_0_pcie4_cfg_control_hot_reset_out;
  assign pcie4_cfg_control_vf_flr_in_process[251:0] = xdma_0_pcie4_cfg_control_vf_flr_in_process;
  assign pcie4_cfg_fc_nph[7:0] = pcie4_uscale_plus_0_pcie4_cfg_fc_NPH;
  assign pcie4_cfg_interrupt_sent = xdma_0_pcie4_cfg_interrupt_SENT;
  assign pcie4_cfg_mesg_rcvd_recd = pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd;
  assign pcie4_cfg_mesg_rcvd_recd_data[7:0] = pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd_data;
  assign pcie4_cfg_mesg_rcvd_recd_type[4:0] = pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd_type;
  assign pcie4_cfg_mesg_tx_transmit_done = pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_DONE;
  assign pcie4_cfg_mgmt_read_data[31:0] = xdma_0_pcie_cfg_mgmt_sd_READ_DATA;
  assign pcie4_cfg_mgmt_read_write_done = xdma_0_pcie_cfg_mgmt_sd_READ_WRITE_DONE;
  assign pcie4_cfg_msi_data[31:0] = xdma_0_pcie4_cfg_msi_data;
  assign pcie4_cfg_msi_enable[3:0] = xdma_0_pcie4_cfg_msi_enable;
  assign pcie4_cfg_msi_fail = xdma_0_pcie4_cfg_msi_fail;
  assign pcie4_cfg_msi_mask_update = xdma_0_pcie4_cfg_msi_mask_update;
  assign pcie4_cfg_msi_sent = xdma_0_pcie4_cfg_msi_sent;
  assign pcie4_uscale_plus_0_m_axis_rc_TREADY = m_axis_rc_tready;
  assign pcie4_uscale_plus_0_pcie4_cfg_fc_SEL = pcie4_cfg_fc_sel[2:0];
  assign pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT = pcie4_cfg_mesg_tx_transmit;
  assign pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_DATA = pcie4_cfg_mesg_tx_transmit_data[31:0];
  assign pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_TYPE = pcie4_cfg_mesg_tx_transmit_type[2:0];
  assign pcie4_uscale_plus_0_pcie4_mgt_rxn = pcie_mgt_rxn[15:0];
  assign pcie4_uscale_plus_0_pcie4_mgt_rxp = pcie_mgt_rxp[15:0];
  assign pcie_cq_np_req_count[5:0] = credit_handler_0_m_pcie_cq_np_req_count;
  assign pcie_mgt_txn[15:0] = pcie4_uscale_plus_0_pcie4_mgt_txn;
  assign pcie_mgt_txp[15:0] = pcie4_uscale_plus_0_pcie4_mgt_txp;
  assign pcie_rq_seq_num0[5:0] = credit_handler_0_m_pcie_rq_seq_num0;
  assign pcie_rq_seq_num1[5:0] = credit_handler_0_m_pcie_rq_seq_num1;
  assign pcie_rq_seq_num_vld0 = credit_handler_0_m_pcie_rq_seq_num_vld0;
  assign pcie_rq_seq_num_vld1 = credit_handler_0_m_pcie_rq_seq_num_vld1;
  assign phy_rdy_out = pcie4_uscale_plus_0_phy_rdy_out;
  assign s_axis_cc_tready = xdma_0_s_axis_cc_TREADY;
  assign s_axis_rq_tready[3:0] = xdma_0_s_axis_rq_TREADY;
  assign sys_clk_1 = sys_clk;
  assign sys_clk_gt_1 = sys_clk_gt;
  assign sys_rst_n_1 = sys_rst_n;
  assign user_clk = pcie4_uscale_plus_0_user_clk1;
  assign user_lnk_up = pcie4_uscale_plus_0_user_lnk_up;
  assign user_reset = pcie4_uscale_plus_0_user_reset;
  assign xdma_0_pcie4_cfg_control_ds_bus_number = pcie4_cfg_control_ds_bus_number[7:0];
  assign xdma_0_pcie4_cfg_control_ds_device_number = pcie4_cfg_control_ds_device_number[4:0];
  assign xdma_0_pcie4_cfg_control_ds_port_number = pcie4_cfg_control_ds_port_number[7:0];
  assign xdma_0_pcie4_cfg_control_dsn = pcie4_cfg_control_dsn[63:0];
  assign xdma_0_pcie4_cfg_control_err_cor_in = pcie4_cfg_control_err_cor_in;
  assign xdma_0_pcie4_cfg_control_err_uncor_in = pcie4_cfg_control_err_uncor_in;
  assign xdma_0_pcie4_cfg_control_flr_done = pcie4_cfg_control_flr_done[3:0];
  assign xdma_0_pcie4_cfg_control_link_training_enable = pcie4_cfg_control_link_training_enable;
  assign xdma_0_pcie4_cfg_interrupt_INTx_VECTOR = pcie4_cfg_interrupt_intx_vector[3:0];
  assign xdma_0_pcie4_cfg_interrupt_PENDING = pcie4_cfg_interrupt_pending[3:0];
  assign xdma_0_pcie4_cfg_msi_attr = pcie4_cfg_msi_attr[2:0];
  assign xdma_0_pcie4_cfg_msi_function_number = pcie4_cfg_msi_function_number[7:0];
  assign xdma_0_pcie4_cfg_msi_int_vector = pcie4_cfg_msi_int_vector[31:0];
  assign xdma_0_pcie4_cfg_msi_pending_status = pcie4_cfg_msi_pending_status[31:0];
  assign xdma_0_pcie4_cfg_msi_pending_status_data_enable = pcie4_cfg_msi_pending_status_data_enable;
  assign xdma_0_pcie4_cfg_msi_pending_status_function_num = pcie4_cfg_msi_pending_status_function_num[3:0];
  assign xdma_0_pcie4_cfg_msi_tph_present = pcie4_cfg_msi_tph_present;
  assign xdma_0_pcie4_cfg_msi_tph_st_tag = pcie4_cfg_msi_tph_st_tag[8:0];
  assign xdma_0_pcie4_cfg_msi_tph_type = pcie4_cfg_msi_tph_type[1:0];
  assign xdma_0_pcie_cfg_mgmt_sd_ADDR = pcie4_cfg_mgmt_addr[9:0];
  assign xdma_0_pcie_cfg_mgmt_sd_BYTE_EN = pcie4_cfg_mgmt_byte_en[3:0];
  assign xdma_0_pcie_cfg_mgmt_sd_DEBUG_ACCESS = pcie4_cfg_mgmt_debug_access;
  assign xdma_0_pcie_cfg_mgmt_sd_FUNCTION_NUMBER = pcie4_cfg_mgmt_function_number[7:0];
  assign xdma_0_pcie_cfg_mgmt_sd_READ_EN = pcie4_cfg_mgmt_read_en;
  assign xdma_0_pcie_cfg_mgmt_sd_WRITE_DATA = pcie4_cfg_mgmt_write_data[31:0];
  assign xdma_0_pcie_cfg_mgmt_sd_WRITE_EN = pcie4_cfg_mgmt_write_en;
  assign xdma_0_pcie_cq_np_req_sd = m_pcie_cq_np_req[1:0];
  assign xdma_0_s_axis_cc_TDATA = s_axis_cc_tdata[511:0];
  assign xdma_0_s_axis_cc_TKEEP = s_axis_cc_tkeep[15:0];
  assign xdma_0_s_axis_cc_TLAST = s_axis_cc_tlast;
  assign xdma_0_s_axis_cc_TUSER = s_axis_cc_tuser[80:0];
  assign xdma_0_s_axis_cc_TVALID = s_axis_cc_tvalid;
  assign xdma_0_s_axis_rq_TDATA = s_axis_rq_tdata[511:0];
  assign xdma_0_s_axis_rq_TKEEP = s_axis_rq_tkeep[15:0];
  assign xdma_0_s_axis_rq_TLAST = s_axis_rq_tlast;
  assign xdma_0_s_axis_rq_TUSER = s_axis_rq_tuser[136:0];
  assign xdma_0_s_axis_rq_TVALID = s_axis_rq_tvalid;
  X_PCIe_Bridge_ICAP_complex_axi_bram_TAP_0 axi_bram_TAP
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_1_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_1_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_1_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_1_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_1_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_1_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_1_BRAM_PORTB_DIN),
        .s_axi_aclk(pcie4_uscale_plus_0_user_clk1),
        .s_axi_araddr(axiltap_M_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arprot(axiltap_M_AXI_ARPROT),
        .s_axi_arready(axiltap_M_AXI_ARREADY),
        .s_axi_arvalid(axiltap_M_AXI_ARVALID),
        .s_axi_awaddr(axiltap_M_AXI_AWADDR),
        .s_axi_awprot(axiltap_M_AXI_AWPROT),
        .s_axi_awready(axiltap_M_AXI_AWREADY),
        .s_axi_awvalid(axiltap_M_AXI_AWVALID),
        .s_axi_bready(axiltap_M_AXI_BREADY),
        .s_axi_bresp(axiltap_M_AXI_BRESP),
        .s_axi_bvalid(axiltap_M_AXI_BVALID),
        .s_axi_rdata(axiltap_M_AXI_RDATA),
        .s_axi_rready(axiltap_M_AXI_RREADY),
        .s_axi_rresp(axiltap_M_AXI_RRESP),
        .s_axi_rvalid(axiltap_M_AXI_RVALID),
        .s_axi_wdata(axiltap_M_AXI_WDATA),
        .s_axi_wready(axiltap_M_AXI_WREADY),
        .s_axi_wstrb(axiltap_M_AXI_WSTRB),
        .s_axi_wvalid(axiltap_M_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_bram_ctrl_1_bram_0 axi_bram_ctrl_1_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_1_BRAM_PORTB_WE));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(pr_icap_0_icap_pr_status),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_SHELL_VERSION_EFUSE_0 axi_gpio_DEVICE_DNA_AB
       (.gpio2_io_i(DEVICE_DNA_B_TRI_I),
        .gpio_io_i(DEVICE_DNA_A_TRI_I),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M06_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M06_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M06_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M06_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M06_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M06_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M06_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M06_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M06_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M06_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M06_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M06_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M06_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_SHELL_VERSION_EFUSE1_0 axi_gpio_DEVICE_DNA_CD
       (.gpio2_io_i(DEVICE_DNA_D_TRI_I),
        .gpio_io_i(DEVICE_DNA_C_TRI_I),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M07_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M07_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M07_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M07_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M07_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M07_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M07_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M07_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M07_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M07_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M07_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M07_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M07_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_1_2 axi_gpio_PR_DECOUPLE
       (.gpio2_io_i(PR_DECOUPLE),
        .gpio_io_o(PR_DECOUPLE),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M10_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M10_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M10_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M10_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M10_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M10_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M10_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M10_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M10_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M10_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M10_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M10_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M10_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M10_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M10_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_1_1 axi_gpio_RESET_GATE
       (.gpio2_io_i(1'b0),
        .gpio_io_o(RESET_GATE),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M09_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M09_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M09_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M09_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M09_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M09_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M09_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M09_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M09_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M09_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M09_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M09_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M09_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M09_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M09_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_DEVICE_DNA_CD_0 axi_gpio_SHELL_TO_CL_OUT
       (.gpio2_io_i(SHELL_TO_CL_RST),
        .gpio_io_o(SHELL_TO_CL_RST),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M08_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M08_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M08_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M08_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M08_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M08_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M08_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M08_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M08_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M08_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M08_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M08_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M08_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M08_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M08_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_gpio_1_0 axi_gpio_SHELL_VERSION_EFUSE
       (.gpio2_io_i(SHELL_VER_i_TRI_I),
        .gpio_io_i(EFUSE_i_TRI_I),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M05_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M05_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M05_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M05_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M05_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M05_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M05_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M05_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M05_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M05_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M05_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M05_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M05_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_hwicap_0_0 axi_hwicap_0
       (.cap_gnt(xlconstant_1_dout),
        .cap_rel(xlconstant_0_dout),
        .eos_in(xlconstant_0_dout),
        .icap_avail(pr_icap_0_icap_avail),
        .icap_clk(PCIE_USR_CLK_DIV4_62_5MHz),
        .icap_csib(axi_hwicap_0_icap_csib),
        .icap_i(pr_icap_0_icap_dout),
        .icap_o(axi_hwicap_0_icap_o),
        .icap_rdwrb(axi_hwicap_0_icap_rdwrb),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M02_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M02_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M02_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(PCIE_USR_CLK_DIV4_62_5MHz),
        .gsr(1'b0),
        .gts(1'b0),
        .keyclearb(1'b0),
        .s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID),
        .usrcclkts(xlconstant_0_dout),
        .usrdoneo(1'b1),
        .usrdonets(1'b0));
  X_PCIe_Bridge_ICAP_complex_axiltap_0_0 axiltap_0
       (.aclk(pcie4_uscale_plus_0_user_clk1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(axiltap_0_M_AXI_ARADDR),
        .m_axi_arprot(axiltap_0_M_AXI_ARPROT),
        .m_axi_arready(axiltap_0_M_AXI_ARREADY),
        .m_axi_arvalid(axiltap_0_M_AXI_ARVALID),
        .m_axi_awaddr(axiltap_0_M_AXI_AWADDR),
        .m_axi_awprot(axiltap_0_M_AXI_AWPROT),
        .m_axi_awready(axiltap_0_M_AXI_AWREADY),
        .m_axi_awvalid(axiltap_0_M_AXI_AWVALID),
        .m_axi_bready(axiltap_0_M_AXI_BREADY),
        .m_axi_bresp(axiltap_0_M_AXI_BRESP),
        .m_axi_bvalid(axiltap_0_M_AXI_BVALID),
        .m_axi_rdata(axiltap_0_M_AXI_RDATA),
        .m_axi_rready(axiltap_0_M_AXI_RREADY),
        .m_axi_rresp(axiltap_0_M_AXI_RRESP),
        .m_axi_rvalid(axiltap_0_M_AXI_RVALID),
        .m_axi_wdata(axiltap_0_M_AXI_WDATA),
        .m_axi_wready(axiltap_0_M_AXI_WREADY),
        .m_axi_wstrb(axiltap_0_M_AXI_WSTRB),
        .m_axi_wvalid(axiltap_0_M_AXI_WVALID),
        .m_axis_bypass_cq_tdata(axiltap_0_M_AXIS_BYPASS_CQ_TDATA),
        .m_axis_bypass_cq_tkeep(axiltap_0_M_AXIS_BYPASS_CQ_TKEEP),
        .m_axis_bypass_cq_tlast(axiltap_0_M_AXIS_BYPASS_CQ_TLAST),
        .m_axis_bypass_cq_tready(axiltap_0_M_AXIS_BYPASS_CQ_TREADY),
        .m_axis_bypass_cq_tuser(axiltap_0_M_AXIS_BYPASS_CQ_TUSER),
        .m_axis_bypass_cq_tvalid(axiltap_0_M_AXIS_BYPASS_CQ_TVALID),
        .m_axis_pcie_cc_tdata(DBG_axiltap_0_M_AXIS_PCIE_CC_TDATA),
        .m_axis_pcie_cc_tkeep(DBG_axiltap_0_M_AXIS_PCIE_CC_TKEEP),
        .m_axis_pcie_cc_tlast(DBG_axiltap_0_M_AXIS_PCIE_CC_TLAST),
        .m_axis_pcie_cc_tready(DBG_axiltap_0_M_AXIS_PCIE_CC_TREADY[0]),
        .m_axis_pcie_cc_tuser(DBG_axiltap_0_M_AXIS_PCIE_CC_TUSER),
        .m_axis_pcie_cc_tvalid(DBG_axiltap_0_M_AXIS_PCIE_CC_TVALID),
        .s_axis_bypass_cc_tdata(xdma_0_s_axis_cc_TDATA),
        .s_axis_bypass_cc_tkeep(xdma_0_s_axis_cc_TKEEP),
        .s_axis_bypass_cc_tlast(xdma_0_s_axis_cc_TLAST),
        .s_axis_bypass_cc_tready(xdma_0_s_axis_cc_TREADY),
        .s_axis_bypass_cc_tuser(xdma_0_s_axis_cc_TUSER),
        .s_axis_bypass_cc_tvalid(xdma_0_s_axis_cc_TVALID),
        .s_axis_pcie_cq_tdata(DBG_axiltap_0_M_AXIS_PCIE_CQ_TDATA),
        .s_axis_pcie_cq_tkeep(DBG_axiltap_0_M_AXIS_PCIE_CQ_TKEEP),
        .s_axis_pcie_cq_tlast(DBG_axiltap_0_M_AXIS_PCIE_CQ_TLAST),
        .s_axis_pcie_cq_tready(DBG_axiltap_0_M_AXIS_PCIE_CQ_TREADY),
        .s_axis_pcie_cq_tuser(DBG_axiltap_0_M_AXIS_PCIE_CQ_TUSER),
        .s_axis_pcie_cq_tvalid(DBG_axiltap_0_M_AXIS_PCIE_CQ_TVALID));
  X_PCIe_Bridge_ICAP_complex_credit_handler_0_0 credit_handler_0
       (.m_cfg_current_speed(credit_handler_0_m_cfg_current_speed),
        .m_cfg_err_cor_out(credit_handler_0_m_cfg_err_cor_out),
        .m_cfg_err_fatal_out(credit_handler_0_m_cfg_err_fatal_out),
        .m_cfg_err_nonfatal_out(credit_handler_0_m_cfg_err_nonfatal_out),
        .m_cfg_function_status(credit_handler_0_m_cfg_function_status),
        .m_cfg_local_error_out(credit_handler_0_m_cfg_local_error_out),
        .m_cfg_ltssm_state(credit_handler_0_m_cfg_ltssm_state),
        .m_cfg_max_payload(credit_handler_0_m_cfg_max_payload),
        .m_cfg_max_read_req(credit_handler_0_m_cfg_max_read_req),
        .m_cfg_negotiated_width(credit_handler_0_m_cfg_negotiated_width),
        .m_cfg_phy_link_down(credit_handler_0_m_cfg_phy_link_down),
        .m_cfg_phy_link_status(credit_handler_0_m_cfg_phy_link_status),
        .m_cfg_pl_status_change(credit_handler_0_m_cfg_pl_status_change),
        .m_pcie_cq_np_req(xdma_0_pcie_cq_np_req_sd),
        .m_pcie_cq_np_req_count(credit_handler_0_m_pcie_cq_np_req_count),
        .m_pcie_rq_seq_num0(credit_handler_0_m_pcie_rq_seq_num0),
        .m_pcie_rq_seq_num1(credit_handler_0_m_pcie_rq_seq_num1),
        .m_pcie_rq_seq_num_vld0(credit_handler_0_m_pcie_rq_seq_num_vld0),
        .m_pcie_rq_seq_num_vld1(credit_handler_0_m_pcie_rq_seq_num_vld1),
        .mon_axis_cq_tdata(DBG_axiltap_0_M_AXIS_PCIE_CQ_TDATA),
        .mon_axis_cq_tready(DBG_axiltap_0_M_AXIS_PCIE_CQ_TREADY),
        .mon_axis_cq_tvalid(DBG_axiltap_0_M_AXIS_PCIE_CQ_TVALID),
        .mon_axis_cq_usr_tdata(axiltap_0_M_AXIS_BYPASS_CQ_TDATA),
        .mon_axis_cq_usr_tready(axiltap_0_M_AXIS_BYPASS_CQ_TREADY),
        .mon_axis_cq_usr_tuser(axiltap_0_M_AXIS_BYPASS_CQ_TUSER),
        .mon_axis_cq_usr_tvalid(axiltap_0_M_AXIS_BYPASS_CQ_TVALID),
        .pcie_link_up(pcie4_uscale_plus_0_user_lnk_up),
        .pcie_link_up_toggle_clear(xlconstant_0_dout),
        .s_cfg_current_speed(pcie4_uscale_plus_0_cfg_current_speed),
        .s_cfg_err_cor_out(pcie4_uscale_plus_0_cfg_err_cor_out),
        .s_cfg_err_fatal_out(pcie4_uscale_plus_0_cfg_err_fatal_out),
        .s_cfg_err_nonfatal_out(pcie4_uscale_plus_0_cfg_err_nonfatal_out),
        .s_cfg_function_status(pcie4_uscale_plus_0_cfg_function_status),
        .s_cfg_local_error_out(pcie4_uscale_plus_0_cfg_local_error_out),
        .s_cfg_ltssm_state(pcie4_uscale_plus_0_cfg_ltssm_state),
        .s_cfg_max_payload(pcie4_uscale_plus_0_cfg_max_payload),
        .s_cfg_max_read_req(pcie4_uscale_plus_0_cfg_max_read_req),
        .s_cfg_negotiated_width(pcie4_uscale_plus_0_cfg_negotiated_width),
        .s_cfg_phy_link_down(pcie4_uscale_plus_0_cfg_phy_link_down),
        .s_cfg_phy_link_status(pcie4_uscale_plus_0_cfg_phy_link_status),
        .s_cfg_pl_status_change(pcie4_uscale_plus_0_cfg_pl_status_change),
        .s_cfg_tph_requester_enable({1'b0,1'b0,1'b0,1'b0}),
        .s_pcie_cq_np_req(credit_handler_0_s_pcie_cq_np_req),
        .s_pcie_cq_np_req_count(pcie4_uscale_plus_0_pcie_cq_np_req_count),
        .s_pcie_rq_seq_num0(pcie4_uscale_plus_0_pcie_rq_seq_num0),
        .s_pcie_rq_seq_num1(pcie4_uscale_plus_0_pcie_rq_seq_num1),
        .s_pcie_rq_seq_num_vld0(pcie4_uscale_plus_0_pcie_rq_seq_num_vld0),
        .s_pcie_rq_seq_num_vld1(pcie4_uscale_plus_0_pcie_rq_seq_num_vld1),
        .user_clk(pcie4_uscale_plus_0_user_clk1),
        .user_resetn(proc_sys_reset_0_peripheral_aresetn));
  X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0 pcie4_uscale_plus_0
       (.cfg_config_space_enable(1'b1),
        .cfg_current_speed(pcie4_uscale_plus_0_cfg_current_speed),
        .cfg_ds_bus_number(xdma_0_pcie4_cfg_control_ds_bus_number),
        .cfg_ds_device_number(xdma_0_pcie4_cfg_control_ds_device_number),
        .cfg_ds_port_number(xdma_0_pcie4_cfg_control_ds_port_number),
        .cfg_dsn(xdma_0_pcie4_cfg_control_dsn),
        .cfg_err_cor_in(xdma_0_pcie4_cfg_control_err_cor_in),
        .cfg_err_cor_out(pcie4_uscale_plus_0_cfg_err_cor_out),
        .cfg_err_fatal_out(pcie4_uscale_plus_0_cfg_err_fatal_out),
        .cfg_err_nonfatal_out(pcie4_uscale_plus_0_cfg_err_nonfatal_out),
        .cfg_err_uncor_in(xdma_0_pcie4_cfg_control_err_uncor_in),
        .cfg_fc_nph(pcie4_uscale_plus_0_pcie4_cfg_fc_NPH),
        .cfg_fc_sel(pcie4_uscale_plus_0_pcie4_cfg_fc_SEL),
        .cfg_flr_done(xdma_0_pcie4_cfg_control_flr_done),
        .cfg_flr_in_process(xdma_0_pcie4_cfg_control_flr_in_process),
        .cfg_function_status(pcie4_uscale_plus_0_cfg_function_status),
        .cfg_hot_reset_in(1'b0),
        .cfg_hot_reset_out(xdma_0_pcie4_cfg_control_hot_reset_out),
        .cfg_interrupt_int(xdma_0_pcie4_cfg_interrupt_INTx_VECTOR),
        .cfg_interrupt_msi_attr(xdma_0_pcie4_cfg_msi_attr),
        .cfg_interrupt_msi_data(xdma_0_pcie4_cfg_msi_data),
        .cfg_interrupt_msi_enable(xdma_0_pcie4_cfg_msi_enable),
        .cfg_interrupt_msi_fail(xdma_0_pcie4_cfg_msi_fail),
        .cfg_interrupt_msi_function_number(xdma_0_pcie4_cfg_msi_function_number),
        .cfg_interrupt_msi_int(xdma_0_pcie4_cfg_msi_int_vector),
        .cfg_interrupt_msi_mask_update(xdma_0_pcie4_cfg_msi_mask_update),
        .cfg_interrupt_msi_pending_status(xdma_0_pcie4_cfg_msi_pending_status),
        .cfg_interrupt_msi_pending_status_data_enable(xdma_0_pcie4_cfg_msi_pending_status_data_enable),
        .cfg_interrupt_msi_pending_status_function_num(xdma_0_pcie4_cfg_msi_pending_status_function_num[1:0]),
        .cfg_interrupt_msi_select({1'b0,1'b0}),
        .cfg_interrupt_msi_sent(xdma_0_pcie4_cfg_msi_sent),
        .cfg_interrupt_msi_tph_present(xdma_0_pcie4_cfg_msi_tph_present),
        .cfg_interrupt_msi_tph_st_tag(xdma_0_pcie4_cfg_msi_tph_st_tag[7:0]),
        .cfg_interrupt_msi_tph_type(xdma_0_pcie4_cfg_msi_tph_type),
        .cfg_interrupt_pending(xdma_0_pcie4_cfg_interrupt_PENDING),
        .cfg_interrupt_sent(xdma_0_pcie4_cfg_interrupt_SENT),
        .cfg_link_training_enable(xdma_0_pcie4_cfg_control_link_training_enable),
        .cfg_local_error_out(pcie4_uscale_plus_0_cfg_local_error_out),
        .cfg_ltssm_state(pcie4_uscale_plus_0_cfg_ltssm_state),
        .cfg_max_payload(pcie4_uscale_plus_0_cfg_max_payload),
        .cfg_max_read_req(pcie4_uscale_plus_0_cfg_max_read_req),
        .cfg_mgmt_addr(xdma_0_pcie_cfg_mgmt_sd_ADDR),
        .cfg_mgmt_byte_enable(xdma_0_pcie_cfg_mgmt_sd_BYTE_EN),
        .cfg_mgmt_debug_access(xdma_0_pcie_cfg_mgmt_sd_DEBUG_ACCESS),
        .cfg_mgmt_function_number(xdma_0_pcie_cfg_mgmt_sd_FUNCTION_NUMBER),
        .cfg_mgmt_read(xdma_0_pcie_cfg_mgmt_sd_READ_EN),
        .cfg_mgmt_read_data(xdma_0_pcie_cfg_mgmt_sd_READ_DATA),
        .cfg_mgmt_read_write_done(xdma_0_pcie_cfg_mgmt_sd_READ_WRITE_DONE),
        .cfg_mgmt_write(xdma_0_pcie_cfg_mgmt_sd_WRITE_EN),
        .cfg_mgmt_write_data(xdma_0_pcie_cfg_mgmt_sd_WRITE_DATA),
        .cfg_msg_received(pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd),
        .cfg_msg_received_data(pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd_data),
        .cfg_msg_received_type(pcie4_uscale_plus_0_pcie4_cfg_mesg_rcvd_recd_type),
        .cfg_msg_transmit(pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT),
        .cfg_msg_transmit_data(pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_DATA),
        .cfg_msg_transmit_done(pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_DONE),
        .cfg_msg_transmit_type(pcie4_uscale_plus_0_pcie4_cfg_mesg_tx_TRANSMIT_TYPE),
        .cfg_negotiated_width(pcie4_uscale_plus_0_cfg_negotiated_width),
        .cfg_phy_link_down(pcie4_uscale_plus_0_cfg_phy_link_down),
        .cfg_phy_link_status(pcie4_uscale_plus_0_cfg_phy_link_status),
        .cfg_pl_status_change(pcie4_uscale_plus_0_cfg_pl_status_change),
        .cfg_power_state_change_ack(1'b0),
        .cfg_req_pm_transition_l23_ready(1'b0),
        .cfg_vf_flr_done(1'b0),
        .cfg_vf_flr_func_num({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cfg_vf_flr_in_process(xdma_0_pcie4_cfg_control_vf_flr_in_process),
        .m_axis_cq_tdata(DBG_axiltap_0_M_AXIS_PCIE_CQ_TDATA),
        .m_axis_cq_tkeep(DBG_axiltap_0_M_AXIS_PCIE_CQ_TKEEP),
        .m_axis_cq_tlast(DBG_axiltap_0_M_AXIS_PCIE_CQ_TLAST),
        .m_axis_cq_tready(DBG_axiltap_0_M_AXIS_PCIE_CQ_TREADY),
        .m_axis_cq_tuser(DBG_axiltap_0_M_AXIS_PCIE_CQ_TUSER),
        .m_axis_cq_tvalid(DBG_axiltap_0_M_AXIS_PCIE_CQ_TVALID),
        .m_axis_rc_tdata(pcie4_uscale_plus_0_m_axis_rc_TDATA),
        .m_axis_rc_tkeep(pcie4_uscale_plus_0_m_axis_rc_TKEEP),
        .m_axis_rc_tlast(pcie4_uscale_plus_0_m_axis_rc_TLAST),
        .m_axis_rc_tready(pcie4_uscale_plus_0_m_axis_rc_TREADY),
        .m_axis_rc_tuser(pcie4_uscale_plus_0_m_axis_rc_TUSER),
        .m_axis_rc_tvalid(pcie4_uscale_plus_0_m_axis_rc_TVALID),
        .pci_exp_rxn(pcie4_uscale_plus_0_pcie4_mgt_rxn),
        .pci_exp_rxp(pcie4_uscale_plus_0_pcie4_mgt_rxp),
        .pci_exp_txn(pcie4_uscale_plus_0_pcie4_mgt_txn),
        .pci_exp_txp(pcie4_uscale_plus_0_pcie4_mgt_txp),
        .pcie_cq_np_req(credit_handler_0_s_pcie_cq_np_req),
        .pcie_cq_np_req_count(pcie4_uscale_plus_0_pcie_cq_np_req_count),
        .pcie_rq_seq_num0(pcie4_uscale_plus_0_pcie_rq_seq_num0),
        .pcie_rq_seq_num1(pcie4_uscale_plus_0_pcie_rq_seq_num1),
        .pcie_rq_seq_num_vld0(pcie4_uscale_plus_0_pcie_rq_seq_num_vld0),
        .pcie_rq_seq_num_vld1(pcie4_uscale_plus_0_pcie_rq_seq_num_vld1),
        .phy_rdy_out(pcie4_uscale_plus_0_phy_rdy_out),
        .s_axis_cc_tdata(DBG_axiltap_0_M_AXIS_PCIE_CC_TDATA),
        .s_axis_cc_tkeep(DBG_axiltap_0_M_AXIS_PCIE_CC_TKEEP),
        .s_axis_cc_tlast(DBG_axiltap_0_M_AXIS_PCIE_CC_TLAST),
        .s_axis_cc_tready(DBG_axiltap_0_M_AXIS_PCIE_CC_TREADY),
        .s_axis_cc_tuser(DBG_axiltap_0_M_AXIS_PCIE_CC_TUSER),
        .s_axis_cc_tvalid(DBG_axiltap_0_M_AXIS_PCIE_CC_TVALID),
        .s_axis_rq_tdata(xdma_0_s_axis_rq_TDATA),
        .s_axis_rq_tkeep(xdma_0_s_axis_rq_TKEEP),
        .s_axis_rq_tlast(xdma_0_s_axis_rq_TLAST),
        .s_axis_rq_tready(xdma_0_s_axis_rq_TREADY),
        .s_axis_rq_tuser(xdma_0_s_axis_rq_TUSER),
        .s_axis_rq_tvalid(xdma_0_s_axis_rq_TVALID),
        .sys_clk(sys_clk_1),
        .sys_clk_gt(sys_clk_gt_1),
        .sys_reset(sys_rst_n_1),
        .user_clk(pcie4_uscale_plus_0_user_clk1),
        .user_lnk_up(pcie4_uscale_plus_0_user_lnk_up),
        .user_reset(pcie4_uscale_plus_0_user_reset));
  X_PCIe_Bridge_ICAP_complex_pr_icap_0_0 pr_icap_0
       (.icap_avail(pr_icap_0_icap_avail),
        .icap_clk(PCIE_USR_CLK_DIV4_62_5MHz),
        .icap_csib(axi_hwicap_0_icap_csib),
        .icap_din(axi_hwicap_0_icap_o),
        .icap_dout(pr_icap_0_icap_dout),
        .icap_pr_status(pr_icap_0_icap_pr_status),
        .icap_rdwrb(axi_hwicap_0_icap_rdwrb));
  X_PCIe_Bridge_ICAP_complex_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(pcie4_uscale_plus_0_user_reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(pcie4_uscale_plus_0_user_clk1));
  X_PCIe_Bridge_ICAP_complex_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(pcie4_uscale_plus_0_user_reset),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(PCIE_USR_CLK_DIV4_62_5MHz));
  X_PCIe_Bridge_ICAP_complex_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(axiltap_M_AXI_ARADDR),
        .M00_AXI_arprot(axiltap_M_AXI_ARPROT),
        .M00_AXI_arready(axiltap_M_AXI_ARREADY),
        .M00_AXI_arvalid(axiltap_M_AXI_ARVALID),
        .M00_AXI_awaddr(axiltap_M_AXI_AWADDR),
        .M00_AXI_awprot(axiltap_M_AXI_AWPROT),
        .M00_AXI_awready(axiltap_M_AXI_AWREADY),
        .M00_AXI_awvalid(axiltap_M_AXI_AWVALID),
        .M00_AXI_bready(axiltap_M_AXI_BREADY),
        .M00_AXI_bresp(axiltap_M_AXI_BRESP),
        .M00_AXI_bvalid(axiltap_M_AXI_BVALID),
        .M00_AXI_rdata(axiltap_M_AXI_RDATA),
        .M00_AXI_rready(axiltap_M_AXI_RREADY),
        .M00_AXI_rresp(axiltap_M_AXI_RRESP),
        .M00_AXI_rvalid(axiltap_M_AXI_RVALID),
        .M00_AXI_wdata(axiltap_M_AXI_WDATA),
        .M00_AXI_wready(axiltap_M_AXI_WREADY),
        .M00_AXI_wstrb(axiltap_M_AXI_WSTRB),
        .M00_AXI_wvalid(axiltap_M_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .M06_AXI_araddr(smartconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(smartconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(smartconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(smartconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(smartconnect_0_M06_AXI_WVALID),
        .M07_AXI_araddr(smartconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arready(smartconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awready(smartconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(smartconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(smartconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(smartconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(smartconnect_0_M07_AXI_RDATA),
        .M07_AXI_rready(smartconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(smartconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(smartconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(smartconnect_0_M07_AXI_WDATA),
        .M07_AXI_wready(smartconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(smartconnect_0_M07_AXI_WVALID),
        .M08_AXI_araddr(smartconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arready(smartconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awready(smartconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awvalid(smartconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(smartconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(smartconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(smartconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(smartconnect_0_M08_AXI_RDATA),
        .M08_AXI_rready(smartconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(smartconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(smartconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(smartconnect_0_M08_AXI_WDATA),
        .M08_AXI_wready(smartconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(smartconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(smartconnect_0_M08_AXI_WVALID),
        .M09_AXI_araddr(smartconnect_0_M09_AXI_ARADDR),
        .M09_AXI_arready(smartconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awready(smartconnect_0_M09_AXI_AWREADY),
        .M09_AXI_awvalid(smartconnect_0_M09_AXI_AWVALID),
        .M09_AXI_bready(smartconnect_0_M09_AXI_BREADY),
        .M09_AXI_bresp(smartconnect_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(smartconnect_0_M09_AXI_BVALID),
        .M09_AXI_rdata(smartconnect_0_M09_AXI_RDATA),
        .M09_AXI_rready(smartconnect_0_M09_AXI_RREADY),
        .M09_AXI_rresp(smartconnect_0_M09_AXI_RRESP),
        .M09_AXI_rvalid(smartconnect_0_M09_AXI_RVALID),
        .M09_AXI_wdata(smartconnect_0_M09_AXI_WDATA),
        .M09_AXI_wready(smartconnect_0_M09_AXI_WREADY),
        .M09_AXI_wstrb(smartconnect_0_M09_AXI_WSTRB),
        .M09_AXI_wvalid(smartconnect_0_M09_AXI_WVALID),
        .M10_AXI_araddr(smartconnect_0_M10_AXI_ARADDR),
        .M10_AXI_arready(smartconnect_0_M10_AXI_ARREADY),
        .M10_AXI_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .M10_AXI_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .M10_AXI_awready(smartconnect_0_M10_AXI_AWREADY),
        .M10_AXI_awvalid(smartconnect_0_M10_AXI_AWVALID),
        .M10_AXI_bready(smartconnect_0_M10_AXI_BREADY),
        .M10_AXI_bresp(smartconnect_0_M10_AXI_BRESP),
        .M10_AXI_bvalid(smartconnect_0_M10_AXI_BVALID),
        .M10_AXI_rdata(smartconnect_0_M10_AXI_RDATA),
        .M10_AXI_rready(smartconnect_0_M10_AXI_RREADY),
        .M10_AXI_rresp(smartconnect_0_M10_AXI_RRESP),
        .M10_AXI_rvalid(smartconnect_0_M10_AXI_RVALID),
        .M10_AXI_wdata(smartconnect_0_M10_AXI_WDATA),
        .M10_AXI_wready(smartconnect_0_M10_AXI_WREADY),
        .M10_AXI_wstrb(smartconnect_0_M10_AXI_WSTRB),
        .M10_AXI_wvalid(smartconnect_0_M10_AXI_WVALID),
        .S00_AXI_araddr(axiltap_0_M_AXI_ARADDR),
        .S00_AXI_arprot(axiltap_0_M_AXI_ARPROT),
        .S00_AXI_arready(axiltap_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(axiltap_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axiltap_0_M_AXI_AWADDR),
        .S00_AXI_awprot(axiltap_0_M_AXI_AWPROT),
        .S00_AXI_awready(axiltap_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(axiltap_0_M_AXI_AWVALID),
        .S00_AXI_bready(axiltap_0_M_AXI_BREADY),
        .S00_AXI_bresp(axiltap_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axiltap_0_M_AXI_BVALID),
        .S00_AXI_rdata(axiltap_0_M_AXI_RDATA),
        .S00_AXI_rready(axiltap_0_M_AXI_RREADY),
        .S00_AXI_rresp(axiltap_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axiltap_0_M_AXI_RVALID),
        .S00_AXI_wdata(axiltap_0_M_AXI_WDATA),
        .S00_AXI_wready(axiltap_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axiltap_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axiltap_0_M_AXI_WVALID),
        .aclk(pcie4_uscale_plus_0_user_clk1),
        .aclk1(PCIE_USR_CLK_DIV4_62_5MHz));
  X_PCIe_Bridge_ICAP_complex_system_management_wiz_0_0 system_management_wiz_0
       (.s_axi_aclk(PCIE_USR_CLK_DIV4_62_5MHz),
        .s_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M04_AXI_WVALID));
  X_PCIe_Bridge_ICAP_complex_util_ds_buf_0_0 util_ds_buf_0
       (.BUFGCE_CE(xlconstant_1_dout),
        .BUFGCE_CLR(xlconstant_0_dout),
        .BUFGCE_I(pcie4_uscale_plus_0_user_clk1),
        .BUFGCE_O(PCIE_USR_CLK_DIV4_62_5MHz));
  X_PCIe_Bridge_ICAP_complex_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  X_PCIe_Bridge_ICAP_complex_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

