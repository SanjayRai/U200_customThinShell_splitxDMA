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


// IP VLNV: xilinx.com:ip:pcie_axi4lite_tap:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module X_PCIe_Bridge_ICAP_complex_axiltap_0_0 (
  aclk,
  aresetn,
  s_axis_pcie_cq_tdata,
  s_axis_pcie_cq_tuser,
  s_axis_pcie_cq_tlast,
  s_axis_pcie_cq_tkeep,
  s_axis_pcie_cq_tvalid,
  s_axis_pcie_cq_tready,
  m_axis_pcie_cc_tdata,
  m_axis_pcie_cc_tuser,
  m_axis_pcie_cc_tlast,
  m_axis_pcie_cc_tkeep,
  m_axis_pcie_cc_tvalid,
  m_axis_pcie_cc_tready,
  m_axis_bypass_cq_tdata,
  m_axis_bypass_cq_tuser,
  m_axis_bypass_cq_tlast,
  m_axis_bypass_cq_tkeep,
  m_axis_bypass_cq_tvalid,
  m_axis_bypass_cq_tready,
  s_axis_bypass_cc_tdata,
  s_axis_bypass_cc_tuser,
  s_axis_bypass_cc_tlast,
  s_axis_bypass_cc_tkeep,
  s_axis_bypass_cc_tvalid,
  s_axis_bypass_cc_tready,
  m_axi_awaddr,
  m_axi_awprot,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_bready,
  m_axi_araddr,
  m_axi_arprot,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rvalid,
  m_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXI:S_AXIS_PCIE_CQ:M_AXIS_PCIE_CC:M_AXIS_BYPASS_CQ:S_AXIS_BYPASS_CC, ASSOCIATED_RESET aresetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PCIE_CQ TDATA" *)
input wire [511 : 0] s_axis_pcie_cq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PCIE_CQ TUSER" *)
input wire [182 : 0] s_axis_pcie_cq_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PCIE_CQ TLAST" *)
input wire s_axis_pcie_cq_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PCIE_CQ TKEEP" *)
input wire [15 : 0] s_axis_pcie_cq_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PCIE_CQ TVALID" *)
input wire s_axis_pcie_cq_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_PCIE_CQ, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 183, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PCIE_CQ TREADY" *)
output wire s_axis_pcie_cq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PCIE_CC TDATA" *)
output wire [511 : 0] m_axis_pcie_cc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PCIE_CC TUSER" *)
output wire [80 : 0] m_axis_pcie_cc_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PCIE_CC TLAST" *)
output wire m_axis_pcie_cc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PCIE_CC TKEEP" *)
output wire [15 : 0] m_axis_pcie_cc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PCIE_CC TVALID" *)
output wire m_axis_pcie_cc_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_PCIE_CC, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 81, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PCIE_CC TREADY" *)
input wire m_axis_pcie_cc_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BYPASS_CQ TDATA" *)
output wire [511 : 0] m_axis_bypass_cq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BYPASS_CQ TUSER" *)
output wire [182 : 0] m_axis_bypass_cq_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BYPASS_CQ TLAST" *)
output wire m_axis_bypass_cq_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BYPASS_CQ TKEEP" *)
output wire [15 : 0] m_axis_bypass_cq_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BYPASS_CQ TVALID" *)
output wire m_axis_bypass_cq_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_BYPASS_CQ, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 183, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BYPASS_CQ TREADY" *)
input wire m_axis_bypass_cq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_BYPASS_CC TDATA" *)
input wire [511 : 0] s_axis_bypass_cc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_BYPASS_CC TUSER" *)
input wire [80 : 0] s_axis_bypass_cc_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_BYPASS_CC TLAST" *)
input wire s_axis_bypass_cc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_BYPASS_CC TKEEP" *)
input wire [15 : 0] s_axis_bypass_cc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_BYPASS_CC TVALID" *)
input wire s_axis_bypass_cc_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_BYPASS_CC, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 81, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_BYPASS_CC TREADY" *)
output wire s_axis_bypass_cc_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [31 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [3 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [31 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk,\
 NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;

  pcie_axi4lite_tap_v1_0_1_top #(
    .C_TARGET_FUNCTION('H1),
    .C_BAR_ID('B000),
    .C_TDATA_WIDTH(512),
    .C_TUSER_WIDTH_CQ(183),
    .C_TUSER_WIDTH_CC(81),
    .C_ADDR_WIDTH(32),
    .C_BAR2AXI('H0000000000000000),
    .C_BAR_SIZE('HFFFFFFFFFFF00000)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_pcie_cq_tdata(s_axis_pcie_cq_tdata),
    .s_axis_pcie_cq_tuser(s_axis_pcie_cq_tuser),
    .s_axis_pcie_cq_tlast(s_axis_pcie_cq_tlast),
    .s_axis_pcie_cq_tkeep(s_axis_pcie_cq_tkeep),
    .s_axis_pcie_cq_tvalid(s_axis_pcie_cq_tvalid),
    .s_axis_pcie_cq_tready(s_axis_pcie_cq_tready),
    .m_axis_pcie_cc_tdata(m_axis_pcie_cc_tdata),
    .m_axis_pcie_cc_tuser(m_axis_pcie_cc_tuser),
    .m_axis_pcie_cc_tlast(m_axis_pcie_cc_tlast),
    .m_axis_pcie_cc_tkeep(m_axis_pcie_cc_tkeep),
    .m_axis_pcie_cc_tvalid(m_axis_pcie_cc_tvalid),
    .m_axis_pcie_cc_tready(m_axis_pcie_cc_tready),
    .m_axis_bypass_cq_tdata(m_axis_bypass_cq_tdata),
    .m_axis_bypass_cq_tuser(m_axis_bypass_cq_tuser),
    .m_axis_bypass_cq_tlast(m_axis_bypass_cq_tlast),
    .m_axis_bypass_cq_tkeep(m_axis_bypass_cq_tkeep),
    .m_axis_bypass_cq_tvalid(m_axis_bypass_cq_tvalid),
    .m_axis_bypass_cq_tready(m_axis_bypass_cq_tready),
    .s_axis_bypass_cc_tdata(s_axis_bypass_cc_tdata),
    .s_axis_bypass_cc_tuser(s_axis_bypass_cc_tuser),
    .s_axis_bypass_cc_tlast(s_axis_bypass_cc_tlast),
    .s_axis_bypass_cc_tkeep(s_axis_bypass_cc_tkeep),
    .s_axis_bypass_cc_tvalid(s_axis_bypass_cc_tvalid),
    .s_axis_bypass_cc_tready(s_axis_bypass_cc_tready),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready)
  );
endmodule
