// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:shell_utils_pcie_credit_handler:2.0
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module X_PCIe_Bridge_ICAP_complex_credit_handler_0_0 (
  user_clk,
  user_resetn,
  pcie_link_up,
  pcie_link_up_toggle_status,
  pcie_link_up_toggle_clear,
  mon_axis_cq_tdata,
  mon_axis_cq_tvalid,
  mon_axis_cq_tready,
  mon_axis_cq_usr_tdata,
  mon_axis_cq_usr_tuser,
  mon_axis_cq_usr_tvalid,
  mon_axis_cq_usr_tready,
  m_pcie_cq_np_req,
  m_pcie_cq_np_req_count,
  m_cfg_current_speed,
  m_cfg_err_cor_out,
  m_cfg_err_fatal_out,
  m_cfg_err_nonfatal_out,
  m_cfg_function_status,
  m_cfg_local_error_out,
  m_cfg_ltssm_state,
  m_cfg_max_payload,
  m_cfg_max_read_req,
  m_cfg_negotiated_width,
  m_cfg_phy_link_down,
  m_cfg_phy_link_status,
  m_cfg_pl_status_change,
  m_pcie_rq_seq_num0,
  m_pcie_rq_seq_num1,
  m_pcie_rq_seq_num_vld0,
  m_pcie_rq_seq_num_vld1,
  m_cfg_tph_requester_enable,
  s_pcie_cq_np_req,
  s_pcie_cq_np_req_count,
  s_cfg_current_speed,
  s_cfg_err_cor_out,
  s_cfg_err_fatal_out,
  s_cfg_err_nonfatal_out,
  s_cfg_function_status,
  s_cfg_local_error_out,
  s_cfg_ltssm_state,
  s_cfg_max_payload,
  s_cfg_max_read_req,
  s_cfg_negotiated_width,
  s_cfg_phy_link_down,
  s_cfg_phy_link_status,
  s_cfg_pl_status_change,
  s_pcie_rq_seq_num0,
  s_pcie_rq_seq_num1,
  s_pcie_rq_seq_num_vld0,
  s_pcie_rq_seq_num_vld1,
  s_cfg_tph_requester_enable
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME user_clk, ASSOCIATED_BUSIF mon_axis_cq:mon_axis_cq_usr, ASSOCIATED_RESET user_resetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 user_clk CLK" *)
input wire user_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME user_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 user_resetn RST" *)
input wire user_resetn;
input wire pcie_link_up;
output wire pcie_link_up_toggle_status;
input wire pcie_link_up_toggle_clear;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq TDATA" *)
input wire [511 : 0] mon_axis_cq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq TVALID" *)
input wire mon_axis_cq_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_axis_cq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq TREADY" *)
input wire mon_axis_cq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq_usr TDATA" *)
input wire [511 : 0] mon_axis_cq_usr_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq_usr TUSER" *)
input wire [182 : 0] mon_axis_cq_usr_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq_usr TVALID" *)
input wire mon_axis_cq_usr_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_axis_cq_usr, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 183, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mon_axis_cq_usr TREADY" *)
input wire mon_axis_cq_usr_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status cq_np_req" *)
input wire [1 : 0] m_pcie_cq_np_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status cq_np_req_count" *)
output wire [5 : 0] m_pcie_cq_np_req_count;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status current_speed" *)
output wire [1 : 0] m_cfg_current_speed;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status err_cor_out" *)
output wire m_cfg_err_cor_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status err_fatal_out" *)
output wire m_cfg_err_fatal_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status err_nonfatal_out" *)
output wire m_cfg_err_nonfatal_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status function_status" *)
output wire [15 : 0] m_cfg_function_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status local_error_out" *)
output wire [4 : 0] m_cfg_local_error_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status ltssm_state" *)
output wire [5 : 0] m_cfg_ltssm_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status max_payload" *)
output wire [1 : 0] m_cfg_max_payload;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status max_read_req" *)
output wire [2 : 0] m_cfg_max_read_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status negotiated_width" *)
output wire [2 : 0] m_cfg_negotiated_width;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status phy_link_down" *)
output wire m_cfg_phy_link_down;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status phy_link_status" *)
output wire [1 : 0] m_cfg_phy_link_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status pl_status_change" *)
output wire m_cfg_pl_status_change;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status rq_seq_num0" *)
output wire [5 : 0] m_pcie_rq_seq_num0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status rq_seq_num1" *)
output wire [5 : 0] m_pcie_rq_seq_num1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status rq_seq_num_vld0" *)
output wire m_pcie_rq_seq_num_vld0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status rq_seq_num_vld1" *)
output wire m_pcie_rq_seq_num_vld1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 m_pcie4_cfg_status tph_requester_enable" *)
output wire [3 : 0] m_cfg_tph_requester_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status cq_np_req" *)
output wire [1 : 0] s_pcie_cq_np_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status cq_np_req_count" *)
input wire [5 : 0] s_pcie_cq_np_req_count;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status current_speed" *)
input wire [1 : 0] s_cfg_current_speed;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status err_cor_out" *)
input wire s_cfg_err_cor_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status err_fatal_out" *)
input wire s_cfg_err_fatal_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status err_nonfatal_out" *)
input wire s_cfg_err_nonfatal_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status function_status" *)
input wire [15 : 0] s_cfg_function_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status local_error_out" *)
input wire [4 : 0] s_cfg_local_error_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status ltssm_state" *)
input wire [5 : 0] s_cfg_ltssm_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status max_payload" *)
input wire [1 : 0] s_cfg_max_payload;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status max_read_req" *)
input wire [2 : 0] s_cfg_max_read_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status negotiated_width" *)
input wire [2 : 0] s_cfg_negotiated_width;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status phy_link_down" *)
input wire s_cfg_phy_link_down;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status phy_link_status" *)
input wire [1 : 0] s_cfg_phy_link_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status pl_status_change" *)
input wire s_cfg_pl_status_change;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status rq_seq_num0" *)
input wire [5 : 0] s_pcie_rq_seq_num0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status rq_seq_num1" *)
input wire [5 : 0] s_pcie_rq_seq_num1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status rq_seq_num_vld0" *)
input wire s_pcie_rq_seq_num_vld0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status rq_seq_num_vld1" *)
input wire s_pcie_rq_seq_num_vld1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status:1.0 s_pcie4_cfg_status tph_requester_enable" *)
input wire [3 : 0] s_cfg_tph_requester_enable;

  shell_utils_pcie_credit_handler_v2_0_0 #(
    .C_TDATA_WIDTH(512),
    .C_TUSER_WIDTH(183)
  ) inst (
    .user_clk(user_clk),
    .user_resetn(user_resetn),
    .pcie_link_up(pcie_link_up),
    .pcie_link_up_toggle_status(pcie_link_up_toggle_status),
    .pcie_link_up_toggle_clear(pcie_link_up_toggle_clear),
    .mon_axis_cq_tdata(mon_axis_cq_tdata),
    .mon_axis_cq_tvalid(mon_axis_cq_tvalid),
    .mon_axis_cq_tready(mon_axis_cq_tready),
    .mon_axis_cq_usr_tdata(mon_axis_cq_usr_tdata),
    .mon_axis_cq_usr_tuser(mon_axis_cq_usr_tuser),
    .mon_axis_cq_usr_tvalid(mon_axis_cq_usr_tvalid),
    .mon_axis_cq_usr_tready(mon_axis_cq_usr_tready),
    .m_pcie_cq_np_req(m_pcie_cq_np_req),
    .m_pcie_cq_np_req_count(m_pcie_cq_np_req_count),
    .m_cfg_current_speed(m_cfg_current_speed),
    .m_cfg_err_cor_out(m_cfg_err_cor_out),
    .m_cfg_err_fatal_out(m_cfg_err_fatal_out),
    .m_cfg_err_nonfatal_out(m_cfg_err_nonfatal_out),
    .m_cfg_function_status(m_cfg_function_status),
    .m_cfg_local_error_out(m_cfg_local_error_out),
    .m_cfg_ltssm_state(m_cfg_ltssm_state),
    .m_cfg_max_payload(m_cfg_max_payload),
    .m_cfg_max_read_req(m_cfg_max_read_req),
    .m_cfg_negotiated_width(m_cfg_negotiated_width),
    .m_cfg_phy_link_down(m_cfg_phy_link_down),
    .m_cfg_phy_link_status(m_cfg_phy_link_status),
    .m_cfg_pl_status_change(m_cfg_pl_status_change),
    .m_pcie_rq_seq_num0(m_pcie_rq_seq_num0),
    .m_pcie_rq_seq_num1(m_pcie_rq_seq_num1),
    .m_pcie_rq_seq_num_vld0(m_pcie_rq_seq_num_vld0),
    .m_pcie_rq_seq_num_vld1(m_pcie_rq_seq_num_vld1),
    .m_cfg_tph_requester_enable(m_cfg_tph_requester_enable),
    .s_pcie_cq_np_req(s_pcie_cq_np_req),
    .s_pcie_cq_np_req_count(s_pcie_cq_np_req_count),
    .s_cfg_current_speed(s_cfg_current_speed),
    .s_cfg_err_cor_out(s_cfg_err_cor_out),
    .s_cfg_err_fatal_out(s_cfg_err_fatal_out),
    .s_cfg_err_nonfatal_out(s_cfg_err_nonfatal_out),
    .s_cfg_function_status(s_cfg_function_status),
    .s_cfg_local_error_out(s_cfg_local_error_out),
    .s_cfg_ltssm_state(s_cfg_ltssm_state),
    .s_cfg_max_payload(s_cfg_max_payload),
    .s_cfg_max_read_req(s_cfg_max_read_req),
    .s_cfg_negotiated_width(s_cfg_negotiated_width),
    .s_cfg_phy_link_down(s_cfg_phy_link_down),
    .s_cfg_phy_link_status(s_cfg_phy_link_status),
    .s_cfg_pl_status_change(s_cfg_pl_status_change),
    .s_pcie_rq_seq_num0(s_pcie_rq_seq_num0),
    .s_pcie_rq_seq_num1(s_pcie_rq_seq_num1),
    .s_pcie_rq_seq_num_vld0(s_pcie_rq_seq_num_vld0),
    .s_pcie_rq_seq_num_vld1(s_pcie_rq_seq_num_vld1),
    .s_cfg_tph_requester_enable(s_cfg_tph_requester_enable)
  );
endmodule
