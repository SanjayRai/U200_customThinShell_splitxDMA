//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat Sep  5 13:11:00 2020
//Host        : xsjgd1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
//Command     : generate_target dynamic_region_ddr4.bd
//Design      : dynamic_region_ddr4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DDR_SUB_SYS_imp_1KAMHSI
   (C0_DDR4_S_AXI_CTRL_araddr,
    C0_DDR4_S_AXI_CTRL_arready,
    C0_DDR4_S_AXI_CTRL_arvalid,
    C0_DDR4_S_AXI_CTRL_awaddr,
    C0_DDR4_S_AXI_CTRL_awready,
    C0_DDR4_S_AXI_CTRL_awvalid,
    C0_DDR4_S_AXI_CTRL_bready,
    C0_DDR4_S_AXI_CTRL_bresp,
    C0_DDR4_S_AXI_CTRL_bvalid,
    C0_DDR4_S_AXI_CTRL_rdata,
    C0_DDR4_S_AXI_CTRL_rready,
    C0_DDR4_S_AXI_CTRL_rresp,
    C0_DDR4_S_AXI_CTRL_rvalid,
    C0_DDR4_S_AXI_CTRL_wdata,
    C0_DDR4_S_AXI_CTRL_wready,
    C0_DDR4_S_AXI_CTRL_wvalid,
    C0_DDR4_S_AXI_araddr,
    C0_DDR4_S_AXI_arburst,
    C0_DDR4_S_AXI_arcache,
    C0_DDR4_S_AXI_arid,
    C0_DDR4_S_AXI_arlen,
    C0_DDR4_S_AXI_arlock,
    C0_DDR4_S_AXI_arprot,
    C0_DDR4_S_AXI_arqos,
    C0_DDR4_S_AXI_arready,
    C0_DDR4_S_AXI_arsize,
    C0_DDR4_S_AXI_arvalid,
    C0_DDR4_S_AXI_awaddr,
    C0_DDR4_S_AXI_awburst,
    C0_DDR4_S_AXI_awcache,
    C0_DDR4_S_AXI_awid,
    C0_DDR4_S_AXI_awlen,
    C0_DDR4_S_AXI_awlock,
    C0_DDR4_S_AXI_awprot,
    C0_DDR4_S_AXI_awqos,
    C0_DDR4_S_AXI_awready,
    C0_DDR4_S_AXI_awsize,
    C0_DDR4_S_AXI_awvalid,
    C0_DDR4_S_AXI_bid,
    C0_DDR4_S_AXI_bready,
    C0_DDR4_S_AXI_bresp,
    C0_DDR4_S_AXI_bvalid,
    C0_DDR4_S_AXI_rdata,
    C0_DDR4_S_AXI_rid,
    C0_DDR4_S_AXI_rlast,
    C0_DDR4_S_AXI_rready,
    C0_DDR4_S_AXI_rresp,
    C0_DDR4_S_AXI_rvalid,
    C0_DDR4_S_AXI_wdata,
    C0_DDR4_S_AXI_wlast,
    C0_DDR4_S_AXI_wready,
    C0_DDR4_S_AXI_wstrb,
    C0_DDR4_S_AXI_wvalid,
    C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    C0_XSDB_S_AXIL_araddr,
    C0_XSDB_S_AXIL_arprot,
    C0_XSDB_S_AXIL_arready,
    C0_XSDB_S_AXIL_arvalid,
    C0_XSDB_S_AXIL_awaddr,
    C0_XSDB_S_AXIL_awprot,
    C0_XSDB_S_AXIL_awready,
    C0_XSDB_S_AXIL_awvalid,
    C0_XSDB_S_AXIL_bready,
    C0_XSDB_S_AXIL_bresp,
    C0_XSDB_S_AXIL_bvalid,
    C0_XSDB_S_AXIL_rdata,
    C0_XSDB_S_AXIL_rready,
    C0_XSDB_S_AXIL_rresp,
    C0_XSDB_S_AXIL_rvalid,
    C0_XSDB_S_AXIL_wdata,
    C0_XSDB_S_AXIL_wready,
    C0_XSDB_S_AXIL_wstrb,
    C0_XSDB_S_AXIL_wvalid,
    C2_DDR4_S_AXI_CTRL_araddr,
    C2_DDR4_S_AXI_CTRL_arready,
    C2_DDR4_S_AXI_CTRL_arvalid,
    C2_DDR4_S_AXI_CTRL_awaddr,
    C2_DDR4_S_AXI_CTRL_awready,
    C2_DDR4_S_AXI_CTRL_awvalid,
    C2_DDR4_S_AXI_CTRL_bready,
    C2_DDR4_S_AXI_CTRL_bresp,
    C2_DDR4_S_AXI_CTRL_bvalid,
    C2_DDR4_S_AXI_CTRL_rdata,
    C2_DDR4_S_AXI_CTRL_rready,
    C2_DDR4_S_AXI_CTRL_rresp,
    C2_DDR4_S_AXI_CTRL_rvalid,
    C2_DDR4_S_AXI_CTRL_wdata,
    C2_DDR4_S_AXI_CTRL_wready,
    C2_DDR4_S_AXI_CTRL_wvalid,
    C2_DDR4_S_AXI_araddr,
    C2_DDR4_S_AXI_arburst,
    C2_DDR4_S_AXI_arcache,
    C2_DDR4_S_AXI_arid,
    C2_DDR4_S_AXI_arlen,
    C2_DDR4_S_AXI_arlock,
    C2_DDR4_S_AXI_arprot,
    C2_DDR4_S_AXI_arqos,
    C2_DDR4_S_AXI_arready,
    C2_DDR4_S_AXI_arsize,
    C2_DDR4_S_AXI_arvalid,
    C2_DDR4_S_AXI_awaddr,
    C2_DDR4_S_AXI_awburst,
    C2_DDR4_S_AXI_awcache,
    C2_DDR4_S_AXI_awid,
    C2_DDR4_S_AXI_awlen,
    C2_DDR4_S_AXI_awlock,
    C2_DDR4_S_AXI_awprot,
    C2_DDR4_S_AXI_awqos,
    C2_DDR4_S_AXI_awready,
    C2_DDR4_S_AXI_awsize,
    C2_DDR4_S_AXI_awvalid,
    C2_DDR4_S_AXI_bid,
    C2_DDR4_S_AXI_bready,
    C2_DDR4_S_AXI_bresp,
    C2_DDR4_S_AXI_bvalid,
    C2_DDR4_S_AXI_rdata,
    C2_DDR4_S_AXI_rid,
    C2_DDR4_S_AXI_rlast,
    C2_DDR4_S_AXI_rready,
    C2_DDR4_S_AXI_rresp,
    C2_DDR4_S_AXI_rvalid,
    C2_DDR4_S_AXI_wdata,
    C2_DDR4_S_AXI_wlast,
    C2_DDR4_S_AXI_wready,
    C2_DDR4_S_AXI_wstrb,
    C2_DDR4_S_AXI_wvalid,
    C2_SYS_CLK_clk_n,
    C2_SYS_CLK_clk_p,
    C2_XSDB_S_AXIL_araddr,
    C2_XSDB_S_AXIL_arprot,
    C2_XSDB_S_AXIL_arready,
    C2_XSDB_S_AXIL_arvalid,
    C2_XSDB_S_AXIL_awaddr,
    C2_XSDB_S_AXIL_awprot,
    C2_XSDB_S_AXIL_awready,
    C2_XSDB_S_AXIL_awvalid,
    C2_XSDB_S_AXIL_bready,
    C2_XSDB_S_AXIL_bresp,
    C2_XSDB_S_AXIL_bvalid,
    C2_XSDB_S_AXIL_rdata,
    C2_XSDB_S_AXIL_rready,
    C2_XSDB_S_AXIL_rresp,
    C2_XSDB_S_AXIL_rvalid,
    C2_XSDB_S_AXIL_wdata,
    C2_XSDB_S_AXIL_wready,
    C2_XSDB_S_AXIL_wstrb,
    C2_XSDB_S_AXIL_wvalid,
    C3_DDR4_S_AXI_CTRL_araddr,
    C3_DDR4_S_AXI_CTRL_arready,
    C3_DDR4_S_AXI_CTRL_arvalid,
    C3_DDR4_S_AXI_CTRL_awaddr,
    C3_DDR4_S_AXI_CTRL_awready,
    C3_DDR4_S_AXI_CTRL_awvalid,
    C3_DDR4_S_AXI_CTRL_bready,
    C3_DDR4_S_AXI_CTRL_bresp,
    C3_DDR4_S_AXI_CTRL_bvalid,
    C3_DDR4_S_AXI_CTRL_rdata,
    C3_DDR4_S_AXI_CTRL_rready,
    C3_DDR4_S_AXI_CTRL_rresp,
    C3_DDR4_S_AXI_CTRL_rvalid,
    C3_DDR4_S_AXI_CTRL_wdata,
    C3_DDR4_S_AXI_CTRL_wready,
    C3_DDR4_S_AXI_CTRL_wvalid,
    C3_DDR4_S_AXI_araddr,
    C3_DDR4_S_AXI_arburst,
    C3_DDR4_S_AXI_arcache,
    C3_DDR4_S_AXI_arid,
    C3_DDR4_S_AXI_arlen,
    C3_DDR4_S_AXI_arlock,
    C3_DDR4_S_AXI_arprot,
    C3_DDR4_S_AXI_arqos,
    C3_DDR4_S_AXI_arready,
    C3_DDR4_S_AXI_arsize,
    C3_DDR4_S_AXI_arvalid,
    C3_DDR4_S_AXI_awaddr,
    C3_DDR4_S_AXI_awburst,
    C3_DDR4_S_AXI_awcache,
    C3_DDR4_S_AXI_awid,
    C3_DDR4_S_AXI_awlen,
    C3_DDR4_S_AXI_awlock,
    C3_DDR4_S_AXI_awprot,
    C3_DDR4_S_AXI_awqos,
    C3_DDR4_S_AXI_awready,
    C3_DDR4_S_AXI_awsize,
    C3_DDR4_S_AXI_awvalid,
    C3_DDR4_S_AXI_bid,
    C3_DDR4_S_AXI_bready,
    C3_DDR4_S_AXI_bresp,
    C3_DDR4_S_AXI_bvalid,
    C3_DDR4_S_AXI_rdata,
    C3_DDR4_S_AXI_rid,
    C3_DDR4_S_AXI_rlast,
    C3_DDR4_S_AXI_rready,
    C3_DDR4_S_AXI_rresp,
    C3_DDR4_S_AXI_rvalid,
    C3_DDR4_S_AXI_wdata,
    C3_DDR4_S_AXI_wlast,
    C3_DDR4_S_AXI_wready,
    C3_DDR4_S_AXI_wstrb,
    C3_DDR4_S_AXI_wvalid,
    C3_SYS_CLK_clk_n,
    C3_SYS_CLK_clk_p,
    C3_XSDB_S_AXIL_araddr,
    C3_XSDB_S_AXIL_arprot,
    C3_XSDB_S_AXIL_arready,
    C3_XSDB_S_AXIL_arvalid,
    C3_XSDB_S_AXIL_awaddr,
    C3_XSDB_S_AXIL_awprot,
    C3_XSDB_S_AXIL_awready,
    C3_XSDB_S_AXIL_awvalid,
    C3_XSDB_S_AXIL_bready,
    C3_XSDB_S_AXIL_bresp,
    C3_XSDB_S_AXIL_bvalid,
    C3_XSDB_S_AXIL_rdata,
    C3_XSDB_S_AXIL_rready,
    C3_XSDB_S_AXIL_rresp,
    C3_XSDB_S_AXIL_rvalid,
    C3_XSDB_S_AXIL_wdata,
    C3_XSDB_S_AXIL_wready,
    C3_XSDB_S_AXIL_wstrb,
    C3_XSDB_S_AXIL_wvalid,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_app_mem_init_skip,
    c0_ddr4_app_restore_complete,
    c0_ddr4_app_sref_ack,
    c0_ddr4_app_sref_req,
    c0_ddr4_app_xsdb_select,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_par,
    c0_ddr4_reset_n,
    c0_ddr4_ui_clk,
    c0_init_calib_complete,
    c0_peripheral_aresetn,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_app_mem_init_skip,
    c2_ddr4_app_restore_complete,
    c2_ddr4_app_sref_ack,
    c2_ddr4_app_sref_req,
    c2_ddr4_app_xsdb_select,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_par,
    c2_ddr4_reset_n,
    c2_ddr4_ui_clk,
    c2_init_calib_complete,
    c2_peripheral_aresetn,
    c3_ddr4_act_n,
    c3_ddr4_adr,
    c3_ddr4_app_mem_init_skip,
    c3_ddr4_app_restore_complete,
    c3_ddr4_app_sref_ack,
    c3_ddr4_app_sref_req,
    c3_ddr4_app_xsdb_select,
    c3_ddr4_ba,
    c3_ddr4_bg,
    c3_ddr4_ck_c,
    c3_ddr4_ck_t,
    c3_ddr4_cke,
    c3_ddr4_cs_n,
    c3_ddr4_dq,
    c3_ddr4_dqs_c,
    c3_ddr4_dqs_t,
    c3_ddr4_odt,
    c3_ddr4_par,
    c3_ddr4_reset_n,
    c3_ddr4_ui_clk,
    c3_init_calib_complete,
    c3_peripheral_aresetn,
    sys_rst_ddr_0,
    sys_rst_ddr_2,
    sys_rst_ddr_3);
  input [31:0]C0_DDR4_S_AXI_CTRL_araddr;
  output C0_DDR4_S_AXI_CTRL_arready;
  input C0_DDR4_S_AXI_CTRL_arvalid;
  input [31:0]C0_DDR4_S_AXI_CTRL_awaddr;
  output C0_DDR4_S_AXI_CTRL_awready;
  input C0_DDR4_S_AXI_CTRL_awvalid;
  input C0_DDR4_S_AXI_CTRL_bready;
  output [1:0]C0_DDR4_S_AXI_CTRL_bresp;
  output C0_DDR4_S_AXI_CTRL_bvalid;
  output [31:0]C0_DDR4_S_AXI_CTRL_rdata;
  input C0_DDR4_S_AXI_CTRL_rready;
  output [1:0]C0_DDR4_S_AXI_CTRL_rresp;
  output C0_DDR4_S_AXI_CTRL_rvalid;
  input [31:0]C0_DDR4_S_AXI_CTRL_wdata;
  output C0_DDR4_S_AXI_CTRL_wready;
  input C0_DDR4_S_AXI_CTRL_wvalid;
  input [63:0]C0_DDR4_S_AXI_araddr;
  input [1:0]C0_DDR4_S_AXI_arburst;
  input [3:0]C0_DDR4_S_AXI_arcache;
  input [5:0]C0_DDR4_S_AXI_arid;
  input [7:0]C0_DDR4_S_AXI_arlen;
  input [0:0]C0_DDR4_S_AXI_arlock;
  input [2:0]C0_DDR4_S_AXI_arprot;
  input [3:0]C0_DDR4_S_AXI_arqos;
  output C0_DDR4_S_AXI_arready;
  input [2:0]C0_DDR4_S_AXI_arsize;
  input C0_DDR4_S_AXI_arvalid;
  input [63:0]C0_DDR4_S_AXI_awaddr;
  input [1:0]C0_DDR4_S_AXI_awburst;
  input [3:0]C0_DDR4_S_AXI_awcache;
  input [5:0]C0_DDR4_S_AXI_awid;
  input [7:0]C0_DDR4_S_AXI_awlen;
  input [0:0]C0_DDR4_S_AXI_awlock;
  input [2:0]C0_DDR4_S_AXI_awprot;
  input [3:0]C0_DDR4_S_AXI_awqos;
  output C0_DDR4_S_AXI_awready;
  input [2:0]C0_DDR4_S_AXI_awsize;
  input C0_DDR4_S_AXI_awvalid;
  output [5:0]C0_DDR4_S_AXI_bid;
  input C0_DDR4_S_AXI_bready;
  output [1:0]C0_DDR4_S_AXI_bresp;
  output C0_DDR4_S_AXI_bvalid;
  output [511:0]C0_DDR4_S_AXI_rdata;
  output [5:0]C0_DDR4_S_AXI_rid;
  output C0_DDR4_S_AXI_rlast;
  input C0_DDR4_S_AXI_rready;
  output [1:0]C0_DDR4_S_AXI_rresp;
  output C0_DDR4_S_AXI_rvalid;
  input [511:0]C0_DDR4_S_AXI_wdata;
  input C0_DDR4_S_AXI_wlast;
  output C0_DDR4_S_AXI_wready;
  input [63:0]C0_DDR4_S_AXI_wstrb;
  input C0_DDR4_S_AXI_wvalid;
  input C0_SYS_CLK_clk_n;
  input C0_SYS_CLK_clk_p;
  input [17:0]C0_XSDB_S_AXIL_araddr;
  input [2:0]C0_XSDB_S_AXIL_arprot;
  output C0_XSDB_S_AXIL_arready;
  input C0_XSDB_S_AXIL_arvalid;
  input [17:0]C0_XSDB_S_AXIL_awaddr;
  input [2:0]C0_XSDB_S_AXIL_awprot;
  output C0_XSDB_S_AXIL_awready;
  input C0_XSDB_S_AXIL_awvalid;
  input C0_XSDB_S_AXIL_bready;
  output [1:0]C0_XSDB_S_AXIL_bresp;
  output C0_XSDB_S_AXIL_bvalid;
  output [31:0]C0_XSDB_S_AXIL_rdata;
  input C0_XSDB_S_AXIL_rready;
  output [1:0]C0_XSDB_S_AXIL_rresp;
  output C0_XSDB_S_AXIL_rvalid;
  input [31:0]C0_XSDB_S_AXIL_wdata;
  output C0_XSDB_S_AXIL_wready;
  input [3:0]C0_XSDB_S_AXIL_wstrb;
  input C0_XSDB_S_AXIL_wvalid;
  input [31:0]C2_DDR4_S_AXI_CTRL_araddr;
  output C2_DDR4_S_AXI_CTRL_arready;
  input C2_DDR4_S_AXI_CTRL_arvalid;
  input [31:0]C2_DDR4_S_AXI_CTRL_awaddr;
  output C2_DDR4_S_AXI_CTRL_awready;
  input C2_DDR4_S_AXI_CTRL_awvalid;
  input C2_DDR4_S_AXI_CTRL_bready;
  output [1:0]C2_DDR4_S_AXI_CTRL_bresp;
  output C2_DDR4_S_AXI_CTRL_bvalid;
  output [31:0]C2_DDR4_S_AXI_CTRL_rdata;
  input C2_DDR4_S_AXI_CTRL_rready;
  output [1:0]C2_DDR4_S_AXI_CTRL_rresp;
  output C2_DDR4_S_AXI_CTRL_rvalid;
  input [31:0]C2_DDR4_S_AXI_CTRL_wdata;
  output C2_DDR4_S_AXI_CTRL_wready;
  input C2_DDR4_S_AXI_CTRL_wvalid;
  input [63:0]C2_DDR4_S_AXI_araddr;
  input [1:0]C2_DDR4_S_AXI_arburst;
  input [3:0]C2_DDR4_S_AXI_arcache;
  input [5:0]C2_DDR4_S_AXI_arid;
  input [7:0]C2_DDR4_S_AXI_arlen;
  input [0:0]C2_DDR4_S_AXI_arlock;
  input [2:0]C2_DDR4_S_AXI_arprot;
  input [3:0]C2_DDR4_S_AXI_arqos;
  output C2_DDR4_S_AXI_arready;
  input [2:0]C2_DDR4_S_AXI_arsize;
  input C2_DDR4_S_AXI_arvalid;
  input [63:0]C2_DDR4_S_AXI_awaddr;
  input [1:0]C2_DDR4_S_AXI_awburst;
  input [3:0]C2_DDR4_S_AXI_awcache;
  input [5:0]C2_DDR4_S_AXI_awid;
  input [7:0]C2_DDR4_S_AXI_awlen;
  input [0:0]C2_DDR4_S_AXI_awlock;
  input [2:0]C2_DDR4_S_AXI_awprot;
  input [3:0]C2_DDR4_S_AXI_awqos;
  output C2_DDR4_S_AXI_awready;
  input [2:0]C2_DDR4_S_AXI_awsize;
  input C2_DDR4_S_AXI_awvalid;
  output [5:0]C2_DDR4_S_AXI_bid;
  input C2_DDR4_S_AXI_bready;
  output [1:0]C2_DDR4_S_AXI_bresp;
  output C2_DDR4_S_AXI_bvalid;
  output [511:0]C2_DDR4_S_AXI_rdata;
  output [5:0]C2_DDR4_S_AXI_rid;
  output C2_DDR4_S_AXI_rlast;
  input C2_DDR4_S_AXI_rready;
  output [1:0]C2_DDR4_S_AXI_rresp;
  output C2_DDR4_S_AXI_rvalid;
  input [511:0]C2_DDR4_S_AXI_wdata;
  input C2_DDR4_S_AXI_wlast;
  output C2_DDR4_S_AXI_wready;
  input [63:0]C2_DDR4_S_AXI_wstrb;
  input C2_DDR4_S_AXI_wvalid;
  input C2_SYS_CLK_clk_n;
  input C2_SYS_CLK_clk_p;
  input [17:0]C2_XSDB_S_AXIL_araddr;
  input [2:0]C2_XSDB_S_AXIL_arprot;
  output C2_XSDB_S_AXIL_arready;
  input C2_XSDB_S_AXIL_arvalid;
  input [17:0]C2_XSDB_S_AXIL_awaddr;
  input [2:0]C2_XSDB_S_AXIL_awprot;
  output C2_XSDB_S_AXIL_awready;
  input C2_XSDB_S_AXIL_awvalid;
  input C2_XSDB_S_AXIL_bready;
  output [1:0]C2_XSDB_S_AXIL_bresp;
  output C2_XSDB_S_AXIL_bvalid;
  output [31:0]C2_XSDB_S_AXIL_rdata;
  input C2_XSDB_S_AXIL_rready;
  output [1:0]C2_XSDB_S_AXIL_rresp;
  output C2_XSDB_S_AXIL_rvalid;
  input [31:0]C2_XSDB_S_AXIL_wdata;
  output C2_XSDB_S_AXIL_wready;
  input [3:0]C2_XSDB_S_AXIL_wstrb;
  input C2_XSDB_S_AXIL_wvalid;
  input [31:0]C3_DDR4_S_AXI_CTRL_araddr;
  output C3_DDR4_S_AXI_CTRL_arready;
  input C3_DDR4_S_AXI_CTRL_arvalid;
  input [31:0]C3_DDR4_S_AXI_CTRL_awaddr;
  output C3_DDR4_S_AXI_CTRL_awready;
  input C3_DDR4_S_AXI_CTRL_awvalid;
  input C3_DDR4_S_AXI_CTRL_bready;
  output [1:0]C3_DDR4_S_AXI_CTRL_bresp;
  output C3_DDR4_S_AXI_CTRL_bvalid;
  output [31:0]C3_DDR4_S_AXI_CTRL_rdata;
  input C3_DDR4_S_AXI_CTRL_rready;
  output [1:0]C3_DDR4_S_AXI_CTRL_rresp;
  output C3_DDR4_S_AXI_CTRL_rvalid;
  input [31:0]C3_DDR4_S_AXI_CTRL_wdata;
  output C3_DDR4_S_AXI_CTRL_wready;
  input C3_DDR4_S_AXI_CTRL_wvalid;
  input [63:0]C3_DDR4_S_AXI_araddr;
  input [1:0]C3_DDR4_S_AXI_arburst;
  input [3:0]C3_DDR4_S_AXI_arcache;
  input [5:0]C3_DDR4_S_AXI_arid;
  input [7:0]C3_DDR4_S_AXI_arlen;
  input [0:0]C3_DDR4_S_AXI_arlock;
  input [2:0]C3_DDR4_S_AXI_arprot;
  input [3:0]C3_DDR4_S_AXI_arqos;
  output C3_DDR4_S_AXI_arready;
  input [2:0]C3_DDR4_S_AXI_arsize;
  input C3_DDR4_S_AXI_arvalid;
  input [63:0]C3_DDR4_S_AXI_awaddr;
  input [1:0]C3_DDR4_S_AXI_awburst;
  input [3:0]C3_DDR4_S_AXI_awcache;
  input [5:0]C3_DDR4_S_AXI_awid;
  input [7:0]C3_DDR4_S_AXI_awlen;
  input [0:0]C3_DDR4_S_AXI_awlock;
  input [2:0]C3_DDR4_S_AXI_awprot;
  input [3:0]C3_DDR4_S_AXI_awqos;
  output C3_DDR4_S_AXI_awready;
  input [2:0]C3_DDR4_S_AXI_awsize;
  input C3_DDR4_S_AXI_awvalid;
  output [5:0]C3_DDR4_S_AXI_bid;
  input C3_DDR4_S_AXI_bready;
  output [1:0]C3_DDR4_S_AXI_bresp;
  output C3_DDR4_S_AXI_bvalid;
  output [511:0]C3_DDR4_S_AXI_rdata;
  output [5:0]C3_DDR4_S_AXI_rid;
  output C3_DDR4_S_AXI_rlast;
  input C3_DDR4_S_AXI_rready;
  output [1:0]C3_DDR4_S_AXI_rresp;
  output C3_DDR4_S_AXI_rvalid;
  input [511:0]C3_DDR4_S_AXI_wdata;
  input C3_DDR4_S_AXI_wlast;
  output C3_DDR4_S_AXI_wready;
  input [63:0]C3_DDR4_S_AXI_wstrb;
  input C3_DDR4_S_AXI_wvalid;
  input C3_SYS_CLK_clk_n;
  input C3_SYS_CLK_clk_p;
  input [17:0]C3_XSDB_S_AXIL_araddr;
  input [2:0]C3_XSDB_S_AXIL_arprot;
  output C3_XSDB_S_AXIL_arready;
  input C3_XSDB_S_AXIL_arvalid;
  input [17:0]C3_XSDB_S_AXIL_awaddr;
  input [2:0]C3_XSDB_S_AXIL_awprot;
  output C3_XSDB_S_AXIL_awready;
  input C3_XSDB_S_AXIL_awvalid;
  input C3_XSDB_S_AXIL_bready;
  output [1:0]C3_XSDB_S_AXIL_bresp;
  output C3_XSDB_S_AXIL_bvalid;
  output [31:0]C3_XSDB_S_AXIL_rdata;
  input C3_XSDB_S_AXIL_rready;
  output [1:0]C3_XSDB_S_AXIL_rresp;
  output C3_XSDB_S_AXIL_rvalid;
  input [31:0]C3_XSDB_S_AXIL_wdata;
  output C3_XSDB_S_AXIL_wready;
  input [3:0]C3_XSDB_S_AXIL_wstrb;
  input C3_XSDB_S_AXIL_wvalid;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  input c0_ddr4_app_mem_init_skip;
  input c0_ddr4_app_restore_complete;
  output c0_ddr4_app_sref_ack;
  input c0_ddr4_app_sref_req;
  input c0_ddr4_app_xsdb_select;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_par;
  output c0_ddr4_reset_n;
  output c0_ddr4_ui_clk;
  output c0_init_calib_complete;
  output [0:0]c0_peripheral_aresetn;
  output c2_ddr4_act_n;
  output [16:0]c2_ddr4_adr;
  input c2_ddr4_app_mem_init_skip;
  input c2_ddr4_app_restore_complete;
  output c2_ddr4_app_sref_ack;
  input c2_ddr4_app_sref_req;
  input c2_ddr4_app_xsdb_select;
  output [1:0]c2_ddr4_ba;
  output [1:0]c2_ddr4_bg;
  output [0:0]c2_ddr4_ck_c;
  output [0:0]c2_ddr4_ck_t;
  output [0:0]c2_ddr4_cke;
  output [0:0]c2_ddr4_cs_n;
  inout [71:0]c2_ddr4_dq;
  inout [17:0]c2_ddr4_dqs_c;
  inout [17:0]c2_ddr4_dqs_t;
  output [0:0]c2_ddr4_odt;
  output c2_ddr4_par;
  output c2_ddr4_reset_n;
  output c2_ddr4_ui_clk;
  output c2_init_calib_complete;
  output [0:0]c2_peripheral_aresetn;
  output c3_ddr4_act_n;
  output [16:0]c3_ddr4_adr;
  input c3_ddr4_app_mem_init_skip;
  input c3_ddr4_app_restore_complete;
  output c3_ddr4_app_sref_ack;
  input c3_ddr4_app_sref_req;
  input c3_ddr4_app_xsdb_select;
  output [1:0]c3_ddr4_ba;
  output [1:0]c3_ddr4_bg;
  output [0:0]c3_ddr4_ck_c;
  output [0:0]c3_ddr4_ck_t;
  output [0:0]c3_ddr4_cke;
  output [0:0]c3_ddr4_cs_n;
  inout [71:0]c3_ddr4_dq;
  inout [17:0]c3_ddr4_dqs_c;
  inout [17:0]c3_ddr4_dqs_t;
  output [0:0]c3_ddr4_odt;
  output c3_ddr4_par;
  output c3_ddr4_reset_n;
  output c3_ddr4_ui_clk;
  output c3_init_calib_complete;
  output [0:0]c3_peripheral_aresetn;
  input sys_rst_ddr_0;
  input sys_rst_ddr_2;
  input sys_rst_ddr_3;

  wire [63:0]C0_DDR4_S_AXI1_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI1_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI1_1_ARCACHE;
  wire [5:0]C0_DDR4_S_AXI1_1_ARID;
  wire [7:0]C0_DDR4_S_AXI1_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI1_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI1_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI1_1_ARQOS;
  wire C0_DDR4_S_AXI1_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI1_1_ARSIZE;
  wire C0_DDR4_S_AXI1_1_ARVALID;
  wire [63:0]C0_DDR4_S_AXI1_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI1_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI1_1_AWCACHE;
  wire [5:0]C0_DDR4_S_AXI1_1_AWID;
  wire [7:0]C0_DDR4_S_AXI1_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI1_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI1_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI1_1_AWQOS;
  wire C0_DDR4_S_AXI1_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI1_1_AWSIZE;
  wire C0_DDR4_S_AXI1_1_AWVALID;
  wire [5:0]C0_DDR4_S_AXI1_1_BID;
  wire C0_DDR4_S_AXI1_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI1_1_BRESP;
  wire C0_DDR4_S_AXI1_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI1_1_RDATA;
  wire [5:0]C0_DDR4_S_AXI1_1_RID;
  wire C0_DDR4_S_AXI1_1_RLAST;
  wire C0_DDR4_S_AXI1_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI1_1_RRESP;
  wire C0_DDR4_S_AXI1_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI1_1_WDATA;
  wire C0_DDR4_S_AXI1_1_WLAST;
  wire C0_DDR4_S_AXI1_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI1_1_WSTRB;
  wire C0_DDR4_S_AXI1_1_WVALID;
  wire [63:0]C0_DDR4_S_AXI2_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI2_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI2_1_ARCACHE;
  wire [5:0]C0_DDR4_S_AXI2_1_ARID;
  wire [7:0]C0_DDR4_S_AXI2_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI2_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI2_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI2_1_ARQOS;
  wire C0_DDR4_S_AXI2_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI2_1_ARSIZE;
  wire C0_DDR4_S_AXI2_1_ARVALID;
  wire [63:0]C0_DDR4_S_AXI2_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI2_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI2_1_AWCACHE;
  wire [5:0]C0_DDR4_S_AXI2_1_AWID;
  wire [7:0]C0_DDR4_S_AXI2_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI2_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI2_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI2_1_AWQOS;
  wire C0_DDR4_S_AXI2_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI2_1_AWSIZE;
  wire C0_DDR4_S_AXI2_1_AWVALID;
  wire [5:0]C0_DDR4_S_AXI2_1_BID;
  wire C0_DDR4_S_AXI2_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI2_1_BRESP;
  wire C0_DDR4_S_AXI2_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI2_1_RDATA;
  wire [5:0]C0_DDR4_S_AXI2_1_RID;
  wire C0_DDR4_S_AXI2_1_RLAST;
  wire C0_DDR4_S_AXI2_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI2_1_RRESP;
  wire C0_DDR4_S_AXI2_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI2_1_WDATA;
  wire C0_DDR4_S_AXI2_1_WLAST;
  wire C0_DDR4_S_AXI2_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI2_1_WSTRB;
  wire C0_DDR4_S_AXI2_1_WVALID;
  wire [63:0]C0_DDR4_S_AXI_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI_1_ARCACHE;
  wire [5:0]C0_DDR4_S_AXI_1_ARID;
  wire [7:0]C0_DDR4_S_AXI_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI_1_ARQOS;
  wire C0_DDR4_S_AXI_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI_1_ARSIZE;
  wire C0_DDR4_S_AXI_1_ARVALID;
  wire [63:0]C0_DDR4_S_AXI_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI_1_AWCACHE;
  wire [5:0]C0_DDR4_S_AXI_1_AWID;
  wire [7:0]C0_DDR4_S_AXI_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI_1_AWQOS;
  wire C0_DDR4_S_AXI_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI_1_AWSIZE;
  wire C0_DDR4_S_AXI_1_AWVALID;
  wire [5:0]C0_DDR4_S_AXI_1_BID;
  wire C0_DDR4_S_AXI_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_1_BRESP;
  wire C0_DDR4_S_AXI_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI_1_RDATA;
  wire [5:0]C0_DDR4_S_AXI_1_RID;
  wire C0_DDR4_S_AXI_1_RLAST;
  wire C0_DDR4_S_AXI_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_1_RRESP;
  wire C0_DDR4_S_AXI_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI_1_WDATA;
  wire C0_DDR4_S_AXI_1_WLAST;
  wire C0_DDR4_S_AXI_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI_1_WSTRB;
  wire C0_DDR4_S_AXI_1_WVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL1_1_ARADDR;
  wire C0_DDR4_S_AXI_CTRL1_1_ARREADY;
  wire C0_DDR4_S_AXI_CTRL1_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL1_1_AWADDR;
  wire C0_DDR4_S_AXI_CTRL1_1_AWREADY;
  wire C0_DDR4_S_AXI_CTRL1_1_AWVALID;
  wire C0_DDR4_S_AXI_CTRL1_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL1_1_BRESP;
  wire C0_DDR4_S_AXI_CTRL1_1_BVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL1_1_RDATA;
  wire C0_DDR4_S_AXI_CTRL1_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL1_1_RRESP;
  wire C0_DDR4_S_AXI_CTRL1_1_RVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL1_1_WDATA;
  wire C0_DDR4_S_AXI_CTRL1_1_WREADY;
  wire C0_DDR4_S_AXI_CTRL1_1_WVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL2_1_ARADDR;
  wire C0_DDR4_S_AXI_CTRL2_1_ARREADY;
  wire C0_DDR4_S_AXI_CTRL2_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL2_1_AWADDR;
  wire C0_DDR4_S_AXI_CTRL2_1_AWREADY;
  wire C0_DDR4_S_AXI_CTRL2_1_AWVALID;
  wire C0_DDR4_S_AXI_CTRL2_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL2_1_BRESP;
  wire C0_DDR4_S_AXI_CTRL2_1_BVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL2_1_RDATA;
  wire C0_DDR4_S_AXI_CTRL2_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL2_1_RRESP;
  wire C0_DDR4_S_AXI_CTRL2_1_RVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL2_1_WDATA;
  wire C0_DDR4_S_AXI_CTRL2_1_WREADY;
  wire C0_DDR4_S_AXI_CTRL2_1_WVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_ARADDR;
  wire C0_DDR4_S_AXI_CTRL_1_ARREADY;
  wire C0_DDR4_S_AXI_CTRL_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_AWADDR;
  wire C0_DDR4_S_AXI_CTRL_1_AWREADY;
  wire C0_DDR4_S_AXI_CTRL_1_AWVALID;
  wire C0_DDR4_S_AXI_CTRL_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL_1_BRESP;
  wire C0_DDR4_S_AXI_CTRL_1_BVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_RDATA;
  wire C0_DDR4_S_AXI_CTRL_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL_1_RRESP;
  wire C0_DDR4_S_AXI_CTRL_1_RVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_WDATA;
  wire C0_DDR4_S_AXI_CTRL_1_WREADY;
  wire C0_DDR4_S_AXI_CTRL_1_WVALID;
  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire C0_SYS_CLK_1_CLK_N;
  wire C0_SYS_CLK_1_CLK_P;
  wire [17:0]C0_S_AXI_1_ARADDR;
  wire [2:0]C0_S_AXI_1_ARPROT;
  wire C0_S_AXI_1_ARREADY;
  wire C0_S_AXI_1_ARVALID;
  wire [17:0]C0_S_AXI_1_AWADDR;
  wire [2:0]C0_S_AXI_1_AWPROT;
  wire C0_S_AXI_1_AWREADY;
  wire C0_S_AXI_1_AWVALID;
  wire C0_S_AXI_1_BREADY;
  wire [1:0]C0_S_AXI_1_BRESP;
  wire C0_S_AXI_1_BVALID;
  wire [31:0]C0_S_AXI_1_RDATA;
  wire C0_S_AXI_1_RREADY;
  wire [1:0]C0_S_AXI_1_RRESP;
  wire C0_S_AXI_1_RVALID;
  wire [31:0]C0_S_AXI_1_WDATA;
  wire C0_S_AXI_1_WREADY;
  wire [3:0]C0_S_AXI_1_WSTRB;
  wire C0_S_AXI_1_WVALID;
  wire C3_SYS_CLK_1_CLK_N;
  wire C3_SYS_CLK_1_CLK_P;
  wire [17:0]C3_S_AXI_1_ARADDR;
  wire [2:0]C3_S_AXI_1_ARPROT;
  wire C3_S_AXI_1_ARREADY;
  wire C3_S_AXI_1_ARVALID;
  wire [17:0]C3_S_AXI_1_AWADDR;
  wire [2:0]C3_S_AXI_1_AWPROT;
  wire C3_S_AXI_1_AWREADY;
  wire C3_S_AXI_1_AWVALID;
  wire C3_S_AXI_1_BREADY;
  wire [1:0]C3_S_AXI_1_BRESP;
  wire C3_S_AXI_1_BVALID;
  wire [31:0]C3_S_AXI_1_RDATA;
  wire C3_S_AXI_1_RREADY;
  wire [1:0]C3_S_AXI_1_RRESP;
  wire C3_S_AXI_1_RVALID;
  wire [31:0]C3_S_AXI_1_WDATA;
  wire C3_S_AXI_1_WREADY;
  wire [3:0]C3_S_AXI_1_WSTRB;
  wire C3_S_AXI_1_WVALID;
  wire [17:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [17:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire PR_DDR4_MIG_0_DDR_SREF_CTRL_SREF_ACK;
  wire PR_DDR4_MIG_0_c0_ddr4_ui_clk;
  wire PR_DDR4_MIG_0_c2_ddr4_ACT_N;
  wire [16:0]PR_DDR4_MIG_0_c2_ddr4_ADR;
  wire [1:0]PR_DDR4_MIG_0_c2_ddr4_BA;
  wire [1:0]PR_DDR4_MIG_0_c2_ddr4_BG;
  wire [0:0]PR_DDR4_MIG_0_c2_ddr4_CKE;
  wire [0:0]PR_DDR4_MIG_0_c2_ddr4_CK_C;
  wire [0:0]PR_DDR4_MIG_0_c2_ddr4_CK_T;
  wire [0:0]PR_DDR4_MIG_0_c2_ddr4_CS_N;
  wire [71:0]PR_DDR4_MIG_0_c2_ddr4_DQ;
  wire [17:0]PR_DDR4_MIG_0_c2_ddr4_DQS_C;
  wire [17:0]PR_DDR4_MIG_0_c2_ddr4_DQS_T;
  wire [0:0]PR_DDR4_MIG_0_c2_ddr4_ODT;
  wire PR_DDR4_MIG_0_c2_ddr4_PAR;
  wire PR_DDR4_MIG_0_c2_ddr4_RESET_N;
  wire PR_DDR4_MIG_0_c2_init_calib_complete;
  wire [0:0]PR_DDR4_MIG_0_peripheral_aresetn;
  wire PR_DDR4_MIG_2_c0_ddr4_app_sref_ack_0;
  wire PR_DDR4_MIG_2_c0_ddr4_ui_clk;
  wire PR_DDR4_MIG_2_c0_init_calib_complete_1;
  wire [0:0]PR_DDR4_MIG_2_peripheral_aresetn;
  wire PR_DDR4_MIG_3_DDR_SREF_CTRL_SREF_ACK;
  wire PR_DDR4_MIG_3_c0_ddr4_ui_clk;
  wire PR_DDR4_MIG_3_c2_ddr4_ACT_N;
  wire [16:0]PR_DDR4_MIG_3_c2_ddr4_ADR;
  wire [1:0]PR_DDR4_MIG_3_c2_ddr4_BA;
  wire [1:0]PR_DDR4_MIG_3_c2_ddr4_BG;
  wire [0:0]PR_DDR4_MIG_3_c2_ddr4_CKE;
  wire [0:0]PR_DDR4_MIG_3_c2_ddr4_CK_C;
  wire [0:0]PR_DDR4_MIG_3_c2_ddr4_CK_T;
  wire [0:0]PR_DDR4_MIG_3_c2_ddr4_CS_N;
  wire [71:0]PR_DDR4_MIG_3_c2_ddr4_DQ;
  wire [17:0]PR_DDR4_MIG_3_c2_ddr4_DQS_C;
  wire [17:0]PR_DDR4_MIG_3_c2_ddr4_DQS_T;
  wire [0:0]PR_DDR4_MIG_3_c2_ddr4_ODT;
  wire PR_DDR4_MIG_3_c2_ddr4_PAR;
  wire PR_DDR4_MIG_3_c2_ddr4_RESET_N;
  wire PR_DDR4_MIG_3_c2_init_calib_complete;
  wire [0:0]PR_DDR4_MIG_3_peripheral_aresetn;
  wire c0_ddr4_app_mem_init_skip_0_1;
  wire c0_ddr4_app_restore_complete_0_1;
  wire c0_ddr4_app_sref_req_0_1;
  wire c0_ddr4_app_xsdb_select_0_1;
  wire c2_ddr4_app_mem_init_skip2_1;
  wire c2_ddr4_app_restore_complete1_1;
  wire c2_ddr4_app_sref_req2_1;
  wire c2_ddr4_app_xsdb_select2_1;
  wire c3_ddr4_app_mem_init_skip1_1;
  wire c3_ddr4_app_restore_complete1_1;
  wire c3_ddr4_app_sref_req1_1;
  wire c3_ddr4_app_xsdb_select1_1;
  wire ddr4_2_C0_DDR4_ACT_N;
  wire [16:0]ddr4_2_C0_DDR4_ADR;
  wire [1:0]ddr4_2_C0_DDR4_BA;
  wire [1:0]ddr4_2_C0_DDR4_BG;
  wire [0:0]ddr4_2_C0_DDR4_CKE;
  wire [0:0]ddr4_2_C0_DDR4_CK_C;
  wire [0:0]ddr4_2_C0_DDR4_CK_T;
  wire [0:0]ddr4_2_C0_DDR4_CS_N;
  wire [71:0]ddr4_2_C0_DDR4_DQ;
  wire [17:0]ddr4_2_C0_DDR4_DQS_C;
  wire [17:0]ddr4_2_C0_DDR4_DQS_T;
  wire [0:0]ddr4_2_C0_DDR4_ODT;
  wire ddr4_2_C0_DDR4_PAR;
  wire ddr4_2_C0_DDR4_RESET_N;
  wire sys_rst_0_1;
  wire sys_rst_0_2;
  wire sys_rst_0_3;

  assign C0_DDR4_S_AXI1_1_ARADDR = C2_DDR4_S_AXI_araddr[63:0];
  assign C0_DDR4_S_AXI1_1_ARBURST = C2_DDR4_S_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI1_1_ARCACHE = C2_DDR4_S_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI1_1_ARID = C2_DDR4_S_AXI_arid[5:0];
  assign C0_DDR4_S_AXI1_1_ARLEN = C2_DDR4_S_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI1_1_ARLOCK = C2_DDR4_S_AXI_arlock[0];
  assign C0_DDR4_S_AXI1_1_ARPROT = C2_DDR4_S_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI1_1_ARQOS = C2_DDR4_S_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI1_1_ARSIZE = C2_DDR4_S_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI1_1_ARVALID = C2_DDR4_S_AXI_arvalid;
  assign C0_DDR4_S_AXI1_1_AWADDR = C2_DDR4_S_AXI_awaddr[63:0];
  assign C0_DDR4_S_AXI1_1_AWBURST = C2_DDR4_S_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI1_1_AWCACHE = C2_DDR4_S_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI1_1_AWID = C2_DDR4_S_AXI_awid[5:0];
  assign C0_DDR4_S_AXI1_1_AWLEN = C2_DDR4_S_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI1_1_AWLOCK = C2_DDR4_S_AXI_awlock[0];
  assign C0_DDR4_S_AXI1_1_AWPROT = C2_DDR4_S_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI1_1_AWQOS = C2_DDR4_S_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI1_1_AWSIZE = C2_DDR4_S_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI1_1_AWVALID = C2_DDR4_S_AXI_awvalid;
  assign C0_DDR4_S_AXI1_1_BREADY = C2_DDR4_S_AXI_bready;
  assign C0_DDR4_S_AXI1_1_RREADY = C2_DDR4_S_AXI_rready;
  assign C0_DDR4_S_AXI1_1_WDATA = C2_DDR4_S_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI1_1_WLAST = C2_DDR4_S_AXI_wlast;
  assign C0_DDR4_S_AXI1_1_WSTRB = C2_DDR4_S_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI1_1_WVALID = C2_DDR4_S_AXI_wvalid;
  assign C0_DDR4_S_AXI2_1_ARADDR = C3_DDR4_S_AXI_araddr[63:0];
  assign C0_DDR4_S_AXI2_1_ARBURST = C3_DDR4_S_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI2_1_ARCACHE = C3_DDR4_S_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI2_1_ARID = C3_DDR4_S_AXI_arid[5:0];
  assign C0_DDR4_S_AXI2_1_ARLEN = C3_DDR4_S_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI2_1_ARLOCK = C3_DDR4_S_AXI_arlock[0];
  assign C0_DDR4_S_AXI2_1_ARPROT = C3_DDR4_S_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI2_1_ARQOS = C3_DDR4_S_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI2_1_ARSIZE = C3_DDR4_S_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI2_1_ARVALID = C3_DDR4_S_AXI_arvalid;
  assign C0_DDR4_S_AXI2_1_AWADDR = C3_DDR4_S_AXI_awaddr[63:0];
  assign C0_DDR4_S_AXI2_1_AWBURST = C3_DDR4_S_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI2_1_AWCACHE = C3_DDR4_S_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI2_1_AWID = C3_DDR4_S_AXI_awid[5:0];
  assign C0_DDR4_S_AXI2_1_AWLEN = C3_DDR4_S_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI2_1_AWLOCK = C3_DDR4_S_AXI_awlock[0];
  assign C0_DDR4_S_AXI2_1_AWPROT = C3_DDR4_S_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI2_1_AWQOS = C3_DDR4_S_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI2_1_AWSIZE = C3_DDR4_S_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI2_1_AWVALID = C3_DDR4_S_AXI_awvalid;
  assign C0_DDR4_S_AXI2_1_BREADY = C3_DDR4_S_AXI_bready;
  assign C0_DDR4_S_AXI2_1_RREADY = C3_DDR4_S_AXI_rready;
  assign C0_DDR4_S_AXI2_1_WDATA = C3_DDR4_S_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI2_1_WLAST = C3_DDR4_S_AXI_wlast;
  assign C0_DDR4_S_AXI2_1_WSTRB = C3_DDR4_S_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI2_1_WVALID = C3_DDR4_S_AXI_wvalid;
  assign C0_DDR4_S_AXI_1_ARADDR = C0_DDR4_S_AXI_araddr[63:0];
  assign C0_DDR4_S_AXI_1_ARBURST = C0_DDR4_S_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI_1_ARCACHE = C0_DDR4_S_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI_1_ARID = C0_DDR4_S_AXI_arid[5:0];
  assign C0_DDR4_S_AXI_1_ARLEN = C0_DDR4_S_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI_1_ARLOCK = C0_DDR4_S_AXI_arlock[0];
  assign C0_DDR4_S_AXI_1_ARPROT = C0_DDR4_S_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI_1_ARQOS = C0_DDR4_S_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI_1_ARSIZE = C0_DDR4_S_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI_1_ARVALID = C0_DDR4_S_AXI_arvalid;
  assign C0_DDR4_S_AXI_1_AWADDR = C0_DDR4_S_AXI_awaddr[63:0];
  assign C0_DDR4_S_AXI_1_AWBURST = C0_DDR4_S_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI_1_AWCACHE = C0_DDR4_S_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI_1_AWID = C0_DDR4_S_AXI_awid[5:0];
  assign C0_DDR4_S_AXI_1_AWLEN = C0_DDR4_S_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI_1_AWLOCK = C0_DDR4_S_AXI_awlock[0];
  assign C0_DDR4_S_AXI_1_AWPROT = C0_DDR4_S_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI_1_AWQOS = C0_DDR4_S_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI_1_AWSIZE = C0_DDR4_S_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI_1_AWVALID = C0_DDR4_S_AXI_awvalid;
  assign C0_DDR4_S_AXI_1_BREADY = C0_DDR4_S_AXI_bready;
  assign C0_DDR4_S_AXI_1_RREADY = C0_DDR4_S_AXI_rready;
  assign C0_DDR4_S_AXI_1_WDATA = C0_DDR4_S_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI_1_WLAST = C0_DDR4_S_AXI_wlast;
  assign C0_DDR4_S_AXI_1_WSTRB = C0_DDR4_S_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI_1_WVALID = C0_DDR4_S_AXI_wvalid;
  assign C0_DDR4_S_AXI_CTRL1_1_ARADDR = C2_DDR4_S_AXI_CTRL_araddr[31:0];
  assign C0_DDR4_S_AXI_CTRL1_1_ARVALID = C2_DDR4_S_AXI_CTRL_arvalid;
  assign C0_DDR4_S_AXI_CTRL1_1_AWADDR = C2_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign C0_DDR4_S_AXI_CTRL1_1_AWVALID = C2_DDR4_S_AXI_CTRL_awvalid;
  assign C0_DDR4_S_AXI_CTRL1_1_BREADY = C2_DDR4_S_AXI_CTRL_bready;
  assign C0_DDR4_S_AXI_CTRL1_1_RREADY = C2_DDR4_S_AXI_CTRL_rready;
  assign C0_DDR4_S_AXI_CTRL1_1_WDATA = C2_DDR4_S_AXI_CTRL_wdata[31:0];
  assign C0_DDR4_S_AXI_CTRL1_1_WVALID = C2_DDR4_S_AXI_CTRL_wvalid;
  assign C0_DDR4_S_AXI_CTRL2_1_ARADDR = C3_DDR4_S_AXI_CTRL_araddr[31:0];
  assign C0_DDR4_S_AXI_CTRL2_1_ARVALID = C3_DDR4_S_AXI_CTRL_arvalid;
  assign C0_DDR4_S_AXI_CTRL2_1_AWADDR = C3_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign C0_DDR4_S_AXI_CTRL2_1_AWVALID = C3_DDR4_S_AXI_CTRL_awvalid;
  assign C0_DDR4_S_AXI_CTRL2_1_BREADY = C3_DDR4_S_AXI_CTRL_bready;
  assign C0_DDR4_S_AXI_CTRL2_1_RREADY = C3_DDR4_S_AXI_CTRL_rready;
  assign C0_DDR4_S_AXI_CTRL2_1_WDATA = C3_DDR4_S_AXI_CTRL_wdata[31:0];
  assign C0_DDR4_S_AXI_CTRL2_1_WVALID = C3_DDR4_S_AXI_CTRL_wvalid;
  assign C0_DDR4_S_AXI_CTRL_1_ARADDR = C0_DDR4_S_AXI_CTRL_araddr[31:0];
  assign C0_DDR4_S_AXI_CTRL_1_ARVALID = C0_DDR4_S_AXI_CTRL_arvalid;
  assign C0_DDR4_S_AXI_CTRL_1_AWADDR = C0_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign C0_DDR4_S_AXI_CTRL_1_AWVALID = C0_DDR4_S_AXI_CTRL_awvalid;
  assign C0_DDR4_S_AXI_CTRL_1_BREADY = C0_DDR4_S_AXI_CTRL_bready;
  assign C0_DDR4_S_AXI_CTRL_1_RREADY = C0_DDR4_S_AXI_CTRL_rready;
  assign C0_DDR4_S_AXI_CTRL_1_WDATA = C0_DDR4_S_AXI_CTRL_wdata[31:0];
  assign C0_DDR4_S_AXI_CTRL_1_WVALID = C0_DDR4_S_AXI_CTRL_wvalid;
  assign C0_DDR4_S_AXI_CTRL_arready = C0_DDR4_S_AXI_CTRL_1_ARREADY;
  assign C0_DDR4_S_AXI_CTRL_awready = C0_DDR4_S_AXI_CTRL_1_AWREADY;
  assign C0_DDR4_S_AXI_CTRL_bresp[1:0] = C0_DDR4_S_AXI_CTRL_1_BRESP;
  assign C0_DDR4_S_AXI_CTRL_bvalid = C0_DDR4_S_AXI_CTRL_1_BVALID;
  assign C0_DDR4_S_AXI_CTRL_rdata[31:0] = C0_DDR4_S_AXI_CTRL_1_RDATA;
  assign C0_DDR4_S_AXI_CTRL_rresp[1:0] = C0_DDR4_S_AXI_CTRL_1_RRESP;
  assign C0_DDR4_S_AXI_CTRL_rvalid = C0_DDR4_S_AXI_CTRL_1_RVALID;
  assign C0_DDR4_S_AXI_CTRL_wready = C0_DDR4_S_AXI_CTRL_1_WREADY;
  assign C0_DDR4_S_AXI_arready = C0_DDR4_S_AXI_1_ARREADY;
  assign C0_DDR4_S_AXI_awready = C0_DDR4_S_AXI_1_AWREADY;
  assign C0_DDR4_S_AXI_bid[5:0] = C0_DDR4_S_AXI_1_BID;
  assign C0_DDR4_S_AXI_bresp[1:0] = C0_DDR4_S_AXI_1_BRESP;
  assign C0_DDR4_S_AXI_bvalid = C0_DDR4_S_AXI_1_BVALID;
  assign C0_DDR4_S_AXI_rdata[511:0] = C0_DDR4_S_AXI_1_RDATA;
  assign C0_DDR4_S_AXI_rid[5:0] = C0_DDR4_S_AXI_1_RID;
  assign C0_DDR4_S_AXI_rlast = C0_DDR4_S_AXI_1_RLAST;
  assign C0_DDR4_S_AXI_rresp[1:0] = C0_DDR4_S_AXI_1_RRESP;
  assign C0_DDR4_S_AXI_rvalid = C0_DDR4_S_AXI_1_RVALID;
  assign C0_DDR4_S_AXI_wready = C0_DDR4_S_AXI_1_WREADY;
  assign C0_SYS_CLK_0_1_CLK_N = C2_SYS_CLK_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = C2_SYS_CLK_clk_p;
  assign C0_SYS_CLK_1_CLK_N = C0_SYS_CLK_clk_n;
  assign C0_SYS_CLK_1_CLK_P = C0_SYS_CLK_clk_p;
  assign C0_S_AXI_1_ARADDR = C0_XSDB_S_AXIL_araddr[17:0];
  assign C0_S_AXI_1_ARPROT = C0_XSDB_S_AXIL_arprot[2:0];
  assign C0_S_AXI_1_ARVALID = C0_XSDB_S_AXIL_arvalid;
  assign C0_S_AXI_1_AWADDR = C0_XSDB_S_AXIL_awaddr[17:0];
  assign C0_S_AXI_1_AWPROT = C0_XSDB_S_AXIL_awprot[2:0];
  assign C0_S_AXI_1_AWVALID = C0_XSDB_S_AXIL_awvalid;
  assign C0_S_AXI_1_BREADY = C0_XSDB_S_AXIL_bready;
  assign C0_S_AXI_1_RREADY = C0_XSDB_S_AXIL_rready;
  assign C0_S_AXI_1_WDATA = C0_XSDB_S_AXIL_wdata[31:0];
  assign C0_S_AXI_1_WSTRB = C0_XSDB_S_AXIL_wstrb[3:0];
  assign C0_S_AXI_1_WVALID = C0_XSDB_S_AXIL_wvalid;
  assign C0_XSDB_S_AXIL_arready = C0_S_AXI_1_ARREADY;
  assign C0_XSDB_S_AXIL_awready = C0_S_AXI_1_AWREADY;
  assign C0_XSDB_S_AXIL_bresp[1:0] = C0_S_AXI_1_BRESP;
  assign C0_XSDB_S_AXIL_bvalid = C0_S_AXI_1_BVALID;
  assign C0_XSDB_S_AXIL_rdata[31:0] = C0_S_AXI_1_RDATA;
  assign C0_XSDB_S_AXIL_rresp[1:0] = C0_S_AXI_1_RRESP;
  assign C0_XSDB_S_AXIL_rvalid = C0_S_AXI_1_RVALID;
  assign C0_XSDB_S_AXIL_wready = C0_S_AXI_1_WREADY;
  assign C2_DDR4_S_AXI_CTRL_arready = C0_DDR4_S_AXI_CTRL1_1_ARREADY;
  assign C2_DDR4_S_AXI_CTRL_awready = C0_DDR4_S_AXI_CTRL1_1_AWREADY;
  assign C2_DDR4_S_AXI_CTRL_bresp[1:0] = C0_DDR4_S_AXI_CTRL1_1_BRESP;
  assign C2_DDR4_S_AXI_CTRL_bvalid = C0_DDR4_S_AXI_CTRL1_1_BVALID;
  assign C2_DDR4_S_AXI_CTRL_rdata[31:0] = C0_DDR4_S_AXI_CTRL1_1_RDATA;
  assign C2_DDR4_S_AXI_CTRL_rresp[1:0] = C0_DDR4_S_AXI_CTRL1_1_RRESP;
  assign C2_DDR4_S_AXI_CTRL_rvalid = C0_DDR4_S_AXI_CTRL1_1_RVALID;
  assign C2_DDR4_S_AXI_CTRL_wready = C0_DDR4_S_AXI_CTRL1_1_WREADY;
  assign C2_DDR4_S_AXI_arready = C0_DDR4_S_AXI1_1_ARREADY;
  assign C2_DDR4_S_AXI_awready = C0_DDR4_S_AXI1_1_AWREADY;
  assign C2_DDR4_S_AXI_bid[5:0] = C0_DDR4_S_AXI1_1_BID;
  assign C2_DDR4_S_AXI_bresp[1:0] = C0_DDR4_S_AXI1_1_BRESP;
  assign C2_DDR4_S_AXI_bvalid = C0_DDR4_S_AXI1_1_BVALID;
  assign C2_DDR4_S_AXI_rdata[511:0] = C0_DDR4_S_AXI1_1_RDATA;
  assign C2_DDR4_S_AXI_rid[5:0] = C0_DDR4_S_AXI1_1_RID;
  assign C2_DDR4_S_AXI_rlast = C0_DDR4_S_AXI1_1_RLAST;
  assign C2_DDR4_S_AXI_rresp[1:0] = C0_DDR4_S_AXI1_1_RRESP;
  assign C2_DDR4_S_AXI_rvalid = C0_DDR4_S_AXI1_1_RVALID;
  assign C2_DDR4_S_AXI_wready = C0_DDR4_S_AXI1_1_WREADY;
  assign C2_XSDB_S_AXIL_arready = Conn1_ARREADY;
  assign C2_XSDB_S_AXIL_awready = Conn1_AWREADY;
  assign C2_XSDB_S_AXIL_bresp[1:0] = Conn1_BRESP;
  assign C2_XSDB_S_AXIL_bvalid = Conn1_BVALID;
  assign C2_XSDB_S_AXIL_rdata[31:0] = Conn1_RDATA;
  assign C2_XSDB_S_AXIL_rresp[1:0] = Conn1_RRESP;
  assign C2_XSDB_S_AXIL_rvalid = Conn1_RVALID;
  assign C2_XSDB_S_AXIL_wready = Conn1_WREADY;
  assign C3_DDR4_S_AXI_CTRL_arready = C0_DDR4_S_AXI_CTRL2_1_ARREADY;
  assign C3_DDR4_S_AXI_CTRL_awready = C0_DDR4_S_AXI_CTRL2_1_AWREADY;
  assign C3_DDR4_S_AXI_CTRL_bresp[1:0] = C0_DDR4_S_AXI_CTRL2_1_BRESP;
  assign C3_DDR4_S_AXI_CTRL_bvalid = C0_DDR4_S_AXI_CTRL2_1_BVALID;
  assign C3_DDR4_S_AXI_CTRL_rdata[31:0] = C0_DDR4_S_AXI_CTRL2_1_RDATA;
  assign C3_DDR4_S_AXI_CTRL_rresp[1:0] = C0_DDR4_S_AXI_CTRL2_1_RRESP;
  assign C3_DDR4_S_AXI_CTRL_rvalid = C0_DDR4_S_AXI_CTRL2_1_RVALID;
  assign C3_DDR4_S_AXI_CTRL_wready = C0_DDR4_S_AXI_CTRL2_1_WREADY;
  assign C3_DDR4_S_AXI_arready = C0_DDR4_S_AXI2_1_ARREADY;
  assign C3_DDR4_S_AXI_awready = C0_DDR4_S_AXI2_1_AWREADY;
  assign C3_DDR4_S_AXI_bid[5:0] = C0_DDR4_S_AXI2_1_BID;
  assign C3_DDR4_S_AXI_bresp[1:0] = C0_DDR4_S_AXI2_1_BRESP;
  assign C3_DDR4_S_AXI_bvalid = C0_DDR4_S_AXI2_1_BVALID;
  assign C3_DDR4_S_AXI_rdata[511:0] = C0_DDR4_S_AXI2_1_RDATA;
  assign C3_DDR4_S_AXI_rid[5:0] = C0_DDR4_S_AXI2_1_RID;
  assign C3_DDR4_S_AXI_rlast = C0_DDR4_S_AXI2_1_RLAST;
  assign C3_DDR4_S_AXI_rresp[1:0] = C0_DDR4_S_AXI2_1_RRESP;
  assign C3_DDR4_S_AXI_rvalid = C0_DDR4_S_AXI2_1_RVALID;
  assign C3_DDR4_S_AXI_wready = C0_DDR4_S_AXI2_1_WREADY;
  assign C3_SYS_CLK_1_CLK_N = C3_SYS_CLK_clk_n;
  assign C3_SYS_CLK_1_CLK_P = C3_SYS_CLK_clk_p;
  assign C3_S_AXI_1_ARADDR = C3_XSDB_S_AXIL_araddr[17:0];
  assign C3_S_AXI_1_ARPROT = C3_XSDB_S_AXIL_arprot[2:0];
  assign C3_S_AXI_1_ARVALID = C3_XSDB_S_AXIL_arvalid;
  assign C3_S_AXI_1_AWADDR = C3_XSDB_S_AXIL_awaddr[17:0];
  assign C3_S_AXI_1_AWPROT = C3_XSDB_S_AXIL_awprot[2:0];
  assign C3_S_AXI_1_AWVALID = C3_XSDB_S_AXIL_awvalid;
  assign C3_S_AXI_1_BREADY = C3_XSDB_S_AXIL_bready;
  assign C3_S_AXI_1_RREADY = C3_XSDB_S_AXIL_rready;
  assign C3_S_AXI_1_WDATA = C3_XSDB_S_AXIL_wdata[31:0];
  assign C3_S_AXI_1_WSTRB = C3_XSDB_S_AXIL_wstrb[3:0];
  assign C3_S_AXI_1_WVALID = C3_XSDB_S_AXIL_wvalid;
  assign C3_XSDB_S_AXIL_arready = C3_S_AXI_1_ARREADY;
  assign C3_XSDB_S_AXIL_awready = C3_S_AXI_1_AWREADY;
  assign C3_XSDB_S_AXIL_bresp[1:0] = C3_S_AXI_1_BRESP;
  assign C3_XSDB_S_AXIL_bvalid = C3_S_AXI_1_BVALID;
  assign C3_XSDB_S_AXIL_rdata[31:0] = C3_S_AXI_1_RDATA;
  assign C3_XSDB_S_AXIL_rresp[1:0] = C3_S_AXI_1_RRESP;
  assign C3_XSDB_S_AXIL_rvalid = C3_S_AXI_1_RVALID;
  assign C3_XSDB_S_AXIL_wready = C3_S_AXI_1_WREADY;
  assign Conn1_ARADDR = C2_XSDB_S_AXIL_araddr[17:0];
  assign Conn1_ARPROT = C2_XSDB_S_AXIL_arprot[2:0];
  assign Conn1_ARVALID = C2_XSDB_S_AXIL_arvalid;
  assign Conn1_AWADDR = C2_XSDB_S_AXIL_awaddr[17:0];
  assign Conn1_AWPROT = C2_XSDB_S_AXIL_awprot[2:0];
  assign Conn1_AWVALID = C2_XSDB_S_AXIL_awvalid;
  assign Conn1_BREADY = C2_XSDB_S_AXIL_bready;
  assign Conn1_RREADY = C2_XSDB_S_AXIL_rready;
  assign Conn1_WDATA = C2_XSDB_S_AXIL_wdata[31:0];
  assign Conn1_WSTRB = C2_XSDB_S_AXIL_wstrb[3:0];
  assign Conn1_WVALID = C2_XSDB_S_AXIL_wvalid;
  assign c0_ddr4_act_n = PR_DDR4_MIG_0_c2_ddr4_ACT_N;
  assign c0_ddr4_adr[16:0] = PR_DDR4_MIG_0_c2_ddr4_ADR;
  assign c0_ddr4_app_mem_init_skip_0_1 = c2_ddr4_app_mem_init_skip;
  assign c0_ddr4_app_restore_complete_0_1 = c2_ddr4_app_restore_complete;
  assign c0_ddr4_app_sref_ack = PR_DDR4_MIG_0_DDR_SREF_CTRL_SREF_ACK;
  assign c0_ddr4_app_sref_req_0_1 = c2_ddr4_app_sref_req;
  assign c0_ddr4_app_xsdb_select_0_1 = c2_ddr4_app_xsdb_select;
  assign c0_ddr4_ba[1:0] = PR_DDR4_MIG_0_c2_ddr4_BA;
  assign c0_ddr4_bg[1:0] = PR_DDR4_MIG_0_c2_ddr4_BG;
  assign c0_ddr4_ck_c[0] = PR_DDR4_MIG_0_c2_ddr4_CK_C;
  assign c0_ddr4_ck_t[0] = PR_DDR4_MIG_0_c2_ddr4_CK_T;
  assign c0_ddr4_cke[0] = PR_DDR4_MIG_0_c2_ddr4_CKE;
  assign c0_ddr4_cs_n[0] = PR_DDR4_MIG_0_c2_ddr4_CS_N;
  assign c0_ddr4_odt[0] = PR_DDR4_MIG_0_c2_ddr4_ODT;
  assign c0_ddr4_par = PR_DDR4_MIG_0_c2_ddr4_PAR;
  assign c0_ddr4_reset_n = PR_DDR4_MIG_0_c2_ddr4_RESET_N;
  assign c0_ddr4_ui_clk = PR_DDR4_MIG_0_c0_ddr4_ui_clk;
  assign c0_init_calib_complete = PR_DDR4_MIG_0_c2_init_calib_complete;
  assign c0_peripheral_aresetn[0] = PR_DDR4_MIG_0_peripheral_aresetn;
  assign c2_ddr4_act_n = ddr4_2_C0_DDR4_ACT_N;
  assign c2_ddr4_adr[16:0] = ddr4_2_C0_DDR4_ADR;
  assign c2_ddr4_app_mem_init_skip2_1 = c3_ddr4_app_mem_init_skip;
  assign c2_ddr4_app_restore_complete1_1 = c3_ddr4_app_restore_complete;
  assign c2_ddr4_app_sref_ack = PR_DDR4_MIG_2_c0_ddr4_app_sref_ack_0;
  assign c2_ddr4_app_sref_req2_1 = c3_ddr4_app_sref_req;
  assign c2_ddr4_app_xsdb_select2_1 = c3_ddr4_app_xsdb_select;
  assign c2_ddr4_ba[1:0] = ddr4_2_C0_DDR4_BA;
  assign c2_ddr4_bg[1:0] = ddr4_2_C0_DDR4_BG;
  assign c2_ddr4_ck_c[0] = ddr4_2_C0_DDR4_CK_C;
  assign c2_ddr4_ck_t[0] = ddr4_2_C0_DDR4_CK_T;
  assign c2_ddr4_cke[0] = ddr4_2_C0_DDR4_CKE;
  assign c2_ddr4_cs_n[0] = ddr4_2_C0_DDR4_CS_N;
  assign c2_ddr4_odt[0] = ddr4_2_C0_DDR4_ODT;
  assign c2_ddr4_par = ddr4_2_C0_DDR4_PAR;
  assign c2_ddr4_reset_n = ddr4_2_C0_DDR4_RESET_N;
  assign c2_ddr4_ui_clk = PR_DDR4_MIG_2_c0_ddr4_ui_clk;
  assign c2_init_calib_complete = PR_DDR4_MIG_2_c0_init_calib_complete_1;
  assign c2_peripheral_aresetn[0] = PR_DDR4_MIG_2_peripheral_aresetn;
  assign c3_ddr4_act_n = PR_DDR4_MIG_3_c2_ddr4_ACT_N;
  assign c3_ddr4_adr[16:0] = PR_DDR4_MIG_3_c2_ddr4_ADR;
  assign c3_ddr4_app_mem_init_skip1_1 = c0_ddr4_app_mem_init_skip;
  assign c3_ddr4_app_restore_complete1_1 = c0_ddr4_app_restore_complete;
  assign c3_ddr4_app_sref_ack = PR_DDR4_MIG_3_DDR_SREF_CTRL_SREF_ACK;
  assign c3_ddr4_app_sref_req1_1 = c0_ddr4_app_sref_req;
  assign c3_ddr4_app_xsdb_select1_1 = c0_ddr4_app_xsdb_select;
  assign c3_ddr4_ba[1:0] = PR_DDR4_MIG_3_c2_ddr4_BA;
  assign c3_ddr4_bg[1:0] = PR_DDR4_MIG_3_c2_ddr4_BG;
  assign c3_ddr4_ck_c[0] = PR_DDR4_MIG_3_c2_ddr4_CK_C;
  assign c3_ddr4_ck_t[0] = PR_DDR4_MIG_3_c2_ddr4_CK_T;
  assign c3_ddr4_cke[0] = PR_DDR4_MIG_3_c2_ddr4_CKE;
  assign c3_ddr4_cs_n[0] = PR_DDR4_MIG_3_c2_ddr4_CS_N;
  assign c3_ddr4_odt[0] = PR_DDR4_MIG_3_c2_ddr4_ODT;
  assign c3_ddr4_par = PR_DDR4_MIG_3_c2_ddr4_PAR;
  assign c3_ddr4_reset_n = PR_DDR4_MIG_3_c2_ddr4_RESET_N;
  assign c3_ddr4_ui_clk = PR_DDR4_MIG_3_c0_ddr4_ui_clk;
  assign c3_init_calib_complete = PR_DDR4_MIG_3_c2_init_calib_complete;
  assign c3_peripheral_aresetn[0] = PR_DDR4_MIG_3_peripheral_aresetn;
  assign sys_rst_0_1 = sys_rst_ddr_0;
  assign sys_rst_0_2 = sys_rst_ddr_2;
  assign sys_rst_0_3 = sys_rst_ddr_3;
  PR_DDR4_MIG_0_imp_1G0UKRA PR_DDR4_MIG_0
       (.C0_SYS_CLK_clk_n(C0_SYS_CLK_1_CLK_N),
        .C0_SYS_CLK_clk_p(C0_SYS_CLK_1_CLK_P),
        .DDR_SREF_CTRL_APP_RESTORE_COMPLETE(c3_ddr4_app_restore_complete1_1),
        .DDR_SREF_CTRL_MEM_INIT_SKIP(c3_ddr4_app_mem_init_skip1_1),
        .DDR_SREF_CTRL_SREF_ACK(PR_DDR4_MIG_0_DDR_SREF_CTRL_SREF_ACK),
        .DDR_SREF_CTRL_SREF_REQ(c3_ddr4_app_sref_req1_1),
        .DDR_SREF_CTRL_XSDB_SEL(c3_ddr4_app_xsdb_select1_1),
        .S_AXI_LITE_araddr(C0_DDR4_S_AXI_CTRL_1_ARADDR),
        .S_AXI_LITE_arready(C0_DDR4_S_AXI_CTRL_1_ARREADY),
        .S_AXI_LITE_arvalid(C0_DDR4_S_AXI_CTRL_1_ARVALID),
        .S_AXI_LITE_awaddr(C0_DDR4_S_AXI_CTRL_1_AWADDR),
        .S_AXI_LITE_awready(C0_DDR4_S_AXI_CTRL_1_AWREADY),
        .S_AXI_LITE_awvalid(C0_DDR4_S_AXI_CTRL_1_AWVALID),
        .S_AXI_LITE_bready(C0_DDR4_S_AXI_CTRL_1_BREADY),
        .S_AXI_LITE_bresp(C0_DDR4_S_AXI_CTRL_1_BRESP),
        .S_AXI_LITE_bvalid(C0_DDR4_S_AXI_CTRL_1_BVALID),
        .S_AXI_LITE_rdata(C0_DDR4_S_AXI_CTRL_1_RDATA),
        .S_AXI_LITE_rready(C0_DDR4_S_AXI_CTRL_1_RREADY),
        .S_AXI_LITE_rresp(C0_DDR4_S_AXI_CTRL_1_RRESP),
        .S_AXI_LITE_rvalid(C0_DDR4_S_AXI_CTRL_1_RVALID),
        .S_AXI_LITE_wdata(C0_DDR4_S_AXI_CTRL_1_WDATA),
        .S_AXI_LITE_wready(C0_DDR4_S_AXI_CTRL_1_WREADY),
        .S_AXI_LITE_wvalid(C0_DDR4_S_AXI_CTRL_1_WVALID),
        .S_AXI_araddr(C0_DDR4_S_AXI_1_ARADDR),
        .S_AXI_arburst(C0_DDR4_S_AXI_1_ARBURST),
        .S_AXI_arcache(C0_DDR4_S_AXI_1_ARCACHE),
        .S_AXI_arid(C0_DDR4_S_AXI_1_ARID),
        .S_AXI_arlen(C0_DDR4_S_AXI_1_ARLEN),
        .S_AXI_arlock(C0_DDR4_S_AXI_1_ARLOCK),
        .S_AXI_arprot(C0_DDR4_S_AXI_1_ARPROT),
        .S_AXI_arqos(C0_DDR4_S_AXI_1_ARQOS),
        .S_AXI_arready(C0_DDR4_S_AXI_1_ARREADY),
        .S_AXI_arsize(C0_DDR4_S_AXI_1_ARSIZE),
        .S_AXI_arvalid(C0_DDR4_S_AXI_1_ARVALID),
        .S_AXI_awaddr(C0_DDR4_S_AXI_1_AWADDR),
        .S_AXI_awburst(C0_DDR4_S_AXI_1_AWBURST),
        .S_AXI_awcache(C0_DDR4_S_AXI_1_AWCACHE),
        .S_AXI_awid(C0_DDR4_S_AXI_1_AWID),
        .S_AXI_awlen(C0_DDR4_S_AXI_1_AWLEN),
        .S_AXI_awlock(C0_DDR4_S_AXI_1_AWLOCK),
        .S_AXI_awprot(C0_DDR4_S_AXI_1_AWPROT),
        .S_AXI_awqos(C0_DDR4_S_AXI_1_AWQOS),
        .S_AXI_awready(C0_DDR4_S_AXI_1_AWREADY),
        .S_AXI_awsize(C0_DDR4_S_AXI_1_AWSIZE),
        .S_AXI_awvalid(C0_DDR4_S_AXI_1_AWVALID),
        .S_AXI_bid(C0_DDR4_S_AXI_1_BID),
        .S_AXI_bready(C0_DDR4_S_AXI_1_BREADY),
        .S_AXI_bresp(C0_DDR4_S_AXI_1_BRESP),
        .S_AXI_bvalid(C0_DDR4_S_AXI_1_BVALID),
        .S_AXI_rdata(C0_DDR4_S_AXI_1_RDATA),
        .S_AXI_rid(C0_DDR4_S_AXI_1_RID),
        .S_AXI_rlast(C0_DDR4_S_AXI_1_RLAST),
        .S_AXI_rready(C0_DDR4_S_AXI_1_RREADY),
        .S_AXI_rresp(C0_DDR4_S_AXI_1_RRESP),
        .S_AXI_rvalid(C0_DDR4_S_AXI_1_RVALID),
        .S_AXI_wdata(C0_DDR4_S_AXI_1_WDATA),
        .S_AXI_wlast(C0_DDR4_S_AXI_1_WLAST),
        .S_AXI_wready(C0_DDR4_S_AXI_1_WREADY),
        .S_AXI_wstrb(C0_DDR4_S_AXI_1_WSTRB),
        .S_AXI_wvalid(C0_DDR4_S_AXI_1_WVALID),
        .S_XSDB_AXIL_araddr(C0_S_AXI_1_ARADDR),
        .S_XSDB_AXIL_arprot(C0_S_AXI_1_ARPROT),
        .S_XSDB_AXIL_arready(C0_S_AXI_1_ARREADY),
        .S_XSDB_AXIL_arvalid(C0_S_AXI_1_ARVALID),
        .S_XSDB_AXIL_awaddr(C0_S_AXI_1_AWADDR),
        .S_XSDB_AXIL_awprot(C0_S_AXI_1_AWPROT),
        .S_XSDB_AXIL_awready(C0_S_AXI_1_AWREADY),
        .S_XSDB_AXIL_awvalid(C0_S_AXI_1_AWVALID),
        .S_XSDB_AXIL_bready(C0_S_AXI_1_BREADY),
        .S_XSDB_AXIL_bresp(C0_S_AXI_1_BRESP),
        .S_XSDB_AXIL_bvalid(C0_S_AXI_1_BVALID),
        .S_XSDB_AXIL_rdata(C0_S_AXI_1_RDATA),
        .S_XSDB_AXIL_rready(C0_S_AXI_1_RREADY),
        .S_XSDB_AXIL_rresp(C0_S_AXI_1_RRESP),
        .S_XSDB_AXIL_rvalid(C0_S_AXI_1_RVALID),
        .S_XSDB_AXIL_wdata(C0_S_AXI_1_WDATA),
        .S_XSDB_AXIL_wready(C0_S_AXI_1_WREADY),
        .S_XSDB_AXIL_wstrb(C0_S_AXI_1_WSTRB),
        .S_XSDB_AXIL_wvalid(C0_S_AXI_1_WVALID),
        .c0_ddr4_act_n(PR_DDR4_MIG_0_c2_ddr4_ACT_N),
        .c0_ddr4_adr(PR_DDR4_MIG_0_c2_ddr4_ADR),
        .c0_ddr4_ba(PR_DDR4_MIG_0_c2_ddr4_BA),
        .c0_ddr4_bg(PR_DDR4_MIG_0_c2_ddr4_BG),
        .c0_ddr4_ck_c(PR_DDR4_MIG_0_c2_ddr4_CK_C),
        .c0_ddr4_ck_t(PR_DDR4_MIG_0_c2_ddr4_CK_T),
        .c0_ddr4_cke(PR_DDR4_MIG_0_c2_ddr4_CKE),
        .c0_ddr4_cs_n(PR_DDR4_MIG_0_c2_ddr4_CS_N),
        .c0_ddr4_dq(c0_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(PR_DDR4_MIG_0_c2_ddr4_ODT),
        .c0_ddr4_par(PR_DDR4_MIG_0_c2_ddr4_PAR),
        .c0_ddr4_reset_n(PR_DDR4_MIG_0_c2_ddr4_RESET_N),
        .c0_ddr4_ui_clk(PR_DDR4_MIG_0_c0_ddr4_ui_clk),
        .c0_init_calib_complete(PR_DDR4_MIG_0_c2_init_calib_complete),
        .peripheral_aresetn(PR_DDR4_MIG_0_peripheral_aresetn),
        .sys_rst_ddr_2(sys_rst_0_1));
  PR_DDR4_MIG_2_imp_VJNA56 PR_DDR4_MIG_2
       (.AAR_SREF_CTRL_APP_RESTORE_COMPLETE(c0_ddr4_app_restore_complete_0_1),
        .C2_SYS_CLK_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .C2_SYS_CLK_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .DDR_SREF_CTRL_MEM_INIT_SKIP(c0_ddr4_app_mem_init_skip_0_1),
        .DDR_SREF_CTRL_SREF_ACK(PR_DDR4_MIG_2_c0_ddr4_app_sref_ack_0),
        .DDR_SREF_CTRL_SREF_REQ(c0_ddr4_app_sref_req_0_1),
        .DDR_SREF_CTRL_XSDB_SEL(c0_ddr4_app_xsdb_select_0_1),
        .S_AXI_LITE_araddr(C0_DDR4_S_AXI_CTRL1_1_ARADDR),
        .S_AXI_LITE_arready(C0_DDR4_S_AXI_CTRL1_1_ARREADY),
        .S_AXI_LITE_arvalid(C0_DDR4_S_AXI_CTRL1_1_ARVALID),
        .S_AXI_LITE_awaddr(C0_DDR4_S_AXI_CTRL1_1_AWADDR),
        .S_AXI_LITE_awready(C0_DDR4_S_AXI_CTRL1_1_AWREADY),
        .S_AXI_LITE_awvalid(C0_DDR4_S_AXI_CTRL1_1_AWVALID),
        .S_AXI_LITE_bready(C0_DDR4_S_AXI_CTRL1_1_BREADY),
        .S_AXI_LITE_bresp(C0_DDR4_S_AXI_CTRL1_1_BRESP),
        .S_AXI_LITE_bvalid(C0_DDR4_S_AXI_CTRL1_1_BVALID),
        .S_AXI_LITE_rdata(C0_DDR4_S_AXI_CTRL1_1_RDATA),
        .S_AXI_LITE_rready(C0_DDR4_S_AXI_CTRL1_1_RREADY),
        .S_AXI_LITE_rresp(C0_DDR4_S_AXI_CTRL1_1_RRESP),
        .S_AXI_LITE_rvalid(C0_DDR4_S_AXI_CTRL1_1_RVALID),
        .S_AXI_LITE_wdata(C0_DDR4_S_AXI_CTRL1_1_WDATA),
        .S_AXI_LITE_wready(C0_DDR4_S_AXI_CTRL1_1_WREADY),
        .S_AXI_LITE_wvalid(C0_DDR4_S_AXI_CTRL1_1_WVALID),
        .S_AXI_araddr(C0_DDR4_S_AXI1_1_ARADDR),
        .S_AXI_arburst(C0_DDR4_S_AXI1_1_ARBURST),
        .S_AXI_arcache(C0_DDR4_S_AXI1_1_ARCACHE),
        .S_AXI_arid(C0_DDR4_S_AXI1_1_ARID),
        .S_AXI_arlen(C0_DDR4_S_AXI1_1_ARLEN),
        .S_AXI_arlock(C0_DDR4_S_AXI1_1_ARLOCK),
        .S_AXI_arprot(C0_DDR4_S_AXI1_1_ARPROT),
        .S_AXI_arqos(C0_DDR4_S_AXI1_1_ARQOS),
        .S_AXI_arready(C0_DDR4_S_AXI1_1_ARREADY),
        .S_AXI_arsize(C0_DDR4_S_AXI1_1_ARSIZE),
        .S_AXI_arvalid(C0_DDR4_S_AXI1_1_ARVALID),
        .S_AXI_awaddr(C0_DDR4_S_AXI1_1_AWADDR),
        .S_AXI_awburst(C0_DDR4_S_AXI1_1_AWBURST),
        .S_AXI_awcache(C0_DDR4_S_AXI1_1_AWCACHE),
        .S_AXI_awid(C0_DDR4_S_AXI1_1_AWID),
        .S_AXI_awlen(C0_DDR4_S_AXI1_1_AWLEN),
        .S_AXI_awlock(C0_DDR4_S_AXI1_1_AWLOCK),
        .S_AXI_awprot(C0_DDR4_S_AXI1_1_AWPROT),
        .S_AXI_awqos(C0_DDR4_S_AXI1_1_AWQOS),
        .S_AXI_awready(C0_DDR4_S_AXI1_1_AWREADY),
        .S_AXI_awsize(C0_DDR4_S_AXI1_1_AWSIZE),
        .S_AXI_awvalid(C0_DDR4_S_AXI1_1_AWVALID),
        .S_AXI_bid(C0_DDR4_S_AXI1_1_BID),
        .S_AXI_bready(C0_DDR4_S_AXI1_1_BREADY),
        .S_AXI_bresp(C0_DDR4_S_AXI1_1_BRESP),
        .S_AXI_bvalid(C0_DDR4_S_AXI1_1_BVALID),
        .S_AXI_rdata(C0_DDR4_S_AXI1_1_RDATA),
        .S_AXI_rid(C0_DDR4_S_AXI1_1_RID),
        .S_AXI_rlast(C0_DDR4_S_AXI1_1_RLAST),
        .S_AXI_rready(C0_DDR4_S_AXI1_1_RREADY),
        .S_AXI_rresp(C0_DDR4_S_AXI1_1_RRESP),
        .S_AXI_rvalid(C0_DDR4_S_AXI1_1_RVALID),
        .S_AXI_wdata(C0_DDR4_S_AXI1_1_WDATA),
        .S_AXI_wlast(C0_DDR4_S_AXI1_1_WLAST),
        .S_AXI_wready(C0_DDR4_S_AXI1_1_WREADY),
        .S_AXI_wstrb(C0_DDR4_S_AXI1_1_WSTRB),
        .S_AXI_wvalid(C0_DDR4_S_AXI1_1_WVALID),
        .S_XSDB_AXIL_araddr(Conn1_ARADDR),
        .S_XSDB_AXIL_arprot(Conn1_ARPROT),
        .S_XSDB_AXIL_arready(Conn1_ARREADY),
        .S_XSDB_AXIL_arvalid(Conn1_ARVALID),
        .S_XSDB_AXIL_awaddr(Conn1_AWADDR),
        .S_XSDB_AXIL_awprot(Conn1_AWPROT),
        .S_XSDB_AXIL_awready(Conn1_AWREADY),
        .S_XSDB_AXIL_awvalid(Conn1_AWVALID),
        .S_XSDB_AXIL_bready(Conn1_BREADY),
        .S_XSDB_AXIL_bresp(Conn1_BRESP),
        .S_XSDB_AXIL_bvalid(Conn1_BVALID),
        .S_XSDB_AXIL_rdata(Conn1_RDATA),
        .S_XSDB_AXIL_rready(Conn1_RREADY),
        .S_XSDB_AXIL_rresp(Conn1_RRESP),
        .S_XSDB_AXIL_rvalid(Conn1_RVALID),
        .S_XSDB_AXIL_wdata(Conn1_WDATA),
        .S_XSDB_AXIL_wready(Conn1_WREADY),
        .S_XSDB_AXIL_wstrb(Conn1_WSTRB),
        .S_XSDB_AXIL_wvalid(Conn1_WVALID),
        .c0_ddr4_ui_clk(PR_DDR4_MIG_2_c0_ddr4_ui_clk),
        .c2_ddr4_act_n(ddr4_2_C0_DDR4_ACT_N),
        .c2_ddr4_adr(ddr4_2_C0_DDR4_ADR),
        .c2_ddr4_ba(ddr4_2_C0_DDR4_BA),
        .c2_ddr4_bg(ddr4_2_C0_DDR4_BG),
        .c2_ddr4_ck_c(ddr4_2_C0_DDR4_CK_C),
        .c2_ddr4_ck_t(ddr4_2_C0_DDR4_CK_T),
        .c2_ddr4_cke(ddr4_2_C0_DDR4_CKE),
        .c2_ddr4_cs_n(ddr4_2_C0_DDR4_CS_N),
        .c2_ddr4_dq(c2_ddr4_dq[71:0]),
        .c2_ddr4_dqs_c(c2_ddr4_dqs_c[17:0]),
        .c2_ddr4_dqs_t(c2_ddr4_dqs_t[17:0]),
        .c2_ddr4_odt(ddr4_2_C0_DDR4_ODT),
        .c2_ddr4_par(ddr4_2_C0_DDR4_PAR),
        .c2_ddr4_reset_n(ddr4_2_C0_DDR4_RESET_N),
        .c2_init_calib_complete(PR_DDR4_MIG_2_c0_init_calib_complete_1),
        .peripheral_aresetn(PR_DDR4_MIG_2_peripheral_aresetn),
        .sys_rst_ddr_2(sys_rst_0_2));
  PR_DDR4_MIG_3_imp_5S4YU4 PR_DDR4_MIG_3
       (.C3_SYS_CLK_clk_n(C3_SYS_CLK_1_CLK_N),
        .C3_SYS_CLK_clk_p(C3_SYS_CLK_1_CLK_P),
        .DDR_SREF_CTRL_APP_RESTORE_COMPLETE(c2_ddr4_app_restore_complete1_1),
        .DDR_SREF_CTRL_MEM_INIT_SKIP(c2_ddr4_app_mem_init_skip2_1),
        .DDR_SREF_CTRL_SREF_ACK(PR_DDR4_MIG_3_DDR_SREF_CTRL_SREF_ACK),
        .DDR_SREF_CTRL_SREF_REQ(c2_ddr4_app_sref_req2_1),
        .DDR_SREF_CTRL_XSDB_SEL(c2_ddr4_app_xsdb_select2_1),
        .S_AXI_LITE_araddr(C0_DDR4_S_AXI_CTRL2_1_ARADDR),
        .S_AXI_LITE_arready(C0_DDR4_S_AXI_CTRL2_1_ARREADY),
        .S_AXI_LITE_arvalid(C0_DDR4_S_AXI_CTRL2_1_ARVALID),
        .S_AXI_LITE_awaddr(C0_DDR4_S_AXI_CTRL2_1_AWADDR),
        .S_AXI_LITE_awready(C0_DDR4_S_AXI_CTRL2_1_AWREADY),
        .S_AXI_LITE_awvalid(C0_DDR4_S_AXI_CTRL2_1_AWVALID),
        .S_AXI_LITE_bready(C0_DDR4_S_AXI_CTRL2_1_BREADY),
        .S_AXI_LITE_bresp(C0_DDR4_S_AXI_CTRL2_1_BRESP),
        .S_AXI_LITE_bvalid(C0_DDR4_S_AXI_CTRL2_1_BVALID),
        .S_AXI_LITE_rdata(C0_DDR4_S_AXI_CTRL2_1_RDATA),
        .S_AXI_LITE_rready(C0_DDR4_S_AXI_CTRL2_1_RREADY),
        .S_AXI_LITE_rresp(C0_DDR4_S_AXI_CTRL2_1_RRESP),
        .S_AXI_LITE_rvalid(C0_DDR4_S_AXI_CTRL2_1_RVALID),
        .S_AXI_LITE_wdata(C0_DDR4_S_AXI_CTRL2_1_WDATA),
        .S_AXI_LITE_wready(C0_DDR4_S_AXI_CTRL2_1_WREADY),
        .S_AXI_LITE_wvalid(C0_DDR4_S_AXI_CTRL2_1_WVALID),
        .S_AXI_araddr(C0_DDR4_S_AXI2_1_ARADDR),
        .S_AXI_arburst(C0_DDR4_S_AXI2_1_ARBURST),
        .S_AXI_arcache(C0_DDR4_S_AXI2_1_ARCACHE),
        .S_AXI_arid(C0_DDR4_S_AXI2_1_ARID),
        .S_AXI_arlen(C0_DDR4_S_AXI2_1_ARLEN),
        .S_AXI_arlock(C0_DDR4_S_AXI2_1_ARLOCK),
        .S_AXI_arprot(C0_DDR4_S_AXI2_1_ARPROT),
        .S_AXI_arqos(C0_DDR4_S_AXI2_1_ARQOS),
        .S_AXI_arready(C0_DDR4_S_AXI2_1_ARREADY),
        .S_AXI_arsize(C0_DDR4_S_AXI2_1_ARSIZE),
        .S_AXI_arvalid(C0_DDR4_S_AXI2_1_ARVALID),
        .S_AXI_awaddr(C0_DDR4_S_AXI2_1_AWADDR),
        .S_AXI_awburst(C0_DDR4_S_AXI2_1_AWBURST),
        .S_AXI_awcache(C0_DDR4_S_AXI2_1_AWCACHE),
        .S_AXI_awid(C0_DDR4_S_AXI2_1_AWID),
        .S_AXI_awlen(C0_DDR4_S_AXI2_1_AWLEN),
        .S_AXI_awlock(C0_DDR4_S_AXI2_1_AWLOCK),
        .S_AXI_awprot(C0_DDR4_S_AXI2_1_AWPROT),
        .S_AXI_awqos(C0_DDR4_S_AXI2_1_AWQOS),
        .S_AXI_awready(C0_DDR4_S_AXI2_1_AWREADY),
        .S_AXI_awsize(C0_DDR4_S_AXI2_1_AWSIZE),
        .S_AXI_awvalid(C0_DDR4_S_AXI2_1_AWVALID),
        .S_AXI_bid(C0_DDR4_S_AXI2_1_BID),
        .S_AXI_bready(C0_DDR4_S_AXI2_1_BREADY),
        .S_AXI_bresp(C0_DDR4_S_AXI2_1_BRESP),
        .S_AXI_bvalid(C0_DDR4_S_AXI2_1_BVALID),
        .S_AXI_rdata(C0_DDR4_S_AXI2_1_RDATA),
        .S_AXI_rid(C0_DDR4_S_AXI2_1_RID),
        .S_AXI_rlast(C0_DDR4_S_AXI2_1_RLAST),
        .S_AXI_rready(C0_DDR4_S_AXI2_1_RREADY),
        .S_AXI_rresp(C0_DDR4_S_AXI2_1_RRESP),
        .S_AXI_rvalid(C0_DDR4_S_AXI2_1_RVALID),
        .S_AXI_wdata(C0_DDR4_S_AXI2_1_WDATA),
        .S_AXI_wlast(C0_DDR4_S_AXI2_1_WLAST),
        .S_AXI_wready(C0_DDR4_S_AXI2_1_WREADY),
        .S_AXI_wstrb(C0_DDR4_S_AXI2_1_WSTRB),
        .S_AXI_wvalid(C0_DDR4_S_AXI2_1_WVALID),
        .S_XSDB_AXIL_araddr(C3_S_AXI_1_ARADDR),
        .S_XSDB_AXIL_arprot(C3_S_AXI_1_ARPROT),
        .S_XSDB_AXIL_arready(C3_S_AXI_1_ARREADY),
        .S_XSDB_AXIL_arvalid(C3_S_AXI_1_ARVALID),
        .S_XSDB_AXIL_awaddr(C3_S_AXI_1_AWADDR),
        .S_XSDB_AXIL_awprot(C3_S_AXI_1_AWPROT),
        .S_XSDB_AXIL_awready(C3_S_AXI_1_AWREADY),
        .S_XSDB_AXIL_awvalid(C3_S_AXI_1_AWVALID),
        .S_XSDB_AXIL_bready(C3_S_AXI_1_BREADY),
        .S_XSDB_AXIL_bresp(C3_S_AXI_1_BRESP),
        .S_XSDB_AXIL_bvalid(C3_S_AXI_1_BVALID),
        .S_XSDB_AXIL_rdata(C3_S_AXI_1_RDATA),
        .S_XSDB_AXIL_rready(C3_S_AXI_1_RREADY),
        .S_XSDB_AXIL_rresp(C3_S_AXI_1_RRESP),
        .S_XSDB_AXIL_rvalid(C3_S_AXI_1_RVALID),
        .S_XSDB_AXIL_wdata(C3_S_AXI_1_WDATA),
        .S_XSDB_AXIL_wready(C3_S_AXI_1_WREADY),
        .S_XSDB_AXIL_wstrb(C3_S_AXI_1_WSTRB),
        .S_XSDB_AXIL_wvalid(C3_S_AXI_1_WVALID),
        .c0_ddr4_ui_clk(PR_DDR4_MIG_3_c0_ddr4_ui_clk),
        .c2_ddr4_act_n(PR_DDR4_MIG_3_c2_ddr4_ACT_N),
        .c2_ddr4_adr(PR_DDR4_MIG_3_c2_ddr4_ADR),
        .c2_ddr4_ba(PR_DDR4_MIG_3_c2_ddr4_BA),
        .c2_ddr4_bg(PR_DDR4_MIG_3_c2_ddr4_BG),
        .c2_ddr4_ck_c(PR_DDR4_MIG_3_c2_ddr4_CK_C),
        .c2_ddr4_ck_t(PR_DDR4_MIG_3_c2_ddr4_CK_T),
        .c2_ddr4_cke(PR_DDR4_MIG_3_c2_ddr4_CKE),
        .c2_ddr4_cs_n(PR_DDR4_MIG_3_c2_ddr4_CS_N),
        .c2_ddr4_dq(c3_ddr4_dq[71:0]),
        .c2_ddr4_dqs_c(c3_ddr4_dqs_c[17:0]),
        .c2_ddr4_dqs_t(c3_ddr4_dqs_t[17:0]),
        .c2_ddr4_odt(PR_DDR4_MIG_3_c2_ddr4_ODT),
        .c2_ddr4_par(PR_DDR4_MIG_3_c2_ddr4_PAR),
        .c2_ddr4_reset_n(PR_DDR4_MIG_3_c2_ddr4_RESET_N),
        .c2_init_calib_complete(PR_DDR4_MIG_3_c2_init_calib_complete),
        .peripheral_aresetn(PR_DDR4_MIG_3_peripheral_aresetn),
        .sys_rst_ddr_3(sys_rst_0_3));
endmodule

module PR_DDR4_MIG_0_imp_1G0UKRA
   (C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    DDR_SREF_CTRL_APP_RESTORE_COMPLETE,
    DDR_SREF_CTRL_MEM_INIT_SKIP,
    DDR_SREF_CTRL_SREF_ACK,
    DDR_SREF_CTRL_SREF_REQ,
    DDR_SREF_CTRL_XSDB_SEL,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_XSDB_AXIL_araddr,
    S_XSDB_AXIL_arprot,
    S_XSDB_AXIL_arready,
    S_XSDB_AXIL_arvalid,
    S_XSDB_AXIL_awaddr,
    S_XSDB_AXIL_awprot,
    S_XSDB_AXIL_awready,
    S_XSDB_AXIL_awvalid,
    S_XSDB_AXIL_bready,
    S_XSDB_AXIL_bresp,
    S_XSDB_AXIL_bvalid,
    S_XSDB_AXIL_rdata,
    S_XSDB_AXIL_rready,
    S_XSDB_AXIL_rresp,
    S_XSDB_AXIL_rvalid,
    S_XSDB_AXIL_wdata,
    S_XSDB_AXIL_wready,
    S_XSDB_AXIL_wstrb,
    S_XSDB_AXIL_wvalid,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_par,
    c0_ddr4_reset_n,
    c0_ddr4_ui_clk,
    c0_init_calib_complete,
    peripheral_aresetn,
    sys_rst_ddr_2);
  input C0_SYS_CLK_clk_n;
  input C0_SYS_CLK_clk_p;
  input DDR_SREF_CTRL_APP_RESTORE_COMPLETE;
  input DDR_SREF_CTRL_MEM_INIT_SKIP;
  output DDR_SREF_CTRL_SREF_ACK;
  input DDR_SREF_CTRL_SREF_REQ;
  input DDR_SREF_CTRL_XSDB_SEL;
  input [31:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input [17:0]S_XSDB_AXIL_araddr;
  input [2:0]S_XSDB_AXIL_arprot;
  output S_XSDB_AXIL_arready;
  input S_XSDB_AXIL_arvalid;
  input [17:0]S_XSDB_AXIL_awaddr;
  input [2:0]S_XSDB_AXIL_awprot;
  output S_XSDB_AXIL_awready;
  input S_XSDB_AXIL_awvalid;
  input S_XSDB_AXIL_bready;
  output [1:0]S_XSDB_AXIL_bresp;
  output S_XSDB_AXIL_bvalid;
  output [31:0]S_XSDB_AXIL_rdata;
  input S_XSDB_AXIL_rready;
  output [1:0]S_XSDB_AXIL_rresp;
  output S_XSDB_AXIL_rvalid;
  input [31:0]S_XSDB_AXIL_wdata;
  output S_XSDB_AXIL_wready;
  input [3:0]S_XSDB_AXIL_wstrb;
  input S_XSDB_AXIL_wvalid;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_par;
  output c0_ddr4_reset_n;
  output c0_ddr4_ui_clk;
  output c0_init_calib_complete;
  output [0:0]peripheral_aresetn;
  input sys_rst_ddr_2;

  wire AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1;
  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire DDR_SREF_CTRL_MEM_INIT_SKIP_1;
  wire DDR_SREF_CTRL_SREF_REQ_1;
  wire [17:0]S_AXI1_1_ARADDR;
  wire [2:0]S_AXI1_1_ARPROT;
  wire S_AXI1_1_ARREADY;
  wire S_AXI1_1_ARVALID;
  wire [17:0]S_AXI1_1_AWADDR;
  wire [2:0]S_AXI1_1_AWPROT;
  wire S_AXI1_1_AWREADY;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WREADY;
  wire [3:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire [63:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [5:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [63:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [5:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [5:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [5:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]S_AXI_LITE_1_ARADDR;
  wire S_AXI_LITE_1_ARREADY;
  wire S_AXI_LITE_1_ARVALID;
  wire [31:0]S_AXI_LITE_1_AWADDR;
  wire S_AXI_LITE_1_AWREADY;
  wire S_AXI_LITE_1_AWVALID;
  wire S_AXI_LITE_1_BREADY;
  wire [1:0]S_AXI_LITE_1_BRESP;
  wire S_AXI_LITE_1_BVALID;
  wire [31:0]S_AXI_LITE_1_RDATA;
  wire S_AXI_LITE_1_RREADY;
  wire [1:0]S_AXI_LITE_1_RRESP;
  wire S_AXI_LITE_1_RVALID;
  wire [31:0]S_AXI_LITE_1_WDATA;
  wire S_AXI_LITE_1_WREADY;
  wire S_AXI_LITE_1_WVALID;
  wire c0_ddr4_app_xsdb_select_0_1;
  wire ddr4_2_C0_DDR4_ACT_N;
  wire [16:0]ddr4_2_C0_DDR4_ADR;
  wire [1:0]ddr4_2_C0_DDR4_BA;
  wire [1:0]ddr4_2_C0_DDR4_BG;
  wire [0:0]ddr4_2_C0_DDR4_CKE;
  wire [0:0]ddr4_2_C0_DDR4_CK_C;
  wire [0:0]ddr4_2_C0_DDR4_CK_T;
  wire [0:0]ddr4_2_C0_DDR4_CS_N;
  wire [71:0]ddr4_2_C0_DDR4_DQ;
  wire [17:0]ddr4_2_C0_DDR4_DQS_C;
  wire [17:0]ddr4_2_C0_DDR4_DQS_T;
  wire [0:0]ddr4_2_C0_DDR4_ODT;
  wire ddr4_2_C0_DDR4_PAR;
  wire ddr4_2_C0_DDR4_RESET_N;
  wire ddr4_2_c0_ddr4_app_sref_ack1;
  wire [8:0]ddr4_2_c0_ddr4_app_xsdb_rd_data;
  wire ddr4_2_c0_ddr4_app_xsdb_rdy;
  wire ddr4_2_c0_ddr4_ui_clk;
  wire ddr4_2_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_2_c0_init_calib_complete;
  wire ddr4_sync_sys_rst;
  wire [15:0]myip_AXIL_TO_XSDB_v1_0_XSDB_addr;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en;
  wire [8:0]myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en;
  wire [0:0]proc_sys_reset_MIG_B_peripheral_aresetn;
  wire sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_complete;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_en;
  wire sref_init_restore_sy_0_c0_ddr4_app_sref_req;
  wire sys_rst_ddr_2_1;

  assign AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1 = DDR_SREF_CTRL_APP_RESTORE_COMPLETE;
  assign C0_SYS_CLK_0_1_CLK_N = C0_SYS_CLK_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = C0_SYS_CLK_clk_p;
  assign DDR_SREF_CTRL_MEM_INIT_SKIP_1 = DDR_SREF_CTRL_MEM_INIT_SKIP;
  assign DDR_SREF_CTRL_SREF_ACK = ddr4_2_c0_ddr4_app_sref_ack1;
  assign DDR_SREF_CTRL_SREF_REQ_1 = DDR_SREF_CTRL_SREF_REQ;
  assign S_AXI1_1_ARADDR = S_XSDB_AXIL_araddr[17:0];
  assign S_AXI1_1_ARPROT = S_XSDB_AXIL_arprot[2:0];
  assign S_AXI1_1_ARVALID = S_XSDB_AXIL_arvalid;
  assign S_AXI1_1_AWADDR = S_XSDB_AXIL_awaddr[17:0];
  assign S_AXI1_1_AWPROT = S_XSDB_AXIL_awprot[2:0];
  assign S_AXI1_1_AWVALID = S_XSDB_AXIL_awvalid;
  assign S_AXI1_1_BREADY = S_XSDB_AXIL_bready;
  assign S_AXI1_1_RREADY = S_XSDB_AXIL_rready;
  assign S_AXI1_1_WDATA = S_XSDB_AXIL_wdata[31:0];
  assign S_AXI1_1_WSTRB = S_XSDB_AXIL_wstrb[3:0];
  assign S_AXI1_1_WVALID = S_XSDB_AXIL_wvalid;
  assign S_AXI_1_ARADDR = S_AXI_araddr[63:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[5:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[63:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[5:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_LITE_1_ARADDR = S_AXI_LITE_araddr[31:0];
  assign S_AXI_LITE_1_ARVALID = S_AXI_LITE_arvalid;
  assign S_AXI_LITE_1_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign S_AXI_LITE_1_AWVALID = S_AXI_LITE_awvalid;
  assign S_AXI_LITE_1_BREADY = S_AXI_LITE_bready;
  assign S_AXI_LITE_1_RREADY = S_AXI_LITE_rready;
  assign S_AXI_LITE_1_WDATA = S_AXI_LITE_wdata[31:0];
  assign S_AXI_LITE_1_WVALID = S_AXI_LITE_wvalid;
  assign S_AXI_LITE_arready = S_AXI_LITE_1_ARREADY;
  assign S_AXI_LITE_awready = S_AXI_LITE_1_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = S_AXI_LITE_1_BRESP;
  assign S_AXI_LITE_bvalid = S_AXI_LITE_1_BVALID;
  assign S_AXI_LITE_rdata[31:0] = S_AXI_LITE_1_RDATA;
  assign S_AXI_LITE_rresp[1:0] = S_AXI_LITE_1_RRESP;
  assign S_AXI_LITE_rvalid = S_AXI_LITE_1_RVALID;
  assign S_AXI_LITE_wready = S_AXI_LITE_1_WREADY;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[5:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[5:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign S_XSDB_AXIL_arready = S_AXI1_1_ARREADY;
  assign S_XSDB_AXIL_awready = S_AXI1_1_AWREADY;
  assign S_XSDB_AXIL_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_XSDB_AXIL_bvalid = S_AXI1_1_BVALID;
  assign S_XSDB_AXIL_rdata[31:0] = S_AXI1_1_RDATA;
  assign S_XSDB_AXIL_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_XSDB_AXIL_rvalid = S_AXI1_1_RVALID;
  assign S_XSDB_AXIL_wready = S_AXI1_1_WREADY;
  assign c0_ddr4_act_n = ddr4_2_C0_DDR4_ACT_N;
  assign c0_ddr4_adr[16:0] = ddr4_2_C0_DDR4_ADR;
  assign c0_ddr4_app_xsdb_select_0_1 = DDR_SREF_CTRL_XSDB_SEL;
  assign c0_ddr4_ba[1:0] = ddr4_2_C0_DDR4_BA;
  assign c0_ddr4_bg[1:0] = ddr4_2_C0_DDR4_BG;
  assign c0_ddr4_ck_c[0] = ddr4_2_C0_DDR4_CK_C;
  assign c0_ddr4_ck_t[0] = ddr4_2_C0_DDR4_CK_T;
  assign c0_ddr4_cke[0] = ddr4_2_C0_DDR4_CKE;
  assign c0_ddr4_cs_n[0] = ddr4_2_C0_DDR4_CS_N;
  assign c0_ddr4_odt[0] = ddr4_2_C0_DDR4_ODT;
  assign c0_ddr4_par = ddr4_2_C0_DDR4_PAR;
  assign c0_ddr4_reset_n = ddr4_2_C0_DDR4_RESET_N;
  assign c0_ddr4_ui_clk = ddr4_2_c0_ddr4_ui_clk;
  assign c0_init_calib_complete = ddr4_2_c0_init_calib_complete;
  assign peripheral_aresetn[0] = proc_sys_reset_MIG_B_peripheral_aresetn;
  assign sys_rst_ddr_2_1 = sys_rst_ddr_2;
  dynamic_region_ddr4_PR_SREF_ILA_2 PR_SREF_ILA
       (.clk(ddr4_2_c0_ddr4_ui_clk),
        .probe0(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .probe1(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .probe2(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .probe3(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .probe4(c0_ddr4_app_xsdb_select_0_1),
        .probe5(ddr4_2_c0_ddr4_app_sref_ack1),
        .probe6(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .probe7(ddr4_2_c0_init_calib_complete),
        .probe8(ddr4_sync_sys_rst),
        .probe9(ddr4_2_c0_ddr4_ui_clk_sync_rst));
  dynamic_region_ddr4_XSDB_RAW_ILA_2 XSDB_RAW_ILA
       (.clk(ddr4_2_c0_ddr4_ui_clk),
        .probe0(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .probe1(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .probe2(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .probe3(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .probe4(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .probe5(ddr4_2_c0_ddr4_app_xsdb_rdy));
  dynamic_region_ddr4_ddr4_0_1 ddr4_0
       (.c0_ddr4_act_n(ddr4_2_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_2_C0_DDR4_ADR),
        .c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_ack(ddr4_2_c0_ddr4_app_sref_ack1),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .c0_ddr4_app_xsdb_rd_data(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .c0_ddr4_app_xsdb_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .c0_ddr4_app_xsdb_rdy(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select_0_1),
        .c0_ddr4_app_xsdb_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .c0_ddr4_app_xsdb_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .c0_ddr4_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .c0_ddr4_ba(ddr4_2_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_2_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_2_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_2_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_2_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_2_C0_DDR4_CS_N),
        .c0_ddr4_dq(c0_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(ddr4_2_C0_DDR4_ODT),
        .c0_ddr4_parity(ddr4_2_C0_DDR4_PAR),
        .c0_ddr4_reset_n(ddr4_2_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(S_AXI_1_ARADDR[33:0]),
        .c0_ddr4_s_axi_arburst(S_AXI_1_ARBURST),
        .c0_ddr4_s_axi_arcache(S_AXI_1_ARCACHE),
        .c0_ddr4_s_axi_arid(S_AXI_1_ARID),
        .c0_ddr4_s_axi_arlen(S_AXI_1_ARLEN),
        .c0_ddr4_s_axi_arlock(S_AXI_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(S_AXI_1_ARPROT),
        .c0_ddr4_s_axi_arqos(S_AXI_1_ARQOS),
        .c0_ddr4_s_axi_arready(S_AXI_1_ARREADY),
        .c0_ddr4_s_axi_arsize(S_AXI_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(S_AXI_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(S_AXI_1_AWADDR[33:0]),
        .c0_ddr4_s_axi_awburst(S_AXI_1_AWBURST),
        .c0_ddr4_s_axi_awcache(S_AXI_1_AWCACHE),
        .c0_ddr4_s_axi_awid(S_AXI_1_AWID),
        .c0_ddr4_s_axi_awlen(S_AXI_1_AWLEN),
        .c0_ddr4_s_axi_awlock(S_AXI_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(S_AXI_1_AWPROT),
        .c0_ddr4_s_axi_awqos(S_AXI_1_AWQOS),
        .c0_ddr4_s_axi_awready(S_AXI_1_AWREADY),
        .c0_ddr4_s_axi_awsize(S_AXI_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(S_AXI_1_AWVALID),
        .c0_ddr4_s_axi_bid(S_AXI_1_BID),
        .c0_ddr4_s_axi_bready(S_AXI_1_BREADY),
        .c0_ddr4_s_axi_bresp(S_AXI_1_BRESP),
        .c0_ddr4_s_axi_bvalid(S_AXI_1_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(S_AXI_LITE_1_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(S_AXI_LITE_1_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(S_AXI_LITE_1_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(S_AXI_LITE_1_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(S_AXI_LITE_1_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(S_AXI_LITE_1_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(S_AXI_LITE_1_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(S_AXI_LITE_1_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(S_AXI_LITE_1_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(S_AXI_LITE_1_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(S_AXI_LITE_1_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(S_AXI_LITE_1_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(S_AXI_LITE_1_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(S_AXI_LITE_1_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(S_AXI_LITE_1_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(S_AXI_LITE_1_WVALID),
        .c0_ddr4_s_axi_rdata(S_AXI_1_RDATA),
        .c0_ddr4_s_axi_rid(S_AXI_1_RID),
        .c0_ddr4_s_axi_rlast(S_AXI_1_RLAST),
        .c0_ddr4_s_axi_rready(S_AXI_1_RREADY),
        .c0_ddr4_s_axi_rresp(S_AXI_1_RRESP),
        .c0_ddr4_s_axi_rvalid(S_AXI_1_RVALID),
        .c0_ddr4_s_axi_wdata(S_AXI_1_WDATA),
        .c0_ddr4_s_axi_wlast(S_AXI_1_WLAST),
        .c0_ddr4_s_axi_wready(S_AXI_1_WREADY),
        .c0_ddr4_s_axi_wstrb(S_AXI_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(S_AXI_1_WVALID),
        .c0_ddr4_ui_clk(ddr4_2_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_2_c0_init_calib_complete),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(ddr4_sync_sys_rst));
  dynamic_region_ddr4_myip_AXIL_TO_XSDB_v1_0_2 myip_AXIL_TO_XSDB_v1_0
       (.XSDB_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .XSDB_rd_data(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .XSDB_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .XSDB_rdy(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .XSDB_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .XSDB_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .s00_axi_aclk(ddr4_2_c0_ddr4_ui_clk),
        .s00_axi_araddr(S_AXI1_1_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .s00_axi_arprot(S_AXI1_1_ARPROT),
        .s00_axi_arready(S_AXI1_1_ARREADY),
        .s00_axi_arvalid(S_AXI1_1_ARVALID),
        .s00_axi_awaddr(S_AXI1_1_AWADDR),
        .s00_axi_awprot(S_AXI1_1_AWPROT),
        .s00_axi_awready(S_AXI1_1_AWREADY),
        .s00_axi_awvalid(S_AXI1_1_AWVALID),
        .s00_axi_bready(S_AXI1_1_BREADY),
        .s00_axi_bresp(S_AXI1_1_BRESP),
        .s00_axi_bvalid(S_AXI1_1_BVALID),
        .s00_axi_rdata(S_AXI1_1_RDATA),
        .s00_axi_rready(S_AXI1_1_RREADY),
        .s00_axi_rresp(S_AXI1_1_RRESP),
        .s00_axi_rvalid(S_AXI1_1_RVALID),
        .s00_axi_wdata(S_AXI1_1_WDATA),
        .s00_axi_wready(S_AXI1_1_WREADY),
        .s00_axi_wstrb(S_AXI1_1_WSTRB),
        .s00_axi_wvalid(S_AXI1_1_WVALID));
  dynamic_region_ddr4_proc_sys_reset_MIG_B_3 proc_sys_reset_MIG_B
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .slowest_sync_clk(ddr4_2_c0_ddr4_ui_clk));
  dynamic_region_ddr4_sref_init_restore_sy_0_2 sref_init_restore_sy_0
       (.c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_sys_rst_out(ddr4_sync_sys_rst),
        .c0_ddr4_ui_clk_sync_rst(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_2_c0_init_calib_complete),
        .c0_mig_ui_clk(ddr4_2_c0_ddr4_ui_clk),
        .shell_mem_init_skip(DDR_SREF_CTRL_MEM_INIT_SKIP_1),
        .shell_restore_complete(AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1),
        .shell_sref_req(DDR_SREF_CTRL_SREF_REQ_1),
        .shell_sys_rst_in(sys_rst_ddr_2_1));
endmodule

module PR_DDR4_MIG_2_imp_VJNA56
   (AAR_SREF_CTRL_APP_RESTORE_COMPLETE,
    C2_SYS_CLK_clk_n,
    C2_SYS_CLK_clk_p,
    DDR_SREF_CTRL_MEM_INIT_SKIP,
    DDR_SREF_CTRL_SREF_ACK,
    DDR_SREF_CTRL_SREF_REQ,
    DDR_SREF_CTRL_XSDB_SEL,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_XSDB_AXIL_araddr,
    S_XSDB_AXIL_arprot,
    S_XSDB_AXIL_arready,
    S_XSDB_AXIL_arvalid,
    S_XSDB_AXIL_awaddr,
    S_XSDB_AXIL_awprot,
    S_XSDB_AXIL_awready,
    S_XSDB_AXIL_awvalid,
    S_XSDB_AXIL_bready,
    S_XSDB_AXIL_bresp,
    S_XSDB_AXIL_bvalid,
    S_XSDB_AXIL_rdata,
    S_XSDB_AXIL_rready,
    S_XSDB_AXIL_rresp,
    S_XSDB_AXIL_rvalid,
    S_XSDB_AXIL_wdata,
    S_XSDB_AXIL_wready,
    S_XSDB_AXIL_wstrb,
    S_XSDB_AXIL_wvalid,
    c0_ddr4_ui_clk,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_par,
    c2_ddr4_reset_n,
    c2_init_calib_complete,
    peripheral_aresetn,
    sys_rst_ddr_2);
  input AAR_SREF_CTRL_APP_RESTORE_COMPLETE;
  input C2_SYS_CLK_clk_n;
  input C2_SYS_CLK_clk_p;
  input DDR_SREF_CTRL_MEM_INIT_SKIP;
  output DDR_SREF_CTRL_SREF_ACK;
  input DDR_SREF_CTRL_SREF_REQ;
  input DDR_SREF_CTRL_XSDB_SEL;
  input [31:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input [17:0]S_XSDB_AXIL_araddr;
  input [2:0]S_XSDB_AXIL_arprot;
  output S_XSDB_AXIL_arready;
  input S_XSDB_AXIL_arvalid;
  input [17:0]S_XSDB_AXIL_awaddr;
  input [2:0]S_XSDB_AXIL_awprot;
  output S_XSDB_AXIL_awready;
  input S_XSDB_AXIL_awvalid;
  input S_XSDB_AXIL_bready;
  output [1:0]S_XSDB_AXIL_bresp;
  output S_XSDB_AXIL_bvalid;
  output [31:0]S_XSDB_AXIL_rdata;
  input S_XSDB_AXIL_rready;
  output [1:0]S_XSDB_AXIL_rresp;
  output S_XSDB_AXIL_rvalid;
  input [31:0]S_XSDB_AXIL_wdata;
  output S_XSDB_AXIL_wready;
  input [3:0]S_XSDB_AXIL_wstrb;
  input S_XSDB_AXIL_wvalid;
  output c0_ddr4_ui_clk;
  output c2_ddr4_act_n;
  output [16:0]c2_ddr4_adr;
  output [1:0]c2_ddr4_ba;
  output [1:0]c2_ddr4_bg;
  output [0:0]c2_ddr4_ck_c;
  output [0:0]c2_ddr4_ck_t;
  output [0:0]c2_ddr4_cke;
  output [0:0]c2_ddr4_cs_n;
  inout [71:0]c2_ddr4_dq;
  inout [17:0]c2_ddr4_dqs_c;
  inout [17:0]c2_ddr4_dqs_t;
  output [0:0]c2_ddr4_odt;
  output c2_ddr4_par;
  output c2_ddr4_reset_n;
  output c2_init_calib_complete;
  output [0:0]peripheral_aresetn;
  input sys_rst_ddr_2;

  wire AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1;
  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire DDR_SREF_CTRL_MEM_INIT_SKIP_1;
  wire DDR_SREF_CTRL_SREF_REQ_1;
  wire [17:0]S_AXI1_1_ARADDR;
  wire [2:0]S_AXI1_1_ARPROT;
  wire S_AXI1_1_ARREADY;
  wire S_AXI1_1_ARVALID;
  wire [17:0]S_AXI1_1_AWADDR;
  wire [2:0]S_AXI1_1_AWPROT;
  wire S_AXI1_1_AWREADY;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WREADY;
  wire [3:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire [63:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [5:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [63:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [5:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [5:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [5:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]S_AXI_LITE_1_ARADDR;
  wire S_AXI_LITE_1_ARREADY;
  wire S_AXI_LITE_1_ARVALID;
  wire [31:0]S_AXI_LITE_1_AWADDR;
  wire S_AXI_LITE_1_AWREADY;
  wire S_AXI_LITE_1_AWVALID;
  wire S_AXI_LITE_1_BREADY;
  wire [1:0]S_AXI_LITE_1_BRESP;
  wire S_AXI_LITE_1_BVALID;
  wire [31:0]S_AXI_LITE_1_RDATA;
  wire S_AXI_LITE_1_RREADY;
  wire [1:0]S_AXI_LITE_1_RRESP;
  wire S_AXI_LITE_1_RVALID;
  wire [31:0]S_AXI_LITE_1_WDATA;
  wire S_AXI_LITE_1_WREADY;
  wire S_AXI_LITE_1_WVALID;
  wire c0_ddr4_app_xsdb_select_0_1;
  wire ddr4_2_C0_DDR4_ACT_N;
  wire [16:0]ddr4_2_C0_DDR4_ADR;
  wire [1:0]ddr4_2_C0_DDR4_BA;
  wire [1:0]ddr4_2_C0_DDR4_BG;
  wire [0:0]ddr4_2_C0_DDR4_CKE;
  wire [0:0]ddr4_2_C0_DDR4_CK_C;
  wire [0:0]ddr4_2_C0_DDR4_CK_T;
  wire [0:0]ddr4_2_C0_DDR4_CS_N;
  wire [71:0]ddr4_2_C0_DDR4_DQ;
  wire [17:0]ddr4_2_C0_DDR4_DQS_C;
  wire [17:0]ddr4_2_C0_DDR4_DQS_T;
  wire [0:0]ddr4_2_C0_DDR4_ODT;
  wire ddr4_2_C0_DDR4_PAR;
  wire ddr4_2_C0_DDR4_RESET_N;
  wire ddr4_2_c0_ddr4_app_sref_ack1;
  wire [8:0]ddr4_2_c0_ddr4_app_xsdb_rd_data;
  wire ddr4_2_c0_ddr4_app_xsdb_rdy;
  wire ddr4_2_c0_ddr4_ui_clk;
  wire ddr4_2_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_2_c0_init_calib_complete;
  wire ddr4_sync_sys_rst;
  wire [15:0]myip_AXIL_TO_XSDB_v1_0_XSDB_addr;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en;
  wire [8:0]myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en;
  wire [0:0]proc_sys_reset_MIG_B_peripheral_aresetn;
  wire sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_complete;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_en;
  wire sref_init_restore_sy_0_c0_ddr4_app_sref_req;
  wire sys_rst_ddr_2_1;

  assign AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1 = AAR_SREF_CTRL_APP_RESTORE_COMPLETE;
  assign C0_SYS_CLK_0_1_CLK_N = C2_SYS_CLK_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = C2_SYS_CLK_clk_p;
  assign DDR_SREF_CTRL_MEM_INIT_SKIP_1 = DDR_SREF_CTRL_MEM_INIT_SKIP;
  assign DDR_SREF_CTRL_SREF_ACK = ddr4_2_c0_ddr4_app_sref_ack1;
  assign DDR_SREF_CTRL_SREF_REQ_1 = DDR_SREF_CTRL_SREF_REQ;
  assign S_AXI1_1_ARADDR = S_XSDB_AXIL_araddr[17:0];
  assign S_AXI1_1_ARPROT = S_XSDB_AXIL_arprot[2:0];
  assign S_AXI1_1_ARVALID = S_XSDB_AXIL_arvalid;
  assign S_AXI1_1_AWADDR = S_XSDB_AXIL_awaddr[17:0];
  assign S_AXI1_1_AWPROT = S_XSDB_AXIL_awprot[2:0];
  assign S_AXI1_1_AWVALID = S_XSDB_AXIL_awvalid;
  assign S_AXI1_1_BREADY = S_XSDB_AXIL_bready;
  assign S_AXI1_1_RREADY = S_XSDB_AXIL_rready;
  assign S_AXI1_1_WDATA = S_XSDB_AXIL_wdata[31:0];
  assign S_AXI1_1_WSTRB = S_XSDB_AXIL_wstrb[3:0];
  assign S_AXI1_1_WVALID = S_XSDB_AXIL_wvalid;
  assign S_AXI_1_ARADDR = S_AXI_araddr[63:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[5:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[63:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[5:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_LITE_1_ARADDR = S_AXI_LITE_araddr[31:0];
  assign S_AXI_LITE_1_ARVALID = S_AXI_LITE_arvalid;
  assign S_AXI_LITE_1_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign S_AXI_LITE_1_AWVALID = S_AXI_LITE_awvalid;
  assign S_AXI_LITE_1_BREADY = S_AXI_LITE_bready;
  assign S_AXI_LITE_1_RREADY = S_AXI_LITE_rready;
  assign S_AXI_LITE_1_WDATA = S_AXI_LITE_wdata[31:0];
  assign S_AXI_LITE_1_WVALID = S_AXI_LITE_wvalid;
  assign S_AXI_LITE_arready = S_AXI_LITE_1_ARREADY;
  assign S_AXI_LITE_awready = S_AXI_LITE_1_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = S_AXI_LITE_1_BRESP;
  assign S_AXI_LITE_bvalid = S_AXI_LITE_1_BVALID;
  assign S_AXI_LITE_rdata[31:0] = S_AXI_LITE_1_RDATA;
  assign S_AXI_LITE_rresp[1:0] = S_AXI_LITE_1_RRESP;
  assign S_AXI_LITE_rvalid = S_AXI_LITE_1_RVALID;
  assign S_AXI_LITE_wready = S_AXI_LITE_1_WREADY;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[5:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[5:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign S_XSDB_AXIL_arready = S_AXI1_1_ARREADY;
  assign S_XSDB_AXIL_awready = S_AXI1_1_AWREADY;
  assign S_XSDB_AXIL_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_XSDB_AXIL_bvalid = S_AXI1_1_BVALID;
  assign S_XSDB_AXIL_rdata[31:0] = S_AXI1_1_RDATA;
  assign S_XSDB_AXIL_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_XSDB_AXIL_rvalid = S_AXI1_1_RVALID;
  assign S_XSDB_AXIL_wready = S_AXI1_1_WREADY;
  assign c0_ddr4_app_xsdb_select_0_1 = DDR_SREF_CTRL_XSDB_SEL;
  assign c0_ddr4_ui_clk = ddr4_2_c0_ddr4_ui_clk;
  assign c2_ddr4_act_n = ddr4_2_C0_DDR4_ACT_N;
  assign c2_ddr4_adr[16:0] = ddr4_2_C0_DDR4_ADR;
  assign c2_ddr4_ba[1:0] = ddr4_2_C0_DDR4_BA;
  assign c2_ddr4_bg[1:0] = ddr4_2_C0_DDR4_BG;
  assign c2_ddr4_ck_c[0] = ddr4_2_C0_DDR4_CK_C;
  assign c2_ddr4_ck_t[0] = ddr4_2_C0_DDR4_CK_T;
  assign c2_ddr4_cke[0] = ddr4_2_C0_DDR4_CKE;
  assign c2_ddr4_cs_n[0] = ddr4_2_C0_DDR4_CS_N;
  assign c2_ddr4_odt[0] = ddr4_2_C0_DDR4_ODT;
  assign c2_ddr4_par = ddr4_2_C0_DDR4_PAR;
  assign c2_ddr4_reset_n = ddr4_2_C0_DDR4_RESET_N;
  assign c2_init_calib_complete = ddr4_2_c0_init_calib_complete;
  assign peripheral_aresetn[0] = proc_sys_reset_MIG_B_peripheral_aresetn;
  assign sys_rst_ddr_2_1 = sys_rst_ddr_2;
  dynamic_region_ddr4_PR_SREF_ILA_0 PR_SREF_ILA
       (.clk(ddr4_2_c0_ddr4_ui_clk),
        .probe0(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .probe1(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .probe2(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .probe3(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .probe4(c0_ddr4_app_xsdb_select_0_1),
        .probe5(ddr4_2_c0_ddr4_app_sref_ack1),
        .probe6(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .probe7(ddr4_2_c0_init_calib_complete),
        .probe8(ddr4_sync_sys_rst),
        .probe9(ddr4_2_c0_ddr4_ui_clk_sync_rst));
  dynamic_region_ddr4_XSDB_RAW_ILA_0 XSDB_RAW_ILA
       (.clk(ddr4_2_c0_ddr4_ui_clk),
        .probe0(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .probe1(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .probe2(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .probe3(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .probe4(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .probe5(ddr4_2_c0_ddr4_app_xsdb_rdy));
  dynamic_region_ddr4_ddr4_2_1 ddr4_2
       (.c0_ddr4_act_n(ddr4_2_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_2_C0_DDR4_ADR),
        .c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_ack(ddr4_2_c0_ddr4_app_sref_ack1),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .c0_ddr4_app_xsdb_rd_data(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .c0_ddr4_app_xsdb_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .c0_ddr4_app_xsdb_rdy(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select_0_1),
        .c0_ddr4_app_xsdb_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .c0_ddr4_app_xsdb_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .c0_ddr4_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .c0_ddr4_ba(ddr4_2_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_2_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_2_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_2_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_2_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_2_C0_DDR4_CS_N),
        .c0_ddr4_dq(c2_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c2_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c2_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(ddr4_2_C0_DDR4_ODT),
        .c0_ddr4_parity(ddr4_2_C0_DDR4_PAR),
        .c0_ddr4_reset_n(ddr4_2_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(S_AXI_1_ARADDR[33:0]),
        .c0_ddr4_s_axi_arburst(S_AXI_1_ARBURST),
        .c0_ddr4_s_axi_arcache(S_AXI_1_ARCACHE),
        .c0_ddr4_s_axi_arid(S_AXI_1_ARID),
        .c0_ddr4_s_axi_arlen(S_AXI_1_ARLEN),
        .c0_ddr4_s_axi_arlock(S_AXI_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(S_AXI_1_ARPROT),
        .c0_ddr4_s_axi_arqos(S_AXI_1_ARQOS),
        .c0_ddr4_s_axi_arready(S_AXI_1_ARREADY),
        .c0_ddr4_s_axi_arsize(S_AXI_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(S_AXI_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(S_AXI_1_AWADDR[33:0]),
        .c0_ddr4_s_axi_awburst(S_AXI_1_AWBURST),
        .c0_ddr4_s_axi_awcache(S_AXI_1_AWCACHE),
        .c0_ddr4_s_axi_awid(S_AXI_1_AWID),
        .c0_ddr4_s_axi_awlen(S_AXI_1_AWLEN),
        .c0_ddr4_s_axi_awlock(S_AXI_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(S_AXI_1_AWPROT),
        .c0_ddr4_s_axi_awqos(S_AXI_1_AWQOS),
        .c0_ddr4_s_axi_awready(S_AXI_1_AWREADY),
        .c0_ddr4_s_axi_awsize(S_AXI_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(S_AXI_1_AWVALID),
        .c0_ddr4_s_axi_bid(S_AXI_1_BID),
        .c0_ddr4_s_axi_bready(S_AXI_1_BREADY),
        .c0_ddr4_s_axi_bresp(S_AXI_1_BRESP),
        .c0_ddr4_s_axi_bvalid(S_AXI_1_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(S_AXI_LITE_1_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(S_AXI_LITE_1_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(S_AXI_LITE_1_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(S_AXI_LITE_1_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(S_AXI_LITE_1_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(S_AXI_LITE_1_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(S_AXI_LITE_1_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(S_AXI_LITE_1_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(S_AXI_LITE_1_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(S_AXI_LITE_1_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(S_AXI_LITE_1_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(S_AXI_LITE_1_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(S_AXI_LITE_1_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(S_AXI_LITE_1_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(S_AXI_LITE_1_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(S_AXI_LITE_1_WVALID),
        .c0_ddr4_s_axi_rdata(S_AXI_1_RDATA),
        .c0_ddr4_s_axi_rid(S_AXI_1_RID),
        .c0_ddr4_s_axi_rlast(S_AXI_1_RLAST),
        .c0_ddr4_s_axi_rready(S_AXI_1_RREADY),
        .c0_ddr4_s_axi_rresp(S_AXI_1_RRESP),
        .c0_ddr4_s_axi_rvalid(S_AXI_1_RVALID),
        .c0_ddr4_s_axi_wdata(S_AXI_1_WDATA),
        .c0_ddr4_s_axi_wlast(S_AXI_1_WLAST),
        .c0_ddr4_s_axi_wready(S_AXI_1_WREADY),
        .c0_ddr4_s_axi_wstrb(S_AXI_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(S_AXI_1_WVALID),
        .c0_ddr4_ui_clk(ddr4_2_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_2_c0_init_calib_complete),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(ddr4_sync_sys_rst));
  dynamic_region_ddr4_myip_AXIL_TO_XSDB_v1_0_0 myip_AXIL_TO_XSDB_v1_0
       (.XSDB_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .XSDB_rd_data(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .XSDB_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .XSDB_rdy(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .XSDB_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .XSDB_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .s00_axi_aclk(ddr4_2_c0_ddr4_ui_clk),
        .s00_axi_araddr(S_AXI1_1_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .s00_axi_arprot(S_AXI1_1_ARPROT),
        .s00_axi_arready(S_AXI1_1_ARREADY),
        .s00_axi_arvalid(S_AXI1_1_ARVALID),
        .s00_axi_awaddr(S_AXI1_1_AWADDR),
        .s00_axi_awprot(S_AXI1_1_AWPROT),
        .s00_axi_awready(S_AXI1_1_AWREADY),
        .s00_axi_awvalid(S_AXI1_1_AWVALID),
        .s00_axi_bready(S_AXI1_1_BREADY),
        .s00_axi_bresp(S_AXI1_1_BRESP),
        .s00_axi_bvalid(S_AXI1_1_BVALID),
        .s00_axi_rdata(S_AXI1_1_RDATA),
        .s00_axi_rready(S_AXI1_1_RREADY),
        .s00_axi_rresp(S_AXI1_1_RRESP),
        .s00_axi_rvalid(S_AXI1_1_RVALID),
        .s00_axi_wdata(S_AXI1_1_WDATA),
        .s00_axi_wready(S_AXI1_1_WREADY),
        .s00_axi_wstrb(S_AXI1_1_WSTRB),
        .s00_axi_wvalid(S_AXI1_1_WVALID));
  dynamic_region_ddr4_proc_sys_reset_MIG_B_1 proc_sys_reset_MIG_B
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .slowest_sync_clk(ddr4_2_c0_ddr4_ui_clk));
  dynamic_region_ddr4_sref_init_restore_sy_0_0 sref_init_restore_sy_0
       (.c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_sys_rst_out(ddr4_sync_sys_rst),
        .c0_ddr4_ui_clk_sync_rst(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_2_c0_init_calib_complete),
        .c0_mig_ui_clk(ddr4_2_c0_ddr4_ui_clk),
        .shell_mem_init_skip(DDR_SREF_CTRL_MEM_INIT_SKIP_1),
        .shell_restore_complete(AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1),
        .shell_sref_req(DDR_SREF_CTRL_SREF_REQ_1),
        .shell_sys_rst_in(sys_rst_ddr_2_1));
endmodule

module PR_DDR4_MIG_3_imp_5S4YU4
   (C3_SYS_CLK_clk_n,
    C3_SYS_CLK_clk_p,
    DDR_SREF_CTRL_APP_RESTORE_COMPLETE,
    DDR_SREF_CTRL_MEM_INIT_SKIP,
    DDR_SREF_CTRL_SREF_ACK,
    DDR_SREF_CTRL_SREF_REQ,
    DDR_SREF_CTRL_XSDB_SEL,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_XSDB_AXIL_araddr,
    S_XSDB_AXIL_arprot,
    S_XSDB_AXIL_arready,
    S_XSDB_AXIL_arvalid,
    S_XSDB_AXIL_awaddr,
    S_XSDB_AXIL_awprot,
    S_XSDB_AXIL_awready,
    S_XSDB_AXIL_awvalid,
    S_XSDB_AXIL_bready,
    S_XSDB_AXIL_bresp,
    S_XSDB_AXIL_bvalid,
    S_XSDB_AXIL_rdata,
    S_XSDB_AXIL_rready,
    S_XSDB_AXIL_rresp,
    S_XSDB_AXIL_rvalid,
    S_XSDB_AXIL_wdata,
    S_XSDB_AXIL_wready,
    S_XSDB_AXIL_wstrb,
    S_XSDB_AXIL_wvalid,
    c0_ddr4_ui_clk,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_par,
    c2_ddr4_reset_n,
    c2_init_calib_complete,
    peripheral_aresetn,
    sys_rst_ddr_3);
  input C3_SYS_CLK_clk_n;
  input C3_SYS_CLK_clk_p;
  input DDR_SREF_CTRL_APP_RESTORE_COMPLETE;
  input DDR_SREF_CTRL_MEM_INIT_SKIP;
  output DDR_SREF_CTRL_SREF_ACK;
  input DDR_SREF_CTRL_SREF_REQ;
  input DDR_SREF_CTRL_XSDB_SEL;
  input [31:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input [17:0]S_XSDB_AXIL_araddr;
  input [2:0]S_XSDB_AXIL_arprot;
  output S_XSDB_AXIL_arready;
  input S_XSDB_AXIL_arvalid;
  input [17:0]S_XSDB_AXIL_awaddr;
  input [2:0]S_XSDB_AXIL_awprot;
  output S_XSDB_AXIL_awready;
  input S_XSDB_AXIL_awvalid;
  input S_XSDB_AXIL_bready;
  output [1:0]S_XSDB_AXIL_bresp;
  output S_XSDB_AXIL_bvalid;
  output [31:0]S_XSDB_AXIL_rdata;
  input S_XSDB_AXIL_rready;
  output [1:0]S_XSDB_AXIL_rresp;
  output S_XSDB_AXIL_rvalid;
  input [31:0]S_XSDB_AXIL_wdata;
  output S_XSDB_AXIL_wready;
  input [3:0]S_XSDB_AXIL_wstrb;
  input S_XSDB_AXIL_wvalid;
  output c0_ddr4_ui_clk;
  output c2_ddr4_act_n;
  output [16:0]c2_ddr4_adr;
  output [1:0]c2_ddr4_ba;
  output [1:0]c2_ddr4_bg;
  output [0:0]c2_ddr4_ck_c;
  output [0:0]c2_ddr4_ck_t;
  output [0:0]c2_ddr4_cke;
  output [0:0]c2_ddr4_cs_n;
  inout [71:0]c2_ddr4_dq;
  inout [17:0]c2_ddr4_dqs_c;
  inout [17:0]c2_ddr4_dqs_t;
  output [0:0]c2_ddr4_odt;
  output c2_ddr4_par;
  output c2_ddr4_reset_n;
  output c2_init_calib_complete;
  output [0:0]peripheral_aresetn;
  input sys_rst_ddr_3;

  wire AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1;
  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire DDR_SREF_CTRL_MEM_INIT_SKIP_1;
  wire DDR_SREF_CTRL_SREF_REQ_1;
  wire [17:0]S_AXI1_1_ARADDR;
  wire [2:0]S_AXI1_1_ARPROT;
  wire S_AXI1_1_ARREADY;
  wire S_AXI1_1_ARVALID;
  wire [17:0]S_AXI1_1_AWADDR;
  wire [2:0]S_AXI1_1_AWPROT;
  wire S_AXI1_1_AWREADY;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WREADY;
  wire [3:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire [63:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [5:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [63:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [5:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [5:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [5:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]S_AXI_LITE_1_ARADDR;
  wire S_AXI_LITE_1_ARREADY;
  wire S_AXI_LITE_1_ARVALID;
  wire [31:0]S_AXI_LITE_1_AWADDR;
  wire S_AXI_LITE_1_AWREADY;
  wire S_AXI_LITE_1_AWVALID;
  wire S_AXI_LITE_1_BREADY;
  wire [1:0]S_AXI_LITE_1_BRESP;
  wire S_AXI_LITE_1_BVALID;
  wire [31:0]S_AXI_LITE_1_RDATA;
  wire S_AXI_LITE_1_RREADY;
  wire [1:0]S_AXI_LITE_1_RRESP;
  wire S_AXI_LITE_1_RVALID;
  wire [31:0]S_AXI_LITE_1_WDATA;
  wire S_AXI_LITE_1_WREADY;
  wire S_AXI_LITE_1_WVALID;
  wire c0_ddr4_app_xsdb_select_0_1;
  wire ddr4_2_C0_DDR4_ACT_N;
  wire [16:0]ddr4_2_C0_DDR4_ADR;
  wire [1:0]ddr4_2_C0_DDR4_BA;
  wire [1:0]ddr4_2_C0_DDR4_BG;
  wire [0:0]ddr4_2_C0_DDR4_CKE;
  wire [0:0]ddr4_2_C0_DDR4_CK_C;
  wire [0:0]ddr4_2_C0_DDR4_CK_T;
  wire [0:0]ddr4_2_C0_DDR4_CS_N;
  wire [71:0]ddr4_2_C0_DDR4_DQ;
  wire [17:0]ddr4_2_C0_DDR4_DQS_C;
  wire [17:0]ddr4_2_C0_DDR4_DQS_T;
  wire [0:0]ddr4_2_C0_DDR4_ODT;
  wire ddr4_2_C0_DDR4_PAR;
  wire ddr4_2_C0_DDR4_RESET_N;
  wire ddr4_2_c0_ddr4_app_sref_ack1;
  wire [8:0]ddr4_2_c0_ddr4_app_xsdb_rd_data;
  wire ddr4_2_c0_ddr4_app_xsdb_rdy;
  wire ddr4_2_c0_ddr4_ui_clk;
  wire ddr4_2_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_2_c0_init_calib_complete;
  wire ddr4_sync_sys_rst;
  wire [15:0]myip_AXIL_TO_XSDB_v1_0_XSDB_addr;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en;
  wire [8:0]myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en;
  wire [0:0]proc_sys_reset_MIG_B_peripheral_aresetn;
  wire sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_complete;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_en;
  wire sref_init_restore_sy_0_c0_ddr4_app_sref_req;
  wire sys_rst_ddr_2_1;

  assign AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1 = DDR_SREF_CTRL_APP_RESTORE_COMPLETE;
  assign C0_SYS_CLK_0_1_CLK_N = C3_SYS_CLK_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = C3_SYS_CLK_clk_p;
  assign DDR_SREF_CTRL_MEM_INIT_SKIP_1 = DDR_SREF_CTRL_MEM_INIT_SKIP;
  assign DDR_SREF_CTRL_SREF_ACK = ddr4_2_c0_ddr4_app_sref_ack1;
  assign DDR_SREF_CTRL_SREF_REQ_1 = DDR_SREF_CTRL_SREF_REQ;
  assign S_AXI1_1_ARADDR = S_XSDB_AXIL_araddr[17:0];
  assign S_AXI1_1_ARPROT = S_XSDB_AXIL_arprot[2:0];
  assign S_AXI1_1_ARVALID = S_XSDB_AXIL_arvalid;
  assign S_AXI1_1_AWADDR = S_XSDB_AXIL_awaddr[17:0];
  assign S_AXI1_1_AWPROT = S_XSDB_AXIL_awprot[2:0];
  assign S_AXI1_1_AWVALID = S_XSDB_AXIL_awvalid;
  assign S_AXI1_1_BREADY = S_XSDB_AXIL_bready;
  assign S_AXI1_1_RREADY = S_XSDB_AXIL_rready;
  assign S_AXI1_1_WDATA = S_XSDB_AXIL_wdata[31:0];
  assign S_AXI1_1_WSTRB = S_XSDB_AXIL_wstrb[3:0];
  assign S_AXI1_1_WVALID = S_XSDB_AXIL_wvalid;
  assign S_AXI_1_ARADDR = S_AXI_araddr[63:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[5:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[63:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[5:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_LITE_1_ARADDR = S_AXI_LITE_araddr[31:0];
  assign S_AXI_LITE_1_ARVALID = S_AXI_LITE_arvalid;
  assign S_AXI_LITE_1_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign S_AXI_LITE_1_AWVALID = S_AXI_LITE_awvalid;
  assign S_AXI_LITE_1_BREADY = S_AXI_LITE_bready;
  assign S_AXI_LITE_1_RREADY = S_AXI_LITE_rready;
  assign S_AXI_LITE_1_WDATA = S_AXI_LITE_wdata[31:0];
  assign S_AXI_LITE_1_WVALID = S_AXI_LITE_wvalid;
  assign S_AXI_LITE_arready = S_AXI_LITE_1_ARREADY;
  assign S_AXI_LITE_awready = S_AXI_LITE_1_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = S_AXI_LITE_1_BRESP;
  assign S_AXI_LITE_bvalid = S_AXI_LITE_1_BVALID;
  assign S_AXI_LITE_rdata[31:0] = S_AXI_LITE_1_RDATA;
  assign S_AXI_LITE_rresp[1:0] = S_AXI_LITE_1_RRESP;
  assign S_AXI_LITE_rvalid = S_AXI_LITE_1_RVALID;
  assign S_AXI_LITE_wready = S_AXI_LITE_1_WREADY;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[5:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[5:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign S_XSDB_AXIL_arready = S_AXI1_1_ARREADY;
  assign S_XSDB_AXIL_awready = S_AXI1_1_AWREADY;
  assign S_XSDB_AXIL_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_XSDB_AXIL_bvalid = S_AXI1_1_BVALID;
  assign S_XSDB_AXIL_rdata[31:0] = S_AXI1_1_RDATA;
  assign S_XSDB_AXIL_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_XSDB_AXIL_rvalid = S_AXI1_1_RVALID;
  assign S_XSDB_AXIL_wready = S_AXI1_1_WREADY;
  assign c0_ddr4_app_xsdb_select_0_1 = DDR_SREF_CTRL_XSDB_SEL;
  assign c0_ddr4_ui_clk = ddr4_2_c0_ddr4_ui_clk;
  assign c2_ddr4_act_n = ddr4_2_C0_DDR4_ACT_N;
  assign c2_ddr4_adr[16:0] = ddr4_2_C0_DDR4_ADR;
  assign c2_ddr4_ba[1:0] = ddr4_2_C0_DDR4_BA;
  assign c2_ddr4_bg[1:0] = ddr4_2_C0_DDR4_BG;
  assign c2_ddr4_ck_c[0] = ddr4_2_C0_DDR4_CK_C;
  assign c2_ddr4_ck_t[0] = ddr4_2_C0_DDR4_CK_T;
  assign c2_ddr4_cke[0] = ddr4_2_C0_DDR4_CKE;
  assign c2_ddr4_cs_n[0] = ddr4_2_C0_DDR4_CS_N;
  assign c2_ddr4_odt[0] = ddr4_2_C0_DDR4_ODT;
  assign c2_ddr4_par = ddr4_2_C0_DDR4_PAR;
  assign c2_ddr4_reset_n = ddr4_2_C0_DDR4_RESET_N;
  assign c2_init_calib_complete = ddr4_2_c0_init_calib_complete;
  assign peripheral_aresetn[0] = proc_sys_reset_MIG_B_peripheral_aresetn;
  assign sys_rst_ddr_2_1 = sys_rst_ddr_3;
  dynamic_region_ddr4_PR_SREF_ILA_1 PR_SREF_ILA
       (.clk(ddr4_2_c0_ddr4_ui_clk),
        .probe0(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .probe1(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .probe2(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .probe3(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .probe4(c0_ddr4_app_xsdb_select_0_1),
        .probe5(ddr4_2_c0_ddr4_app_sref_ack1),
        .probe6(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .probe7(ddr4_2_c0_init_calib_complete),
        .probe8(ddr4_sync_sys_rst),
        .probe9(ddr4_2_c0_ddr4_ui_clk_sync_rst));
  dynamic_region_ddr4_XSDB_RAW_ILA_1 XSDB_RAW_ILA
       (.clk(ddr4_2_c0_ddr4_ui_clk),
        .probe0(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .probe1(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .probe2(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .probe3(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .probe4(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .probe5(ddr4_2_c0_ddr4_app_xsdb_rdy));
  dynamic_region_ddr4_ddr4_3_1 ddr4_3
       (.c0_ddr4_act_n(ddr4_2_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_2_C0_DDR4_ADR),
        .c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_ack(ddr4_2_c0_ddr4_app_sref_ack1),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .c0_ddr4_app_xsdb_rd_data(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .c0_ddr4_app_xsdb_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .c0_ddr4_app_xsdb_rdy(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select_0_1),
        .c0_ddr4_app_xsdb_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .c0_ddr4_app_xsdb_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .c0_ddr4_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .c0_ddr4_ba(ddr4_2_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_2_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_2_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_2_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_2_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_2_C0_DDR4_CS_N),
        .c0_ddr4_dq(c2_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c2_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c2_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(ddr4_2_C0_DDR4_ODT),
        .c0_ddr4_parity(ddr4_2_C0_DDR4_PAR),
        .c0_ddr4_reset_n(ddr4_2_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(S_AXI_1_ARADDR[33:0]),
        .c0_ddr4_s_axi_arburst(S_AXI_1_ARBURST),
        .c0_ddr4_s_axi_arcache(S_AXI_1_ARCACHE),
        .c0_ddr4_s_axi_arid(S_AXI_1_ARID),
        .c0_ddr4_s_axi_arlen(S_AXI_1_ARLEN),
        .c0_ddr4_s_axi_arlock(S_AXI_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(S_AXI_1_ARPROT),
        .c0_ddr4_s_axi_arqos(S_AXI_1_ARQOS),
        .c0_ddr4_s_axi_arready(S_AXI_1_ARREADY),
        .c0_ddr4_s_axi_arsize(S_AXI_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(S_AXI_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(S_AXI_1_AWADDR[33:0]),
        .c0_ddr4_s_axi_awburst(S_AXI_1_AWBURST),
        .c0_ddr4_s_axi_awcache(S_AXI_1_AWCACHE),
        .c0_ddr4_s_axi_awid(S_AXI_1_AWID),
        .c0_ddr4_s_axi_awlen(S_AXI_1_AWLEN),
        .c0_ddr4_s_axi_awlock(S_AXI_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(S_AXI_1_AWPROT),
        .c0_ddr4_s_axi_awqos(S_AXI_1_AWQOS),
        .c0_ddr4_s_axi_awready(S_AXI_1_AWREADY),
        .c0_ddr4_s_axi_awsize(S_AXI_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(S_AXI_1_AWVALID),
        .c0_ddr4_s_axi_bid(S_AXI_1_BID),
        .c0_ddr4_s_axi_bready(S_AXI_1_BREADY),
        .c0_ddr4_s_axi_bresp(S_AXI_1_BRESP),
        .c0_ddr4_s_axi_bvalid(S_AXI_1_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(S_AXI_LITE_1_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(S_AXI_LITE_1_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(S_AXI_LITE_1_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(S_AXI_LITE_1_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(S_AXI_LITE_1_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(S_AXI_LITE_1_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(S_AXI_LITE_1_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(S_AXI_LITE_1_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(S_AXI_LITE_1_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(S_AXI_LITE_1_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(S_AXI_LITE_1_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(S_AXI_LITE_1_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(S_AXI_LITE_1_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(S_AXI_LITE_1_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(S_AXI_LITE_1_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(S_AXI_LITE_1_WVALID),
        .c0_ddr4_s_axi_rdata(S_AXI_1_RDATA),
        .c0_ddr4_s_axi_rid(S_AXI_1_RID),
        .c0_ddr4_s_axi_rlast(S_AXI_1_RLAST),
        .c0_ddr4_s_axi_rready(S_AXI_1_RREADY),
        .c0_ddr4_s_axi_rresp(S_AXI_1_RRESP),
        .c0_ddr4_s_axi_rvalid(S_AXI_1_RVALID),
        .c0_ddr4_s_axi_wdata(S_AXI_1_WDATA),
        .c0_ddr4_s_axi_wlast(S_AXI_1_WLAST),
        .c0_ddr4_s_axi_wready(S_AXI_1_WREADY),
        .c0_ddr4_s_axi_wstrb(S_AXI_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(S_AXI_1_WVALID),
        .c0_ddr4_ui_clk(ddr4_2_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_2_c0_init_calib_complete),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(ddr4_sync_sys_rst));
  dynamic_region_ddr4_myip_AXIL_TO_XSDB_v1_0_1 myip_AXIL_TO_XSDB_v1_0
       (.XSDB_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .XSDB_rd_data(ddr4_2_c0_ddr4_app_xsdb_rd_data),
        .XSDB_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .XSDB_rdy(ddr4_2_c0_ddr4_app_xsdb_rdy),
        .XSDB_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .XSDB_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .s00_axi_aclk(ddr4_2_c0_ddr4_ui_clk),
        .s00_axi_araddr(S_AXI1_1_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .s00_axi_arprot(S_AXI1_1_ARPROT),
        .s00_axi_arready(S_AXI1_1_ARREADY),
        .s00_axi_arvalid(S_AXI1_1_ARVALID),
        .s00_axi_awaddr(S_AXI1_1_AWADDR),
        .s00_axi_awprot(S_AXI1_1_AWPROT),
        .s00_axi_awready(S_AXI1_1_AWREADY),
        .s00_axi_awvalid(S_AXI1_1_AWVALID),
        .s00_axi_bready(S_AXI1_1_BREADY),
        .s00_axi_bresp(S_AXI1_1_BRESP),
        .s00_axi_bvalid(S_AXI1_1_BVALID),
        .s00_axi_rdata(S_AXI1_1_RDATA),
        .s00_axi_rready(S_AXI1_1_RREADY),
        .s00_axi_rresp(S_AXI1_1_RRESP),
        .s00_axi_rvalid(S_AXI1_1_RVALID),
        .s00_axi_wdata(S_AXI1_1_WDATA),
        .s00_axi_wready(S_AXI1_1_WREADY),
        .s00_axi_wstrb(S_AXI1_1_WSTRB),
        .s00_axi_wvalid(S_AXI1_1_WVALID));
  dynamic_region_ddr4_proc_sys_reset_MIG_B_2 proc_sys_reset_MIG_B
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_MIG_B_peripheral_aresetn),
        .slowest_sync_clk(ddr4_2_c0_ddr4_ui_clk));
  dynamic_region_ddr4_sref_init_restore_sy_0_1 sref_init_restore_sy_0
       (.c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_sys_rst_out(ddr4_sync_sys_rst),
        .c0_ddr4_ui_clk_sync_rst(ddr4_2_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_2_c0_init_calib_complete),
        .c0_mig_ui_clk(ddr4_2_c0_ddr4_ui_clk),
        .shell_mem_init_skip(DDR_SREF_CTRL_MEM_INIT_SKIP_1),
        .shell_restore_complete(AAR_SREF_CTRL_APP_RESTORE_COMPLETE_1),
        .shell_sref_req(DDR_SREF_CTRL_SREF_REQ_1),
        .shell_sys_rst_in(sys_rst_ddr_2_1));
endmodule

(* CORE_GENERATION_INFO = "dynamic_region_ddr4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dynamic_region_ddr4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=56,numReposBlks=34,numNonXlnxBlks=3,numHierBlks=22,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "dynamic_region_ddr4.hwdef" *) 
module dynamic_region_ddr4
   (AXI_RESET_N,
    C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    C2_SYS_CLK_clk_n,
    C2_SYS_CLK_clk_p,
    C3_SYS_CLK_clk_n,
    C3_SYS_CLK_clk_p,
    CLK_IN_250,
    MIG0_DDR4_S_AXI_CTRL_araddr,
    MIG0_DDR4_S_AXI_CTRL_arprot,
    MIG0_DDR4_S_AXI_CTRL_arready,
    MIG0_DDR4_S_AXI_CTRL_arvalid,
    MIG0_DDR4_S_AXI_CTRL_awaddr,
    MIG0_DDR4_S_AXI_CTRL_awprot,
    MIG0_DDR4_S_AXI_CTRL_awready,
    MIG0_DDR4_S_AXI_CTRL_awvalid,
    MIG0_DDR4_S_AXI_CTRL_bready,
    MIG0_DDR4_S_AXI_CTRL_bresp,
    MIG0_DDR4_S_AXI_CTRL_bvalid,
    MIG0_DDR4_S_AXI_CTRL_rdata,
    MIG0_DDR4_S_AXI_CTRL_rready,
    MIG0_DDR4_S_AXI_CTRL_rresp,
    MIG0_DDR4_S_AXI_CTRL_rvalid,
    MIG0_DDR4_S_AXI_CTRL_wdata,
    MIG0_DDR4_S_AXI_CTRL_wready,
    MIG0_DDR4_S_AXI_CTRL_wstrb,
    MIG0_DDR4_S_AXI_CTRL_wvalid,
    MIG2_DDR4_S_AXI_CTRL_araddr,
    MIG2_DDR4_S_AXI_CTRL_arprot,
    MIG2_DDR4_S_AXI_CTRL_arready,
    MIG2_DDR4_S_AXI_CTRL_arvalid,
    MIG2_DDR4_S_AXI_CTRL_awaddr,
    MIG2_DDR4_S_AXI_CTRL_awprot,
    MIG2_DDR4_S_AXI_CTRL_awready,
    MIG2_DDR4_S_AXI_CTRL_awvalid,
    MIG2_DDR4_S_AXI_CTRL_bready,
    MIG2_DDR4_S_AXI_CTRL_bresp,
    MIG2_DDR4_S_AXI_CTRL_bvalid,
    MIG2_DDR4_S_AXI_CTRL_rdata,
    MIG2_DDR4_S_AXI_CTRL_rready,
    MIG2_DDR4_S_AXI_CTRL_rresp,
    MIG2_DDR4_S_AXI_CTRL_rvalid,
    MIG2_DDR4_S_AXI_CTRL_wdata,
    MIG2_DDR4_S_AXI_CTRL_wready,
    MIG2_DDR4_S_AXI_CTRL_wstrb,
    MIG2_DDR4_S_AXI_CTRL_wvalid,
    MIG3_DDR4_S_AXI_CTRL_araddr,
    MIG3_DDR4_S_AXI_CTRL_arprot,
    MIG3_DDR4_S_AXI_CTRL_arready,
    MIG3_DDR4_S_AXI_CTRL_arvalid,
    MIG3_DDR4_S_AXI_CTRL_awaddr,
    MIG3_DDR4_S_AXI_CTRL_awprot,
    MIG3_DDR4_S_AXI_CTRL_awready,
    MIG3_DDR4_S_AXI_CTRL_awvalid,
    MIG3_DDR4_S_AXI_CTRL_bready,
    MIG3_DDR4_S_AXI_CTRL_bresp,
    MIG3_DDR4_S_AXI_CTRL_bvalid,
    MIG3_DDR4_S_AXI_CTRL_rdata,
    MIG3_DDR4_S_AXI_CTRL_rready,
    MIG3_DDR4_S_AXI_CTRL_rresp,
    MIG3_DDR4_S_AXI_CTRL_rvalid,
    MIG3_DDR4_S_AXI_CTRL_wdata,
    MIG3_DDR4_S_AXI_CTRL_wready,
    MIG3_DDR4_S_AXI_CTRL_wstrb,
    MIG3_DDR4_S_AXI_CTRL_wvalid,
    S_AXI_MM_MIG0_araddr,
    S_AXI_MM_MIG0_arburst,
    S_AXI_MM_MIG0_arcache,
    S_AXI_MM_MIG0_arid,
    S_AXI_MM_MIG0_arlen,
    S_AXI_MM_MIG0_arlock,
    S_AXI_MM_MIG0_arprot,
    S_AXI_MM_MIG0_arqos,
    S_AXI_MM_MIG0_arready,
    S_AXI_MM_MIG0_arregion,
    S_AXI_MM_MIG0_arsize,
    S_AXI_MM_MIG0_arvalid,
    S_AXI_MM_MIG0_awaddr,
    S_AXI_MM_MIG0_awburst,
    S_AXI_MM_MIG0_awcache,
    S_AXI_MM_MIG0_awid,
    S_AXI_MM_MIG0_awlen,
    S_AXI_MM_MIG0_awlock,
    S_AXI_MM_MIG0_awprot,
    S_AXI_MM_MIG0_awqos,
    S_AXI_MM_MIG0_awready,
    S_AXI_MM_MIG0_awregion,
    S_AXI_MM_MIG0_awsize,
    S_AXI_MM_MIG0_awvalid,
    S_AXI_MM_MIG0_bid,
    S_AXI_MM_MIG0_bready,
    S_AXI_MM_MIG0_bresp,
    S_AXI_MM_MIG0_bvalid,
    S_AXI_MM_MIG0_rdata,
    S_AXI_MM_MIG0_rid,
    S_AXI_MM_MIG0_rlast,
    S_AXI_MM_MIG0_rready,
    S_AXI_MM_MIG0_rresp,
    S_AXI_MM_MIG0_rvalid,
    S_AXI_MM_MIG0_wdata,
    S_AXI_MM_MIG0_wlast,
    S_AXI_MM_MIG0_wready,
    S_AXI_MM_MIG0_wstrb,
    S_AXI_MM_MIG0_wvalid,
    S_AXI_MM_MIG2_araddr,
    S_AXI_MM_MIG2_arburst,
    S_AXI_MM_MIG2_arcache,
    S_AXI_MM_MIG2_arid,
    S_AXI_MM_MIG2_arlen,
    S_AXI_MM_MIG2_arlock,
    S_AXI_MM_MIG2_arprot,
    S_AXI_MM_MIG2_arqos,
    S_AXI_MM_MIG2_arready,
    S_AXI_MM_MIG2_arregion,
    S_AXI_MM_MIG2_arsize,
    S_AXI_MM_MIG2_arvalid,
    S_AXI_MM_MIG2_awaddr,
    S_AXI_MM_MIG2_awburst,
    S_AXI_MM_MIG2_awcache,
    S_AXI_MM_MIG2_awid,
    S_AXI_MM_MIG2_awlen,
    S_AXI_MM_MIG2_awlock,
    S_AXI_MM_MIG2_awprot,
    S_AXI_MM_MIG2_awqos,
    S_AXI_MM_MIG2_awready,
    S_AXI_MM_MIG2_awregion,
    S_AXI_MM_MIG2_awsize,
    S_AXI_MM_MIG2_awvalid,
    S_AXI_MM_MIG2_bid,
    S_AXI_MM_MIG2_bready,
    S_AXI_MM_MIG2_bresp,
    S_AXI_MM_MIG2_bvalid,
    S_AXI_MM_MIG2_rdata,
    S_AXI_MM_MIG2_rid,
    S_AXI_MM_MIG2_rlast,
    S_AXI_MM_MIG2_rready,
    S_AXI_MM_MIG2_rresp,
    S_AXI_MM_MIG2_rvalid,
    S_AXI_MM_MIG2_wdata,
    S_AXI_MM_MIG2_wlast,
    S_AXI_MM_MIG2_wready,
    S_AXI_MM_MIG2_wstrb,
    S_AXI_MM_MIG2_wvalid,
    S_AXI_MM_MIG3_araddr,
    S_AXI_MM_MIG3_arburst,
    S_AXI_MM_MIG3_arcache,
    S_AXI_MM_MIG3_arid,
    S_AXI_MM_MIG3_arlen,
    S_AXI_MM_MIG3_arlock,
    S_AXI_MM_MIG3_arprot,
    S_AXI_MM_MIG3_arqos,
    S_AXI_MM_MIG3_arready,
    S_AXI_MM_MIG3_arregion,
    S_AXI_MM_MIG3_arsize,
    S_AXI_MM_MIG3_arvalid,
    S_AXI_MM_MIG3_awaddr,
    S_AXI_MM_MIG3_awburst,
    S_AXI_MM_MIG3_awcache,
    S_AXI_MM_MIG3_awid,
    S_AXI_MM_MIG3_awlen,
    S_AXI_MM_MIG3_awlock,
    S_AXI_MM_MIG3_awprot,
    S_AXI_MM_MIG3_awqos,
    S_AXI_MM_MIG3_awready,
    S_AXI_MM_MIG3_awregion,
    S_AXI_MM_MIG3_awsize,
    S_AXI_MM_MIG3_awvalid,
    S_AXI_MM_MIG3_bid,
    S_AXI_MM_MIG3_bready,
    S_AXI_MM_MIG3_bresp,
    S_AXI_MM_MIG3_bvalid,
    S_AXI_MM_MIG3_rdata,
    S_AXI_MM_MIG3_rid,
    S_AXI_MM_MIG3_rlast,
    S_AXI_MM_MIG3_rready,
    S_AXI_MM_MIG3_rresp,
    S_AXI_MM_MIG3_rvalid,
    S_AXI_MM_MIG3_wdata,
    S_AXI_MM_MIG3_wlast,
    S_AXI_MM_MIG3_wready,
    S_AXI_MM_MIG3_wstrb,
    S_AXI_MM_MIG3_wvalid,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_app_mem_init_skip,
    c0_ddr4_app_restore_complete,
    c0_ddr4_app_sref_ack,
    c0_ddr4_app_sref_req,
    c0_ddr4_app_xsdb_select,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_par,
    c0_ddr4_reset_n,
    c0_init_calib_complete,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_app_mem_init_skip,
    c2_ddr4_app_restore_complete,
    c2_ddr4_app_sref_ack,
    c2_ddr4_app_sref_req,
    c2_ddr4_app_xsdb_select,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_par,
    c2_ddr4_reset_n,
    c2_init_calib_complete,
    c3_ddr4_act_n,
    c3_ddr4_adr,
    c3_ddr4_app_mem_init_skip,
    c3_ddr4_app_restore_complete,
    c3_ddr4_app_sref_ack,
    c3_ddr4_app_sref_req,
    c3_ddr4_app_xsdb_select,
    c3_ddr4_ba,
    c3_ddr4_bg,
    c3_ddr4_ck_c,
    c3_ddr4_ck_t,
    c3_ddr4_cke,
    c3_ddr4_cs_n,
    c3_ddr4_dq,
    c3_ddr4_dqs_c,
    c3_ddr4_dqs_t,
    c3_ddr4_odt,
    c3_ddr4_par,
    c3_ddr4_reset_n,
    c3_init_calib_complete,
    sys_rst_ddr_0,
    sys_rst_ddr_2,
    sys_rst_ddr_3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input AXI_RESET_N;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C0_SYS_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_SYS_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input C0_SYS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C0_SYS_CLK CLK_P" *) input C0_SYS_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C2_SYS_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C2_SYS_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input C2_SYS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C2_SYS_CLK CLK_P" *) input C2_SYS_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C3_SYS_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C3_SYS_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input C3_SYS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C3_SYS_CLK CLK_P" *) input C3_SYS_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_250 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_250, ASSOCIATED_BUSIF S_AXI_MM_MIG0:S_AXI_MM_MIG2:S_AXI_MM_MIG3:MIG0_DDR4_S_AXI_CTRL:MIG3_DDR4_S_AXI_CTRL:MIG2_DDR4_S_AXI_CTRL, ASSOCIATED_RESET AXI_RESET_N, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK_IN_250;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MIG0_DDR4_S_AXI_CTRL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]MIG0_DDR4_S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL ARPROT" *) input [2:0]MIG0_DDR4_S_AXI_CTRL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL ARREADY" *) output [0:0]MIG0_DDR4_S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL ARVALID" *) input [0:0]MIG0_DDR4_S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL AWADDR" *) input [31:0]MIG0_DDR4_S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL AWPROT" *) input [2:0]MIG0_DDR4_S_AXI_CTRL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL AWREADY" *) output [0:0]MIG0_DDR4_S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL AWVALID" *) input [0:0]MIG0_DDR4_S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL BREADY" *) input [0:0]MIG0_DDR4_S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL BRESP" *) output [1:0]MIG0_DDR4_S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL BVALID" *) output [0:0]MIG0_DDR4_S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL RDATA" *) output [31:0]MIG0_DDR4_S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL RREADY" *) input [0:0]MIG0_DDR4_S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL RRESP" *) output [1:0]MIG0_DDR4_S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL RVALID" *) output [0:0]MIG0_DDR4_S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL WDATA" *) input [31:0]MIG0_DDR4_S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL WREADY" *) output [0:0]MIG0_DDR4_S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL WSTRB" *) input [3:0]MIG0_DDR4_S_AXI_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG0_DDR4_S_AXI_CTRL WVALID" *) input [0:0]MIG0_DDR4_S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MIG2_DDR4_S_AXI_CTRL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]MIG2_DDR4_S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL ARPROT" *) input [2:0]MIG2_DDR4_S_AXI_CTRL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL ARREADY" *) output [0:0]MIG2_DDR4_S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL ARVALID" *) input [0:0]MIG2_DDR4_S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL AWADDR" *) input [31:0]MIG2_DDR4_S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL AWPROT" *) input [2:0]MIG2_DDR4_S_AXI_CTRL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL AWREADY" *) output [0:0]MIG2_DDR4_S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL AWVALID" *) input [0:0]MIG2_DDR4_S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL BREADY" *) input [0:0]MIG2_DDR4_S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL BRESP" *) output [1:0]MIG2_DDR4_S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL BVALID" *) output [0:0]MIG2_DDR4_S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL RDATA" *) output [31:0]MIG2_DDR4_S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL RREADY" *) input [0:0]MIG2_DDR4_S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL RRESP" *) output [1:0]MIG2_DDR4_S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL RVALID" *) output [0:0]MIG2_DDR4_S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL WDATA" *) input [31:0]MIG2_DDR4_S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL WREADY" *) output [0:0]MIG2_DDR4_S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL WSTRB" *) input [3:0]MIG2_DDR4_S_AXI_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG2_DDR4_S_AXI_CTRL WVALID" *) input [0:0]MIG2_DDR4_S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MIG3_DDR4_S_AXI_CTRL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]MIG3_DDR4_S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL ARPROT" *) input [2:0]MIG3_DDR4_S_AXI_CTRL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL ARREADY" *) output [0:0]MIG3_DDR4_S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL ARVALID" *) input [0:0]MIG3_DDR4_S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL AWADDR" *) input [31:0]MIG3_DDR4_S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL AWPROT" *) input [2:0]MIG3_DDR4_S_AXI_CTRL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL AWREADY" *) output [0:0]MIG3_DDR4_S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL AWVALID" *) input [0:0]MIG3_DDR4_S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL BREADY" *) input [0:0]MIG3_DDR4_S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL BRESP" *) output [1:0]MIG3_DDR4_S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL BVALID" *) output [0:0]MIG3_DDR4_S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL RDATA" *) output [31:0]MIG3_DDR4_S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL RREADY" *) input [0:0]MIG3_DDR4_S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL RRESP" *) output [1:0]MIG3_DDR4_S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL RVALID" *) output [0:0]MIG3_DDR4_S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL WDATA" *) input [31:0]MIG3_DDR4_S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL WREADY" *) output [0:0]MIG3_DDR4_S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL WSTRB" *) input [3:0]MIG3_DDR4_S_AXI_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MIG3_DDR4_S_AXI_CTRL WVALID" *) input [0:0]MIG3_DDR4_S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MM_MIG0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_MM_MIG0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARBURST" *) input [1:0]S_AXI_MM_MIG0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARCACHE" *) input [3:0]S_AXI_MM_MIG0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARID" *) input [5:0]S_AXI_MM_MIG0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARLEN" *) input [7:0]S_AXI_MM_MIG0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARLOCK" *) input [0:0]S_AXI_MM_MIG0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARPROT" *) input [2:0]S_AXI_MM_MIG0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARQOS" *) input [3:0]S_AXI_MM_MIG0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARREADY" *) output S_AXI_MM_MIG0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARREGION" *) input [3:0]S_AXI_MM_MIG0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARSIZE" *) input [2:0]S_AXI_MM_MIG0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 ARVALID" *) input S_AXI_MM_MIG0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWADDR" *) input [63:0]S_AXI_MM_MIG0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWBURST" *) input [1:0]S_AXI_MM_MIG0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWCACHE" *) input [3:0]S_AXI_MM_MIG0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWID" *) input [5:0]S_AXI_MM_MIG0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWLEN" *) input [7:0]S_AXI_MM_MIG0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWLOCK" *) input [0:0]S_AXI_MM_MIG0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWPROT" *) input [2:0]S_AXI_MM_MIG0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWQOS" *) input [3:0]S_AXI_MM_MIG0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWREADY" *) output S_AXI_MM_MIG0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWREGION" *) input [3:0]S_AXI_MM_MIG0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWSIZE" *) input [2:0]S_AXI_MM_MIG0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 AWVALID" *) input S_AXI_MM_MIG0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 BID" *) output [5:0]S_AXI_MM_MIG0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 BREADY" *) input S_AXI_MM_MIG0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 BRESP" *) output [1:0]S_AXI_MM_MIG0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 BVALID" *) output S_AXI_MM_MIG0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 RDATA" *) output [511:0]S_AXI_MM_MIG0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 RID" *) output [5:0]S_AXI_MM_MIG0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 RLAST" *) output S_AXI_MM_MIG0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 RREADY" *) input S_AXI_MM_MIG0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 RRESP" *) output [1:0]S_AXI_MM_MIG0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 RVALID" *) output S_AXI_MM_MIG0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 WDATA" *) input [511:0]S_AXI_MM_MIG0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 WLAST" *) input S_AXI_MM_MIG0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 WREADY" *) output S_AXI_MM_MIG0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 WSTRB" *) input [63:0]S_AXI_MM_MIG0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG0 WVALID" *) input S_AXI_MM_MIG0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MM_MIG2, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_MM_MIG2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARBURST" *) input [1:0]S_AXI_MM_MIG2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARCACHE" *) input [3:0]S_AXI_MM_MIG2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARID" *) input [5:0]S_AXI_MM_MIG2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARLEN" *) input [7:0]S_AXI_MM_MIG2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARLOCK" *) input [0:0]S_AXI_MM_MIG2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARPROT" *) input [2:0]S_AXI_MM_MIG2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARQOS" *) input [3:0]S_AXI_MM_MIG2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARREADY" *) output S_AXI_MM_MIG2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARREGION" *) input [3:0]S_AXI_MM_MIG2_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARSIZE" *) input [2:0]S_AXI_MM_MIG2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 ARVALID" *) input S_AXI_MM_MIG2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWADDR" *) input [63:0]S_AXI_MM_MIG2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWBURST" *) input [1:0]S_AXI_MM_MIG2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWCACHE" *) input [3:0]S_AXI_MM_MIG2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWID" *) input [5:0]S_AXI_MM_MIG2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWLEN" *) input [7:0]S_AXI_MM_MIG2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWLOCK" *) input [0:0]S_AXI_MM_MIG2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWPROT" *) input [2:0]S_AXI_MM_MIG2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWQOS" *) input [3:0]S_AXI_MM_MIG2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWREADY" *) output S_AXI_MM_MIG2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWREGION" *) input [3:0]S_AXI_MM_MIG2_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWSIZE" *) input [2:0]S_AXI_MM_MIG2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 AWVALID" *) input S_AXI_MM_MIG2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 BID" *) output [5:0]S_AXI_MM_MIG2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 BREADY" *) input S_AXI_MM_MIG2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 BRESP" *) output [1:0]S_AXI_MM_MIG2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 BVALID" *) output S_AXI_MM_MIG2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 RDATA" *) output [511:0]S_AXI_MM_MIG2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 RID" *) output [5:0]S_AXI_MM_MIG2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 RLAST" *) output S_AXI_MM_MIG2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 RREADY" *) input S_AXI_MM_MIG2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 RRESP" *) output [1:0]S_AXI_MM_MIG2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 RVALID" *) output S_AXI_MM_MIG2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 WDATA" *) input [511:0]S_AXI_MM_MIG2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 WLAST" *) input S_AXI_MM_MIG2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 WREADY" *) output S_AXI_MM_MIG2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 WSTRB" *) input [63:0]S_AXI_MM_MIG2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG2 WVALID" *) input S_AXI_MM_MIG2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MM_MIG3, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_MM_MIG3_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARBURST" *) input [1:0]S_AXI_MM_MIG3_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARCACHE" *) input [3:0]S_AXI_MM_MIG3_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARID" *) input [5:0]S_AXI_MM_MIG3_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARLEN" *) input [7:0]S_AXI_MM_MIG3_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARLOCK" *) input [0:0]S_AXI_MM_MIG3_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARPROT" *) input [2:0]S_AXI_MM_MIG3_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARQOS" *) input [3:0]S_AXI_MM_MIG3_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARREADY" *) output S_AXI_MM_MIG3_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARREGION" *) input [3:0]S_AXI_MM_MIG3_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARSIZE" *) input [2:0]S_AXI_MM_MIG3_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 ARVALID" *) input S_AXI_MM_MIG3_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWADDR" *) input [63:0]S_AXI_MM_MIG3_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWBURST" *) input [1:0]S_AXI_MM_MIG3_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWCACHE" *) input [3:0]S_AXI_MM_MIG3_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWID" *) input [5:0]S_AXI_MM_MIG3_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWLEN" *) input [7:0]S_AXI_MM_MIG3_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWLOCK" *) input [0:0]S_AXI_MM_MIG3_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWPROT" *) input [2:0]S_AXI_MM_MIG3_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWQOS" *) input [3:0]S_AXI_MM_MIG3_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWREADY" *) output S_AXI_MM_MIG3_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWREGION" *) input [3:0]S_AXI_MM_MIG3_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWSIZE" *) input [2:0]S_AXI_MM_MIG3_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 AWVALID" *) input S_AXI_MM_MIG3_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 BID" *) output [5:0]S_AXI_MM_MIG3_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 BREADY" *) input S_AXI_MM_MIG3_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 BRESP" *) output [1:0]S_AXI_MM_MIG3_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 BVALID" *) output S_AXI_MM_MIG3_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 RDATA" *) output [511:0]S_AXI_MM_MIG3_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 RID" *) output [5:0]S_AXI_MM_MIG3_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 RLAST" *) output S_AXI_MM_MIG3_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 RREADY" *) input S_AXI_MM_MIG3_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 RRESP" *) output [1:0]S_AXI_MM_MIG3_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 RVALID" *) output S_AXI_MM_MIG3_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 WDATA" *) input [511:0]S_AXI_MM_MIG3_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 WLAST" *) input S_AXI_MM_MIG3_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 WREADY" *) output S_AXI_MM_MIG3_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 WSTRB" *) input [63:0]S_AXI_MM_MIG3_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_MIG3 WVALID" *) input S_AXI_MM_MIG3_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output c0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ADR" *) output [16:0]c0_ddr4_adr;
  input c0_ddr4_app_mem_init_skip;
  input c0_ddr4_app_restore_complete;
  output c0_ddr4_app_sref_ack;
  input c0_ddr4_app_sref_req;
  input c0_ddr4_app_xsdb_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BA" *) output [1:0]c0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BG" *) output [1:0]c0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_C" *) output [0:0]c0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_T" *) output [0:0]c0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CKE" *) output [0:0]c0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CS_N" *) output [0:0]c0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQ" *) inout [71:0]c0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_C" *) inout [17:0]c0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_T" *) inout [17:0]c0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ODT" *) output [0:0]c0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 PAR" *) output c0_ddr4_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 RESET_N" *) output c0_ddr4_reset_n;
  output c0_init_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c2_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output c2_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 ADR" *) output [16:0]c2_ddr4_adr;
  input c2_ddr4_app_mem_init_skip;
  input c2_ddr4_app_restore_complete;
  output c2_ddr4_app_sref_ack;
  input c2_ddr4_app_sref_req;
  input c2_ddr4_app_xsdb_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 BA" *) output [1:0]c2_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 BG" *) output [1:0]c2_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 CK_C" *) output [0:0]c2_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 CK_T" *) output [0:0]c2_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 CKE" *) output [0:0]c2_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 CS_N" *) output [0:0]c2_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 DQ" *) inout [71:0]c2_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 DQS_C" *) inout [17:0]c2_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 DQS_T" *) inout [17:0]c2_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 ODT" *) output [0:0]c2_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 PAR" *) output c2_ddr4_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c2_ddr4 RESET_N" *) output c2_ddr4_reset_n;
  output c2_init_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c3_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output c3_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 ADR" *) output [16:0]c3_ddr4_adr;
  input c3_ddr4_app_mem_init_skip;
  input c3_ddr4_app_restore_complete;
  output c3_ddr4_app_sref_ack;
  input c3_ddr4_app_sref_req;
  input c3_ddr4_app_xsdb_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 BA" *) output [1:0]c3_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 BG" *) output [1:0]c3_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 CK_C" *) output [0:0]c3_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 CK_T" *) output [0:0]c3_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 CKE" *) output [0:0]c3_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 CS_N" *) output [0:0]c3_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 DQ" *) inout [71:0]c3_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 DQS_C" *) inout [17:0]c3_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 DQS_T" *) inout [17:0]c3_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 ODT" *) output [0:0]c3_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 PAR" *) output c3_ddr4_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c3_ddr4 RESET_N" *) output c3_ddr4_reset_n;
  output c3_init_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_DDR_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_DDR_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst_ddr_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_DDR_2 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_DDR_2, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst_ddr_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_DDR_3 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_DDR_3, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst_ddr_3;

  wire AXI_RESET_N_2;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_ARADDR;
  wire C0_DDR4_S_AXI_CTRL_1_ARREADY;
  wire C0_DDR4_S_AXI_CTRL_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_AWADDR;
  wire C0_DDR4_S_AXI_CTRL_1_AWREADY;
  wire C0_DDR4_S_AXI_CTRL_1_AWVALID;
  wire C0_DDR4_S_AXI_CTRL_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL_1_BRESP;
  wire C0_DDR4_S_AXI_CTRL_1_BVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_RDATA;
  wire C0_DDR4_S_AXI_CTRL_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_CTRL_1_RRESP;
  wire C0_DDR4_S_AXI_CTRL_1_RVALID;
  wire [31:0]C0_DDR4_S_AXI_CTRL_1_WDATA;
  wire C0_DDR4_S_AXI_CTRL_1_WREADY;
  wire C0_DDR4_S_AXI_CTRL_1_WVALID;
  wire C0_SYS_CLK_1_CLK_N;
  wire C0_SYS_CLK_1_CLK_P;
  wire C2_SYS_CLK_1_CLK_N;
  wire C2_SYS_CLK_1_CLK_P;
  wire C3_SYS_CLK_1_CLK_N;
  wire C3_SYS_CLK_1_CLK_P;
  wire [17:0]C3_XSDB_S_AXIL_1_ARADDR;
  wire [2:0]C3_XSDB_S_AXIL_1_ARPROT;
  wire C3_XSDB_S_AXIL_1_ARREADY;
  wire C3_XSDB_S_AXIL_1_ARVALID;
  wire [17:0]C3_XSDB_S_AXIL_1_AWADDR;
  wire [2:0]C3_XSDB_S_AXIL_1_AWPROT;
  wire C3_XSDB_S_AXIL_1_AWREADY;
  wire C3_XSDB_S_AXIL_1_AWVALID;
  wire C3_XSDB_S_AXIL_1_BREADY;
  wire [1:0]C3_XSDB_S_AXIL_1_BRESP;
  wire C3_XSDB_S_AXIL_1_BVALID;
  wire [31:0]C3_XSDB_S_AXIL_1_RDATA;
  wire C3_XSDB_S_AXIL_1_RREADY;
  wire [1:0]C3_XSDB_S_AXIL_1_RRESP;
  wire C3_XSDB_S_AXIL_1_RVALID;
  wire [31:0]C3_XSDB_S_AXIL_1_WDATA;
  wire C3_XSDB_S_AXIL_1_WREADY;
  wire [3:0]C3_XSDB_S_AXIL_1_WSTRB;
  wire C3_XSDB_S_AXIL_1_WVALID;
  wire CLK_IN_250_1;
  wire DDR_SUB_SYS1_c0_ddr4_ACT_N;
  wire [16:0]DDR_SUB_SYS1_c0_ddr4_ADR;
  wire [1:0]DDR_SUB_SYS1_c0_ddr4_BA;
  wire [1:0]DDR_SUB_SYS1_c0_ddr4_BG;
  wire [0:0]DDR_SUB_SYS1_c0_ddr4_CKE;
  wire [0:0]DDR_SUB_SYS1_c0_ddr4_CK_C;
  wire [0:0]DDR_SUB_SYS1_c0_ddr4_CK_T;
  wire [0:0]DDR_SUB_SYS1_c0_ddr4_CS_N;
  wire [71:0]DDR_SUB_SYS1_c0_ddr4_DQ;
  wire [17:0]DDR_SUB_SYS1_c0_ddr4_DQS_C;
  wire [17:0]DDR_SUB_SYS1_c0_ddr4_DQS_T;
  wire [0:0]DDR_SUB_SYS1_c0_ddr4_ODT;
  wire DDR_SUB_SYS1_c0_ddr4_PAR;
  wire DDR_SUB_SYS1_c0_ddr4_RESET_N;
  wire DDR_SUB_SYS1_c0_init_calib_complete;
  wire DDR_SUB_SYS1_c2_ddr4_ACT_N;
  wire [16:0]DDR_SUB_SYS1_c2_ddr4_ADR;
  wire [1:0]DDR_SUB_SYS1_c2_ddr4_BA;
  wire [1:0]DDR_SUB_SYS1_c2_ddr4_BG;
  wire [0:0]DDR_SUB_SYS1_c2_ddr4_CKE;
  wire [0:0]DDR_SUB_SYS1_c2_ddr4_CK_C;
  wire [0:0]DDR_SUB_SYS1_c2_ddr4_CK_T;
  wire [0:0]DDR_SUB_SYS1_c2_ddr4_CS_N;
  wire [71:0]DDR_SUB_SYS1_c2_ddr4_DQ;
  wire [17:0]DDR_SUB_SYS1_c2_ddr4_DQS_C;
  wire [17:0]DDR_SUB_SYS1_c2_ddr4_DQS_T;
  wire [0:0]DDR_SUB_SYS1_c2_ddr4_ODT;
  wire DDR_SUB_SYS1_c2_ddr4_PAR;
  wire DDR_SUB_SYS1_c2_ddr4_RESET_N;
  wire DDR_SUB_SYS1_c2_init_calib_complete;
  wire DDR_SUB_SYS1_c3_ddr4_ACT_N;
  wire [16:0]DDR_SUB_SYS1_c3_ddr4_ADR;
  wire [1:0]DDR_SUB_SYS1_c3_ddr4_BA;
  wire [1:0]DDR_SUB_SYS1_c3_ddr4_BG;
  wire [0:0]DDR_SUB_SYS1_c3_ddr4_CKE;
  wire [0:0]DDR_SUB_SYS1_c3_ddr4_CK_C;
  wire [0:0]DDR_SUB_SYS1_c3_ddr4_CK_T;
  wire [0:0]DDR_SUB_SYS1_c3_ddr4_CS_N;
  wire [71:0]DDR_SUB_SYS1_c3_ddr4_DQ;
  wire [17:0]DDR_SUB_SYS1_c3_ddr4_DQS_C;
  wire [17:0]DDR_SUB_SYS1_c3_ddr4_DQS_T;
  wire [0:0]DDR_SUB_SYS1_c3_ddr4_ODT;
  wire DDR_SUB_SYS1_c3_ddr4_PAR;
  wire DDR_SUB_SYS1_c3_ddr4_RESET_N;
  wire DDR_SUB_SYS1_c3_ddr4_ui_clk;
  wire DDR_SUB_SYS1_c3_init_calib_complete;
  wire DDR_SUB_SYS_c0_ddr4_app_sref_ack;
  wire DDR_SUB_SYS_c2_ddr4_app_sref_ack;
  wire DDR_SUB_SYS_c3_ddr4_app_sref_ack;
  wire M00_ACLK_1;
  wire M00_ACLK_2;
  wire [0:0]M00_ARESETN_1;
  wire [0:0]M00_ARESETN_2;
  wire [0:0]M00_ARESETN_3;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_1_ARADDR;
  wire [2:0]MIG0_DDR4_S_AXI_CTRL_1_ARPROT;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_ARREADY;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_ARVALID;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_1_AWADDR;
  wire [2:0]MIG0_DDR4_S_AXI_CTRL_1_AWPROT;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_AWREADY;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_AWVALID;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_BREADY;
  wire [1:0]MIG0_DDR4_S_AXI_CTRL_1_BRESP;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_BVALID;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_1_RDATA;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_RREADY;
  wire [1:0]MIG0_DDR4_S_AXI_CTRL_1_RRESP;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_RVALID;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_1_WDATA;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_WREADY;
  wire [3:0]MIG0_DDR4_S_AXI_CTRL_1_WSTRB;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_1_WVALID;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_1_ARADDR;
  wire [2:0]MIG2_DDR4_S_AXI_CTRL_1_ARPROT;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_ARREADY;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_ARVALID;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_1_AWADDR;
  wire [2:0]MIG2_DDR4_S_AXI_CTRL_1_AWPROT;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_AWREADY;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_AWVALID;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_BREADY;
  wire [1:0]MIG2_DDR4_S_AXI_CTRL_1_BRESP;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_BVALID;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_1_RDATA;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_RREADY;
  wire [1:0]MIG2_DDR4_S_AXI_CTRL_1_RRESP;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_RVALID;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_1_WDATA;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_WREADY;
  wire [3:0]MIG2_DDR4_S_AXI_CTRL_1_WSTRB;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_1_WVALID;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_1_ARADDR;
  wire [2:0]MIG3_DDR4_S_AXI_CTRL_1_ARPROT;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_ARREADY;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_ARVALID;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_1_AWADDR;
  wire [2:0]MIG3_DDR4_S_AXI_CTRL_1_AWPROT;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_AWREADY;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_AWVALID;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_BREADY;
  wire [1:0]MIG3_DDR4_S_AXI_CTRL_1_BRESP;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_BVALID;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_1_RDATA;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_RREADY;
  wire [1:0]MIG3_DDR4_S_AXI_CTRL_1_RRESP;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_RVALID;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_1_WDATA;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_WREADY;
  wire [3:0]MIG3_DDR4_S_AXI_CTRL_1_WSTRB;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_1_WVALID;
  wire [63:0]S_AXI_MM_MIG0_1_ARADDR;
  wire [1:0]S_AXI_MM_MIG0_1_ARBURST;
  wire [3:0]S_AXI_MM_MIG0_1_ARCACHE;
  wire [5:0]S_AXI_MM_MIG0_1_ARID;
  wire [7:0]S_AXI_MM_MIG0_1_ARLEN;
  wire [0:0]S_AXI_MM_MIG0_1_ARLOCK;
  wire [2:0]S_AXI_MM_MIG0_1_ARPROT;
  wire [3:0]S_AXI_MM_MIG0_1_ARQOS;
  wire S_AXI_MM_MIG0_1_ARREADY;
  wire [3:0]S_AXI_MM_MIG0_1_ARREGION;
  wire [2:0]S_AXI_MM_MIG0_1_ARSIZE;
  wire S_AXI_MM_MIG0_1_ARVALID;
  wire [63:0]S_AXI_MM_MIG0_1_AWADDR;
  wire [1:0]S_AXI_MM_MIG0_1_AWBURST;
  wire [3:0]S_AXI_MM_MIG0_1_AWCACHE;
  wire [5:0]S_AXI_MM_MIG0_1_AWID;
  wire [7:0]S_AXI_MM_MIG0_1_AWLEN;
  wire [0:0]S_AXI_MM_MIG0_1_AWLOCK;
  wire [2:0]S_AXI_MM_MIG0_1_AWPROT;
  wire [3:0]S_AXI_MM_MIG0_1_AWQOS;
  wire S_AXI_MM_MIG0_1_AWREADY;
  wire [3:0]S_AXI_MM_MIG0_1_AWREGION;
  wire [2:0]S_AXI_MM_MIG0_1_AWSIZE;
  wire S_AXI_MM_MIG0_1_AWVALID;
  wire [5:0]S_AXI_MM_MIG0_1_BID;
  wire S_AXI_MM_MIG0_1_BREADY;
  wire [1:0]S_AXI_MM_MIG0_1_BRESP;
  wire S_AXI_MM_MIG0_1_BVALID;
  wire [511:0]S_AXI_MM_MIG0_1_RDATA;
  wire [5:0]S_AXI_MM_MIG0_1_RID;
  wire S_AXI_MM_MIG0_1_RLAST;
  wire S_AXI_MM_MIG0_1_RREADY;
  wire [1:0]S_AXI_MM_MIG0_1_RRESP;
  wire S_AXI_MM_MIG0_1_RVALID;
  wire [511:0]S_AXI_MM_MIG0_1_WDATA;
  wire S_AXI_MM_MIG0_1_WLAST;
  wire S_AXI_MM_MIG0_1_WREADY;
  wire [63:0]S_AXI_MM_MIG0_1_WSTRB;
  wire S_AXI_MM_MIG0_1_WVALID;
  wire [63:0]S_AXI_MM_MIG2_1_ARADDR;
  wire [1:0]S_AXI_MM_MIG2_1_ARBURST;
  wire [3:0]S_AXI_MM_MIG2_1_ARCACHE;
  wire [5:0]S_AXI_MM_MIG2_1_ARID;
  wire [7:0]S_AXI_MM_MIG2_1_ARLEN;
  wire [0:0]S_AXI_MM_MIG2_1_ARLOCK;
  wire [2:0]S_AXI_MM_MIG2_1_ARPROT;
  wire [3:0]S_AXI_MM_MIG2_1_ARQOS;
  wire S_AXI_MM_MIG2_1_ARREADY;
  wire [3:0]S_AXI_MM_MIG2_1_ARREGION;
  wire [2:0]S_AXI_MM_MIG2_1_ARSIZE;
  wire S_AXI_MM_MIG2_1_ARVALID;
  wire [63:0]S_AXI_MM_MIG2_1_AWADDR;
  wire [1:0]S_AXI_MM_MIG2_1_AWBURST;
  wire [3:0]S_AXI_MM_MIG2_1_AWCACHE;
  wire [5:0]S_AXI_MM_MIG2_1_AWID;
  wire [7:0]S_AXI_MM_MIG2_1_AWLEN;
  wire [0:0]S_AXI_MM_MIG2_1_AWLOCK;
  wire [2:0]S_AXI_MM_MIG2_1_AWPROT;
  wire [3:0]S_AXI_MM_MIG2_1_AWQOS;
  wire S_AXI_MM_MIG2_1_AWREADY;
  wire [3:0]S_AXI_MM_MIG2_1_AWREGION;
  wire [2:0]S_AXI_MM_MIG2_1_AWSIZE;
  wire S_AXI_MM_MIG2_1_AWVALID;
  wire [5:0]S_AXI_MM_MIG2_1_BID;
  wire S_AXI_MM_MIG2_1_BREADY;
  wire [1:0]S_AXI_MM_MIG2_1_BRESP;
  wire S_AXI_MM_MIG2_1_BVALID;
  wire [511:0]S_AXI_MM_MIG2_1_RDATA;
  wire [5:0]S_AXI_MM_MIG2_1_RID;
  wire S_AXI_MM_MIG2_1_RLAST;
  wire S_AXI_MM_MIG2_1_RREADY;
  wire [1:0]S_AXI_MM_MIG2_1_RRESP;
  wire S_AXI_MM_MIG2_1_RVALID;
  wire [511:0]S_AXI_MM_MIG2_1_WDATA;
  wire S_AXI_MM_MIG2_1_WLAST;
  wire S_AXI_MM_MIG2_1_WREADY;
  wire [63:0]S_AXI_MM_MIG2_1_WSTRB;
  wire S_AXI_MM_MIG2_1_WVALID;
  wire [63:0]S_AXI_MM_MIG3_1_ARADDR;
  wire [1:0]S_AXI_MM_MIG3_1_ARBURST;
  wire [3:0]S_AXI_MM_MIG3_1_ARCACHE;
  wire [5:0]S_AXI_MM_MIG3_1_ARID;
  wire [7:0]S_AXI_MM_MIG3_1_ARLEN;
  wire [0:0]S_AXI_MM_MIG3_1_ARLOCK;
  wire [2:0]S_AXI_MM_MIG3_1_ARPROT;
  wire [3:0]S_AXI_MM_MIG3_1_ARQOS;
  wire S_AXI_MM_MIG3_1_ARREADY;
  wire [3:0]S_AXI_MM_MIG3_1_ARREGION;
  wire [2:0]S_AXI_MM_MIG3_1_ARSIZE;
  wire S_AXI_MM_MIG3_1_ARVALID;
  wire [63:0]S_AXI_MM_MIG3_1_AWADDR;
  wire [1:0]S_AXI_MM_MIG3_1_AWBURST;
  wire [3:0]S_AXI_MM_MIG3_1_AWCACHE;
  wire [5:0]S_AXI_MM_MIG3_1_AWID;
  wire [7:0]S_AXI_MM_MIG3_1_AWLEN;
  wire [0:0]S_AXI_MM_MIG3_1_AWLOCK;
  wire [2:0]S_AXI_MM_MIG3_1_AWPROT;
  wire [3:0]S_AXI_MM_MIG3_1_AWQOS;
  wire S_AXI_MM_MIG3_1_AWREADY;
  wire [3:0]S_AXI_MM_MIG3_1_AWREGION;
  wire [2:0]S_AXI_MM_MIG3_1_AWSIZE;
  wire S_AXI_MM_MIG3_1_AWVALID;
  wire [5:0]S_AXI_MM_MIG3_1_BID;
  wire S_AXI_MM_MIG3_1_BREADY;
  wire [1:0]S_AXI_MM_MIG3_1_BRESP;
  wire S_AXI_MM_MIG3_1_BVALID;
  wire [511:0]S_AXI_MM_MIG3_1_RDATA;
  wire [5:0]S_AXI_MM_MIG3_1_RID;
  wire S_AXI_MM_MIG3_1_RLAST;
  wire S_AXI_MM_MIG3_1_RREADY;
  wire [1:0]S_AXI_MM_MIG3_1_RRESP;
  wire S_AXI_MM_MIG3_1_RVALID;
  wire [511:0]S_AXI_MM_MIG3_1_WDATA;
  wire S_AXI_MM_MIG3_1_WLAST;
  wire S_AXI_MM_MIG3_1_WREADY;
  wire [63:0]S_AXI_MM_MIG3_1_WSTRB;
  wire S_AXI_MM_MIG3_1_WVALID;
  wire [17:0]axiLite_interconnect_C0_M01_AXI_ARADDR;
  wire [2:0]axiLite_interconnect_C0_M01_AXI_ARPROT;
  wire axiLite_interconnect_C0_M01_AXI_ARREADY;
  wire axiLite_interconnect_C0_M01_AXI_ARVALID;
  wire [17:0]axiLite_interconnect_C0_M01_AXI_AWADDR;
  wire [2:0]axiLite_interconnect_C0_M01_AXI_AWPROT;
  wire axiLite_interconnect_C0_M01_AXI_AWREADY;
  wire axiLite_interconnect_C0_M01_AXI_AWVALID;
  wire axiLite_interconnect_C0_M01_AXI_BREADY;
  wire [1:0]axiLite_interconnect_C0_M01_AXI_BRESP;
  wire axiLite_interconnect_C0_M01_AXI_BVALID;
  wire [31:0]axiLite_interconnect_C0_M01_AXI_RDATA;
  wire axiLite_interconnect_C0_M01_AXI_RREADY;
  wire [1:0]axiLite_interconnect_C0_M01_AXI_RRESP;
  wire axiLite_interconnect_C0_M01_AXI_RVALID;
  wire [31:0]axiLite_interconnect_C0_M01_AXI_WDATA;
  wire axiLite_interconnect_C0_M01_AXI_WREADY;
  wire [3:0]axiLite_interconnect_C0_M01_AXI_WSTRB;
  wire axiLite_interconnect_C0_M01_AXI_WVALID;
  wire [31:0]axiLite_interconnect_C2_M00_AXI_ARADDR;
  wire axiLite_interconnect_C2_M00_AXI_ARREADY;
  wire axiLite_interconnect_C2_M00_AXI_ARVALID;
  wire [31:0]axiLite_interconnect_C2_M00_AXI_AWADDR;
  wire axiLite_interconnect_C2_M00_AXI_AWREADY;
  wire axiLite_interconnect_C2_M00_AXI_AWVALID;
  wire axiLite_interconnect_C2_M00_AXI_BREADY;
  wire [1:0]axiLite_interconnect_C2_M00_AXI_BRESP;
  wire axiLite_interconnect_C2_M00_AXI_BVALID;
  wire [31:0]axiLite_interconnect_C2_M00_AXI_RDATA;
  wire axiLite_interconnect_C2_M00_AXI_RREADY;
  wire [1:0]axiLite_interconnect_C2_M00_AXI_RRESP;
  wire axiLite_interconnect_C2_M00_AXI_RVALID;
  wire [31:0]axiLite_interconnect_C2_M00_AXI_WDATA;
  wire axiLite_interconnect_C2_M00_AXI_WREADY;
  wire axiLite_interconnect_C2_M00_AXI_WVALID;
  wire [17:0]axiLite_interconnect_C2_M01_AXI_ARADDR;
  wire [2:0]axiLite_interconnect_C2_M01_AXI_ARPROT;
  wire axiLite_interconnect_C2_M01_AXI_ARREADY;
  wire axiLite_interconnect_C2_M01_AXI_ARVALID;
  wire [17:0]axiLite_interconnect_C2_M01_AXI_AWADDR;
  wire [2:0]axiLite_interconnect_C2_M01_AXI_AWPROT;
  wire axiLite_interconnect_C2_M01_AXI_AWREADY;
  wire axiLite_interconnect_C2_M01_AXI_AWVALID;
  wire axiLite_interconnect_C2_M01_AXI_BREADY;
  wire [1:0]axiLite_interconnect_C2_M01_AXI_BRESP;
  wire axiLite_interconnect_C2_M01_AXI_BVALID;
  wire [31:0]axiLite_interconnect_C2_M01_AXI_RDATA;
  wire axiLite_interconnect_C2_M01_AXI_RREADY;
  wire [1:0]axiLite_interconnect_C2_M01_AXI_RRESP;
  wire axiLite_interconnect_C2_M01_AXI_RVALID;
  wire [31:0]axiLite_interconnect_C2_M01_AXI_WDATA;
  wire axiLite_interconnect_C2_M01_AXI_WREADY;
  wire [3:0]axiLite_interconnect_C2_M01_AXI_WSTRB;
  wire axiLite_interconnect_C2_M01_AXI_WVALID;
  wire [31:0]axiLite_interconnect_C3_M00_AXI_ARADDR;
  wire axiLite_interconnect_C3_M00_AXI_ARREADY;
  wire axiLite_interconnect_C3_M00_AXI_ARVALID;
  wire [31:0]axiLite_interconnect_C3_M00_AXI_AWADDR;
  wire axiLite_interconnect_C3_M00_AXI_AWREADY;
  wire axiLite_interconnect_C3_M00_AXI_AWVALID;
  wire axiLite_interconnect_C3_M00_AXI_BREADY;
  wire [1:0]axiLite_interconnect_C3_M00_AXI_BRESP;
  wire axiLite_interconnect_C3_M00_AXI_BVALID;
  wire [31:0]axiLite_interconnect_C3_M00_AXI_RDATA;
  wire axiLite_interconnect_C3_M00_AXI_RREADY;
  wire [1:0]axiLite_interconnect_C3_M00_AXI_RRESP;
  wire axiLite_interconnect_C3_M00_AXI_RVALID;
  wire [31:0]axiLite_interconnect_C3_M00_AXI_WDATA;
  wire axiLite_interconnect_C3_M00_AXI_WREADY;
  wire axiLite_interconnect_C3_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_C2_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_C2_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_C2_M00_AXI_ARCACHE;
  wire [5:0]axi_interconnect_C2_M00_AXI_ARID;
  wire [7:0]axi_interconnect_C2_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_C2_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_C2_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_C2_M00_AXI_ARQOS;
  wire axi_interconnect_C2_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_C2_M00_AXI_ARSIZE;
  wire axi_interconnect_C2_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_C2_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_C2_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_C2_M00_AXI_AWCACHE;
  wire [5:0]axi_interconnect_C2_M00_AXI_AWID;
  wire [7:0]axi_interconnect_C2_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_C2_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_C2_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_C2_M00_AXI_AWQOS;
  wire axi_interconnect_C2_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_C2_M00_AXI_AWSIZE;
  wire axi_interconnect_C2_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_C2_M00_AXI_BID;
  wire axi_interconnect_C2_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_C2_M00_AXI_BRESP;
  wire axi_interconnect_C2_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_C2_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_C2_M00_AXI_RID;
  wire axi_interconnect_C2_M00_AXI_RLAST;
  wire axi_interconnect_C2_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_C2_M00_AXI_RRESP;
  wire axi_interconnect_C2_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_C2_M00_AXI_WDATA;
  wire axi_interconnect_C2_M00_AXI_WLAST;
  wire axi_interconnect_C2_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_C2_M00_AXI_WSTRB;
  wire axi_interconnect_C2_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_C3_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_C3_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_C3_M00_AXI_ARCACHE;
  wire [5:0]axi_interconnect_C3_M00_AXI_ARID;
  wire [7:0]axi_interconnect_C3_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_C3_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_C3_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_C3_M00_AXI_ARQOS;
  wire axi_interconnect_C3_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_C3_M00_AXI_ARSIZE;
  wire axi_interconnect_C3_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_C3_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_C3_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_C3_M00_AXI_AWCACHE;
  wire [5:0]axi_interconnect_C3_M00_AXI_AWID;
  wire [7:0]axi_interconnect_C3_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_C3_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_C3_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_C3_M00_AXI_AWQOS;
  wire axi_interconnect_C3_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_C3_M00_AXI_AWSIZE;
  wire axi_interconnect_C3_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_C3_M00_AXI_BID;
  wire axi_interconnect_C3_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_C3_M00_AXI_BRESP;
  wire axi_interconnect_C3_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_C3_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_C3_M00_AXI_RID;
  wire axi_interconnect_C3_M00_AXI_RLAST;
  wire axi_interconnect_C3_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_C3_M00_AXI_RRESP;
  wire axi_interconnect_C3_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_C3_M00_AXI_WDATA;
  wire axi_interconnect_C3_M00_AXI_WLAST;
  wire axi_interconnect_C3_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_C3_M00_AXI_WSTRB;
  wire axi_interconnect_C3_M00_AXI_WVALID;
  wire c0_ddr4_app_mem_init_skip_0_1;
  wire c0_ddr4_app_restore_complete_0_1;
  wire c0_ddr4_app_sref_req_0_1;
  wire c0_ddr4_app_xsdb_select_0_1;
  wire c2_ddr4_app_mem_init_skip_0_1;
  wire c2_ddr4_app_restore_complete_0_1;
  wire c2_ddr4_app_sref_req_0_1;
  wire c2_ddr4_app_xsdb_select_0_1;
  wire c3_ddr4_app_mem_init_skip_0_1;
  wire c3_ddr4_app_restore_complete_0_1;
  wire c3_ddr4_app_sref_req_0_1;
  wire c3_ddr4_app_xsdb_select_0_1;
  wire [0:0]proc_sys_reset_axi4lite_peripheral_aresetn;
  wire sys_rst_ddr_0_1;
  wire sys_rst_ddr_2_1;
  wire sys_rst_ddr_3_1;

  assign AXI_RESET_N_2 = AXI_RESET_N;
  assign C0_SYS_CLK_1_CLK_N = C0_SYS_CLK_clk_n;
  assign C0_SYS_CLK_1_CLK_P = C0_SYS_CLK_clk_p;
  assign C2_SYS_CLK_1_CLK_N = C2_SYS_CLK_clk_n;
  assign C2_SYS_CLK_1_CLK_P = C2_SYS_CLK_clk_p;
  assign C3_SYS_CLK_1_CLK_N = C3_SYS_CLK_clk_n;
  assign C3_SYS_CLK_1_CLK_P = C3_SYS_CLK_clk_p;
  assign CLK_IN_250_1 = CLK_IN_250;
  assign MIG0_DDR4_S_AXI_CTRL_1_ARADDR = MIG0_DDR4_S_AXI_CTRL_araddr[31:0];
  assign MIG0_DDR4_S_AXI_CTRL_1_ARPROT = MIG0_DDR4_S_AXI_CTRL_arprot[2:0];
  assign MIG0_DDR4_S_AXI_CTRL_1_ARVALID = MIG0_DDR4_S_AXI_CTRL_arvalid[0];
  assign MIG0_DDR4_S_AXI_CTRL_1_AWADDR = MIG0_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign MIG0_DDR4_S_AXI_CTRL_1_AWPROT = MIG0_DDR4_S_AXI_CTRL_awprot[2:0];
  assign MIG0_DDR4_S_AXI_CTRL_1_AWVALID = MIG0_DDR4_S_AXI_CTRL_awvalid[0];
  assign MIG0_DDR4_S_AXI_CTRL_1_BREADY = MIG0_DDR4_S_AXI_CTRL_bready[0];
  assign MIG0_DDR4_S_AXI_CTRL_1_RREADY = MIG0_DDR4_S_AXI_CTRL_rready[0];
  assign MIG0_DDR4_S_AXI_CTRL_1_WDATA = MIG0_DDR4_S_AXI_CTRL_wdata[31:0];
  assign MIG0_DDR4_S_AXI_CTRL_1_WSTRB = MIG0_DDR4_S_AXI_CTRL_wstrb[3:0];
  assign MIG0_DDR4_S_AXI_CTRL_1_WVALID = MIG0_DDR4_S_AXI_CTRL_wvalid[0];
  assign MIG0_DDR4_S_AXI_CTRL_arready[0] = MIG0_DDR4_S_AXI_CTRL_1_ARREADY;
  assign MIG0_DDR4_S_AXI_CTRL_awready[0] = MIG0_DDR4_S_AXI_CTRL_1_AWREADY;
  assign MIG0_DDR4_S_AXI_CTRL_bresp[1:0] = MIG0_DDR4_S_AXI_CTRL_1_BRESP;
  assign MIG0_DDR4_S_AXI_CTRL_bvalid[0] = MIG0_DDR4_S_AXI_CTRL_1_BVALID;
  assign MIG0_DDR4_S_AXI_CTRL_rdata[31:0] = MIG0_DDR4_S_AXI_CTRL_1_RDATA;
  assign MIG0_DDR4_S_AXI_CTRL_rresp[1:0] = MIG0_DDR4_S_AXI_CTRL_1_RRESP;
  assign MIG0_DDR4_S_AXI_CTRL_rvalid[0] = MIG0_DDR4_S_AXI_CTRL_1_RVALID;
  assign MIG0_DDR4_S_AXI_CTRL_wready[0] = MIG0_DDR4_S_AXI_CTRL_1_WREADY;
  assign MIG2_DDR4_S_AXI_CTRL_1_ARADDR = MIG2_DDR4_S_AXI_CTRL_araddr[31:0];
  assign MIG2_DDR4_S_AXI_CTRL_1_ARPROT = MIG2_DDR4_S_AXI_CTRL_arprot[2:0];
  assign MIG2_DDR4_S_AXI_CTRL_1_ARVALID = MIG2_DDR4_S_AXI_CTRL_arvalid[0];
  assign MIG2_DDR4_S_AXI_CTRL_1_AWADDR = MIG2_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign MIG2_DDR4_S_AXI_CTRL_1_AWPROT = MIG2_DDR4_S_AXI_CTRL_awprot[2:0];
  assign MIG2_DDR4_S_AXI_CTRL_1_AWVALID = MIG2_DDR4_S_AXI_CTRL_awvalid[0];
  assign MIG2_DDR4_S_AXI_CTRL_1_BREADY = MIG2_DDR4_S_AXI_CTRL_bready[0];
  assign MIG2_DDR4_S_AXI_CTRL_1_RREADY = MIG2_DDR4_S_AXI_CTRL_rready[0];
  assign MIG2_DDR4_S_AXI_CTRL_1_WDATA = MIG2_DDR4_S_AXI_CTRL_wdata[31:0];
  assign MIG2_DDR4_S_AXI_CTRL_1_WSTRB = MIG2_DDR4_S_AXI_CTRL_wstrb[3:0];
  assign MIG2_DDR4_S_AXI_CTRL_1_WVALID = MIG2_DDR4_S_AXI_CTRL_wvalid[0];
  assign MIG2_DDR4_S_AXI_CTRL_arready[0] = MIG2_DDR4_S_AXI_CTRL_1_ARREADY;
  assign MIG2_DDR4_S_AXI_CTRL_awready[0] = MIG2_DDR4_S_AXI_CTRL_1_AWREADY;
  assign MIG2_DDR4_S_AXI_CTRL_bresp[1:0] = MIG2_DDR4_S_AXI_CTRL_1_BRESP;
  assign MIG2_DDR4_S_AXI_CTRL_bvalid[0] = MIG2_DDR4_S_AXI_CTRL_1_BVALID;
  assign MIG2_DDR4_S_AXI_CTRL_rdata[31:0] = MIG2_DDR4_S_AXI_CTRL_1_RDATA;
  assign MIG2_DDR4_S_AXI_CTRL_rresp[1:0] = MIG2_DDR4_S_AXI_CTRL_1_RRESP;
  assign MIG2_DDR4_S_AXI_CTRL_rvalid[0] = MIG2_DDR4_S_AXI_CTRL_1_RVALID;
  assign MIG2_DDR4_S_AXI_CTRL_wready[0] = MIG2_DDR4_S_AXI_CTRL_1_WREADY;
  assign MIG3_DDR4_S_AXI_CTRL_1_ARADDR = MIG3_DDR4_S_AXI_CTRL_araddr[31:0];
  assign MIG3_DDR4_S_AXI_CTRL_1_ARPROT = MIG3_DDR4_S_AXI_CTRL_arprot[2:0];
  assign MIG3_DDR4_S_AXI_CTRL_1_ARVALID = MIG3_DDR4_S_AXI_CTRL_arvalid[0];
  assign MIG3_DDR4_S_AXI_CTRL_1_AWADDR = MIG3_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign MIG3_DDR4_S_AXI_CTRL_1_AWPROT = MIG3_DDR4_S_AXI_CTRL_awprot[2:0];
  assign MIG3_DDR4_S_AXI_CTRL_1_AWVALID = MIG3_DDR4_S_AXI_CTRL_awvalid[0];
  assign MIG3_DDR4_S_AXI_CTRL_1_BREADY = MIG3_DDR4_S_AXI_CTRL_bready[0];
  assign MIG3_DDR4_S_AXI_CTRL_1_RREADY = MIG3_DDR4_S_AXI_CTRL_rready[0];
  assign MIG3_DDR4_S_AXI_CTRL_1_WDATA = MIG3_DDR4_S_AXI_CTRL_wdata[31:0];
  assign MIG3_DDR4_S_AXI_CTRL_1_WSTRB = MIG3_DDR4_S_AXI_CTRL_wstrb[3:0];
  assign MIG3_DDR4_S_AXI_CTRL_1_WVALID = MIG3_DDR4_S_AXI_CTRL_wvalid[0];
  assign MIG3_DDR4_S_AXI_CTRL_arready[0] = MIG3_DDR4_S_AXI_CTRL_1_ARREADY;
  assign MIG3_DDR4_S_AXI_CTRL_awready[0] = MIG3_DDR4_S_AXI_CTRL_1_AWREADY;
  assign MIG3_DDR4_S_AXI_CTRL_bresp[1:0] = MIG3_DDR4_S_AXI_CTRL_1_BRESP;
  assign MIG3_DDR4_S_AXI_CTRL_bvalid[0] = MIG3_DDR4_S_AXI_CTRL_1_BVALID;
  assign MIG3_DDR4_S_AXI_CTRL_rdata[31:0] = MIG3_DDR4_S_AXI_CTRL_1_RDATA;
  assign MIG3_DDR4_S_AXI_CTRL_rresp[1:0] = MIG3_DDR4_S_AXI_CTRL_1_RRESP;
  assign MIG3_DDR4_S_AXI_CTRL_rvalid[0] = MIG3_DDR4_S_AXI_CTRL_1_RVALID;
  assign MIG3_DDR4_S_AXI_CTRL_wready[0] = MIG3_DDR4_S_AXI_CTRL_1_WREADY;
  assign S_AXI_MM_MIG0_1_ARADDR = S_AXI_MM_MIG0_araddr[63:0];
  assign S_AXI_MM_MIG0_1_ARBURST = S_AXI_MM_MIG0_arburst[1:0];
  assign S_AXI_MM_MIG0_1_ARCACHE = S_AXI_MM_MIG0_arcache[3:0];
  assign S_AXI_MM_MIG0_1_ARID = S_AXI_MM_MIG0_arid[5:0];
  assign S_AXI_MM_MIG0_1_ARLEN = S_AXI_MM_MIG0_arlen[7:0];
  assign S_AXI_MM_MIG0_1_ARLOCK = S_AXI_MM_MIG0_arlock[0];
  assign S_AXI_MM_MIG0_1_ARPROT = S_AXI_MM_MIG0_arprot[2:0];
  assign S_AXI_MM_MIG0_1_ARQOS = S_AXI_MM_MIG0_arqos[3:0];
  assign S_AXI_MM_MIG0_1_ARREGION = S_AXI_MM_MIG0_arregion[3:0];
  assign S_AXI_MM_MIG0_1_ARSIZE = S_AXI_MM_MIG0_arsize[2:0];
  assign S_AXI_MM_MIG0_1_ARVALID = S_AXI_MM_MIG0_arvalid;
  assign S_AXI_MM_MIG0_1_AWADDR = S_AXI_MM_MIG0_awaddr[63:0];
  assign S_AXI_MM_MIG0_1_AWBURST = S_AXI_MM_MIG0_awburst[1:0];
  assign S_AXI_MM_MIG0_1_AWCACHE = S_AXI_MM_MIG0_awcache[3:0];
  assign S_AXI_MM_MIG0_1_AWID = S_AXI_MM_MIG0_awid[5:0];
  assign S_AXI_MM_MIG0_1_AWLEN = S_AXI_MM_MIG0_awlen[7:0];
  assign S_AXI_MM_MIG0_1_AWLOCK = S_AXI_MM_MIG0_awlock[0];
  assign S_AXI_MM_MIG0_1_AWPROT = S_AXI_MM_MIG0_awprot[2:0];
  assign S_AXI_MM_MIG0_1_AWQOS = S_AXI_MM_MIG0_awqos[3:0];
  assign S_AXI_MM_MIG0_1_AWREGION = S_AXI_MM_MIG0_awregion[3:0];
  assign S_AXI_MM_MIG0_1_AWSIZE = S_AXI_MM_MIG0_awsize[2:0];
  assign S_AXI_MM_MIG0_1_AWVALID = S_AXI_MM_MIG0_awvalid;
  assign S_AXI_MM_MIG0_1_BREADY = S_AXI_MM_MIG0_bready;
  assign S_AXI_MM_MIG0_1_RREADY = S_AXI_MM_MIG0_rready;
  assign S_AXI_MM_MIG0_1_WDATA = S_AXI_MM_MIG0_wdata[511:0];
  assign S_AXI_MM_MIG0_1_WLAST = S_AXI_MM_MIG0_wlast;
  assign S_AXI_MM_MIG0_1_WSTRB = S_AXI_MM_MIG0_wstrb[63:0];
  assign S_AXI_MM_MIG0_1_WVALID = S_AXI_MM_MIG0_wvalid;
  assign S_AXI_MM_MIG0_arready = S_AXI_MM_MIG0_1_ARREADY;
  assign S_AXI_MM_MIG0_awready = S_AXI_MM_MIG0_1_AWREADY;
  assign S_AXI_MM_MIG0_bid[5:0] = S_AXI_MM_MIG0_1_BID;
  assign S_AXI_MM_MIG0_bresp[1:0] = S_AXI_MM_MIG0_1_BRESP;
  assign S_AXI_MM_MIG0_bvalid = S_AXI_MM_MIG0_1_BVALID;
  assign S_AXI_MM_MIG0_rdata[511:0] = S_AXI_MM_MIG0_1_RDATA;
  assign S_AXI_MM_MIG0_rid[5:0] = S_AXI_MM_MIG0_1_RID;
  assign S_AXI_MM_MIG0_rlast = S_AXI_MM_MIG0_1_RLAST;
  assign S_AXI_MM_MIG0_rresp[1:0] = S_AXI_MM_MIG0_1_RRESP;
  assign S_AXI_MM_MIG0_rvalid = S_AXI_MM_MIG0_1_RVALID;
  assign S_AXI_MM_MIG0_wready = S_AXI_MM_MIG0_1_WREADY;
  assign S_AXI_MM_MIG2_1_ARADDR = S_AXI_MM_MIG2_araddr[63:0];
  assign S_AXI_MM_MIG2_1_ARBURST = S_AXI_MM_MIG2_arburst[1:0];
  assign S_AXI_MM_MIG2_1_ARCACHE = S_AXI_MM_MIG2_arcache[3:0];
  assign S_AXI_MM_MIG2_1_ARID = S_AXI_MM_MIG2_arid[5:0];
  assign S_AXI_MM_MIG2_1_ARLEN = S_AXI_MM_MIG2_arlen[7:0];
  assign S_AXI_MM_MIG2_1_ARLOCK = S_AXI_MM_MIG2_arlock[0];
  assign S_AXI_MM_MIG2_1_ARPROT = S_AXI_MM_MIG2_arprot[2:0];
  assign S_AXI_MM_MIG2_1_ARQOS = S_AXI_MM_MIG2_arqos[3:0];
  assign S_AXI_MM_MIG2_1_ARREGION = S_AXI_MM_MIG2_arregion[3:0];
  assign S_AXI_MM_MIG2_1_ARSIZE = S_AXI_MM_MIG2_arsize[2:0];
  assign S_AXI_MM_MIG2_1_ARVALID = S_AXI_MM_MIG2_arvalid;
  assign S_AXI_MM_MIG2_1_AWADDR = S_AXI_MM_MIG2_awaddr[63:0];
  assign S_AXI_MM_MIG2_1_AWBURST = S_AXI_MM_MIG2_awburst[1:0];
  assign S_AXI_MM_MIG2_1_AWCACHE = S_AXI_MM_MIG2_awcache[3:0];
  assign S_AXI_MM_MIG2_1_AWID = S_AXI_MM_MIG2_awid[5:0];
  assign S_AXI_MM_MIG2_1_AWLEN = S_AXI_MM_MIG2_awlen[7:0];
  assign S_AXI_MM_MIG2_1_AWLOCK = S_AXI_MM_MIG2_awlock[0];
  assign S_AXI_MM_MIG2_1_AWPROT = S_AXI_MM_MIG2_awprot[2:0];
  assign S_AXI_MM_MIG2_1_AWQOS = S_AXI_MM_MIG2_awqos[3:0];
  assign S_AXI_MM_MIG2_1_AWREGION = S_AXI_MM_MIG2_awregion[3:0];
  assign S_AXI_MM_MIG2_1_AWSIZE = S_AXI_MM_MIG2_awsize[2:0];
  assign S_AXI_MM_MIG2_1_AWVALID = S_AXI_MM_MIG2_awvalid;
  assign S_AXI_MM_MIG2_1_BREADY = S_AXI_MM_MIG2_bready;
  assign S_AXI_MM_MIG2_1_RREADY = S_AXI_MM_MIG2_rready;
  assign S_AXI_MM_MIG2_1_WDATA = S_AXI_MM_MIG2_wdata[511:0];
  assign S_AXI_MM_MIG2_1_WLAST = S_AXI_MM_MIG2_wlast;
  assign S_AXI_MM_MIG2_1_WSTRB = S_AXI_MM_MIG2_wstrb[63:0];
  assign S_AXI_MM_MIG2_1_WVALID = S_AXI_MM_MIG2_wvalid;
  assign S_AXI_MM_MIG2_arready = S_AXI_MM_MIG2_1_ARREADY;
  assign S_AXI_MM_MIG2_awready = S_AXI_MM_MIG2_1_AWREADY;
  assign S_AXI_MM_MIG2_bid[5:0] = S_AXI_MM_MIG2_1_BID;
  assign S_AXI_MM_MIG2_bresp[1:0] = S_AXI_MM_MIG2_1_BRESP;
  assign S_AXI_MM_MIG2_bvalid = S_AXI_MM_MIG2_1_BVALID;
  assign S_AXI_MM_MIG2_rdata[511:0] = S_AXI_MM_MIG2_1_RDATA;
  assign S_AXI_MM_MIG2_rid[5:0] = S_AXI_MM_MIG2_1_RID;
  assign S_AXI_MM_MIG2_rlast = S_AXI_MM_MIG2_1_RLAST;
  assign S_AXI_MM_MIG2_rresp[1:0] = S_AXI_MM_MIG2_1_RRESP;
  assign S_AXI_MM_MIG2_rvalid = S_AXI_MM_MIG2_1_RVALID;
  assign S_AXI_MM_MIG2_wready = S_AXI_MM_MIG2_1_WREADY;
  assign S_AXI_MM_MIG3_1_ARADDR = S_AXI_MM_MIG3_araddr[63:0];
  assign S_AXI_MM_MIG3_1_ARBURST = S_AXI_MM_MIG3_arburst[1:0];
  assign S_AXI_MM_MIG3_1_ARCACHE = S_AXI_MM_MIG3_arcache[3:0];
  assign S_AXI_MM_MIG3_1_ARID = S_AXI_MM_MIG3_arid[5:0];
  assign S_AXI_MM_MIG3_1_ARLEN = S_AXI_MM_MIG3_arlen[7:0];
  assign S_AXI_MM_MIG3_1_ARLOCK = S_AXI_MM_MIG3_arlock[0];
  assign S_AXI_MM_MIG3_1_ARPROT = S_AXI_MM_MIG3_arprot[2:0];
  assign S_AXI_MM_MIG3_1_ARQOS = S_AXI_MM_MIG3_arqos[3:0];
  assign S_AXI_MM_MIG3_1_ARREGION = S_AXI_MM_MIG3_arregion[3:0];
  assign S_AXI_MM_MIG3_1_ARSIZE = S_AXI_MM_MIG3_arsize[2:0];
  assign S_AXI_MM_MIG3_1_ARVALID = S_AXI_MM_MIG3_arvalid;
  assign S_AXI_MM_MIG3_1_AWADDR = S_AXI_MM_MIG3_awaddr[63:0];
  assign S_AXI_MM_MIG3_1_AWBURST = S_AXI_MM_MIG3_awburst[1:0];
  assign S_AXI_MM_MIG3_1_AWCACHE = S_AXI_MM_MIG3_awcache[3:0];
  assign S_AXI_MM_MIG3_1_AWID = S_AXI_MM_MIG3_awid[5:0];
  assign S_AXI_MM_MIG3_1_AWLEN = S_AXI_MM_MIG3_awlen[7:0];
  assign S_AXI_MM_MIG3_1_AWLOCK = S_AXI_MM_MIG3_awlock[0];
  assign S_AXI_MM_MIG3_1_AWPROT = S_AXI_MM_MIG3_awprot[2:0];
  assign S_AXI_MM_MIG3_1_AWQOS = S_AXI_MM_MIG3_awqos[3:0];
  assign S_AXI_MM_MIG3_1_AWREGION = S_AXI_MM_MIG3_awregion[3:0];
  assign S_AXI_MM_MIG3_1_AWSIZE = S_AXI_MM_MIG3_awsize[2:0];
  assign S_AXI_MM_MIG3_1_AWVALID = S_AXI_MM_MIG3_awvalid;
  assign S_AXI_MM_MIG3_1_BREADY = S_AXI_MM_MIG3_bready;
  assign S_AXI_MM_MIG3_1_RREADY = S_AXI_MM_MIG3_rready;
  assign S_AXI_MM_MIG3_1_WDATA = S_AXI_MM_MIG3_wdata[511:0];
  assign S_AXI_MM_MIG3_1_WLAST = S_AXI_MM_MIG3_wlast;
  assign S_AXI_MM_MIG3_1_WSTRB = S_AXI_MM_MIG3_wstrb[63:0];
  assign S_AXI_MM_MIG3_1_WVALID = S_AXI_MM_MIG3_wvalid;
  assign S_AXI_MM_MIG3_arready = S_AXI_MM_MIG3_1_ARREADY;
  assign S_AXI_MM_MIG3_awready = S_AXI_MM_MIG3_1_AWREADY;
  assign S_AXI_MM_MIG3_bid[5:0] = S_AXI_MM_MIG3_1_BID;
  assign S_AXI_MM_MIG3_bresp[1:0] = S_AXI_MM_MIG3_1_BRESP;
  assign S_AXI_MM_MIG3_bvalid = S_AXI_MM_MIG3_1_BVALID;
  assign S_AXI_MM_MIG3_rdata[511:0] = S_AXI_MM_MIG3_1_RDATA;
  assign S_AXI_MM_MIG3_rid[5:0] = S_AXI_MM_MIG3_1_RID;
  assign S_AXI_MM_MIG3_rlast = S_AXI_MM_MIG3_1_RLAST;
  assign S_AXI_MM_MIG3_rresp[1:0] = S_AXI_MM_MIG3_1_RRESP;
  assign S_AXI_MM_MIG3_rvalid = S_AXI_MM_MIG3_1_RVALID;
  assign S_AXI_MM_MIG3_wready = S_AXI_MM_MIG3_1_WREADY;
  assign c0_ddr4_act_n = DDR_SUB_SYS1_c0_ddr4_ACT_N;
  assign c0_ddr4_adr[16:0] = DDR_SUB_SYS1_c0_ddr4_ADR;
  assign c0_ddr4_app_mem_init_skip_0_1 = c0_ddr4_app_mem_init_skip;
  assign c0_ddr4_app_restore_complete_0_1 = c0_ddr4_app_restore_complete;
  assign c0_ddr4_app_sref_ack = DDR_SUB_SYS_c0_ddr4_app_sref_ack;
  assign c0_ddr4_app_sref_req_0_1 = c0_ddr4_app_sref_req;
  assign c0_ddr4_app_xsdb_select_0_1 = c0_ddr4_app_xsdb_select;
  assign c0_ddr4_ba[1:0] = DDR_SUB_SYS1_c0_ddr4_BA;
  assign c0_ddr4_bg[1:0] = DDR_SUB_SYS1_c0_ddr4_BG;
  assign c0_ddr4_ck_c[0] = DDR_SUB_SYS1_c0_ddr4_CK_C;
  assign c0_ddr4_ck_t[0] = DDR_SUB_SYS1_c0_ddr4_CK_T;
  assign c0_ddr4_cke[0] = DDR_SUB_SYS1_c0_ddr4_CKE;
  assign c0_ddr4_cs_n[0] = DDR_SUB_SYS1_c0_ddr4_CS_N;
  assign c0_ddr4_odt[0] = DDR_SUB_SYS1_c0_ddr4_ODT;
  assign c0_ddr4_par = DDR_SUB_SYS1_c0_ddr4_PAR;
  assign c0_ddr4_reset_n = DDR_SUB_SYS1_c0_ddr4_RESET_N;
  assign c0_init_calib_complete = DDR_SUB_SYS1_c0_init_calib_complete;
  assign c2_ddr4_act_n = DDR_SUB_SYS1_c2_ddr4_ACT_N;
  assign c2_ddr4_adr[16:0] = DDR_SUB_SYS1_c2_ddr4_ADR;
  assign c2_ddr4_app_mem_init_skip_0_1 = c2_ddr4_app_mem_init_skip;
  assign c2_ddr4_app_restore_complete_0_1 = c2_ddr4_app_restore_complete;
  assign c2_ddr4_app_sref_ack = DDR_SUB_SYS_c2_ddr4_app_sref_ack;
  assign c2_ddr4_app_sref_req_0_1 = c2_ddr4_app_sref_req;
  assign c2_ddr4_app_xsdb_select_0_1 = c2_ddr4_app_xsdb_select;
  assign c2_ddr4_ba[1:0] = DDR_SUB_SYS1_c2_ddr4_BA;
  assign c2_ddr4_bg[1:0] = DDR_SUB_SYS1_c2_ddr4_BG;
  assign c2_ddr4_ck_c[0] = DDR_SUB_SYS1_c2_ddr4_CK_C;
  assign c2_ddr4_ck_t[0] = DDR_SUB_SYS1_c2_ddr4_CK_T;
  assign c2_ddr4_cke[0] = DDR_SUB_SYS1_c2_ddr4_CKE;
  assign c2_ddr4_cs_n[0] = DDR_SUB_SYS1_c2_ddr4_CS_N;
  assign c2_ddr4_odt[0] = DDR_SUB_SYS1_c2_ddr4_ODT;
  assign c2_ddr4_par = DDR_SUB_SYS1_c2_ddr4_PAR;
  assign c2_ddr4_reset_n = DDR_SUB_SYS1_c2_ddr4_RESET_N;
  assign c2_init_calib_complete = DDR_SUB_SYS1_c2_init_calib_complete;
  assign c3_ddr4_act_n = DDR_SUB_SYS1_c3_ddr4_ACT_N;
  assign c3_ddr4_adr[16:0] = DDR_SUB_SYS1_c3_ddr4_ADR;
  assign c3_ddr4_app_mem_init_skip_0_1 = c3_ddr4_app_mem_init_skip;
  assign c3_ddr4_app_restore_complete_0_1 = c3_ddr4_app_restore_complete;
  assign c3_ddr4_app_sref_ack = DDR_SUB_SYS_c3_ddr4_app_sref_ack;
  assign c3_ddr4_app_sref_req_0_1 = c3_ddr4_app_sref_req;
  assign c3_ddr4_app_xsdb_select_0_1 = c3_ddr4_app_xsdb_select;
  assign c3_ddr4_ba[1:0] = DDR_SUB_SYS1_c3_ddr4_BA;
  assign c3_ddr4_bg[1:0] = DDR_SUB_SYS1_c3_ddr4_BG;
  assign c3_ddr4_ck_c[0] = DDR_SUB_SYS1_c3_ddr4_CK_C;
  assign c3_ddr4_ck_t[0] = DDR_SUB_SYS1_c3_ddr4_CK_T;
  assign c3_ddr4_cke[0] = DDR_SUB_SYS1_c3_ddr4_CKE;
  assign c3_ddr4_cs_n[0] = DDR_SUB_SYS1_c3_ddr4_CS_N;
  assign c3_ddr4_odt[0] = DDR_SUB_SYS1_c3_ddr4_ODT;
  assign c3_ddr4_par = DDR_SUB_SYS1_c3_ddr4_PAR;
  assign c3_ddr4_reset_n = DDR_SUB_SYS1_c3_ddr4_RESET_N;
  assign c3_init_calib_complete = DDR_SUB_SYS1_c3_init_calib_complete;
  assign sys_rst_ddr_0_1 = sys_rst_ddr_0;
  assign sys_rst_ddr_2_1 = sys_rst_ddr_2;
  assign sys_rst_ddr_3_1 = sys_rst_ddr_3;
  DDR_SUB_SYS_imp_1KAMHSI DDR_SUB_SYS
       (.C0_DDR4_S_AXI_CTRL_araddr(C0_DDR4_S_AXI_CTRL_1_ARADDR),
        .C0_DDR4_S_AXI_CTRL_arready(C0_DDR4_S_AXI_CTRL_1_ARREADY),
        .C0_DDR4_S_AXI_CTRL_arvalid(C0_DDR4_S_AXI_CTRL_1_ARVALID),
        .C0_DDR4_S_AXI_CTRL_awaddr(C0_DDR4_S_AXI_CTRL_1_AWADDR),
        .C0_DDR4_S_AXI_CTRL_awready(C0_DDR4_S_AXI_CTRL_1_AWREADY),
        .C0_DDR4_S_AXI_CTRL_awvalid(C0_DDR4_S_AXI_CTRL_1_AWVALID),
        .C0_DDR4_S_AXI_CTRL_bready(C0_DDR4_S_AXI_CTRL_1_BREADY),
        .C0_DDR4_S_AXI_CTRL_bresp(C0_DDR4_S_AXI_CTRL_1_BRESP),
        .C0_DDR4_S_AXI_CTRL_bvalid(C0_DDR4_S_AXI_CTRL_1_BVALID),
        .C0_DDR4_S_AXI_CTRL_rdata(C0_DDR4_S_AXI_CTRL_1_RDATA),
        .C0_DDR4_S_AXI_CTRL_rready(C0_DDR4_S_AXI_CTRL_1_RREADY),
        .C0_DDR4_S_AXI_CTRL_rresp(C0_DDR4_S_AXI_CTRL_1_RRESP),
        .C0_DDR4_S_AXI_CTRL_rvalid(C0_DDR4_S_AXI_CTRL_1_RVALID),
        .C0_DDR4_S_AXI_CTRL_wdata(C0_DDR4_S_AXI_CTRL_1_WDATA),
        .C0_DDR4_S_AXI_CTRL_wready(C0_DDR4_S_AXI_CTRL_1_WREADY),
        .C0_DDR4_S_AXI_CTRL_wvalid(C0_DDR4_S_AXI_CTRL_1_WVALID),
        .C0_DDR4_S_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .C0_DDR4_S_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .C0_DDR4_S_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .C0_DDR4_S_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .C0_DDR4_S_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .C0_DDR4_S_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .C0_DDR4_S_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .C0_DDR4_S_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .C0_DDR4_S_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .C0_DDR4_S_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .C0_DDR4_S_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .C0_DDR4_S_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .C0_DDR4_S_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .C0_DDR4_S_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .C0_DDR4_S_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .C0_DDR4_S_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .C0_DDR4_S_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .C0_DDR4_S_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .C0_DDR4_S_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .C0_DDR4_S_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .C0_DDR4_S_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .C0_DDR4_S_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .C0_DDR4_S_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .C0_DDR4_S_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .C0_DDR4_S_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .C0_DDR4_S_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .C0_DDR4_S_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .C0_DDR4_S_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .C0_DDR4_S_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .C0_DDR4_S_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .C0_DDR4_S_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .C0_DDR4_S_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .C0_DDR4_S_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .C0_DDR4_S_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .C0_DDR4_S_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .C0_DDR4_S_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .C0_DDR4_S_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .C0_SYS_CLK_clk_n(C0_SYS_CLK_1_CLK_N),
        .C0_SYS_CLK_clk_p(C0_SYS_CLK_1_CLK_P),
        .C0_XSDB_S_AXIL_araddr(axiLite_interconnect_C0_M01_AXI_ARADDR),
        .C0_XSDB_S_AXIL_arprot(axiLite_interconnect_C0_M01_AXI_ARPROT),
        .C0_XSDB_S_AXIL_arready(axiLite_interconnect_C0_M01_AXI_ARREADY),
        .C0_XSDB_S_AXIL_arvalid(axiLite_interconnect_C0_M01_AXI_ARVALID),
        .C0_XSDB_S_AXIL_awaddr(axiLite_interconnect_C0_M01_AXI_AWADDR),
        .C0_XSDB_S_AXIL_awprot(axiLite_interconnect_C0_M01_AXI_AWPROT),
        .C0_XSDB_S_AXIL_awready(axiLite_interconnect_C0_M01_AXI_AWREADY),
        .C0_XSDB_S_AXIL_awvalid(axiLite_interconnect_C0_M01_AXI_AWVALID),
        .C0_XSDB_S_AXIL_bready(axiLite_interconnect_C0_M01_AXI_BREADY),
        .C0_XSDB_S_AXIL_bresp(axiLite_interconnect_C0_M01_AXI_BRESP),
        .C0_XSDB_S_AXIL_bvalid(axiLite_interconnect_C0_M01_AXI_BVALID),
        .C0_XSDB_S_AXIL_rdata(axiLite_interconnect_C0_M01_AXI_RDATA),
        .C0_XSDB_S_AXIL_rready(axiLite_interconnect_C0_M01_AXI_RREADY),
        .C0_XSDB_S_AXIL_rresp(axiLite_interconnect_C0_M01_AXI_RRESP),
        .C0_XSDB_S_AXIL_rvalid(axiLite_interconnect_C0_M01_AXI_RVALID),
        .C0_XSDB_S_AXIL_wdata(axiLite_interconnect_C0_M01_AXI_WDATA),
        .C0_XSDB_S_AXIL_wready(axiLite_interconnect_C0_M01_AXI_WREADY),
        .C0_XSDB_S_AXIL_wstrb(axiLite_interconnect_C0_M01_AXI_WSTRB),
        .C0_XSDB_S_AXIL_wvalid(axiLite_interconnect_C0_M01_AXI_WVALID),
        .C2_DDR4_S_AXI_CTRL_araddr(axiLite_interconnect_C2_M00_AXI_ARADDR),
        .C2_DDR4_S_AXI_CTRL_arready(axiLite_interconnect_C2_M00_AXI_ARREADY),
        .C2_DDR4_S_AXI_CTRL_arvalid(axiLite_interconnect_C2_M00_AXI_ARVALID),
        .C2_DDR4_S_AXI_CTRL_awaddr(axiLite_interconnect_C2_M00_AXI_AWADDR),
        .C2_DDR4_S_AXI_CTRL_awready(axiLite_interconnect_C2_M00_AXI_AWREADY),
        .C2_DDR4_S_AXI_CTRL_awvalid(axiLite_interconnect_C2_M00_AXI_AWVALID),
        .C2_DDR4_S_AXI_CTRL_bready(axiLite_interconnect_C2_M00_AXI_BREADY),
        .C2_DDR4_S_AXI_CTRL_bresp(axiLite_interconnect_C2_M00_AXI_BRESP),
        .C2_DDR4_S_AXI_CTRL_bvalid(axiLite_interconnect_C2_M00_AXI_BVALID),
        .C2_DDR4_S_AXI_CTRL_rdata(axiLite_interconnect_C2_M00_AXI_RDATA),
        .C2_DDR4_S_AXI_CTRL_rready(axiLite_interconnect_C2_M00_AXI_RREADY),
        .C2_DDR4_S_AXI_CTRL_rresp(axiLite_interconnect_C2_M00_AXI_RRESP),
        .C2_DDR4_S_AXI_CTRL_rvalid(axiLite_interconnect_C2_M00_AXI_RVALID),
        .C2_DDR4_S_AXI_CTRL_wdata(axiLite_interconnect_C2_M00_AXI_WDATA),
        .C2_DDR4_S_AXI_CTRL_wready(axiLite_interconnect_C2_M00_AXI_WREADY),
        .C2_DDR4_S_AXI_CTRL_wvalid(axiLite_interconnect_C2_M00_AXI_WVALID),
        .C2_DDR4_S_AXI_araddr(axi_interconnect_C2_M00_AXI_ARADDR),
        .C2_DDR4_S_AXI_arburst(axi_interconnect_C2_M00_AXI_ARBURST),
        .C2_DDR4_S_AXI_arcache(axi_interconnect_C2_M00_AXI_ARCACHE),
        .C2_DDR4_S_AXI_arid(axi_interconnect_C2_M00_AXI_ARID),
        .C2_DDR4_S_AXI_arlen(axi_interconnect_C2_M00_AXI_ARLEN),
        .C2_DDR4_S_AXI_arlock(axi_interconnect_C2_M00_AXI_ARLOCK),
        .C2_DDR4_S_AXI_arprot(axi_interconnect_C2_M00_AXI_ARPROT),
        .C2_DDR4_S_AXI_arqos(axi_interconnect_C2_M00_AXI_ARQOS),
        .C2_DDR4_S_AXI_arready(axi_interconnect_C2_M00_AXI_ARREADY),
        .C2_DDR4_S_AXI_arsize(axi_interconnect_C2_M00_AXI_ARSIZE),
        .C2_DDR4_S_AXI_arvalid(axi_interconnect_C2_M00_AXI_ARVALID),
        .C2_DDR4_S_AXI_awaddr(axi_interconnect_C2_M00_AXI_AWADDR),
        .C2_DDR4_S_AXI_awburst(axi_interconnect_C2_M00_AXI_AWBURST),
        .C2_DDR4_S_AXI_awcache(axi_interconnect_C2_M00_AXI_AWCACHE),
        .C2_DDR4_S_AXI_awid(axi_interconnect_C2_M00_AXI_AWID),
        .C2_DDR4_S_AXI_awlen(axi_interconnect_C2_M00_AXI_AWLEN),
        .C2_DDR4_S_AXI_awlock(axi_interconnect_C2_M00_AXI_AWLOCK),
        .C2_DDR4_S_AXI_awprot(axi_interconnect_C2_M00_AXI_AWPROT),
        .C2_DDR4_S_AXI_awqos(axi_interconnect_C2_M00_AXI_AWQOS),
        .C2_DDR4_S_AXI_awready(axi_interconnect_C2_M00_AXI_AWREADY),
        .C2_DDR4_S_AXI_awsize(axi_interconnect_C2_M00_AXI_AWSIZE),
        .C2_DDR4_S_AXI_awvalid(axi_interconnect_C2_M00_AXI_AWVALID),
        .C2_DDR4_S_AXI_bid(axi_interconnect_C2_M00_AXI_BID),
        .C2_DDR4_S_AXI_bready(axi_interconnect_C2_M00_AXI_BREADY),
        .C2_DDR4_S_AXI_bresp(axi_interconnect_C2_M00_AXI_BRESP),
        .C2_DDR4_S_AXI_bvalid(axi_interconnect_C2_M00_AXI_BVALID),
        .C2_DDR4_S_AXI_rdata(axi_interconnect_C2_M00_AXI_RDATA),
        .C2_DDR4_S_AXI_rid(axi_interconnect_C2_M00_AXI_RID),
        .C2_DDR4_S_AXI_rlast(axi_interconnect_C2_M00_AXI_RLAST),
        .C2_DDR4_S_AXI_rready(axi_interconnect_C2_M00_AXI_RREADY),
        .C2_DDR4_S_AXI_rresp(axi_interconnect_C2_M00_AXI_RRESP),
        .C2_DDR4_S_AXI_rvalid(axi_interconnect_C2_M00_AXI_RVALID),
        .C2_DDR4_S_AXI_wdata(axi_interconnect_C2_M00_AXI_WDATA),
        .C2_DDR4_S_AXI_wlast(axi_interconnect_C2_M00_AXI_WLAST),
        .C2_DDR4_S_AXI_wready(axi_interconnect_C2_M00_AXI_WREADY),
        .C2_DDR4_S_AXI_wstrb(axi_interconnect_C2_M00_AXI_WSTRB),
        .C2_DDR4_S_AXI_wvalid(axi_interconnect_C2_M00_AXI_WVALID),
        .C2_SYS_CLK_clk_n(C2_SYS_CLK_1_CLK_N),
        .C2_SYS_CLK_clk_p(C2_SYS_CLK_1_CLK_P),
        .C2_XSDB_S_AXIL_araddr(axiLite_interconnect_C2_M01_AXI_ARADDR),
        .C2_XSDB_S_AXIL_arprot(axiLite_interconnect_C2_M01_AXI_ARPROT),
        .C2_XSDB_S_AXIL_arready(axiLite_interconnect_C2_M01_AXI_ARREADY),
        .C2_XSDB_S_AXIL_arvalid(axiLite_interconnect_C2_M01_AXI_ARVALID),
        .C2_XSDB_S_AXIL_awaddr(axiLite_interconnect_C2_M01_AXI_AWADDR),
        .C2_XSDB_S_AXIL_awprot(axiLite_interconnect_C2_M01_AXI_AWPROT),
        .C2_XSDB_S_AXIL_awready(axiLite_interconnect_C2_M01_AXI_AWREADY),
        .C2_XSDB_S_AXIL_awvalid(axiLite_interconnect_C2_M01_AXI_AWVALID),
        .C2_XSDB_S_AXIL_bready(axiLite_interconnect_C2_M01_AXI_BREADY),
        .C2_XSDB_S_AXIL_bresp(axiLite_interconnect_C2_M01_AXI_BRESP),
        .C2_XSDB_S_AXIL_bvalid(axiLite_interconnect_C2_M01_AXI_BVALID),
        .C2_XSDB_S_AXIL_rdata(axiLite_interconnect_C2_M01_AXI_RDATA),
        .C2_XSDB_S_AXIL_rready(axiLite_interconnect_C2_M01_AXI_RREADY),
        .C2_XSDB_S_AXIL_rresp(axiLite_interconnect_C2_M01_AXI_RRESP),
        .C2_XSDB_S_AXIL_rvalid(axiLite_interconnect_C2_M01_AXI_RVALID),
        .C2_XSDB_S_AXIL_wdata(axiLite_interconnect_C2_M01_AXI_WDATA),
        .C2_XSDB_S_AXIL_wready(axiLite_interconnect_C2_M01_AXI_WREADY),
        .C2_XSDB_S_AXIL_wstrb(axiLite_interconnect_C2_M01_AXI_WSTRB),
        .C2_XSDB_S_AXIL_wvalid(axiLite_interconnect_C2_M01_AXI_WVALID),
        .C3_DDR4_S_AXI_CTRL_araddr(axiLite_interconnect_C3_M00_AXI_ARADDR),
        .C3_DDR4_S_AXI_CTRL_arready(axiLite_interconnect_C3_M00_AXI_ARREADY),
        .C3_DDR4_S_AXI_CTRL_arvalid(axiLite_interconnect_C3_M00_AXI_ARVALID),
        .C3_DDR4_S_AXI_CTRL_awaddr(axiLite_interconnect_C3_M00_AXI_AWADDR),
        .C3_DDR4_S_AXI_CTRL_awready(axiLite_interconnect_C3_M00_AXI_AWREADY),
        .C3_DDR4_S_AXI_CTRL_awvalid(axiLite_interconnect_C3_M00_AXI_AWVALID),
        .C3_DDR4_S_AXI_CTRL_bready(axiLite_interconnect_C3_M00_AXI_BREADY),
        .C3_DDR4_S_AXI_CTRL_bresp(axiLite_interconnect_C3_M00_AXI_BRESP),
        .C3_DDR4_S_AXI_CTRL_bvalid(axiLite_interconnect_C3_M00_AXI_BVALID),
        .C3_DDR4_S_AXI_CTRL_rdata(axiLite_interconnect_C3_M00_AXI_RDATA),
        .C3_DDR4_S_AXI_CTRL_rready(axiLite_interconnect_C3_M00_AXI_RREADY),
        .C3_DDR4_S_AXI_CTRL_rresp(axiLite_interconnect_C3_M00_AXI_RRESP),
        .C3_DDR4_S_AXI_CTRL_rvalid(axiLite_interconnect_C3_M00_AXI_RVALID),
        .C3_DDR4_S_AXI_CTRL_wdata(axiLite_interconnect_C3_M00_AXI_WDATA),
        .C3_DDR4_S_AXI_CTRL_wready(axiLite_interconnect_C3_M00_AXI_WREADY),
        .C3_DDR4_S_AXI_CTRL_wvalid(axiLite_interconnect_C3_M00_AXI_WVALID),
        .C3_DDR4_S_AXI_araddr(axi_interconnect_C3_M00_AXI_ARADDR),
        .C3_DDR4_S_AXI_arburst(axi_interconnect_C3_M00_AXI_ARBURST),
        .C3_DDR4_S_AXI_arcache(axi_interconnect_C3_M00_AXI_ARCACHE),
        .C3_DDR4_S_AXI_arid(axi_interconnect_C3_M00_AXI_ARID),
        .C3_DDR4_S_AXI_arlen(axi_interconnect_C3_M00_AXI_ARLEN),
        .C3_DDR4_S_AXI_arlock(axi_interconnect_C3_M00_AXI_ARLOCK),
        .C3_DDR4_S_AXI_arprot(axi_interconnect_C3_M00_AXI_ARPROT),
        .C3_DDR4_S_AXI_arqos(axi_interconnect_C3_M00_AXI_ARQOS),
        .C3_DDR4_S_AXI_arready(axi_interconnect_C3_M00_AXI_ARREADY),
        .C3_DDR4_S_AXI_arsize(axi_interconnect_C3_M00_AXI_ARSIZE),
        .C3_DDR4_S_AXI_arvalid(axi_interconnect_C3_M00_AXI_ARVALID),
        .C3_DDR4_S_AXI_awaddr(axi_interconnect_C3_M00_AXI_AWADDR),
        .C3_DDR4_S_AXI_awburst(axi_interconnect_C3_M00_AXI_AWBURST),
        .C3_DDR4_S_AXI_awcache(axi_interconnect_C3_M00_AXI_AWCACHE),
        .C3_DDR4_S_AXI_awid(axi_interconnect_C3_M00_AXI_AWID),
        .C3_DDR4_S_AXI_awlen(axi_interconnect_C3_M00_AXI_AWLEN),
        .C3_DDR4_S_AXI_awlock(axi_interconnect_C3_M00_AXI_AWLOCK),
        .C3_DDR4_S_AXI_awprot(axi_interconnect_C3_M00_AXI_AWPROT),
        .C3_DDR4_S_AXI_awqos(axi_interconnect_C3_M00_AXI_AWQOS),
        .C3_DDR4_S_AXI_awready(axi_interconnect_C3_M00_AXI_AWREADY),
        .C3_DDR4_S_AXI_awsize(axi_interconnect_C3_M00_AXI_AWSIZE),
        .C3_DDR4_S_AXI_awvalid(axi_interconnect_C3_M00_AXI_AWVALID),
        .C3_DDR4_S_AXI_bid(axi_interconnect_C3_M00_AXI_BID),
        .C3_DDR4_S_AXI_bready(axi_interconnect_C3_M00_AXI_BREADY),
        .C3_DDR4_S_AXI_bresp(axi_interconnect_C3_M00_AXI_BRESP),
        .C3_DDR4_S_AXI_bvalid(axi_interconnect_C3_M00_AXI_BVALID),
        .C3_DDR4_S_AXI_rdata(axi_interconnect_C3_M00_AXI_RDATA),
        .C3_DDR4_S_AXI_rid(axi_interconnect_C3_M00_AXI_RID),
        .C3_DDR4_S_AXI_rlast(axi_interconnect_C3_M00_AXI_RLAST),
        .C3_DDR4_S_AXI_rready(axi_interconnect_C3_M00_AXI_RREADY),
        .C3_DDR4_S_AXI_rresp(axi_interconnect_C3_M00_AXI_RRESP),
        .C3_DDR4_S_AXI_rvalid(axi_interconnect_C3_M00_AXI_RVALID),
        .C3_DDR4_S_AXI_wdata(axi_interconnect_C3_M00_AXI_WDATA),
        .C3_DDR4_S_AXI_wlast(axi_interconnect_C3_M00_AXI_WLAST),
        .C3_DDR4_S_AXI_wready(axi_interconnect_C3_M00_AXI_WREADY),
        .C3_DDR4_S_AXI_wstrb(axi_interconnect_C3_M00_AXI_WSTRB),
        .C3_DDR4_S_AXI_wvalid(axi_interconnect_C3_M00_AXI_WVALID),
        .C3_SYS_CLK_clk_n(C3_SYS_CLK_1_CLK_N),
        .C3_SYS_CLK_clk_p(C3_SYS_CLK_1_CLK_P),
        .C3_XSDB_S_AXIL_araddr(C3_XSDB_S_AXIL_1_ARADDR),
        .C3_XSDB_S_AXIL_arprot(C3_XSDB_S_AXIL_1_ARPROT),
        .C3_XSDB_S_AXIL_arready(C3_XSDB_S_AXIL_1_ARREADY),
        .C3_XSDB_S_AXIL_arvalid(C3_XSDB_S_AXIL_1_ARVALID),
        .C3_XSDB_S_AXIL_awaddr(C3_XSDB_S_AXIL_1_AWADDR),
        .C3_XSDB_S_AXIL_awprot(C3_XSDB_S_AXIL_1_AWPROT),
        .C3_XSDB_S_AXIL_awready(C3_XSDB_S_AXIL_1_AWREADY),
        .C3_XSDB_S_AXIL_awvalid(C3_XSDB_S_AXIL_1_AWVALID),
        .C3_XSDB_S_AXIL_bready(C3_XSDB_S_AXIL_1_BREADY),
        .C3_XSDB_S_AXIL_bresp(C3_XSDB_S_AXIL_1_BRESP),
        .C3_XSDB_S_AXIL_bvalid(C3_XSDB_S_AXIL_1_BVALID),
        .C3_XSDB_S_AXIL_rdata(C3_XSDB_S_AXIL_1_RDATA),
        .C3_XSDB_S_AXIL_rready(C3_XSDB_S_AXIL_1_RREADY),
        .C3_XSDB_S_AXIL_rresp(C3_XSDB_S_AXIL_1_RRESP),
        .C3_XSDB_S_AXIL_rvalid(C3_XSDB_S_AXIL_1_RVALID),
        .C3_XSDB_S_AXIL_wdata(C3_XSDB_S_AXIL_1_WDATA),
        .C3_XSDB_S_AXIL_wready(C3_XSDB_S_AXIL_1_WREADY),
        .C3_XSDB_S_AXIL_wstrb(C3_XSDB_S_AXIL_1_WSTRB),
        .C3_XSDB_S_AXIL_wvalid(C3_XSDB_S_AXIL_1_WVALID),
        .c0_ddr4_act_n(DDR_SUB_SYS1_c0_ddr4_ACT_N),
        .c0_ddr4_adr(DDR_SUB_SYS1_c0_ddr4_ADR),
        .c0_ddr4_app_mem_init_skip(c0_ddr4_app_mem_init_skip_0_1),
        .c0_ddr4_app_restore_complete(c0_ddr4_app_restore_complete_0_1),
        .c0_ddr4_app_sref_ack(DDR_SUB_SYS_c0_ddr4_app_sref_ack),
        .c0_ddr4_app_sref_req(c0_ddr4_app_sref_req_0_1),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select_0_1),
        .c0_ddr4_ba(DDR_SUB_SYS1_c0_ddr4_BA),
        .c0_ddr4_bg(DDR_SUB_SYS1_c0_ddr4_BG),
        .c0_ddr4_ck_c(DDR_SUB_SYS1_c0_ddr4_CK_C),
        .c0_ddr4_ck_t(DDR_SUB_SYS1_c0_ddr4_CK_T),
        .c0_ddr4_cke(DDR_SUB_SYS1_c0_ddr4_CKE),
        .c0_ddr4_cs_n(DDR_SUB_SYS1_c0_ddr4_CS_N),
        .c0_ddr4_dq(c0_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(DDR_SUB_SYS1_c0_ddr4_ODT),
        .c0_ddr4_par(DDR_SUB_SYS1_c0_ddr4_PAR),
        .c0_ddr4_reset_n(DDR_SUB_SYS1_c0_ddr4_RESET_N),
        .c0_ddr4_ui_clk(M00_ACLK_1),
        .c0_init_calib_complete(DDR_SUB_SYS1_c0_init_calib_complete),
        .c0_peripheral_aresetn(M00_ARESETN_1),
        .c2_ddr4_act_n(DDR_SUB_SYS1_c2_ddr4_ACT_N),
        .c2_ddr4_adr(DDR_SUB_SYS1_c2_ddr4_ADR),
        .c2_ddr4_app_mem_init_skip(c2_ddr4_app_mem_init_skip_0_1),
        .c2_ddr4_app_restore_complete(c2_ddr4_app_restore_complete_0_1),
        .c2_ddr4_app_sref_ack(DDR_SUB_SYS_c2_ddr4_app_sref_ack),
        .c2_ddr4_app_sref_req(c2_ddr4_app_sref_req_0_1),
        .c2_ddr4_app_xsdb_select(c2_ddr4_app_xsdb_select_0_1),
        .c2_ddr4_ba(DDR_SUB_SYS1_c2_ddr4_BA),
        .c2_ddr4_bg(DDR_SUB_SYS1_c2_ddr4_BG),
        .c2_ddr4_ck_c(DDR_SUB_SYS1_c2_ddr4_CK_C),
        .c2_ddr4_ck_t(DDR_SUB_SYS1_c2_ddr4_CK_T),
        .c2_ddr4_cke(DDR_SUB_SYS1_c2_ddr4_CKE),
        .c2_ddr4_cs_n(DDR_SUB_SYS1_c2_ddr4_CS_N),
        .c2_ddr4_dq(c2_ddr4_dq[71:0]),
        .c2_ddr4_dqs_c(c2_ddr4_dqs_c[17:0]),
        .c2_ddr4_dqs_t(c2_ddr4_dqs_t[17:0]),
        .c2_ddr4_odt(DDR_SUB_SYS1_c2_ddr4_ODT),
        .c2_ddr4_par(DDR_SUB_SYS1_c2_ddr4_PAR),
        .c2_ddr4_reset_n(DDR_SUB_SYS1_c2_ddr4_RESET_N),
        .c2_ddr4_ui_clk(M00_ACLK_2),
        .c2_init_calib_complete(DDR_SUB_SYS1_c2_init_calib_complete),
        .c2_peripheral_aresetn(M00_ARESETN_3),
        .c3_ddr4_act_n(DDR_SUB_SYS1_c3_ddr4_ACT_N),
        .c3_ddr4_adr(DDR_SUB_SYS1_c3_ddr4_ADR),
        .c3_ddr4_app_mem_init_skip(c3_ddr4_app_mem_init_skip_0_1),
        .c3_ddr4_app_restore_complete(c3_ddr4_app_restore_complete_0_1),
        .c3_ddr4_app_sref_ack(DDR_SUB_SYS_c3_ddr4_app_sref_ack),
        .c3_ddr4_app_sref_req(c3_ddr4_app_sref_req_0_1),
        .c3_ddr4_app_xsdb_select(c3_ddr4_app_xsdb_select_0_1),
        .c3_ddr4_ba(DDR_SUB_SYS1_c3_ddr4_BA),
        .c3_ddr4_bg(DDR_SUB_SYS1_c3_ddr4_BG),
        .c3_ddr4_ck_c(DDR_SUB_SYS1_c3_ddr4_CK_C),
        .c3_ddr4_ck_t(DDR_SUB_SYS1_c3_ddr4_CK_T),
        .c3_ddr4_cke(DDR_SUB_SYS1_c3_ddr4_CKE),
        .c3_ddr4_cs_n(DDR_SUB_SYS1_c3_ddr4_CS_N),
        .c3_ddr4_dq(c3_ddr4_dq[71:0]),
        .c3_ddr4_dqs_c(c3_ddr4_dqs_c[17:0]),
        .c3_ddr4_dqs_t(c3_ddr4_dqs_t[17:0]),
        .c3_ddr4_odt(DDR_SUB_SYS1_c3_ddr4_ODT),
        .c3_ddr4_par(DDR_SUB_SYS1_c3_ddr4_PAR),
        .c3_ddr4_reset_n(DDR_SUB_SYS1_c3_ddr4_RESET_N),
        .c3_ddr4_ui_clk(DDR_SUB_SYS1_c3_ddr4_ui_clk),
        .c3_init_calib_complete(DDR_SUB_SYS1_c3_init_calib_complete),
        .c3_peripheral_aresetn(M00_ARESETN_2),
        .sys_rst_ddr_0(sys_rst_ddr_0_1),
        .sys_rst_ddr_2(sys_rst_ddr_2_1),
        .sys_rst_ddr_3(sys_rst_ddr_3_1));
  dynamic_region_ddr4_axi_interconnect_0_2 axiLite_interconnect_C0
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(C0_DDR4_S_AXI_CTRL_1_ARADDR),
        .M00_AXI_arready(C0_DDR4_S_AXI_CTRL_1_ARREADY),
        .M00_AXI_arvalid(C0_DDR4_S_AXI_CTRL_1_ARVALID),
        .M00_AXI_awaddr(C0_DDR4_S_AXI_CTRL_1_AWADDR),
        .M00_AXI_awready(C0_DDR4_S_AXI_CTRL_1_AWREADY),
        .M00_AXI_awvalid(C0_DDR4_S_AXI_CTRL_1_AWVALID),
        .M00_AXI_bready(C0_DDR4_S_AXI_CTRL_1_BREADY),
        .M00_AXI_bresp(C0_DDR4_S_AXI_CTRL_1_BRESP),
        .M00_AXI_bvalid(C0_DDR4_S_AXI_CTRL_1_BVALID),
        .M00_AXI_rdata(C0_DDR4_S_AXI_CTRL_1_RDATA),
        .M00_AXI_rready(C0_DDR4_S_AXI_CTRL_1_RREADY),
        .M00_AXI_rresp(C0_DDR4_S_AXI_CTRL_1_RRESP),
        .M00_AXI_rvalid(C0_DDR4_S_AXI_CTRL_1_RVALID),
        .M00_AXI_wdata(C0_DDR4_S_AXI_CTRL_1_WDATA),
        .M00_AXI_wready(C0_DDR4_S_AXI_CTRL_1_WREADY),
        .M00_AXI_wvalid(C0_DDR4_S_AXI_CTRL_1_WVALID),
        .M01_ACLK(M00_ACLK_1),
        .M01_ARESETN(M00_ARESETN_1),
        .M01_AXI_araddr(axiLite_interconnect_C0_M01_AXI_ARADDR),
        .M01_AXI_arprot(axiLite_interconnect_C0_M01_AXI_ARPROT),
        .M01_AXI_arready(axiLite_interconnect_C0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axiLite_interconnect_C0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axiLite_interconnect_C0_M01_AXI_AWADDR),
        .M01_AXI_awprot(axiLite_interconnect_C0_M01_AXI_AWPROT),
        .M01_AXI_awready(axiLite_interconnect_C0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axiLite_interconnect_C0_M01_AXI_AWVALID),
        .M01_AXI_bready(axiLite_interconnect_C0_M01_AXI_BREADY),
        .M01_AXI_bresp(axiLite_interconnect_C0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axiLite_interconnect_C0_M01_AXI_BVALID),
        .M01_AXI_rdata(axiLite_interconnect_C0_M01_AXI_RDATA),
        .M01_AXI_rready(axiLite_interconnect_C0_M01_AXI_RREADY),
        .M01_AXI_rresp(axiLite_interconnect_C0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axiLite_interconnect_C0_M01_AXI_RVALID),
        .M01_AXI_wdata(axiLite_interconnect_C0_M01_AXI_WDATA),
        .M01_AXI_wready(axiLite_interconnect_C0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axiLite_interconnect_C0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axiLite_interconnect_C0_M01_AXI_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .S00_AXI_araddr(MIG0_DDR4_S_AXI_CTRL_1_ARADDR),
        .S00_AXI_arprot(MIG0_DDR4_S_AXI_CTRL_1_ARPROT),
        .S00_AXI_arready(MIG0_DDR4_S_AXI_CTRL_1_ARREADY),
        .S00_AXI_arvalid(MIG0_DDR4_S_AXI_CTRL_1_ARVALID),
        .S00_AXI_awaddr(MIG0_DDR4_S_AXI_CTRL_1_AWADDR),
        .S00_AXI_awprot(MIG0_DDR4_S_AXI_CTRL_1_AWPROT),
        .S00_AXI_awready(MIG0_DDR4_S_AXI_CTRL_1_AWREADY),
        .S00_AXI_awvalid(MIG0_DDR4_S_AXI_CTRL_1_AWVALID),
        .S00_AXI_bready(MIG0_DDR4_S_AXI_CTRL_1_BREADY),
        .S00_AXI_bresp(MIG0_DDR4_S_AXI_CTRL_1_BRESP),
        .S00_AXI_bvalid(MIG0_DDR4_S_AXI_CTRL_1_BVALID),
        .S00_AXI_rdata(MIG0_DDR4_S_AXI_CTRL_1_RDATA),
        .S00_AXI_rready(MIG0_DDR4_S_AXI_CTRL_1_RREADY),
        .S00_AXI_rresp(MIG0_DDR4_S_AXI_CTRL_1_RRESP),
        .S00_AXI_rvalid(MIG0_DDR4_S_AXI_CTRL_1_RVALID),
        .S00_AXI_wdata(MIG0_DDR4_S_AXI_CTRL_1_WDATA),
        .S00_AXI_wready(MIG0_DDR4_S_AXI_CTRL_1_WREADY),
        .S00_AXI_wstrb(MIG0_DDR4_S_AXI_CTRL_1_WSTRB),
        .S00_AXI_wvalid(MIG0_DDR4_S_AXI_CTRL_1_WVALID));
  dynamic_region_ddr4_axiLite_interconnect_C1_0 axiLite_interconnect_C2
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .M00_ACLK(M00_ACLK_2),
        .M00_ARESETN(M00_ARESETN_3),
        .M00_AXI_araddr(axiLite_interconnect_C2_M00_AXI_ARADDR),
        .M00_AXI_arready(axiLite_interconnect_C2_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axiLite_interconnect_C2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axiLite_interconnect_C2_M00_AXI_AWADDR),
        .M00_AXI_awready(axiLite_interconnect_C2_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axiLite_interconnect_C2_M00_AXI_AWVALID),
        .M00_AXI_bready(axiLite_interconnect_C2_M00_AXI_BREADY),
        .M00_AXI_bresp(axiLite_interconnect_C2_M00_AXI_BRESP),
        .M00_AXI_bvalid(axiLite_interconnect_C2_M00_AXI_BVALID),
        .M00_AXI_rdata(axiLite_interconnect_C2_M00_AXI_RDATA),
        .M00_AXI_rready(axiLite_interconnect_C2_M00_AXI_RREADY),
        .M00_AXI_rresp(axiLite_interconnect_C2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axiLite_interconnect_C2_M00_AXI_RVALID),
        .M00_AXI_wdata(axiLite_interconnect_C2_M00_AXI_WDATA),
        .M00_AXI_wready(axiLite_interconnect_C2_M00_AXI_WREADY),
        .M00_AXI_wvalid(axiLite_interconnect_C2_M00_AXI_WVALID),
        .M01_ACLK(M00_ACLK_2),
        .M01_ARESETN(M00_ARESETN_3),
        .M01_AXI_araddr(axiLite_interconnect_C2_M01_AXI_ARADDR),
        .M01_AXI_arprot(axiLite_interconnect_C2_M01_AXI_ARPROT),
        .M01_AXI_arready(axiLite_interconnect_C2_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axiLite_interconnect_C2_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axiLite_interconnect_C2_M01_AXI_AWADDR),
        .M01_AXI_awprot(axiLite_interconnect_C2_M01_AXI_AWPROT),
        .M01_AXI_awready(axiLite_interconnect_C2_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axiLite_interconnect_C2_M01_AXI_AWVALID),
        .M01_AXI_bready(axiLite_interconnect_C2_M01_AXI_BREADY),
        .M01_AXI_bresp(axiLite_interconnect_C2_M01_AXI_BRESP),
        .M01_AXI_bvalid(axiLite_interconnect_C2_M01_AXI_BVALID),
        .M01_AXI_rdata(axiLite_interconnect_C2_M01_AXI_RDATA),
        .M01_AXI_rready(axiLite_interconnect_C2_M01_AXI_RREADY),
        .M01_AXI_rresp(axiLite_interconnect_C2_M01_AXI_RRESP),
        .M01_AXI_rvalid(axiLite_interconnect_C2_M01_AXI_RVALID),
        .M01_AXI_wdata(axiLite_interconnect_C2_M01_AXI_WDATA),
        .M01_AXI_wready(axiLite_interconnect_C2_M01_AXI_WREADY),
        .M01_AXI_wstrb(axiLite_interconnect_C2_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axiLite_interconnect_C2_M01_AXI_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .S00_AXI_araddr(MIG2_DDR4_S_AXI_CTRL_1_ARADDR),
        .S00_AXI_arprot(MIG2_DDR4_S_AXI_CTRL_1_ARPROT),
        .S00_AXI_arready(MIG2_DDR4_S_AXI_CTRL_1_ARREADY),
        .S00_AXI_arvalid(MIG2_DDR4_S_AXI_CTRL_1_ARVALID),
        .S00_AXI_awaddr(MIG2_DDR4_S_AXI_CTRL_1_AWADDR),
        .S00_AXI_awprot(MIG2_DDR4_S_AXI_CTRL_1_AWPROT),
        .S00_AXI_awready(MIG2_DDR4_S_AXI_CTRL_1_AWREADY),
        .S00_AXI_awvalid(MIG2_DDR4_S_AXI_CTRL_1_AWVALID),
        .S00_AXI_bready(MIG2_DDR4_S_AXI_CTRL_1_BREADY),
        .S00_AXI_bresp(MIG2_DDR4_S_AXI_CTRL_1_BRESP),
        .S00_AXI_bvalid(MIG2_DDR4_S_AXI_CTRL_1_BVALID),
        .S00_AXI_rdata(MIG2_DDR4_S_AXI_CTRL_1_RDATA),
        .S00_AXI_rready(MIG2_DDR4_S_AXI_CTRL_1_RREADY),
        .S00_AXI_rresp(MIG2_DDR4_S_AXI_CTRL_1_RRESP),
        .S00_AXI_rvalid(MIG2_DDR4_S_AXI_CTRL_1_RVALID),
        .S00_AXI_wdata(MIG2_DDR4_S_AXI_CTRL_1_WDATA),
        .S00_AXI_wready(MIG2_DDR4_S_AXI_CTRL_1_WREADY),
        .S00_AXI_wstrb(MIG2_DDR4_S_AXI_CTRL_1_WSTRB),
        .S00_AXI_wvalid(MIG2_DDR4_S_AXI_CTRL_1_WVALID));
  dynamic_region_ddr4_axiLite_interconnect_C0_0 axiLite_interconnect_C3
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .M00_ACLK(DDR_SUB_SYS1_c3_ddr4_ui_clk),
        .M00_ARESETN(M00_ARESETN_2),
        .M00_AXI_araddr(axiLite_interconnect_C3_M00_AXI_ARADDR),
        .M00_AXI_arready(axiLite_interconnect_C3_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axiLite_interconnect_C3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axiLite_interconnect_C3_M00_AXI_AWADDR),
        .M00_AXI_awready(axiLite_interconnect_C3_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axiLite_interconnect_C3_M00_AXI_AWVALID),
        .M00_AXI_bready(axiLite_interconnect_C3_M00_AXI_BREADY),
        .M00_AXI_bresp(axiLite_interconnect_C3_M00_AXI_BRESP),
        .M00_AXI_bvalid(axiLite_interconnect_C3_M00_AXI_BVALID),
        .M00_AXI_rdata(axiLite_interconnect_C3_M00_AXI_RDATA),
        .M00_AXI_rready(axiLite_interconnect_C3_M00_AXI_RREADY),
        .M00_AXI_rresp(axiLite_interconnect_C3_M00_AXI_RRESP),
        .M00_AXI_rvalid(axiLite_interconnect_C3_M00_AXI_RVALID),
        .M00_AXI_wdata(axiLite_interconnect_C3_M00_AXI_WDATA),
        .M00_AXI_wready(axiLite_interconnect_C3_M00_AXI_WREADY),
        .M00_AXI_wvalid(axiLite_interconnect_C3_M00_AXI_WVALID),
        .M01_ACLK(DDR_SUB_SYS1_c3_ddr4_ui_clk),
        .M01_ARESETN(M00_ARESETN_2),
        .M01_AXI_araddr(C3_XSDB_S_AXIL_1_ARADDR),
        .M01_AXI_arprot(C3_XSDB_S_AXIL_1_ARPROT),
        .M01_AXI_arready(C3_XSDB_S_AXIL_1_ARREADY),
        .M01_AXI_arvalid(C3_XSDB_S_AXIL_1_ARVALID),
        .M01_AXI_awaddr(C3_XSDB_S_AXIL_1_AWADDR),
        .M01_AXI_awprot(C3_XSDB_S_AXIL_1_AWPROT),
        .M01_AXI_awready(C3_XSDB_S_AXIL_1_AWREADY),
        .M01_AXI_awvalid(C3_XSDB_S_AXIL_1_AWVALID),
        .M01_AXI_bready(C3_XSDB_S_AXIL_1_BREADY),
        .M01_AXI_bresp(C3_XSDB_S_AXIL_1_BRESP),
        .M01_AXI_bvalid(C3_XSDB_S_AXIL_1_BVALID),
        .M01_AXI_rdata(C3_XSDB_S_AXIL_1_RDATA),
        .M01_AXI_rready(C3_XSDB_S_AXIL_1_RREADY),
        .M01_AXI_rresp(C3_XSDB_S_AXIL_1_RRESP),
        .M01_AXI_rvalid(C3_XSDB_S_AXIL_1_RVALID),
        .M01_AXI_wdata(C3_XSDB_S_AXIL_1_WDATA),
        .M01_AXI_wready(C3_XSDB_S_AXIL_1_WREADY),
        .M01_AXI_wstrb(C3_XSDB_S_AXIL_1_WSTRB),
        .M01_AXI_wvalid(C3_XSDB_S_AXIL_1_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .S00_AXI_araddr(MIG3_DDR4_S_AXI_CTRL_1_ARADDR),
        .S00_AXI_arprot(MIG3_DDR4_S_AXI_CTRL_1_ARPROT),
        .S00_AXI_arready(MIG3_DDR4_S_AXI_CTRL_1_ARREADY),
        .S00_AXI_arvalid(MIG3_DDR4_S_AXI_CTRL_1_ARVALID),
        .S00_AXI_awaddr(MIG3_DDR4_S_AXI_CTRL_1_AWADDR),
        .S00_AXI_awprot(MIG3_DDR4_S_AXI_CTRL_1_AWPROT),
        .S00_AXI_awready(MIG3_DDR4_S_AXI_CTRL_1_AWREADY),
        .S00_AXI_awvalid(MIG3_DDR4_S_AXI_CTRL_1_AWVALID),
        .S00_AXI_bready(MIG3_DDR4_S_AXI_CTRL_1_BREADY),
        .S00_AXI_bresp(MIG3_DDR4_S_AXI_CTRL_1_BRESP),
        .S00_AXI_bvalid(MIG3_DDR4_S_AXI_CTRL_1_BVALID),
        .S00_AXI_rdata(MIG3_DDR4_S_AXI_CTRL_1_RDATA),
        .S00_AXI_rready(MIG3_DDR4_S_AXI_CTRL_1_RREADY),
        .S00_AXI_rresp(MIG3_DDR4_S_AXI_CTRL_1_RRESP),
        .S00_AXI_rvalid(MIG3_DDR4_S_AXI_CTRL_1_RVALID),
        .S00_AXI_wdata(MIG3_DDR4_S_AXI_CTRL_1_WDATA),
        .S00_AXI_wready(MIG3_DDR4_S_AXI_CTRL_1_WREADY),
        .S00_AXI_wstrb(MIG3_DDR4_S_AXI_CTRL_1_WSTRB),
        .S00_AXI_wvalid(MIG3_DDR4_S_AXI_CTRL_1_WVALID));
  dynamic_region_ddr4_axi_interconnect_0_0 axi_interconnect_C0
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .S00_AXI_araddr(S_AXI_MM_MIG0_1_ARADDR),
        .S00_AXI_arburst(S_AXI_MM_MIG0_1_ARBURST),
        .S00_AXI_arcache(S_AXI_MM_MIG0_1_ARCACHE),
        .S00_AXI_arid(S_AXI_MM_MIG0_1_ARID),
        .S00_AXI_arlen(S_AXI_MM_MIG0_1_ARLEN),
        .S00_AXI_arlock(S_AXI_MM_MIG0_1_ARLOCK),
        .S00_AXI_arprot(S_AXI_MM_MIG0_1_ARPROT),
        .S00_AXI_arqos(S_AXI_MM_MIG0_1_ARQOS),
        .S00_AXI_arready(S_AXI_MM_MIG0_1_ARREADY),
        .S00_AXI_arregion(S_AXI_MM_MIG0_1_ARREGION),
        .S00_AXI_arsize(S_AXI_MM_MIG0_1_ARSIZE),
        .S00_AXI_arvalid(S_AXI_MM_MIG0_1_ARVALID),
        .S00_AXI_awaddr(S_AXI_MM_MIG0_1_AWADDR),
        .S00_AXI_awburst(S_AXI_MM_MIG0_1_AWBURST),
        .S00_AXI_awcache(S_AXI_MM_MIG0_1_AWCACHE),
        .S00_AXI_awid(S_AXI_MM_MIG0_1_AWID),
        .S00_AXI_awlen(S_AXI_MM_MIG0_1_AWLEN),
        .S00_AXI_awlock(S_AXI_MM_MIG0_1_AWLOCK),
        .S00_AXI_awprot(S_AXI_MM_MIG0_1_AWPROT),
        .S00_AXI_awqos(S_AXI_MM_MIG0_1_AWQOS),
        .S00_AXI_awready(S_AXI_MM_MIG0_1_AWREADY),
        .S00_AXI_awregion(S_AXI_MM_MIG0_1_AWREGION),
        .S00_AXI_awsize(S_AXI_MM_MIG0_1_AWSIZE),
        .S00_AXI_awvalid(S_AXI_MM_MIG0_1_AWVALID),
        .S00_AXI_bid(S_AXI_MM_MIG0_1_BID),
        .S00_AXI_bready(S_AXI_MM_MIG0_1_BREADY),
        .S00_AXI_bresp(S_AXI_MM_MIG0_1_BRESP),
        .S00_AXI_bvalid(S_AXI_MM_MIG0_1_BVALID),
        .S00_AXI_rdata(S_AXI_MM_MIG0_1_RDATA),
        .S00_AXI_rid(S_AXI_MM_MIG0_1_RID),
        .S00_AXI_rlast(S_AXI_MM_MIG0_1_RLAST),
        .S00_AXI_rready(S_AXI_MM_MIG0_1_RREADY),
        .S00_AXI_rresp(S_AXI_MM_MIG0_1_RRESP),
        .S00_AXI_rvalid(S_AXI_MM_MIG0_1_RVALID),
        .S00_AXI_wdata(S_AXI_MM_MIG0_1_WDATA),
        .S00_AXI_wlast(S_AXI_MM_MIG0_1_WLAST),
        .S00_AXI_wready(S_AXI_MM_MIG0_1_WREADY),
        .S00_AXI_wstrb(S_AXI_MM_MIG0_1_WSTRB),
        .S00_AXI_wvalid(S_AXI_MM_MIG0_1_WVALID));
  dynamic_region_ddr4_axi_interconnect_1_0 axi_interconnect_C2
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .M00_ACLK(M00_ACLK_2),
        .M00_ARESETN(M00_ARESETN_3),
        .M00_AXI_araddr(axi_interconnect_C2_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_C2_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_C2_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_C2_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_C2_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_C2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_C2_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_C2_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_C2_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_C2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_C2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_C2_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_C2_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_C2_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_C2_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_C2_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_C2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_C2_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_C2_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_C2_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_C2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_C2_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_C2_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_C2_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_C2_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_C2_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_C2_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_C2_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_C2_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_C2_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_C2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_C2_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_C2_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_C2_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_C2_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_C2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_C2_M00_AXI_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .S00_AXI_araddr(S_AXI_MM_MIG2_1_ARADDR),
        .S00_AXI_arburst(S_AXI_MM_MIG2_1_ARBURST),
        .S00_AXI_arcache(S_AXI_MM_MIG2_1_ARCACHE),
        .S00_AXI_arid(S_AXI_MM_MIG2_1_ARID),
        .S00_AXI_arlen(S_AXI_MM_MIG2_1_ARLEN),
        .S00_AXI_arlock(S_AXI_MM_MIG2_1_ARLOCK),
        .S00_AXI_arprot(S_AXI_MM_MIG2_1_ARPROT),
        .S00_AXI_arqos(S_AXI_MM_MIG2_1_ARQOS),
        .S00_AXI_arready(S_AXI_MM_MIG2_1_ARREADY),
        .S00_AXI_arregion(S_AXI_MM_MIG2_1_ARREGION),
        .S00_AXI_arsize(S_AXI_MM_MIG2_1_ARSIZE),
        .S00_AXI_arvalid(S_AXI_MM_MIG2_1_ARVALID),
        .S00_AXI_awaddr(S_AXI_MM_MIG2_1_AWADDR),
        .S00_AXI_awburst(S_AXI_MM_MIG2_1_AWBURST),
        .S00_AXI_awcache(S_AXI_MM_MIG2_1_AWCACHE),
        .S00_AXI_awid(S_AXI_MM_MIG2_1_AWID),
        .S00_AXI_awlen(S_AXI_MM_MIG2_1_AWLEN),
        .S00_AXI_awlock(S_AXI_MM_MIG2_1_AWLOCK),
        .S00_AXI_awprot(S_AXI_MM_MIG2_1_AWPROT),
        .S00_AXI_awqos(S_AXI_MM_MIG2_1_AWQOS),
        .S00_AXI_awready(S_AXI_MM_MIG2_1_AWREADY),
        .S00_AXI_awregion(S_AXI_MM_MIG2_1_AWREGION),
        .S00_AXI_awsize(S_AXI_MM_MIG2_1_AWSIZE),
        .S00_AXI_awvalid(S_AXI_MM_MIG2_1_AWVALID),
        .S00_AXI_bid(S_AXI_MM_MIG2_1_BID),
        .S00_AXI_bready(S_AXI_MM_MIG2_1_BREADY),
        .S00_AXI_bresp(S_AXI_MM_MIG2_1_BRESP),
        .S00_AXI_bvalid(S_AXI_MM_MIG2_1_BVALID),
        .S00_AXI_rdata(S_AXI_MM_MIG2_1_RDATA),
        .S00_AXI_rid(S_AXI_MM_MIG2_1_RID),
        .S00_AXI_rlast(S_AXI_MM_MIG2_1_RLAST),
        .S00_AXI_rready(S_AXI_MM_MIG2_1_RREADY),
        .S00_AXI_rresp(S_AXI_MM_MIG2_1_RRESP),
        .S00_AXI_rvalid(S_AXI_MM_MIG2_1_RVALID),
        .S00_AXI_wdata(S_AXI_MM_MIG2_1_WDATA),
        .S00_AXI_wlast(S_AXI_MM_MIG2_1_WLAST),
        .S00_AXI_wready(S_AXI_MM_MIG2_1_WREADY),
        .S00_AXI_wstrb(S_AXI_MM_MIG2_1_WSTRB),
        .S00_AXI_wvalid(S_AXI_MM_MIG2_1_WVALID));
  dynamic_region_ddr4_axi_interconnect_0_1 axi_interconnect_C3
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .M00_ACLK(DDR_SUB_SYS1_c3_ddr4_ui_clk),
        .M00_ARESETN(M00_ARESETN_2),
        .M00_AXI_araddr(axi_interconnect_C3_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_C3_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_C3_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_C3_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_C3_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_C3_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_C3_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_C3_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_C3_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_C3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_C3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_C3_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_C3_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_C3_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_C3_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_C3_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_C3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_C3_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_C3_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_C3_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_C3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_C3_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_C3_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_C3_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_C3_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_C3_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_C3_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_C3_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_C3_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_C3_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_C3_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_C3_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_C3_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_C3_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_C3_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_C3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_C3_M00_AXI_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_axi4lite_peripheral_aresetn),
        .S00_AXI_araddr(S_AXI_MM_MIG3_1_ARADDR),
        .S00_AXI_arburst(S_AXI_MM_MIG3_1_ARBURST),
        .S00_AXI_arcache(S_AXI_MM_MIG3_1_ARCACHE),
        .S00_AXI_arid(S_AXI_MM_MIG3_1_ARID),
        .S00_AXI_arlen(S_AXI_MM_MIG3_1_ARLEN),
        .S00_AXI_arlock(S_AXI_MM_MIG3_1_ARLOCK),
        .S00_AXI_arprot(S_AXI_MM_MIG3_1_ARPROT),
        .S00_AXI_arqos(S_AXI_MM_MIG3_1_ARQOS),
        .S00_AXI_arready(S_AXI_MM_MIG3_1_ARREADY),
        .S00_AXI_arregion(S_AXI_MM_MIG3_1_ARREGION),
        .S00_AXI_arsize(S_AXI_MM_MIG3_1_ARSIZE),
        .S00_AXI_arvalid(S_AXI_MM_MIG3_1_ARVALID),
        .S00_AXI_awaddr(S_AXI_MM_MIG3_1_AWADDR),
        .S00_AXI_awburst(S_AXI_MM_MIG3_1_AWBURST),
        .S00_AXI_awcache(S_AXI_MM_MIG3_1_AWCACHE),
        .S00_AXI_awid(S_AXI_MM_MIG3_1_AWID),
        .S00_AXI_awlen(S_AXI_MM_MIG3_1_AWLEN),
        .S00_AXI_awlock(S_AXI_MM_MIG3_1_AWLOCK),
        .S00_AXI_awprot(S_AXI_MM_MIG3_1_AWPROT),
        .S00_AXI_awqos(S_AXI_MM_MIG3_1_AWQOS),
        .S00_AXI_awready(S_AXI_MM_MIG3_1_AWREADY),
        .S00_AXI_awregion(S_AXI_MM_MIG3_1_AWREGION),
        .S00_AXI_awsize(S_AXI_MM_MIG3_1_AWSIZE),
        .S00_AXI_awvalid(S_AXI_MM_MIG3_1_AWVALID),
        .S00_AXI_bid(S_AXI_MM_MIG3_1_BID),
        .S00_AXI_bready(S_AXI_MM_MIG3_1_BREADY),
        .S00_AXI_bresp(S_AXI_MM_MIG3_1_BRESP),
        .S00_AXI_bvalid(S_AXI_MM_MIG3_1_BVALID),
        .S00_AXI_rdata(S_AXI_MM_MIG3_1_RDATA),
        .S00_AXI_rid(S_AXI_MM_MIG3_1_RID),
        .S00_AXI_rlast(S_AXI_MM_MIG3_1_RLAST),
        .S00_AXI_rready(S_AXI_MM_MIG3_1_RREADY),
        .S00_AXI_rresp(S_AXI_MM_MIG3_1_RRESP),
        .S00_AXI_rvalid(S_AXI_MM_MIG3_1_RVALID),
        .S00_AXI_wdata(S_AXI_MM_MIG3_1_WDATA),
        .S00_AXI_wlast(S_AXI_MM_MIG3_1_WLAST),
        .S00_AXI_wready(S_AXI_MM_MIG3_1_WREADY),
        .S00_AXI_wstrb(S_AXI_MM_MIG3_1_WSTRB),
        .S00_AXI_wvalid(S_AXI_MM_MIG3_1_WVALID));
  dynamic_region_ddr4_proc_sys_reset_axi4lite_0 proc_sys_reset_axi4lite
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(AXI_RESET_N_2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_axi4lite_peripheral_aresetn),
        .slowest_sync_clk(CLK_IN_250_1));
endmodule

module dynamic_region_ddr4_axiLite_interconnect_C0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [17:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [17:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axiLite_interconnect_C3_ACLK_net;
  wire axiLite_interconnect_C3_ARESETN_net;
  wire [31:0]axiLite_interconnect_C3_to_s00_couplers_ARADDR;
  wire [2:0]axiLite_interconnect_C3_to_s00_couplers_ARPROT;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_ARREADY;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_ARVALID;
  wire [31:0]axiLite_interconnect_C3_to_s00_couplers_AWADDR;
  wire [2:0]axiLite_interconnect_C3_to_s00_couplers_AWPROT;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_AWREADY;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_AWVALID;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_BREADY;
  wire [1:0]axiLite_interconnect_C3_to_s00_couplers_BRESP;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_BVALID;
  wire [31:0]axiLite_interconnect_C3_to_s00_couplers_RDATA;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_RREADY;
  wire [1:0]axiLite_interconnect_C3_to_s00_couplers_RRESP;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_RVALID;
  wire [31:0]axiLite_interconnect_C3_to_s00_couplers_WDATA;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_WREADY;
  wire [3:0]axiLite_interconnect_C3_to_s00_couplers_WSTRB;
  wire [0:0]axiLite_interconnect_C3_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C3_ARADDR;
  wire m00_couplers_to_axiLite_interconnect_C3_ARREADY;
  wire m00_couplers_to_axiLite_interconnect_C3_ARVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C3_AWADDR;
  wire m00_couplers_to_axiLite_interconnect_C3_AWREADY;
  wire m00_couplers_to_axiLite_interconnect_C3_AWVALID;
  wire m00_couplers_to_axiLite_interconnect_C3_BREADY;
  wire [1:0]m00_couplers_to_axiLite_interconnect_C3_BRESP;
  wire m00_couplers_to_axiLite_interconnect_C3_BVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C3_RDATA;
  wire m00_couplers_to_axiLite_interconnect_C3_RREADY;
  wire [1:0]m00_couplers_to_axiLite_interconnect_C3_RRESP;
  wire m00_couplers_to_axiLite_interconnect_C3_RVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C3_WDATA;
  wire m00_couplers_to_axiLite_interconnect_C3_WREADY;
  wire m00_couplers_to_axiLite_interconnect_C3_WVALID;
  wire [17:0]m01_couplers_to_axiLite_interconnect_C3_ARADDR;
  wire [2:0]m01_couplers_to_axiLite_interconnect_C3_ARPROT;
  wire m01_couplers_to_axiLite_interconnect_C3_ARREADY;
  wire m01_couplers_to_axiLite_interconnect_C3_ARVALID;
  wire [17:0]m01_couplers_to_axiLite_interconnect_C3_AWADDR;
  wire [2:0]m01_couplers_to_axiLite_interconnect_C3_AWPROT;
  wire m01_couplers_to_axiLite_interconnect_C3_AWREADY;
  wire m01_couplers_to_axiLite_interconnect_C3_AWVALID;
  wire m01_couplers_to_axiLite_interconnect_C3_BREADY;
  wire [1:0]m01_couplers_to_axiLite_interconnect_C3_BRESP;
  wire m01_couplers_to_axiLite_interconnect_C3_BVALID;
  wire [31:0]m01_couplers_to_axiLite_interconnect_C3_RDATA;
  wire m01_couplers_to_axiLite_interconnect_C3_RREADY;
  wire [1:0]m01_couplers_to_axiLite_interconnect_C3_RRESP;
  wire m01_couplers_to_axiLite_interconnect_C3_RVALID;
  wire [31:0]m01_couplers_to_axiLite_interconnect_C3_WDATA;
  wire m01_couplers_to_axiLite_interconnect_C3_WREADY;
  wire [3:0]m01_couplers_to_axiLite_interconnect_C3_WSTRB;
  wire m01_couplers_to_axiLite_interconnect_C3_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axiLite_interconnect_C3_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axiLite_interconnect_C3_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axiLite_interconnect_C3_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axiLite_interconnect_C3_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axiLite_interconnect_C3_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axiLite_interconnect_C3_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axiLite_interconnect_C3_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axiLite_interconnect_C3_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[17:0] = m01_couplers_to_axiLite_interconnect_C3_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axiLite_interconnect_C3_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axiLite_interconnect_C3_ARVALID;
  assign M01_AXI_awaddr[17:0] = m01_couplers_to_axiLite_interconnect_C3_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axiLite_interconnect_C3_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axiLite_interconnect_C3_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axiLite_interconnect_C3_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axiLite_interconnect_C3_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axiLite_interconnect_C3_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axiLite_interconnect_C3_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axiLite_interconnect_C3_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axiLite_interconnect_C3_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axiLite_interconnect_C3_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axiLite_interconnect_C3_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axiLite_interconnect_C3_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axiLite_interconnect_C3_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axiLite_interconnect_C3_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axiLite_interconnect_C3_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axiLite_interconnect_C3_to_s00_couplers_WREADY;
  assign axiLite_interconnect_C3_ACLK_net = ACLK;
  assign axiLite_interconnect_C3_ARESETN_net = ARESETN;
  assign axiLite_interconnect_C3_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axiLite_interconnect_C3_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axiLite_interconnect_C3_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axiLite_interconnect_C3_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axiLite_interconnect_C3_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axiLite_interconnect_C3_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axiLite_interconnect_C3_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axiLite_interconnect_C3_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axiLite_interconnect_C3_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axiLite_interconnect_C3_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axiLite_interconnect_C3_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axiLite_interconnect_C3_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axiLite_interconnect_C3_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axiLite_interconnect_C3_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axiLite_interconnect_C3_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axiLite_interconnect_C3_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axiLite_interconnect_C3_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axiLite_interconnect_C3_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axiLite_interconnect_C3_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axiLite_interconnect_C3_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axiLite_interconnect_C3_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axiLite_interconnect_C3_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axiLite_interconnect_C3_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axiLite_interconnect_C3_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axiLite_interconnect_C3_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axiLite_interconnect_C3_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axiLite_interconnect_C3_WREADY = M01_AXI_wready;
  m00_couplers_imp_125L63M m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axiLite_interconnect_C3_ARADDR),
        .M_AXI_arready(m00_couplers_to_axiLite_interconnect_C3_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axiLite_interconnect_C3_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axiLite_interconnect_C3_AWADDR),
        .M_AXI_awready(m00_couplers_to_axiLite_interconnect_C3_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axiLite_interconnect_C3_AWVALID),
        .M_AXI_bready(m00_couplers_to_axiLite_interconnect_C3_BREADY),
        .M_AXI_bresp(m00_couplers_to_axiLite_interconnect_C3_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axiLite_interconnect_C3_BVALID),
        .M_AXI_rdata(m00_couplers_to_axiLite_interconnect_C3_RDATA),
        .M_AXI_rready(m00_couplers_to_axiLite_interconnect_C3_RREADY),
        .M_AXI_rresp(m00_couplers_to_axiLite_interconnect_C3_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axiLite_interconnect_C3_RVALID),
        .M_AXI_wdata(m00_couplers_to_axiLite_interconnect_C3_WDATA),
        .M_AXI_wready(m00_couplers_to_axiLite_interconnect_C3_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axiLite_interconnect_C3_WVALID),
        .S_ACLK(axiLite_interconnect_C3_ACLK_net),
        .S_ARESETN(axiLite_interconnect_C3_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1T2IVIE m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axiLite_interconnect_C3_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axiLite_interconnect_C3_ARPROT),
        .M_AXI_arready(m01_couplers_to_axiLite_interconnect_C3_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axiLite_interconnect_C3_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axiLite_interconnect_C3_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axiLite_interconnect_C3_AWPROT),
        .M_AXI_awready(m01_couplers_to_axiLite_interconnect_C3_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axiLite_interconnect_C3_AWVALID),
        .M_AXI_bready(m01_couplers_to_axiLite_interconnect_C3_BREADY),
        .M_AXI_bresp(m01_couplers_to_axiLite_interconnect_C3_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axiLite_interconnect_C3_BVALID),
        .M_AXI_rdata(m01_couplers_to_axiLite_interconnect_C3_RDATA),
        .M_AXI_rready(m01_couplers_to_axiLite_interconnect_C3_RREADY),
        .M_AXI_rresp(m01_couplers_to_axiLite_interconnect_C3_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axiLite_interconnect_C3_RVALID),
        .M_AXI_wdata(m01_couplers_to_axiLite_interconnect_C3_WDATA),
        .M_AXI_wready(m01_couplers_to_axiLite_interconnect_C3_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axiLite_interconnect_C3_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axiLite_interconnect_C3_WVALID),
        .S_ACLK(axiLite_interconnect_C3_ACLK_net),
        .S_ARESETN(axiLite_interconnect_C3_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_F53GBG s00_couplers
       (.M_ACLK(axiLite_interconnect_C3_ACLK_net),
        .M_ARESETN(axiLite_interconnect_C3_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axiLite_interconnect_C3_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axiLite_interconnect_C3_to_s00_couplers_ARPROT),
        .S_AXI_arready(axiLite_interconnect_C3_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axiLite_interconnect_C3_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axiLite_interconnect_C3_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axiLite_interconnect_C3_to_s00_couplers_AWPROT),
        .S_AXI_awready(axiLite_interconnect_C3_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axiLite_interconnect_C3_to_s00_couplers_AWVALID),
        .S_AXI_bready(axiLite_interconnect_C3_to_s00_couplers_BREADY),
        .S_AXI_bresp(axiLite_interconnect_C3_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axiLite_interconnect_C3_to_s00_couplers_BVALID),
        .S_AXI_rdata(axiLite_interconnect_C3_to_s00_couplers_RDATA),
        .S_AXI_rready(axiLite_interconnect_C3_to_s00_couplers_RREADY),
        .S_AXI_rresp(axiLite_interconnect_C3_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axiLite_interconnect_C3_to_s00_couplers_RVALID),
        .S_AXI_wdata(axiLite_interconnect_C3_to_s00_couplers_WDATA),
        .S_AXI_wready(axiLite_interconnect_C3_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axiLite_interconnect_C3_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axiLite_interconnect_C3_to_s00_couplers_WVALID));
  dynamic_region_ddr4_xbar_3 xbar
       (.aclk(axiLite_interconnect_C3_ACLK_net),
        .aresetn(axiLite_interconnect_C3_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module dynamic_region_ddr4_axiLite_interconnect_C1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [17:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [17:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axiLite_interconnect_C2_ACLK_net;
  wire axiLite_interconnect_C2_ARESETN_net;
  wire [31:0]axiLite_interconnect_C2_to_s00_couplers_ARADDR;
  wire [2:0]axiLite_interconnect_C2_to_s00_couplers_ARPROT;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_ARREADY;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_ARVALID;
  wire [31:0]axiLite_interconnect_C2_to_s00_couplers_AWADDR;
  wire [2:0]axiLite_interconnect_C2_to_s00_couplers_AWPROT;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_AWREADY;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_AWVALID;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_BREADY;
  wire [1:0]axiLite_interconnect_C2_to_s00_couplers_BRESP;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_BVALID;
  wire [31:0]axiLite_interconnect_C2_to_s00_couplers_RDATA;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_RREADY;
  wire [1:0]axiLite_interconnect_C2_to_s00_couplers_RRESP;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_RVALID;
  wire [31:0]axiLite_interconnect_C2_to_s00_couplers_WDATA;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_WREADY;
  wire [3:0]axiLite_interconnect_C2_to_s00_couplers_WSTRB;
  wire [0:0]axiLite_interconnect_C2_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C2_ARADDR;
  wire m00_couplers_to_axiLite_interconnect_C2_ARREADY;
  wire m00_couplers_to_axiLite_interconnect_C2_ARVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C2_AWADDR;
  wire m00_couplers_to_axiLite_interconnect_C2_AWREADY;
  wire m00_couplers_to_axiLite_interconnect_C2_AWVALID;
  wire m00_couplers_to_axiLite_interconnect_C2_BREADY;
  wire [1:0]m00_couplers_to_axiLite_interconnect_C2_BRESP;
  wire m00_couplers_to_axiLite_interconnect_C2_BVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C2_RDATA;
  wire m00_couplers_to_axiLite_interconnect_C2_RREADY;
  wire [1:0]m00_couplers_to_axiLite_interconnect_C2_RRESP;
  wire m00_couplers_to_axiLite_interconnect_C2_RVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C2_WDATA;
  wire m00_couplers_to_axiLite_interconnect_C2_WREADY;
  wire m00_couplers_to_axiLite_interconnect_C2_WVALID;
  wire [17:0]m01_couplers_to_axiLite_interconnect_C2_ARADDR;
  wire [2:0]m01_couplers_to_axiLite_interconnect_C2_ARPROT;
  wire m01_couplers_to_axiLite_interconnect_C2_ARREADY;
  wire m01_couplers_to_axiLite_interconnect_C2_ARVALID;
  wire [17:0]m01_couplers_to_axiLite_interconnect_C2_AWADDR;
  wire [2:0]m01_couplers_to_axiLite_interconnect_C2_AWPROT;
  wire m01_couplers_to_axiLite_interconnect_C2_AWREADY;
  wire m01_couplers_to_axiLite_interconnect_C2_AWVALID;
  wire m01_couplers_to_axiLite_interconnect_C2_BREADY;
  wire [1:0]m01_couplers_to_axiLite_interconnect_C2_BRESP;
  wire m01_couplers_to_axiLite_interconnect_C2_BVALID;
  wire [31:0]m01_couplers_to_axiLite_interconnect_C2_RDATA;
  wire m01_couplers_to_axiLite_interconnect_C2_RREADY;
  wire [1:0]m01_couplers_to_axiLite_interconnect_C2_RRESP;
  wire m01_couplers_to_axiLite_interconnect_C2_RVALID;
  wire [31:0]m01_couplers_to_axiLite_interconnect_C2_WDATA;
  wire m01_couplers_to_axiLite_interconnect_C2_WREADY;
  wire [3:0]m01_couplers_to_axiLite_interconnect_C2_WSTRB;
  wire m01_couplers_to_axiLite_interconnect_C2_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axiLite_interconnect_C2_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axiLite_interconnect_C2_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axiLite_interconnect_C2_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axiLite_interconnect_C2_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axiLite_interconnect_C2_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axiLite_interconnect_C2_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axiLite_interconnect_C2_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axiLite_interconnect_C2_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[17:0] = m01_couplers_to_axiLite_interconnect_C2_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axiLite_interconnect_C2_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axiLite_interconnect_C2_ARVALID;
  assign M01_AXI_awaddr[17:0] = m01_couplers_to_axiLite_interconnect_C2_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axiLite_interconnect_C2_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axiLite_interconnect_C2_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axiLite_interconnect_C2_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axiLite_interconnect_C2_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axiLite_interconnect_C2_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axiLite_interconnect_C2_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axiLite_interconnect_C2_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axiLite_interconnect_C2_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axiLite_interconnect_C2_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axiLite_interconnect_C2_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axiLite_interconnect_C2_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axiLite_interconnect_C2_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axiLite_interconnect_C2_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axiLite_interconnect_C2_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axiLite_interconnect_C2_to_s00_couplers_WREADY;
  assign axiLite_interconnect_C2_ACLK_net = ACLK;
  assign axiLite_interconnect_C2_ARESETN_net = ARESETN;
  assign axiLite_interconnect_C2_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axiLite_interconnect_C2_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axiLite_interconnect_C2_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axiLite_interconnect_C2_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axiLite_interconnect_C2_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axiLite_interconnect_C2_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axiLite_interconnect_C2_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axiLite_interconnect_C2_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axiLite_interconnect_C2_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axiLite_interconnect_C2_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axiLite_interconnect_C2_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axiLite_interconnect_C2_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axiLite_interconnect_C2_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axiLite_interconnect_C2_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axiLite_interconnect_C2_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axiLite_interconnect_C2_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axiLite_interconnect_C2_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axiLite_interconnect_C2_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axiLite_interconnect_C2_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axiLite_interconnect_C2_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axiLite_interconnect_C2_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axiLite_interconnect_C2_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axiLite_interconnect_C2_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axiLite_interconnect_C2_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axiLite_interconnect_C2_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axiLite_interconnect_C2_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axiLite_interconnect_C2_WREADY = M01_AXI_wready;
  m00_couplers_imp_1H49CK1 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axiLite_interconnect_C2_ARADDR),
        .M_AXI_arready(m00_couplers_to_axiLite_interconnect_C2_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axiLite_interconnect_C2_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axiLite_interconnect_C2_AWADDR),
        .M_AXI_awready(m00_couplers_to_axiLite_interconnect_C2_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axiLite_interconnect_C2_AWVALID),
        .M_AXI_bready(m00_couplers_to_axiLite_interconnect_C2_BREADY),
        .M_AXI_bresp(m00_couplers_to_axiLite_interconnect_C2_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axiLite_interconnect_C2_BVALID),
        .M_AXI_rdata(m00_couplers_to_axiLite_interconnect_C2_RDATA),
        .M_AXI_rready(m00_couplers_to_axiLite_interconnect_C2_RREADY),
        .M_AXI_rresp(m00_couplers_to_axiLite_interconnect_C2_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axiLite_interconnect_C2_RVALID),
        .M_AXI_wdata(m00_couplers_to_axiLite_interconnect_C2_WDATA),
        .M_AXI_wready(m00_couplers_to_axiLite_interconnect_C2_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axiLite_interconnect_C2_WVALID),
        .S_ACLK(axiLite_interconnect_C2_ACLK_net),
        .S_ARESETN(axiLite_interconnect_C2_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1P65IID m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axiLite_interconnect_C2_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axiLite_interconnect_C2_ARPROT),
        .M_AXI_arready(m01_couplers_to_axiLite_interconnect_C2_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axiLite_interconnect_C2_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axiLite_interconnect_C2_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axiLite_interconnect_C2_AWPROT),
        .M_AXI_awready(m01_couplers_to_axiLite_interconnect_C2_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axiLite_interconnect_C2_AWVALID),
        .M_AXI_bready(m01_couplers_to_axiLite_interconnect_C2_BREADY),
        .M_AXI_bresp(m01_couplers_to_axiLite_interconnect_C2_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axiLite_interconnect_C2_BVALID),
        .M_AXI_rdata(m01_couplers_to_axiLite_interconnect_C2_RDATA),
        .M_AXI_rready(m01_couplers_to_axiLite_interconnect_C2_RREADY),
        .M_AXI_rresp(m01_couplers_to_axiLite_interconnect_C2_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axiLite_interconnect_C2_RVALID),
        .M_AXI_wdata(m01_couplers_to_axiLite_interconnect_C2_WDATA),
        .M_AXI_wready(m01_couplers_to_axiLite_interconnect_C2_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axiLite_interconnect_C2_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axiLite_interconnect_C2_WVALID),
        .S_ACLK(axiLite_interconnect_C2_ACLK_net),
        .S_ARESETN(axiLite_interconnect_C2_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_3RRFZ s00_couplers
       (.M_ACLK(axiLite_interconnect_C2_ACLK_net),
        .M_ARESETN(axiLite_interconnect_C2_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axiLite_interconnect_C2_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axiLite_interconnect_C2_to_s00_couplers_ARPROT),
        .S_AXI_arready(axiLite_interconnect_C2_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axiLite_interconnect_C2_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axiLite_interconnect_C2_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axiLite_interconnect_C2_to_s00_couplers_AWPROT),
        .S_AXI_awready(axiLite_interconnect_C2_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axiLite_interconnect_C2_to_s00_couplers_AWVALID),
        .S_AXI_bready(axiLite_interconnect_C2_to_s00_couplers_BREADY),
        .S_AXI_bresp(axiLite_interconnect_C2_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axiLite_interconnect_C2_to_s00_couplers_BVALID),
        .S_AXI_rdata(axiLite_interconnect_C2_to_s00_couplers_RDATA),
        .S_AXI_rready(axiLite_interconnect_C2_to_s00_couplers_RREADY),
        .S_AXI_rresp(axiLite_interconnect_C2_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axiLite_interconnect_C2_to_s00_couplers_RVALID),
        .S_AXI_wdata(axiLite_interconnect_C2_to_s00_couplers_WDATA),
        .S_AXI_wready(axiLite_interconnect_C2_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axiLite_interconnect_C2_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axiLite_interconnect_C2_to_s00_couplers_WVALID));
  dynamic_region_ddr4_xbar_4 xbar
       (.aclk(axiLite_interconnect_C2_ACLK_net),
        .aresetn(axiLite_interconnect_C2_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module dynamic_region_ddr4_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [5:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [5:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [5:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [5:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_C0_ACLK_net;
  wire axi_interconnect_C0_ARESETN_net;
  wire [63:0]axi_interconnect_C0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_C0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_C0_to_s00_couplers_ARCACHE;
  wire [5:0]axi_interconnect_C0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_C0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_C0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_C0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_C0_to_s00_couplers_ARQOS;
  wire axi_interconnect_C0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_C0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_C0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_C0_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_C0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_C0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_C0_to_s00_couplers_AWCACHE;
  wire [5:0]axi_interconnect_C0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_C0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_C0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_C0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_C0_to_s00_couplers_AWQOS;
  wire axi_interconnect_C0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_C0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_C0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_C0_to_s00_couplers_AWVALID;
  wire [5:0]axi_interconnect_C0_to_s00_couplers_BID;
  wire axi_interconnect_C0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_C0_to_s00_couplers_BRESP;
  wire axi_interconnect_C0_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_C0_to_s00_couplers_RDATA;
  wire [5:0]axi_interconnect_C0_to_s00_couplers_RID;
  wire axi_interconnect_C0_to_s00_couplers_RLAST;
  wire axi_interconnect_C0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_C0_to_s00_couplers_RRESP;
  wire axi_interconnect_C0_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_C0_to_s00_couplers_WDATA;
  wire axi_interconnect_C0_to_s00_couplers_WLAST;
  wire axi_interconnect_C0_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_C0_to_s00_couplers_WSTRB;
  wire axi_interconnect_C0_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_C0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_C0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_C0_ARCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_C0_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_C0_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_C0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_C0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_C0_ARQOS;
  wire s00_couplers_to_axi_interconnect_C0_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_C0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_C0_ARVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_C0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_C0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_C0_AWCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_C0_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_C0_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_C0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_C0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_C0_AWQOS;
  wire s00_couplers_to_axi_interconnect_C0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_C0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_C0_AWVALID;
  wire [5:0]s00_couplers_to_axi_interconnect_C0_BID;
  wire s00_couplers_to_axi_interconnect_C0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_C0_BRESP;
  wire s00_couplers_to_axi_interconnect_C0_BVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_C0_RDATA;
  wire [5:0]s00_couplers_to_axi_interconnect_C0_RID;
  wire s00_couplers_to_axi_interconnect_C0_RLAST;
  wire s00_couplers_to_axi_interconnect_C0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_C0_RRESP;
  wire s00_couplers_to_axi_interconnect_C0_RVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_C0_WDATA;
  wire s00_couplers_to_axi_interconnect_C0_WLAST;
  wire s00_couplers_to_axi_interconnect_C0_WREADY;
  wire [63:0]s00_couplers_to_axi_interconnect_C0_WSTRB;
  wire s00_couplers_to_axi_interconnect_C0_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_axi_interconnect_C0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_C0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_C0_ARCACHE;
  assign M00_AXI_arid[5:0] = s00_couplers_to_axi_interconnect_C0_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_C0_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_C0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_C0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_C0_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_C0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_C0_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_interconnect_C0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_C0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_C0_AWCACHE;
  assign M00_AXI_awid[5:0] = s00_couplers_to_axi_interconnect_C0_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_C0_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_C0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_C0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_C0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_C0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_C0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_C0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_C0_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_axi_interconnect_C0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_C0_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_axi_interconnect_C0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_C0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_C0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_C0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_C0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_C0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_C0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_C0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_C0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_C0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_C0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_C0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_C0_to_s00_couplers_WREADY;
  assign axi_interconnect_C0_ACLK_net = M00_ACLK;
  assign axi_interconnect_C0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_C0_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_C0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_C0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_C0_to_s00_couplers_ARID = S00_AXI_arid[5:0];
  assign axi_interconnect_C0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_C0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_C0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_C0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_C0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_C0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_C0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_C0_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_C0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_C0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_C0_to_s00_couplers_AWID = S00_AXI_awid[5:0];
  assign axi_interconnect_C0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_C0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_C0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_C0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_C0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_C0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_C0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_C0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_C0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_C0_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_C0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_C0_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_C0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_C0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_C0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_C0_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_interconnect_C0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_C0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_C0_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_axi_interconnect_C0_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_axi_interconnect_C0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_C0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_C0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_C0_WREADY = M00_AXI_wready;
  s00_couplers_imp_12L81SP s00_couplers
       (.M_ACLK(axi_interconnect_C0_ACLK_net),
        .M_ARESETN(axi_interconnect_C0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_C0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_C0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_C0_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_C0_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_C0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_C0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_C0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_C0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_C0_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_C0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_C0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_C0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_C0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_C0_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_C0_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_C0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_C0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_C0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_C0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_C0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_C0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_C0_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_C0_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_C0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_C0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_C0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_C0_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_C0_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_C0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_C0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_C0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_C0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_C0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_C0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_C0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_C0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_C0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_C0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_C0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_C0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_C0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_C0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_C0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_C0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_C0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_C0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_C0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_C0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_C0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_C0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_C0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_C0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_C0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_C0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_C0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_C0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_C0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_C0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_C0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_C0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_C0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_C0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_C0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_C0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_C0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_C0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_C0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_C0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_C0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_C0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_C0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_C0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_C0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_C0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_C0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_C0_to_s00_couplers_WVALID));
endmodule

module dynamic_region_ddr4_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [5:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [5:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [5:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [5:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_C3_ACLK_net;
  wire axi_interconnect_C3_ARESETN_net;
  wire [63:0]axi_interconnect_C3_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_C3_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_C3_to_s00_couplers_ARCACHE;
  wire [5:0]axi_interconnect_C3_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_C3_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_C3_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_C3_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_C3_to_s00_couplers_ARQOS;
  wire axi_interconnect_C3_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_C3_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_C3_to_s00_couplers_ARSIZE;
  wire axi_interconnect_C3_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_C3_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_C3_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_C3_to_s00_couplers_AWCACHE;
  wire [5:0]axi_interconnect_C3_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_C3_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_C3_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_C3_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_C3_to_s00_couplers_AWQOS;
  wire axi_interconnect_C3_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_C3_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_C3_to_s00_couplers_AWSIZE;
  wire axi_interconnect_C3_to_s00_couplers_AWVALID;
  wire [5:0]axi_interconnect_C3_to_s00_couplers_BID;
  wire axi_interconnect_C3_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_C3_to_s00_couplers_BRESP;
  wire axi_interconnect_C3_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_C3_to_s00_couplers_RDATA;
  wire [5:0]axi_interconnect_C3_to_s00_couplers_RID;
  wire axi_interconnect_C3_to_s00_couplers_RLAST;
  wire axi_interconnect_C3_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_C3_to_s00_couplers_RRESP;
  wire axi_interconnect_C3_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_C3_to_s00_couplers_WDATA;
  wire axi_interconnect_C3_to_s00_couplers_WLAST;
  wire axi_interconnect_C3_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_C3_to_s00_couplers_WSTRB;
  wire axi_interconnect_C3_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_C3_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_C3_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_C3_ARCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_C3_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_C3_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_C3_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_C3_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_C3_ARQOS;
  wire s00_couplers_to_axi_interconnect_C3_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_C3_ARSIZE;
  wire s00_couplers_to_axi_interconnect_C3_ARVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_C3_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_C3_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_C3_AWCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_C3_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_C3_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_C3_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_C3_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_C3_AWQOS;
  wire s00_couplers_to_axi_interconnect_C3_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_C3_AWSIZE;
  wire s00_couplers_to_axi_interconnect_C3_AWVALID;
  wire [5:0]s00_couplers_to_axi_interconnect_C3_BID;
  wire s00_couplers_to_axi_interconnect_C3_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_C3_BRESP;
  wire s00_couplers_to_axi_interconnect_C3_BVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_C3_RDATA;
  wire [5:0]s00_couplers_to_axi_interconnect_C3_RID;
  wire s00_couplers_to_axi_interconnect_C3_RLAST;
  wire s00_couplers_to_axi_interconnect_C3_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_C3_RRESP;
  wire s00_couplers_to_axi_interconnect_C3_RVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_C3_WDATA;
  wire s00_couplers_to_axi_interconnect_C3_WLAST;
  wire s00_couplers_to_axi_interconnect_C3_WREADY;
  wire [63:0]s00_couplers_to_axi_interconnect_C3_WSTRB;
  wire s00_couplers_to_axi_interconnect_C3_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_axi_interconnect_C3_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_C3_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_C3_ARCACHE;
  assign M00_AXI_arid[5:0] = s00_couplers_to_axi_interconnect_C3_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_C3_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_C3_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_C3_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_C3_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_C3_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_C3_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_interconnect_C3_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_C3_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_C3_AWCACHE;
  assign M00_AXI_awid[5:0] = s00_couplers_to_axi_interconnect_C3_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_C3_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_C3_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_C3_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_C3_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_C3_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_C3_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_C3_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_C3_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_axi_interconnect_C3_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_C3_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_axi_interconnect_C3_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_C3_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_C3_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_C3_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_C3_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_C3_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_C3_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_C3_to_s00_couplers_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_C3_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_C3_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_C3_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_C3_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_C3_to_s00_couplers_WREADY;
  assign axi_interconnect_C3_ACLK_net = M00_ACLK;
  assign axi_interconnect_C3_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_C3_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_C3_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_C3_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_C3_to_s00_couplers_ARID = S00_AXI_arid[5:0];
  assign axi_interconnect_C3_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_C3_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_C3_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_C3_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_C3_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_C3_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_C3_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_C3_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_C3_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_C3_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_C3_to_s00_couplers_AWID = S00_AXI_awid[5:0];
  assign axi_interconnect_C3_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_C3_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_C3_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_C3_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_C3_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_C3_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_C3_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_C3_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_C3_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_C3_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_C3_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_C3_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_C3_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_C3_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_C3_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_C3_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_interconnect_C3_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_C3_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_C3_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_axi_interconnect_C3_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_axi_interconnect_C3_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_C3_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_C3_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_C3_WREADY = M00_AXI_wready;
  s00_couplers_imp_1LPT4I4 s00_couplers
       (.M_ACLK(axi_interconnect_C3_ACLK_net),
        .M_ARESETN(axi_interconnect_C3_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_C3_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_C3_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_C3_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_C3_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_C3_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_C3_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_C3_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_C3_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_C3_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_C3_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_C3_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_C3_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_C3_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_C3_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_C3_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_C3_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_C3_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_C3_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_C3_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_C3_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_C3_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_C3_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_C3_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_C3_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_C3_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_C3_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_C3_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_C3_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_C3_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_C3_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_C3_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_C3_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_C3_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_C3_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_C3_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_C3_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_C3_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_C3_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_C3_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_C3_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_C3_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_C3_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_C3_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_C3_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_C3_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_C3_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_C3_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_C3_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_C3_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_C3_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_C3_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_C3_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_C3_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_C3_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_C3_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_C3_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_C3_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_C3_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_C3_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_C3_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_C3_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_C3_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_C3_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_C3_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_C3_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_C3_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_C3_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_C3_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_C3_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_C3_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_C3_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_C3_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_C3_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_C3_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_C3_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_C3_to_s00_couplers_WVALID));
endmodule

module dynamic_region_ddr4_axi_interconnect_0_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [17:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [17:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axiLite_interconnect_C0_ACLK_net;
  wire axiLite_interconnect_C0_ARESETN_net;
  wire [31:0]axiLite_interconnect_C0_to_s00_couplers_ARADDR;
  wire [2:0]axiLite_interconnect_C0_to_s00_couplers_ARPROT;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_ARREADY;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_ARVALID;
  wire [31:0]axiLite_interconnect_C0_to_s00_couplers_AWADDR;
  wire [2:0]axiLite_interconnect_C0_to_s00_couplers_AWPROT;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_AWREADY;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_AWVALID;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_BREADY;
  wire [1:0]axiLite_interconnect_C0_to_s00_couplers_BRESP;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_BVALID;
  wire [31:0]axiLite_interconnect_C0_to_s00_couplers_RDATA;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_RREADY;
  wire [1:0]axiLite_interconnect_C0_to_s00_couplers_RRESP;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_RVALID;
  wire [31:0]axiLite_interconnect_C0_to_s00_couplers_WDATA;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_WREADY;
  wire [3:0]axiLite_interconnect_C0_to_s00_couplers_WSTRB;
  wire [0:0]axiLite_interconnect_C0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C0_ARADDR;
  wire m00_couplers_to_axiLite_interconnect_C0_ARREADY;
  wire m00_couplers_to_axiLite_interconnect_C0_ARVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C0_AWADDR;
  wire m00_couplers_to_axiLite_interconnect_C0_AWREADY;
  wire m00_couplers_to_axiLite_interconnect_C0_AWVALID;
  wire m00_couplers_to_axiLite_interconnect_C0_BREADY;
  wire [1:0]m00_couplers_to_axiLite_interconnect_C0_BRESP;
  wire m00_couplers_to_axiLite_interconnect_C0_BVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C0_RDATA;
  wire m00_couplers_to_axiLite_interconnect_C0_RREADY;
  wire [1:0]m00_couplers_to_axiLite_interconnect_C0_RRESP;
  wire m00_couplers_to_axiLite_interconnect_C0_RVALID;
  wire [31:0]m00_couplers_to_axiLite_interconnect_C0_WDATA;
  wire m00_couplers_to_axiLite_interconnect_C0_WREADY;
  wire m00_couplers_to_axiLite_interconnect_C0_WVALID;
  wire [17:0]m01_couplers_to_axiLite_interconnect_C0_ARADDR;
  wire [2:0]m01_couplers_to_axiLite_interconnect_C0_ARPROT;
  wire m01_couplers_to_axiLite_interconnect_C0_ARREADY;
  wire m01_couplers_to_axiLite_interconnect_C0_ARVALID;
  wire [17:0]m01_couplers_to_axiLite_interconnect_C0_AWADDR;
  wire [2:0]m01_couplers_to_axiLite_interconnect_C0_AWPROT;
  wire m01_couplers_to_axiLite_interconnect_C0_AWREADY;
  wire m01_couplers_to_axiLite_interconnect_C0_AWVALID;
  wire m01_couplers_to_axiLite_interconnect_C0_BREADY;
  wire [1:0]m01_couplers_to_axiLite_interconnect_C0_BRESP;
  wire m01_couplers_to_axiLite_interconnect_C0_BVALID;
  wire [31:0]m01_couplers_to_axiLite_interconnect_C0_RDATA;
  wire m01_couplers_to_axiLite_interconnect_C0_RREADY;
  wire [1:0]m01_couplers_to_axiLite_interconnect_C0_RRESP;
  wire m01_couplers_to_axiLite_interconnect_C0_RVALID;
  wire [31:0]m01_couplers_to_axiLite_interconnect_C0_WDATA;
  wire m01_couplers_to_axiLite_interconnect_C0_WREADY;
  wire [3:0]m01_couplers_to_axiLite_interconnect_C0_WSTRB;
  wire m01_couplers_to_axiLite_interconnect_C0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axiLite_interconnect_C0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axiLite_interconnect_C0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axiLite_interconnect_C0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axiLite_interconnect_C0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axiLite_interconnect_C0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axiLite_interconnect_C0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axiLite_interconnect_C0_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axiLite_interconnect_C0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[17:0] = m01_couplers_to_axiLite_interconnect_C0_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axiLite_interconnect_C0_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axiLite_interconnect_C0_ARVALID;
  assign M01_AXI_awaddr[17:0] = m01_couplers_to_axiLite_interconnect_C0_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axiLite_interconnect_C0_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axiLite_interconnect_C0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axiLite_interconnect_C0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axiLite_interconnect_C0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axiLite_interconnect_C0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axiLite_interconnect_C0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axiLite_interconnect_C0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axiLite_interconnect_C0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axiLite_interconnect_C0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axiLite_interconnect_C0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axiLite_interconnect_C0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axiLite_interconnect_C0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axiLite_interconnect_C0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axiLite_interconnect_C0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axiLite_interconnect_C0_to_s00_couplers_WREADY;
  assign axiLite_interconnect_C0_ACLK_net = ACLK;
  assign axiLite_interconnect_C0_ARESETN_net = ARESETN;
  assign axiLite_interconnect_C0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axiLite_interconnect_C0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axiLite_interconnect_C0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axiLite_interconnect_C0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axiLite_interconnect_C0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axiLite_interconnect_C0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axiLite_interconnect_C0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axiLite_interconnect_C0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axiLite_interconnect_C0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axiLite_interconnect_C0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axiLite_interconnect_C0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axiLite_interconnect_C0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axiLite_interconnect_C0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axiLite_interconnect_C0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axiLite_interconnect_C0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axiLite_interconnect_C0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axiLite_interconnect_C0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axiLite_interconnect_C0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axiLite_interconnect_C0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axiLite_interconnect_C0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axiLite_interconnect_C0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axiLite_interconnect_C0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axiLite_interconnect_C0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axiLite_interconnect_C0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axiLite_interconnect_C0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axiLite_interconnect_C0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axiLite_interconnect_C0_WREADY = M01_AXI_wready;
  m00_couplers_imp_1MFEYPJ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axiLite_interconnect_C0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axiLite_interconnect_C0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axiLite_interconnect_C0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axiLite_interconnect_C0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axiLite_interconnect_C0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axiLite_interconnect_C0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axiLite_interconnect_C0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axiLite_interconnect_C0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axiLite_interconnect_C0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axiLite_interconnect_C0_RDATA),
        .M_AXI_rready(m00_couplers_to_axiLite_interconnect_C0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axiLite_interconnect_C0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axiLite_interconnect_C0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axiLite_interconnect_C0_WDATA),
        .M_AXI_wready(m00_couplers_to_axiLite_interconnect_C0_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axiLite_interconnect_C0_WVALID),
        .S_ACLK(axiLite_interconnect_C0_ACLK_net),
        .S_ARESETN(axiLite_interconnect_C0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1D9RVV7 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axiLite_interconnect_C0_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axiLite_interconnect_C0_ARPROT),
        .M_AXI_arready(m01_couplers_to_axiLite_interconnect_C0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axiLite_interconnect_C0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axiLite_interconnect_C0_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axiLite_interconnect_C0_AWPROT),
        .M_AXI_awready(m01_couplers_to_axiLite_interconnect_C0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axiLite_interconnect_C0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axiLite_interconnect_C0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axiLite_interconnect_C0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axiLite_interconnect_C0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axiLite_interconnect_C0_RDATA),
        .M_AXI_rready(m01_couplers_to_axiLite_interconnect_C0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axiLite_interconnect_C0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axiLite_interconnect_C0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axiLite_interconnect_C0_WDATA),
        .M_AXI_wready(m01_couplers_to_axiLite_interconnect_C0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axiLite_interconnect_C0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axiLite_interconnect_C0_WVALID),
        .S_ACLK(axiLite_interconnect_C0_ACLK_net),
        .S_ARESETN(axiLite_interconnect_C0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_UDZAYX s00_couplers
       (.M_ACLK(axiLite_interconnect_C0_ACLK_net),
        .M_ARESETN(axiLite_interconnect_C0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axiLite_interconnect_C0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axiLite_interconnect_C0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axiLite_interconnect_C0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axiLite_interconnect_C0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axiLite_interconnect_C0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axiLite_interconnect_C0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axiLite_interconnect_C0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axiLite_interconnect_C0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axiLite_interconnect_C0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axiLite_interconnect_C0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axiLite_interconnect_C0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axiLite_interconnect_C0_to_s00_couplers_RDATA),
        .S_AXI_rready(axiLite_interconnect_C0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axiLite_interconnect_C0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axiLite_interconnect_C0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axiLite_interconnect_C0_to_s00_couplers_WDATA),
        .S_AXI_wready(axiLite_interconnect_C0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axiLite_interconnect_C0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axiLite_interconnect_C0_to_s00_couplers_WVALID));
  dynamic_region_ddr4_xbar_5 xbar
       (.aclk(axiLite_interconnect_C0_ACLK_net),
        .aresetn(axiLite_interconnect_C0_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module dynamic_region_ddr4_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [5:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [5:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [5:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [5:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_C2_ACLK_net;
  wire axi_interconnect_C2_ARESETN_net;
  wire [63:0]axi_interconnect_C2_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_C2_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_C2_to_s00_couplers_ARCACHE;
  wire [5:0]axi_interconnect_C2_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_C2_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_C2_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_C2_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_C2_to_s00_couplers_ARQOS;
  wire axi_interconnect_C2_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_C2_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_C2_to_s00_couplers_ARSIZE;
  wire axi_interconnect_C2_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_C2_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_C2_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_C2_to_s00_couplers_AWCACHE;
  wire [5:0]axi_interconnect_C2_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_C2_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_C2_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_C2_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_C2_to_s00_couplers_AWQOS;
  wire axi_interconnect_C2_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_C2_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_C2_to_s00_couplers_AWSIZE;
  wire axi_interconnect_C2_to_s00_couplers_AWVALID;
  wire [5:0]axi_interconnect_C2_to_s00_couplers_BID;
  wire axi_interconnect_C2_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_C2_to_s00_couplers_BRESP;
  wire axi_interconnect_C2_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_C2_to_s00_couplers_RDATA;
  wire [5:0]axi_interconnect_C2_to_s00_couplers_RID;
  wire axi_interconnect_C2_to_s00_couplers_RLAST;
  wire axi_interconnect_C2_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_C2_to_s00_couplers_RRESP;
  wire axi_interconnect_C2_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_C2_to_s00_couplers_WDATA;
  wire axi_interconnect_C2_to_s00_couplers_WLAST;
  wire axi_interconnect_C2_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_C2_to_s00_couplers_WSTRB;
  wire axi_interconnect_C2_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_C2_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_C2_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_C2_ARCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_C2_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_C2_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_C2_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_C2_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_C2_ARQOS;
  wire s00_couplers_to_axi_interconnect_C2_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_C2_ARSIZE;
  wire s00_couplers_to_axi_interconnect_C2_ARVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_C2_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_C2_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_C2_AWCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_C2_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_C2_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_C2_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_C2_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_C2_AWQOS;
  wire s00_couplers_to_axi_interconnect_C2_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_C2_AWSIZE;
  wire s00_couplers_to_axi_interconnect_C2_AWVALID;
  wire [5:0]s00_couplers_to_axi_interconnect_C2_BID;
  wire s00_couplers_to_axi_interconnect_C2_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_C2_BRESP;
  wire s00_couplers_to_axi_interconnect_C2_BVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_C2_RDATA;
  wire [5:0]s00_couplers_to_axi_interconnect_C2_RID;
  wire s00_couplers_to_axi_interconnect_C2_RLAST;
  wire s00_couplers_to_axi_interconnect_C2_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_C2_RRESP;
  wire s00_couplers_to_axi_interconnect_C2_RVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_C2_WDATA;
  wire s00_couplers_to_axi_interconnect_C2_WLAST;
  wire s00_couplers_to_axi_interconnect_C2_WREADY;
  wire [63:0]s00_couplers_to_axi_interconnect_C2_WSTRB;
  wire s00_couplers_to_axi_interconnect_C2_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_axi_interconnect_C2_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_C2_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_C2_ARCACHE;
  assign M00_AXI_arid[5:0] = s00_couplers_to_axi_interconnect_C2_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_C2_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_C2_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_C2_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_C2_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_C2_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_C2_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_interconnect_C2_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_C2_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_C2_AWCACHE;
  assign M00_AXI_awid[5:0] = s00_couplers_to_axi_interconnect_C2_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_C2_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_C2_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_C2_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_C2_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_C2_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_C2_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_C2_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_C2_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_axi_interconnect_C2_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_C2_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_axi_interconnect_C2_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_C2_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_C2_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_C2_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_C2_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_C2_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_C2_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_C2_to_s00_couplers_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_C2_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_C2_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_C2_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_C2_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_C2_to_s00_couplers_WREADY;
  assign axi_interconnect_C2_ACLK_net = M00_ACLK;
  assign axi_interconnect_C2_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_C2_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_C2_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_C2_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_C2_to_s00_couplers_ARID = S00_AXI_arid[5:0];
  assign axi_interconnect_C2_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_C2_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_C2_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_C2_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_C2_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_C2_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_C2_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_C2_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_C2_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_C2_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_C2_to_s00_couplers_AWID = S00_AXI_awid[5:0];
  assign axi_interconnect_C2_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_C2_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_C2_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_C2_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_C2_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_C2_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_C2_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_C2_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_C2_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_C2_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_C2_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_C2_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_C2_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_C2_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_C2_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_C2_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_interconnect_C2_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_C2_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_C2_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_axi_interconnect_C2_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_axi_interconnect_C2_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_C2_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_C2_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_C2_WREADY = M00_AXI_wready;
  s00_couplers_imp_1S2TPTR s00_couplers
       (.M_ACLK(axi_interconnect_C2_ACLK_net),
        .M_ARESETN(axi_interconnect_C2_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_C2_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_C2_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_C2_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_C2_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_C2_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_C2_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_C2_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_C2_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_C2_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_C2_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_C2_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_C2_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_C2_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_C2_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_C2_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_C2_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_C2_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_C2_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_C2_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_C2_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_C2_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_C2_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_C2_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_C2_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_C2_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_C2_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_C2_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_C2_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_C2_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_C2_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_C2_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_C2_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_C2_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_C2_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_C2_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_C2_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_C2_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_C2_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_C2_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_C2_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_C2_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_C2_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_C2_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_C2_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_C2_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_C2_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_C2_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_C2_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_C2_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_C2_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_C2_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_C2_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_C2_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_C2_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_C2_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_C2_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_C2_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_C2_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_C2_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_C2_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_C2_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_C2_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_C2_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_C2_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_C2_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_C2_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_C2_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_C2_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_C2_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_C2_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_C2_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_C2_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_C2_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_C2_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_C2_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_C2_to_s00_couplers_WVALID));
endmodule

module m00_couplers_imp_125L63M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_1H49CK1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_1MFEYPJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_1D9RVV7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [17:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [17:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[17:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[17:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[17:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_1P65IID
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [17:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [17:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[17:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[17:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[17:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_1T2IVIE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [17:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [17:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[17:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[17:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[17:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_12L81SP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [5:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [63:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [5:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [5:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [511:0]auto_cc_to_s00_couplers_RDATA;
  wire [5:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [511:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [63:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [5:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire [5:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_auto_cc_ARADDR;
  wire [1:0]s00_regslice_to_auto_cc_ARBURST;
  wire [3:0]s00_regslice_to_auto_cc_ARCACHE;
  wire [5:0]s00_regslice_to_auto_cc_ARID;
  wire [7:0]s00_regslice_to_auto_cc_ARLEN;
  wire [0:0]s00_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire [3:0]s00_regslice_to_auto_cc_ARQOS;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire [3:0]s00_regslice_to_auto_cc_ARREGION;
  wire [2:0]s00_regslice_to_auto_cc_ARSIZE;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [63:0]s00_regslice_to_auto_cc_AWADDR;
  wire [1:0]s00_regslice_to_auto_cc_AWBURST;
  wire [3:0]s00_regslice_to_auto_cc_AWCACHE;
  wire [5:0]s00_regslice_to_auto_cc_AWID;
  wire [7:0]s00_regslice_to_auto_cc_AWLEN;
  wire [0:0]s00_regslice_to_auto_cc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire [3:0]s00_regslice_to_auto_cc_AWQOS;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire [3:0]s00_regslice_to_auto_cc_AWREGION;
  wire [2:0]s00_regslice_to_auto_cc_AWSIZE;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire [5:0]s00_regslice_to_auto_cc_BID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [511:0]s00_regslice_to_auto_cc_RDATA;
  wire [5:0]s00_regslice_to_auto_cc_RID;
  wire s00_regslice_to_auto_cc_RLAST;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [511:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WLAST;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [63:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[5:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[5:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[5:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[5:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_regslice_to_auto_cc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_cc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_cc_BID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_cc_RID),
        .s_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  dynamic_region_ddr4_s00_regslice_30 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_cc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_cc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_cc_BID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_cc_RID),
        .m_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1LPT4I4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [5:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [63:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [5:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [5:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [511:0]auto_cc_to_s00_couplers_RDATA;
  wire [5:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [511:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [63:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [5:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire [5:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_auto_cc_ARADDR;
  wire [1:0]s00_regslice_to_auto_cc_ARBURST;
  wire [3:0]s00_regslice_to_auto_cc_ARCACHE;
  wire [5:0]s00_regslice_to_auto_cc_ARID;
  wire [7:0]s00_regslice_to_auto_cc_ARLEN;
  wire [0:0]s00_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire [3:0]s00_regslice_to_auto_cc_ARQOS;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire [3:0]s00_regslice_to_auto_cc_ARREGION;
  wire [2:0]s00_regslice_to_auto_cc_ARSIZE;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [63:0]s00_regslice_to_auto_cc_AWADDR;
  wire [1:0]s00_regslice_to_auto_cc_AWBURST;
  wire [3:0]s00_regslice_to_auto_cc_AWCACHE;
  wire [5:0]s00_regslice_to_auto_cc_AWID;
  wire [7:0]s00_regslice_to_auto_cc_AWLEN;
  wire [0:0]s00_regslice_to_auto_cc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire [3:0]s00_regslice_to_auto_cc_AWQOS;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire [3:0]s00_regslice_to_auto_cc_AWREGION;
  wire [2:0]s00_regslice_to_auto_cc_AWSIZE;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire [5:0]s00_regslice_to_auto_cc_BID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [511:0]s00_regslice_to_auto_cc_RDATA;
  wire [5:0]s00_regslice_to_auto_cc_RID;
  wire s00_regslice_to_auto_cc_RLAST;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [511:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WLAST;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [63:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[5:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[5:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[5:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[5:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_regslice_to_auto_cc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_cc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_cc_BID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_cc_RID),
        .s_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  dynamic_region_ddr4_s00_regslice_31 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_cc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_cc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_cc_BID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_cc_RID),
        .m_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1S2TPTR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [5:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [63:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [5:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [5:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [511:0]auto_cc_to_s00_couplers_RDATA;
  wire [5:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [511:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [63:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [5:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [5:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire [5:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_auto_cc_ARADDR;
  wire [1:0]s00_regslice_to_auto_cc_ARBURST;
  wire [3:0]s00_regslice_to_auto_cc_ARCACHE;
  wire [5:0]s00_regslice_to_auto_cc_ARID;
  wire [7:0]s00_regslice_to_auto_cc_ARLEN;
  wire [0:0]s00_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire [3:0]s00_regslice_to_auto_cc_ARQOS;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire [3:0]s00_regslice_to_auto_cc_ARREGION;
  wire [2:0]s00_regslice_to_auto_cc_ARSIZE;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [63:0]s00_regslice_to_auto_cc_AWADDR;
  wire [1:0]s00_regslice_to_auto_cc_AWBURST;
  wire [3:0]s00_regslice_to_auto_cc_AWCACHE;
  wire [5:0]s00_regslice_to_auto_cc_AWID;
  wire [7:0]s00_regslice_to_auto_cc_AWLEN;
  wire [0:0]s00_regslice_to_auto_cc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire [3:0]s00_regslice_to_auto_cc_AWQOS;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire [3:0]s00_regslice_to_auto_cc_AWREGION;
  wire [2:0]s00_regslice_to_auto_cc_AWSIZE;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire [5:0]s00_regslice_to_auto_cc_BID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [511:0]s00_regslice_to_auto_cc_RDATA;
  wire [5:0]s00_regslice_to_auto_cc_RID;
  wire s00_regslice_to_auto_cc_RLAST;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [511:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WLAST;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [63:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[5:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[5:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[5:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[5:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  dynamic_region_ddr4_auto_cc_8 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_regslice_to_auto_cc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_cc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_cc_BID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_cc_RID),
        .s_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  dynamic_region_ddr4_s00_regslice_32 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_cc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_cc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_cc_BID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_cc_RID),
        .m_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_3RRFZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_F53GBG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_UDZAYX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
