//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sun Sep  6 08:44:21 2020
//Host        : xsjgd1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
//Command     : generate_target PL_X.bd
//Design      : PL_X
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DDR4_SH_imp_1TO3ZW0
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
    C1_SYS_CLK,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
    S_AXI_wvalid,
    c0_ddr4_aresetn,
    c0_ddr4_ui_clk,
    c0_ddr4_ui_clk_sync_rst,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_par,
    c1_ddr4_reset_n,
    c1_init_calib_complete,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awready,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_rready,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_wdata,
    s00_axi_wready,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s_axi_aclk,
    s_axi_aresetn,
    shell_sys_rst_in);
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
  input C1_SYS_CLK;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
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
  input c0_ddr4_aresetn;
  output c0_ddr4_ui_clk;
  output c0_ddr4_ui_clk_sync_rst;
  output c1_ddr4_act_n;
  output [16:0]c1_ddr4_adr;
  output [1:0]c1_ddr4_ba;
  output [1:0]c1_ddr4_bg;
  output [0:0]c1_ddr4_ck_c;
  output [0:0]c1_ddr4_ck_t;
  output [0:0]c1_ddr4_cke;
  output [0:0]c1_ddr4_cs_n;
  inout [71:0]c1_ddr4_dq;
  inout [17:0]c1_ddr4_dqs_c;
  inout [17:0]c1_ddr4_dqs_t;
  output [0:0]c1_ddr4_odt;
  output c1_ddr4_par;
  output c1_ddr4_reset_n;
  output c1_init_calib_complete;
  input [17:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  output s00_axi_arready;
  input s00_axi_arvalid;
  input [17:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  output s00_axi_awready;
  input s00_axi_awvalid;
  input s00_axi_bready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  input s00_axi_rready;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input [31:0]s00_axi_wdata;
  output s00_axi_wready;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input shell_sys_rst_in;

  wire C1_SYS_CLK;
  wire [7:0]SREF_ctrl_logic_1_DDR_SREF_CTRL_OUT;
  wire SREF_ctrl_logic_1_ddr4_app_mem_init_skip;
  wire SREF_ctrl_logic_1_ddr4_app_restore_complete;
  wire SREF_ctrl_logic_1_ddr4_app_sref_req;
  wire SREF_ctrl_logic_1_ddr4_app_xsdb_select;
  wire [7:0]axi_gpio_C1_SREF_gpio_io_o;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [5:0]axi_interconnect_0_M00_AXI_ARID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [5:0]axi_interconnect_0_M00_AXI_AWID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [5:0]axi_interconnect_0_M00_AXI_BID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [5:0]axi_interconnect_0_M00_AXI_RID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M18_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M18_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M18_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M18_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M18_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M18_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M18_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M18_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M18_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M18_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M18_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M18_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M18_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M18_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M18_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M18_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M18_AXI_WVALID;
  wire [17:0]axi_pcie3_0_axi_periph_M19_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M19_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M19_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M19_AXI_ARVALID;
  wire [17:0]axi_pcie3_0_axi_periph_M19_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M19_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M19_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M19_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M19_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M19_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M19_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M19_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M19_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M19_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M19_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M19_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M19_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M19_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M19_AXI_WVALID;
  wire clk_wiz_0_clk_out_50M;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [71:0]ddr4_0_C0_DDR4_DQ;
  wire [17:0]ddr4_0_C0_DDR4_DQS_C;
  wire [17:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_PAR;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_1_c0_ddr4_app_sref_ack;
  wire [8:0]ddr4_1_c0_ddr4_app_xsdb_rd_data;
  wire ddr4_1_c0_ddr4_app_xsdb_rdy;
  wire ddr4_1_c0_init_calib_complete;
  wire [15:0]myip_AXIL_TO_XSDB_v1_0_XSDB_addr;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en;
  wire [8:0]myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data;
  wire myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en;
  wire rst_ddr4_0_300M1_peripheral_aresetn;
  wire rst_ddr4_0_300M_peripheral_aresetn;
  wire sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_complete;
  wire sref_init_restore_sy_0_c0_ddr4_app_restore_en;
  wire sref_init_restore_sy_0_c0_ddr4_app_sref_req;
  wire sref_init_restore_sy_0_c0_ddr4_sys_rst_out;
  wire util_vector_logic_0_Res;

  assign C0_DDR4_S_AXI_CTRL_arready = axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  assign C0_DDR4_S_AXI_CTRL_awready = axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  assign C0_DDR4_S_AXI_CTRL_bresp[1:0] = axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  assign C0_DDR4_S_AXI_CTRL_bvalid = axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  assign C0_DDR4_S_AXI_CTRL_rdata[31:0] = axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  assign C0_DDR4_S_AXI_CTRL_rresp[1:0] = axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  assign C0_DDR4_S_AXI_CTRL_rvalid = axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  assign C0_DDR4_S_AXI_CTRL_wready = axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  assign C0_DDR4_S_AXI_arready = axi_interconnect_0_M00_AXI_ARREADY;
  assign C0_DDR4_S_AXI_awready = axi_interconnect_0_M00_AXI_AWREADY;
  assign C0_DDR4_S_AXI_bid[5:0] = axi_interconnect_0_M00_AXI_BID;
  assign C0_DDR4_S_AXI_bresp[1:0] = axi_interconnect_0_M00_AXI_BRESP;
  assign C0_DDR4_S_AXI_bvalid = axi_interconnect_0_M00_AXI_BVALID;
  assign C0_DDR4_S_AXI_rdata[511:0] = axi_interconnect_0_M00_AXI_RDATA;
  assign C0_DDR4_S_AXI_rid[5:0] = axi_interconnect_0_M00_AXI_RID;
  assign C0_DDR4_S_AXI_rlast = axi_interconnect_0_M00_AXI_RLAST;
  assign C0_DDR4_S_AXI_rresp[1:0] = axi_interconnect_0_M00_AXI_RRESP;
  assign C0_DDR4_S_AXI_rvalid = axi_interconnect_0_M00_AXI_RVALID;
  assign C0_DDR4_S_AXI_wready = axi_interconnect_0_M00_AXI_WREADY;
  assign S_AXI_arready = axi_pcie3_0_axi_periph_M18_AXI_ARREADY;
  assign S_AXI_awready = axi_pcie3_0_axi_periph_M18_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_M18_AXI_BRESP;
  assign S_AXI_bvalid = axi_pcie3_0_axi_periph_M18_AXI_BVALID;
  assign S_AXI_rdata[31:0] = axi_pcie3_0_axi_periph_M18_AXI_RDATA;
  assign S_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_M18_AXI_RRESP;
  assign S_AXI_rvalid = axi_pcie3_0_axi_periph_M18_AXI_RVALID;
  assign S_AXI_wready = axi_pcie3_0_axi_periph_M18_AXI_WREADY;
  assign axi_interconnect_0_M00_AXI_ARADDR = C0_DDR4_S_AXI_araddr[63:0];
  assign axi_interconnect_0_M00_AXI_ARBURST = C0_DDR4_S_AXI_arburst[1:0];
  assign axi_interconnect_0_M00_AXI_ARCACHE = C0_DDR4_S_AXI_arcache[3:0];
  assign axi_interconnect_0_M00_AXI_ARID = C0_DDR4_S_AXI_arid[5:0];
  assign axi_interconnect_0_M00_AXI_ARLEN = C0_DDR4_S_AXI_arlen[7:0];
  assign axi_interconnect_0_M00_AXI_ARLOCK = C0_DDR4_S_AXI_arlock[0];
  assign axi_interconnect_0_M00_AXI_ARPROT = C0_DDR4_S_AXI_arprot[2:0];
  assign axi_interconnect_0_M00_AXI_ARQOS = C0_DDR4_S_AXI_arqos[3:0];
  assign axi_interconnect_0_M00_AXI_ARSIZE = C0_DDR4_S_AXI_arsize[2:0];
  assign axi_interconnect_0_M00_AXI_ARVALID = C0_DDR4_S_AXI_arvalid;
  assign axi_interconnect_0_M00_AXI_AWADDR = C0_DDR4_S_AXI_awaddr[63:0];
  assign axi_interconnect_0_M00_AXI_AWBURST = C0_DDR4_S_AXI_awburst[1:0];
  assign axi_interconnect_0_M00_AXI_AWCACHE = C0_DDR4_S_AXI_awcache[3:0];
  assign axi_interconnect_0_M00_AXI_AWID = C0_DDR4_S_AXI_awid[5:0];
  assign axi_interconnect_0_M00_AXI_AWLEN = C0_DDR4_S_AXI_awlen[7:0];
  assign axi_interconnect_0_M00_AXI_AWLOCK = C0_DDR4_S_AXI_awlock[0];
  assign axi_interconnect_0_M00_AXI_AWPROT = C0_DDR4_S_AXI_awprot[2:0];
  assign axi_interconnect_0_M00_AXI_AWQOS = C0_DDR4_S_AXI_awqos[3:0];
  assign axi_interconnect_0_M00_AXI_AWSIZE = C0_DDR4_S_AXI_awsize[2:0];
  assign axi_interconnect_0_M00_AXI_AWVALID = C0_DDR4_S_AXI_awvalid;
  assign axi_interconnect_0_M00_AXI_BREADY = C0_DDR4_S_AXI_bready;
  assign axi_interconnect_0_M00_AXI_RREADY = C0_DDR4_S_AXI_rready;
  assign axi_interconnect_0_M00_AXI_WDATA = C0_DDR4_S_AXI_wdata[511:0];
  assign axi_interconnect_0_M00_AXI_WLAST = C0_DDR4_S_AXI_wlast;
  assign axi_interconnect_0_M00_AXI_WSTRB = C0_DDR4_S_AXI_wstrb[63:0];
  assign axi_interconnect_0_M00_AXI_WVALID = C0_DDR4_S_AXI_wvalid;
  assign axi_pcie3_0_axi_periph_M00_AXI_ARADDR = C0_DDR4_S_AXI_CTRL_araddr[31:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_ARVALID = C0_DDR4_S_AXI_CTRL_arvalid;
  assign axi_pcie3_0_axi_periph_M00_AXI_AWADDR = C0_DDR4_S_AXI_CTRL_awaddr[31:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWVALID = C0_DDR4_S_AXI_CTRL_awvalid;
  assign axi_pcie3_0_axi_periph_M00_AXI_BREADY = C0_DDR4_S_AXI_CTRL_bready;
  assign axi_pcie3_0_axi_periph_M00_AXI_RREADY = C0_DDR4_S_AXI_CTRL_rready;
  assign axi_pcie3_0_axi_periph_M00_AXI_WDATA = C0_DDR4_S_AXI_CTRL_wdata[31:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WVALID = C0_DDR4_S_AXI_CTRL_wvalid;
  assign axi_pcie3_0_axi_periph_M18_AXI_ARADDR = S_AXI_araddr[8:0];
  assign axi_pcie3_0_axi_periph_M18_AXI_ARVALID = S_AXI_arvalid;
  assign axi_pcie3_0_axi_periph_M18_AXI_AWADDR = S_AXI_awaddr[8:0];
  assign axi_pcie3_0_axi_periph_M18_AXI_AWVALID = S_AXI_awvalid;
  assign axi_pcie3_0_axi_periph_M18_AXI_BREADY = S_AXI_bready;
  assign axi_pcie3_0_axi_periph_M18_AXI_RREADY = S_AXI_rready;
  assign axi_pcie3_0_axi_periph_M18_AXI_WDATA = S_AXI_wdata[31:0];
  assign axi_pcie3_0_axi_periph_M18_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign axi_pcie3_0_axi_periph_M18_AXI_WVALID = S_AXI_wvalid;
  assign axi_pcie3_0_axi_periph_M19_AXI_ARADDR = s00_axi_araddr[17:0];
  assign axi_pcie3_0_axi_periph_M19_AXI_ARPROT = s00_axi_arprot[2:0];
  assign axi_pcie3_0_axi_periph_M19_AXI_ARVALID = s00_axi_arvalid;
  assign axi_pcie3_0_axi_periph_M19_AXI_AWADDR = s00_axi_awaddr[17:0];
  assign axi_pcie3_0_axi_periph_M19_AXI_AWPROT = s00_axi_awprot[2:0];
  assign axi_pcie3_0_axi_periph_M19_AXI_AWVALID = s00_axi_awvalid;
  assign axi_pcie3_0_axi_periph_M19_AXI_BREADY = s00_axi_bready;
  assign axi_pcie3_0_axi_periph_M19_AXI_RREADY = s00_axi_rready;
  assign axi_pcie3_0_axi_periph_M19_AXI_WDATA = s00_axi_wdata[31:0];
  assign axi_pcie3_0_axi_periph_M19_AXI_WSTRB = s00_axi_wstrb[3:0];
  assign axi_pcie3_0_axi_periph_M19_AXI_WVALID = s00_axi_wvalid;
  assign c0_ddr4_ui_clk = ddr4_0_c0_ddr4_ui_clk;
  assign c0_ddr4_ui_clk_sync_rst = ddr4_0_c0_ddr4_ui_clk_sync_rst;
  assign c1_ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign c1_ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign c1_ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign c1_ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign c1_ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign c1_ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign c1_ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign c1_ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign c1_ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign c1_ddr4_par = ddr4_0_C0_DDR4_PAR;
  assign c1_ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign c1_init_calib_complete = ddr4_1_c0_init_calib_complete;
  assign clk_wiz_0_clk_out_50M = s_axi_aclk;
  assign rst_ddr4_0_300M1_peripheral_aresetn = s_axi_aresetn;
  assign rst_ddr4_0_300M_peripheral_aresetn = c0_ddr4_aresetn;
  assign s00_axi_arready = axi_pcie3_0_axi_periph_M19_AXI_ARREADY;
  assign s00_axi_awready = axi_pcie3_0_axi_periph_M19_AXI_AWREADY;
  assign s00_axi_bresp[1:0] = axi_pcie3_0_axi_periph_M19_AXI_BRESP;
  assign s00_axi_bvalid = axi_pcie3_0_axi_periph_M19_AXI_BVALID;
  assign s00_axi_rdata[31:0] = axi_pcie3_0_axi_periph_M19_AXI_RDATA;
  assign s00_axi_rresp[1:0] = axi_pcie3_0_axi_periph_M19_AXI_RRESP;
  assign s00_axi_rvalid = axi_pcie3_0_axi_periph_M19_AXI_RVALID;
  assign s00_axi_wready = axi_pcie3_0_axi_periph_M19_AXI_WREADY;
  assign util_vector_logic_0_Res = shell_sys_rst_in;
  PL_X_SREF_ctrl_logic_1_0 SREF_ctrl_logic_1
       (.DDR_SREF_CTRL_IN(axi_gpio_C1_SREF_gpio_io_o),
        .DDR_SREF_CTRL_OUT(SREF_ctrl_logic_1_DDR_SREF_CTRL_OUT),
        .ddr4_app_mem_init_skip(SREF_ctrl_logic_1_ddr4_app_mem_init_skip),
        .ddr4_app_restore_complete(SREF_ctrl_logic_1_ddr4_app_restore_complete),
        .ddr4_app_sref_ack(ddr4_1_c0_ddr4_app_sref_ack),
        .ddr4_app_sref_req(SREF_ctrl_logic_1_ddr4_app_sref_req),
        .ddr4_app_xsdb_select(SREF_ctrl_logic_1_ddr4_app_xsdb_select));
  PL_X_axi_gpio_C1_SREF_0 axi_gpio_C1_SREF
       (.gpio2_io_i(SREF_ctrl_logic_1_DDR_SREF_CTRL_OUT),
        .gpio_io_o(axi_gpio_C1_SREF_gpio_io_o),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M18_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M18_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M18_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M18_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M18_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M18_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M18_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M18_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M18_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M18_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M18_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M18_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M18_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M18_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M18_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M18_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M18_AXI_WVALID));
  PL_X_ddr4_1_0 ddr4_1
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_ack(ddr4_1_c0_ddr4_app_sref_ack),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .c0_ddr4_app_xsdb_rd_data(ddr4_1_c0_ddr4_app_xsdb_rd_data),
        .c0_ddr4_app_xsdb_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .c0_ddr4_app_xsdb_rdy(ddr4_1_c0_ddr4_app_xsdb_rdy),
        .c0_ddr4_app_xsdb_select(SREF_ctrl_logic_1_ddr4_app_xsdb_select),
        .c0_ddr4_app_xsdb_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .c0_ddr4_app_xsdb_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .c0_ddr4_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dq(c1_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c1_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c1_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_parity(ddr4_0_C0_DDR4_PAR),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[33:0]),
        .c0_ddr4_s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_interconnect_0_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[33:0]),
        .c0_ddr4_s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_interconnect_0_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_interconnect_0_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_interconnect_0_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_1_c0_init_calib_complete),
        .c0_sys_clk_i(C1_SYS_CLK),
        .sys_rst(sref_init_restore_sy_0_c0_ddr4_sys_rst_out));
  PL_X_myip_AXIL_TO_XSDB_v1_0_0 myip_AXIL_TO_XSDB_v1_0
       (.XSDB_addr(myip_AXIL_TO_XSDB_v1_0_XSDB_addr),
        .XSDB_rd_data(ddr4_1_c0_ddr4_app_xsdb_rd_data),
        .XSDB_rd_en(myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en),
        .XSDB_rdy(ddr4_1_c0_ddr4_app_xsdb_rdy),
        .XSDB_wr_data(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data),
        .XSDB_wr_en(myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en),
        .s00_axi_aclk(ddr4_0_c0_ddr4_ui_clk),
        .s00_axi_araddr(axi_pcie3_0_axi_periph_M19_AXI_ARADDR),
        .s00_axi_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .s00_axi_arprot(axi_pcie3_0_axi_periph_M19_AXI_ARPROT),
        .s00_axi_arready(axi_pcie3_0_axi_periph_M19_AXI_ARREADY),
        .s00_axi_arvalid(axi_pcie3_0_axi_periph_M19_AXI_ARVALID),
        .s00_axi_awaddr(axi_pcie3_0_axi_periph_M19_AXI_AWADDR),
        .s00_axi_awprot(axi_pcie3_0_axi_periph_M19_AXI_AWPROT),
        .s00_axi_awready(axi_pcie3_0_axi_periph_M19_AXI_AWREADY),
        .s00_axi_awvalid(axi_pcie3_0_axi_periph_M19_AXI_AWVALID),
        .s00_axi_bready(axi_pcie3_0_axi_periph_M19_AXI_BREADY),
        .s00_axi_bresp(axi_pcie3_0_axi_periph_M19_AXI_BRESP),
        .s00_axi_bvalid(axi_pcie3_0_axi_periph_M19_AXI_BVALID),
        .s00_axi_rdata(axi_pcie3_0_axi_periph_M19_AXI_RDATA),
        .s00_axi_rready(axi_pcie3_0_axi_periph_M19_AXI_RREADY),
        .s00_axi_rresp(axi_pcie3_0_axi_periph_M19_AXI_RRESP),
        .s00_axi_rvalid(axi_pcie3_0_axi_periph_M19_AXI_RVALID),
        .s00_axi_wdata(axi_pcie3_0_axi_periph_M19_AXI_WDATA),
        .s00_axi_wready(axi_pcie3_0_axi_periph_M19_AXI_WREADY),
        .s00_axi_wstrb(axi_pcie3_0_axi_periph_M19_AXI_WSTRB),
        .s00_axi_wvalid(axi_pcie3_0_axi_periph_M19_AXI_WVALID));
  PL_X_sref_init_restore_sy_0_0 sref_init_restore_sy_0
       (.c0_ddr4_app_mem_init_skip(sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(sref_init_restore_sy_0_c0_ddr4_app_restore_complete),
        .c0_ddr4_app_restore_en(sref_init_restore_sy_0_c0_ddr4_app_restore_en),
        .c0_ddr4_app_sref_req(sref_init_restore_sy_0_c0_ddr4_app_sref_req),
        .c0_ddr4_sys_rst_out(sref_init_restore_sy_0_c0_ddr4_sys_rst_out),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_1_c0_init_calib_complete),
        .c0_mig_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .shell_mem_init_skip(SREF_ctrl_logic_1_ddr4_app_mem_init_skip),
        .shell_restore_complete(SREF_ctrl_logic_1_ddr4_app_restore_complete),
        .shell_sref_req(SREF_ctrl_logic_1_ddr4_app_sref_req),
        .shell_sys_rst_in(util_vector_logic_0_Res));
  PL_X_system_ila_0_0 system_ila_AXI_MM_DDRC
       (.SLOT_0_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR[33:0]),
        .SLOT_0_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .SLOT_0_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .SLOT_0_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR[33:0]),
        .SLOT_0_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .SLOT_0_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .SLOT_0_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .SLOT_0_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .SLOT_0_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .SLOT_0_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .resetn(rst_ddr4_0_300M_peripheral_aresetn));
endmodule

module FROM_SH_AXI_LITE_NORTH_imp_44SG2B
   (S_AXI_araddr,
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
    S_AXI_wvalid,
    aclk,
    decouple,
    rp_AXI_LITE_TO_HLS_PR_0_araddr,
    rp_AXI_LITE_TO_HLS_PR_0_arprot,
    rp_AXI_LITE_TO_HLS_PR_0_arready,
    rp_AXI_LITE_TO_HLS_PR_0_arvalid,
    rp_AXI_LITE_TO_HLS_PR_0_awaddr,
    rp_AXI_LITE_TO_HLS_PR_0_awprot,
    rp_AXI_LITE_TO_HLS_PR_0_awready,
    rp_AXI_LITE_TO_HLS_PR_0_awvalid,
    rp_AXI_LITE_TO_HLS_PR_0_bready,
    rp_AXI_LITE_TO_HLS_PR_0_bresp,
    rp_AXI_LITE_TO_HLS_PR_0_bvalid,
    rp_AXI_LITE_TO_HLS_PR_0_rdata,
    rp_AXI_LITE_TO_HLS_PR_0_rready,
    rp_AXI_LITE_TO_HLS_PR_0_rresp,
    rp_AXI_LITE_TO_HLS_PR_0_rvalid,
    rp_AXI_LITE_TO_HLS_PR_0_wdata,
    rp_AXI_LITE_TO_HLS_PR_0_wready,
    rp_AXI_LITE_TO_HLS_PR_0_wstrb,
    rp_AXI_LITE_TO_HLS_PR_0_wvalid);
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
  input aclk;
  input decouple;
  output [31:0]rp_AXI_LITE_TO_HLS_PR_0_araddr;
  output [2:0]rp_AXI_LITE_TO_HLS_PR_0_arprot;
  input rp_AXI_LITE_TO_HLS_PR_0_arready;
  output rp_AXI_LITE_TO_HLS_PR_0_arvalid;
  output [31:0]rp_AXI_LITE_TO_HLS_PR_0_awaddr;
  output [2:0]rp_AXI_LITE_TO_HLS_PR_0_awprot;
  input rp_AXI_LITE_TO_HLS_PR_0_awready;
  output rp_AXI_LITE_TO_HLS_PR_0_awvalid;
  output rp_AXI_LITE_TO_HLS_PR_0_bready;
  input [1:0]rp_AXI_LITE_TO_HLS_PR_0_bresp;
  input rp_AXI_LITE_TO_HLS_PR_0_bvalid;
  input [31:0]rp_AXI_LITE_TO_HLS_PR_0_rdata;
  output rp_AXI_LITE_TO_HLS_PR_0_rready;
  input [1:0]rp_AXI_LITE_TO_HLS_PR_0_rresp;
  input rp_AXI_LITE_TO_HLS_PR_0_rvalid;
  output [31:0]rp_AXI_LITE_TO_HLS_PR_0_wdata;
  input rp_AXI_LITE_TO_HLS_PR_0_wready;
  output [3:0]rp_AXI_LITE_TO_HLS_PR_0_wstrb;
  output rp_AXI_LITE_TO_HLS_PR_0_wvalid;

  wire [31:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]axi_register_slice_2_M_AXI_ARADDR;
  wire [2:0]axi_register_slice_2_M_AXI_ARPROT;
  wire axi_register_slice_2_M_AXI_ARREADY;
  wire axi_register_slice_2_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_2_M_AXI_AWADDR;
  wire [2:0]axi_register_slice_2_M_AXI_AWPROT;
  wire axi_register_slice_2_M_AXI_AWREADY;
  wire axi_register_slice_2_M_AXI_AWVALID;
  wire axi_register_slice_2_M_AXI_BREADY;
  wire [1:0]axi_register_slice_2_M_AXI_BRESP;
  wire axi_register_slice_2_M_AXI_BVALID;
  wire [31:0]axi_register_slice_2_M_AXI_RDATA;
  wire axi_register_slice_2_M_AXI_RREADY;
  wire [1:0]axi_register_slice_2_M_AXI_RRESP;
  wire axi_register_slice_2_M_AXI_RVALID;
  wire [31:0]axi_register_slice_2_M_AXI_WDATA;
  wire axi_register_slice_2_M_AXI_WREADY;
  wire [3:0]axi_register_slice_2_M_AXI_WSTRB;
  wire axi_register_slice_2_M_AXI_WVALID;
  wire clk_wiz_0_clk_out_125M;
  wire decouple_1;

  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign axi_register_slice_2_M_AXI_ARREADY = rp_AXI_LITE_TO_HLS_PR_0_arready;
  assign axi_register_slice_2_M_AXI_AWREADY = rp_AXI_LITE_TO_HLS_PR_0_awready;
  assign axi_register_slice_2_M_AXI_BRESP = rp_AXI_LITE_TO_HLS_PR_0_bresp[1:0];
  assign axi_register_slice_2_M_AXI_BVALID = rp_AXI_LITE_TO_HLS_PR_0_bvalid;
  assign axi_register_slice_2_M_AXI_RDATA = rp_AXI_LITE_TO_HLS_PR_0_rdata[31:0];
  assign axi_register_slice_2_M_AXI_RRESP = rp_AXI_LITE_TO_HLS_PR_0_rresp[1:0];
  assign axi_register_slice_2_M_AXI_RVALID = rp_AXI_LITE_TO_HLS_PR_0_rvalid;
  assign axi_register_slice_2_M_AXI_WREADY = rp_AXI_LITE_TO_HLS_PR_0_wready;
  assign clk_wiz_0_clk_out_125M = aclk;
  assign decouple_1 = decouple;
  assign rp_AXI_LITE_TO_HLS_PR_0_araddr[31:0] = axi_register_slice_2_M_AXI_ARADDR;
  assign rp_AXI_LITE_TO_HLS_PR_0_arprot[2:0] = axi_register_slice_2_M_AXI_ARPROT;
  assign rp_AXI_LITE_TO_HLS_PR_0_arvalid = axi_register_slice_2_M_AXI_ARVALID;
  assign rp_AXI_LITE_TO_HLS_PR_0_awaddr[31:0] = axi_register_slice_2_M_AXI_AWADDR;
  assign rp_AXI_LITE_TO_HLS_PR_0_awprot[2:0] = axi_register_slice_2_M_AXI_AWPROT;
  assign rp_AXI_LITE_TO_HLS_PR_0_awvalid = axi_register_slice_2_M_AXI_AWVALID;
  assign rp_AXI_LITE_TO_HLS_PR_0_bready = axi_register_slice_2_M_AXI_BREADY;
  assign rp_AXI_LITE_TO_HLS_PR_0_rready = axi_register_slice_2_M_AXI_RREADY;
  assign rp_AXI_LITE_TO_HLS_PR_0_wdata[31:0] = axi_register_slice_2_M_AXI_WDATA;
  assign rp_AXI_LITE_TO_HLS_PR_0_wstrb[3:0] = axi_register_slice_2_M_AXI_WSTRB;
  assign rp_AXI_LITE_TO_HLS_PR_0_wvalid = axi_register_slice_2_M_AXI_WVALID;
  PL_X_axi_register_slice_2_0 axi_register_slice_2
       (.aclk(clk_wiz_0_clk_out_125M),
        .aresetn(decouple_1),
        .m_axi_araddr(axi_register_slice_2_M_AXI_ARADDR),
        .m_axi_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .m_axi_arready(axi_register_slice_2_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_2_M_AXI_AWADDR),
        .m_axi_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .m_axi_awready(axi_register_slice_2_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_2_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_2_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_2_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_2_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_2_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
endmodule

(* CORE_GENERATION_INFO = "PL_X,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PL_X,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=72,numReposBlks=48,numNonXlnxBlks=1,numHierBlks=24,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "PL_X.hwdef" *) 
module PL_X
   (BMC_GPIO,
    BMC_UART_rxd,
    BMC_UART_txd,
    C0_DDR_SREF_CTRL_IN,
    C0_DDR_SREF_CTRL_OUT,
    C1_SYS_CLK,
    C2_DDR_SREF_CTRL_IN,
    C2_DDR_SREF_CTRL_OUT,
    C3_DDR_SREF_CTRL_IN,
    C3_DDR_SREF_CTRL_OUT,
    EFUSE_IN_tri_i,
    INIT_CAL_DONE,
    MIG_1_RST,
    M_AXI_LITE_TO_HLS_PR_NORTH_araddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_arprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_arready,
    M_AXI_LITE_TO_HLS_PR_NORTH_arvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_awaddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_awprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_awready,
    M_AXI_LITE_TO_HLS_PR_NORTH_awvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_bready,
    M_AXI_LITE_TO_HLS_PR_NORTH_bresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_bvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_rdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_rready,
    M_AXI_LITE_TO_HLS_PR_NORTH_rresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_rvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_wdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_wready,
    M_AXI_LITE_TO_HLS_PR_NORTH_wstrb,
    M_AXI_LITE_TO_HLS_PR_NORTH_wvalid,
    S00_AXI_0_araddr,
    S00_AXI_0_arprot,
    S00_AXI_0_arready,
    S00_AXI_0_arvalid,
    S00_AXI_0_awaddr,
    S00_AXI_0_awprot,
    S00_AXI_0_awready,
    S00_AXI_0_awvalid,
    S00_AXI_0_bready,
    S00_AXI_0_bresp,
    S00_AXI_0_bvalid,
    S00_AXI_0_rdata,
    S00_AXI_0_rready,
    S00_AXI_0_rresp,
    S00_AXI_0_rvalid,
    S00_AXI_0_wdata,
    S00_AXI_0_wready,
    S00_AXI_0_wstrb,
    S00_AXI_0_wvalid,
    SHELL_VERSION_IN_tri_i,
    S_AXI_MM_0_araddr,
    S_AXI_MM_0_arburst,
    S_AXI_MM_0_arcache,
    S_AXI_MM_0_arid,
    S_AXI_MM_0_arlen,
    S_AXI_MM_0_arlock,
    S_AXI_MM_0_arprot,
    S_AXI_MM_0_arqos,
    S_AXI_MM_0_arready,
    S_AXI_MM_0_arregion,
    S_AXI_MM_0_arsize,
    S_AXI_MM_0_arvalid,
    S_AXI_MM_0_awaddr,
    S_AXI_MM_0_awburst,
    S_AXI_MM_0_awcache,
    S_AXI_MM_0_awid,
    S_AXI_MM_0_awlen,
    S_AXI_MM_0_awlock,
    S_AXI_MM_0_awprot,
    S_AXI_MM_0_awqos,
    S_AXI_MM_0_awready,
    S_AXI_MM_0_awregion,
    S_AXI_MM_0_awsize,
    S_AXI_MM_0_awvalid,
    S_AXI_MM_0_bid,
    S_AXI_MM_0_bready,
    S_AXI_MM_0_bresp,
    S_AXI_MM_0_bvalid,
    S_AXI_MM_0_rdata,
    S_AXI_MM_0_rid,
    S_AXI_MM_0_rlast,
    S_AXI_MM_0_rready,
    S_AXI_MM_0_rresp,
    S_AXI_MM_0_rvalid,
    S_AXI_MM_0_wdata,
    S_AXI_MM_0_wlast,
    S_AXI_MM_0_wready,
    S_AXI_MM_0_wstrb,
    S_AXI_MM_0_wvalid,
    axi_reset_n_250M_out,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_par,
    c1_ddr4_reset_n,
    c1_init_calib_complete,
    clk_250M,
    clk_out_125M,
    clk_out_300M,
    clk_out_400M,
    clk_out_PROG,
    deviceDNA_PA_tri_i,
    deviceDNA_PB_tri_i,
    deviceDNA_PC_tri_i,
    deviceDNA_PD_tri_i,
    iiC_scl_i,
    iiC_scl_o,
    iiC_scl_t,
    iiC_sda_i,
    iiC_sda_o,
    iiC_sda_t,
    s_axi_aresetn,
    user_lnk_up_sd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BMC_GPIO INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BMC_GPIO, PortWidth 4, SENSITIVITY LEVEL_HIGH" *) input [3:0]BMC_GPIO;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 BMC_UART RxD" *) input BMC_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 BMC_UART TxD" *) output BMC_UART_txd;
  input [7:0]C0_DDR_SREF_CTRL_IN;
  output [7:0]C0_DDR_SREF_CTRL_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C1_SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C1_SYS_CLK, CLK_DOMAIN PL_X_C1_SYS_CLK_0, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input C1_SYS_CLK;
  input [7:0]C2_DDR_SREF_CTRL_IN;
  output [7:0]C2_DDR_SREF_CTRL_OUT;
  input [7:0]C3_DDR_SREF_CTRL_IN;
  output [7:0]C3_DDR_SREF_CTRL_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 EFUSE_IN TRI_I" *) input [31:0]EFUSE_IN_tri_i;
  input [3:0]INIT_CAL_DONE;
  input MIG_1_RST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_LITE_TO_HLS_PR_NORTH, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PL_X_clk_250M, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARPROT" *) output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARREADY" *) input M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARVALID" *) output M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWADDR" *) output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWPROT" *) output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWREADY" *) input M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWVALID" *) output M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH BREADY" *) output M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH BRESP" *) input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH BVALID" *) input M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RDATA" *) input [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RREADY" *) output M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RRESP" *) input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RVALID" *) input M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WDATA" *) output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WREADY" *) input M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WSTRB" *) output [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WVALID" *) output M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PL_X_clk_250M, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S00_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARPROT" *) input [2:0]S00_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARREADY" *) output S00_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARVALID" *) input S00_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWADDR" *) input [31:0]S00_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWPROT" *) input [2:0]S00_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWREADY" *) output S00_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWVALID" *) input S00_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BREADY" *) input S00_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BRESP" *) output [1:0]S00_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BVALID" *) output S00_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RDATA" *) output [31:0]S00_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RREADY" *) input S00_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RRESP" *) output [1:0]S00_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RVALID" *) output S00_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WDATA" *) input [31:0]S00_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WREADY" *) output S00_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WSTRB" *) input [3:0]S00_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WVALID" *) input S00_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 SHELL_VERSION_IN TRI_I" *) input [31:0]SHELL_VERSION_IN_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MM_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PL_X_clk_250M, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_MM_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARBURST" *) input [1:0]S_AXI_MM_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARCACHE" *) input [3:0]S_AXI_MM_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARID" *) input [5:0]S_AXI_MM_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARLEN" *) input [7:0]S_AXI_MM_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARLOCK" *) input [0:0]S_AXI_MM_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARPROT" *) input [2:0]S_AXI_MM_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARQOS" *) input [3:0]S_AXI_MM_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARREADY" *) output S_AXI_MM_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARREGION" *) input [3:0]S_AXI_MM_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARSIZE" *) input [2:0]S_AXI_MM_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 ARVALID" *) input S_AXI_MM_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWADDR" *) input [63:0]S_AXI_MM_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWBURST" *) input [1:0]S_AXI_MM_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWCACHE" *) input [3:0]S_AXI_MM_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWID" *) input [5:0]S_AXI_MM_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWLEN" *) input [7:0]S_AXI_MM_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWLOCK" *) input [0:0]S_AXI_MM_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWPROT" *) input [2:0]S_AXI_MM_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWQOS" *) input [3:0]S_AXI_MM_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWREADY" *) output S_AXI_MM_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWREGION" *) input [3:0]S_AXI_MM_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWSIZE" *) input [2:0]S_AXI_MM_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 AWVALID" *) input S_AXI_MM_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 BID" *) output [5:0]S_AXI_MM_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 BREADY" *) input S_AXI_MM_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 BRESP" *) output [1:0]S_AXI_MM_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 BVALID" *) output S_AXI_MM_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 RDATA" *) output [511:0]S_AXI_MM_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 RID" *) output [5:0]S_AXI_MM_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 RLAST" *) output S_AXI_MM_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 RREADY" *) input S_AXI_MM_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 RRESP" *) output [1:0]S_AXI_MM_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 RVALID" *) output S_AXI_MM_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 WDATA" *) input [511:0]S_AXI_MM_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 WLAST" *) input S_AXI_MM_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 WREADY" *) output S_AXI_MM_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 WSTRB" *) input [63:0]S_AXI_MM_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM_0 WVALID" *) input S_AXI_MM_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RESET_N_250M_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RESET_N_250M_OUT, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]axi_reset_n_250M_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c1_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output c1_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ADR" *) output [16:0]c1_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 BA" *) output [1:0]c1_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 BG" *) output [1:0]c1_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CK_C" *) output [0:0]c1_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CK_T" *) output [0:0]c1_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CKE" *) output [0:0]c1_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CS_N" *) output [0:0]c1_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQ" *) inout [71:0]c1_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQS_C" *) inout [17:0]c1_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQS_T" *) inout [17:0]c1_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ODT" *) output [0:0]c1_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 PAR" *) output c1_ddr4_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 RESET_N" *) output c1_ddr4_reset_n;
  output c1_init_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_250M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_250M, ASSOCIATED_BUSIF S00_AXI_0:S_AXI_MM_0:M_AXI_LITE_TO_HLS_PR_NORTH, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN PL_X_clk_250M, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_250M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_125M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_125M, CLK_DOMAIN PL_X_clk_wiz_0_0_clk_out_125M, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_125M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_300M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_300M, CLK_DOMAIN PL_X_clk_wiz_PROG_0_clk_out_PROG, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_300M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_400M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_400M, CLK_DOMAIN PL_X_clk_wiz_PROG_0_clk_out_PROG, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_400M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_PROG CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_PROG, CLK_DOMAIN PL_X_clk_wiz_PROG_0_clk_out_PROG, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_PROG;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 deviceDNA_PA TRI_I" *) input [31:0]deviceDNA_PA_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 deviceDNA_PB TRI_I" *) input [31:0]deviceDNA_PB_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 deviceDNA_PC TRI_I" *) input [31:0]deviceDNA_PC_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 deviceDNA_PD TRI_I" *) input [31:0]deviceDNA_PD_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iiC SCL_I" *) input iiC_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iiC SCL_O" *) output iiC_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iiC SCL_T" *) output iiC_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iiC SDA_I" *) input iiC_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iiC SDA_O" *) output iiC_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iiC SDA_T" *) output iiC_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  input user_lnk_up_sd;

  wire [3:0]BMC_GPIO;
  wire BMC_UART_RxD;
  wire BMC_UART_TxD;
  wire [7:0]C0_DDR_SREF_CTRL_IN_1;
  wire C1_SYS_CLK;
  wire [7:0]C2_DDR_SREF_CTRL_IN_1;
  wire [7:0]C3_DDR_SREF_CTRL_IN_1;
  wire [3:0]INIT_CAL_DONE_1;
  wire [7:0]PL_x_C0_DDR_SREF_CTRL_OUT;
  wire [7:0]PL_x_C2_DDR_SREF_CTRL_OUT;
  wire [7:0]PL_x_C3_DDR_SREF_CTRL_OUT;
  wire [31:0]PL_x_EFUSE_IN_TRI_I;
  wire [31:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARADDR;
  wire [2:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARPROT;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARREADY;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARVALID;
  wire [31:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWADDR;
  wire [2:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWPROT;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWREADY;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWVALID;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BREADY;
  wire [1:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BRESP;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BVALID;
  wire [31:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RDATA;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RREADY;
  wire [1:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RRESP;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RVALID;
  wire [31:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WDATA;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WREADY;
  wire [3:0]PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WSTRB;
  wire PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WVALID;
  wire [31:0]PL_x_SHELL_VERSION_IN_TRI_I;
  wire [0:0]PL_x_axi_reset_n_250M_out;
  wire PL_x_c1_ddr4_ACT_N;
  wire [16:0]PL_x_c1_ddr4_ADR;
  wire [1:0]PL_x_c1_ddr4_BA;
  wire [1:0]PL_x_c1_ddr4_BG;
  wire [0:0]PL_x_c1_ddr4_CKE;
  wire [0:0]PL_x_c1_ddr4_CK_C;
  wire [0:0]PL_x_c1_ddr4_CK_T;
  wire [0:0]PL_x_c1_ddr4_CS_N;
  wire [71:0]PL_x_c1_ddr4_DQ;
  wire [17:0]PL_x_c1_ddr4_DQS_C;
  wire [17:0]PL_x_c1_ddr4_DQS_T;
  wire [0:0]PL_x_c1_ddr4_ODT;
  wire PL_x_c1_ddr4_PAR;
  wire PL_x_c1_ddr4_RESET_N;
  wire PL_x_c1_init_calib_complete;
  wire PL_x_clk_out_125M;
  wire PL_x_clk_out_300M;
  wire PL_x_clk_out_400M;
  wire PL_x_clk_out_PROG;
  wire [31:0]PL_x_deviceDNA_PA_TRI_I;
  wire [31:0]PL_x_deviceDNA_PB_TRI_I;
  wire [31:0]PL_x_deviceDNA_PC_TRI_I;
  wire [31:0]PL_x_deviceDNA_PD_TRI_I;
  wire [31:0]S00_AXI_0_1_ARADDR;
  wire [2:0]S00_AXI_0_1_ARPROT;
  wire S00_AXI_0_1_ARREADY;
  wire S00_AXI_0_1_ARVALID;
  wire [31:0]S00_AXI_0_1_AWADDR;
  wire [2:0]S00_AXI_0_1_AWPROT;
  wire S00_AXI_0_1_AWREADY;
  wire S00_AXI_0_1_AWVALID;
  wire S00_AXI_0_1_BREADY;
  wire [1:0]S00_AXI_0_1_BRESP;
  wire S00_AXI_0_1_BVALID;
  wire [31:0]S00_AXI_0_1_RDATA;
  wire S00_AXI_0_1_RREADY;
  wire [1:0]S00_AXI_0_1_RRESP;
  wire S00_AXI_0_1_RVALID;
  wire [31:0]S00_AXI_0_1_WDATA;
  wire S00_AXI_0_1_WREADY;
  wire [3:0]S00_AXI_0_1_WSTRB;
  wire S00_AXI_0_1_WVALID;
  wire [63:0]S_AXI_MM_0_1_ARADDR;
  wire [1:0]S_AXI_MM_0_1_ARBURST;
  wire [3:0]S_AXI_MM_0_1_ARCACHE;
  wire [5:0]S_AXI_MM_0_1_ARID;
  wire [7:0]S_AXI_MM_0_1_ARLEN;
  wire [0:0]S_AXI_MM_0_1_ARLOCK;
  wire [2:0]S_AXI_MM_0_1_ARPROT;
  wire [3:0]S_AXI_MM_0_1_ARQOS;
  wire S_AXI_MM_0_1_ARREADY;
  wire [3:0]S_AXI_MM_0_1_ARREGION;
  wire [2:0]S_AXI_MM_0_1_ARSIZE;
  wire S_AXI_MM_0_1_ARVALID;
  wire [63:0]S_AXI_MM_0_1_AWADDR;
  wire [1:0]S_AXI_MM_0_1_AWBURST;
  wire [3:0]S_AXI_MM_0_1_AWCACHE;
  wire [5:0]S_AXI_MM_0_1_AWID;
  wire [7:0]S_AXI_MM_0_1_AWLEN;
  wire [0:0]S_AXI_MM_0_1_AWLOCK;
  wire [2:0]S_AXI_MM_0_1_AWPROT;
  wire [3:0]S_AXI_MM_0_1_AWQOS;
  wire S_AXI_MM_0_1_AWREADY;
  wire [3:0]S_AXI_MM_0_1_AWREGION;
  wire [2:0]S_AXI_MM_0_1_AWSIZE;
  wire S_AXI_MM_0_1_AWVALID;
  wire [5:0]S_AXI_MM_0_1_BID;
  wire S_AXI_MM_0_1_BREADY;
  wire [1:0]S_AXI_MM_0_1_BRESP;
  wire S_AXI_MM_0_1_BVALID;
  wire [511:0]S_AXI_MM_0_1_RDATA;
  wire [5:0]S_AXI_MM_0_1_RID;
  wire S_AXI_MM_0_1_RLAST;
  wire S_AXI_MM_0_1_RREADY;
  wire [1:0]S_AXI_MM_0_1_RRESP;
  wire S_AXI_MM_0_1_RVALID;
  wire [511:0]S_AXI_MM_0_1_WDATA;
  wire S_AXI_MM_0_1_WLAST;
  wire S_AXI_MM_0_1_WREADY;
  wire [63:0]S_AXI_MM_0_1_WSTRB;
  wire S_AXI_MM_0_1_WVALID;
  wire clk_out_250M_0_1;
  wire iiC_SCL_I;
  wire iiC_SCL_O;
  wire iiC_SCL_T;
  wire iiC_SDA_I;
  wire iiC_SDA_O;
  wire iiC_SDA_T;
  wire s_axi_aresetn_0_1;
  wire shell_sys_rst_in_0_1;
  wire user_lnk_up_sd_0_1;

  assign BMC_UART_RxD = BMC_UART_rxd;
  assign BMC_UART_txd = BMC_UART_TxD;
  assign C0_DDR_SREF_CTRL_IN_1 = C0_DDR_SREF_CTRL_IN[7:0];
  assign C0_DDR_SREF_CTRL_OUT[7:0] = PL_x_C0_DDR_SREF_CTRL_OUT;
  assign C2_DDR_SREF_CTRL_IN_1 = C2_DDR_SREF_CTRL_IN[7:0];
  assign C2_DDR_SREF_CTRL_OUT[7:0] = PL_x_C2_DDR_SREF_CTRL_OUT;
  assign C3_DDR_SREF_CTRL_IN_1 = C3_DDR_SREF_CTRL_IN[7:0];
  assign C3_DDR_SREF_CTRL_OUT[7:0] = PL_x_C3_DDR_SREF_CTRL_OUT;
  assign INIT_CAL_DONE_1 = INIT_CAL_DONE[3:0];
  assign M_AXI_LITE_TO_HLS_PR_NORTH_araddr[31:0] = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARADDR;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_arprot[2:0] = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARPROT;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_arvalid = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARVALID;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awaddr[31:0] = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWADDR;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awprot[2:0] = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWPROT;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awvalid = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWVALID;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_bready = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BREADY;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_rready = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RREADY;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wdata[31:0] = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WDATA;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wstrb[3:0] = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WSTRB;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wvalid = PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WVALID;
  assign PL_x_EFUSE_IN_TRI_I = EFUSE_IN_tri_i[31:0];
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARREADY = M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWREADY = M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BRESP = M_AXI_LITE_TO_HLS_PR_NORTH_bresp[1:0];
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BVALID = M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RDATA = M_AXI_LITE_TO_HLS_PR_NORTH_rdata[31:0];
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RRESP = M_AXI_LITE_TO_HLS_PR_NORTH_rresp[1:0];
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RVALID = M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  assign PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WREADY = M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  assign PL_x_SHELL_VERSION_IN_TRI_I = SHELL_VERSION_IN_tri_i[31:0];
  assign PL_x_deviceDNA_PA_TRI_I = deviceDNA_PA_tri_i[31:0];
  assign PL_x_deviceDNA_PB_TRI_I = deviceDNA_PB_tri_i[31:0];
  assign PL_x_deviceDNA_PC_TRI_I = deviceDNA_PC_tri_i[31:0];
  assign PL_x_deviceDNA_PD_TRI_I = deviceDNA_PD_tri_i[31:0];
  assign S00_AXI_0_1_ARADDR = S00_AXI_0_araddr[31:0];
  assign S00_AXI_0_1_ARPROT = S00_AXI_0_arprot[2:0];
  assign S00_AXI_0_1_ARVALID = S00_AXI_0_arvalid;
  assign S00_AXI_0_1_AWADDR = S00_AXI_0_awaddr[31:0];
  assign S00_AXI_0_1_AWPROT = S00_AXI_0_awprot[2:0];
  assign S00_AXI_0_1_AWVALID = S00_AXI_0_awvalid;
  assign S00_AXI_0_1_BREADY = S00_AXI_0_bready;
  assign S00_AXI_0_1_RREADY = S00_AXI_0_rready;
  assign S00_AXI_0_1_WDATA = S00_AXI_0_wdata[31:0];
  assign S00_AXI_0_1_WSTRB = S00_AXI_0_wstrb[3:0];
  assign S00_AXI_0_1_WVALID = S00_AXI_0_wvalid;
  assign S00_AXI_0_arready = S00_AXI_0_1_ARREADY;
  assign S00_AXI_0_awready = S00_AXI_0_1_AWREADY;
  assign S00_AXI_0_bresp[1:0] = S00_AXI_0_1_BRESP;
  assign S00_AXI_0_bvalid = S00_AXI_0_1_BVALID;
  assign S00_AXI_0_rdata[31:0] = S00_AXI_0_1_RDATA;
  assign S00_AXI_0_rresp[1:0] = S00_AXI_0_1_RRESP;
  assign S00_AXI_0_rvalid = S00_AXI_0_1_RVALID;
  assign S00_AXI_0_wready = S00_AXI_0_1_WREADY;
  assign S_AXI_MM_0_1_ARADDR = S_AXI_MM_0_araddr[63:0];
  assign S_AXI_MM_0_1_ARBURST = S_AXI_MM_0_arburst[1:0];
  assign S_AXI_MM_0_1_ARCACHE = S_AXI_MM_0_arcache[3:0];
  assign S_AXI_MM_0_1_ARID = S_AXI_MM_0_arid[5:0];
  assign S_AXI_MM_0_1_ARLEN = S_AXI_MM_0_arlen[7:0];
  assign S_AXI_MM_0_1_ARLOCK = S_AXI_MM_0_arlock[0];
  assign S_AXI_MM_0_1_ARPROT = S_AXI_MM_0_arprot[2:0];
  assign S_AXI_MM_0_1_ARQOS = S_AXI_MM_0_arqos[3:0];
  assign S_AXI_MM_0_1_ARREGION = S_AXI_MM_0_arregion[3:0];
  assign S_AXI_MM_0_1_ARSIZE = S_AXI_MM_0_arsize[2:0];
  assign S_AXI_MM_0_1_ARVALID = S_AXI_MM_0_arvalid;
  assign S_AXI_MM_0_1_AWADDR = S_AXI_MM_0_awaddr[63:0];
  assign S_AXI_MM_0_1_AWBURST = S_AXI_MM_0_awburst[1:0];
  assign S_AXI_MM_0_1_AWCACHE = S_AXI_MM_0_awcache[3:0];
  assign S_AXI_MM_0_1_AWID = S_AXI_MM_0_awid[5:0];
  assign S_AXI_MM_0_1_AWLEN = S_AXI_MM_0_awlen[7:0];
  assign S_AXI_MM_0_1_AWLOCK = S_AXI_MM_0_awlock[0];
  assign S_AXI_MM_0_1_AWPROT = S_AXI_MM_0_awprot[2:0];
  assign S_AXI_MM_0_1_AWQOS = S_AXI_MM_0_awqos[3:0];
  assign S_AXI_MM_0_1_AWREGION = S_AXI_MM_0_awregion[3:0];
  assign S_AXI_MM_0_1_AWSIZE = S_AXI_MM_0_awsize[2:0];
  assign S_AXI_MM_0_1_AWVALID = S_AXI_MM_0_awvalid;
  assign S_AXI_MM_0_1_BREADY = S_AXI_MM_0_bready;
  assign S_AXI_MM_0_1_RREADY = S_AXI_MM_0_rready;
  assign S_AXI_MM_0_1_WDATA = S_AXI_MM_0_wdata[511:0];
  assign S_AXI_MM_0_1_WLAST = S_AXI_MM_0_wlast;
  assign S_AXI_MM_0_1_WSTRB = S_AXI_MM_0_wstrb[63:0];
  assign S_AXI_MM_0_1_WVALID = S_AXI_MM_0_wvalid;
  assign S_AXI_MM_0_arready = S_AXI_MM_0_1_ARREADY;
  assign S_AXI_MM_0_awready = S_AXI_MM_0_1_AWREADY;
  assign S_AXI_MM_0_bid[5:0] = S_AXI_MM_0_1_BID;
  assign S_AXI_MM_0_bresp[1:0] = S_AXI_MM_0_1_BRESP;
  assign S_AXI_MM_0_bvalid = S_AXI_MM_0_1_BVALID;
  assign S_AXI_MM_0_rdata[511:0] = S_AXI_MM_0_1_RDATA;
  assign S_AXI_MM_0_rid[5:0] = S_AXI_MM_0_1_RID;
  assign S_AXI_MM_0_rlast = S_AXI_MM_0_1_RLAST;
  assign S_AXI_MM_0_rresp[1:0] = S_AXI_MM_0_1_RRESP;
  assign S_AXI_MM_0_rvalid = S_AXI_MM_0_1_RVALID;
  assign S_AXI_MM_0_wready = S_AXI_MM_0_1_WREADY;
  assign axi_reset_n_250M_out[0] = PL_x_axi_reset_n_250M_out;
  assign c1_ddr4_act_n = PL_x_c1_ddr4_ACT_N;
  assign c1_ddr4_adr[16:0] = PL_x_c1_ddr4_ADR;
  assign c1_ddr4_ba[1:0] = PL_x_c1_ddr4_BA;
  assign c1_ddr4_bg[1:0] = PL_x_c1_ddr4_BG;
  assign c1_ddr4_ck_c[0] = PL_x_c1_ddr4_CK_C;
  assign c1_ddr4_ck_t[0] = PL_x_c1_ddr4_CK_T;
  assign c1_ddr4_cke[0] = PL_x_c1_ddr4_CKE;
  assign c1_ddr4_cs_n[0] = PL_x_c1_ddr4_CS_N;
  assign c1_ddr4_odt[0] = PL_x_c1_ddr4_ODT;
  assign c1_ddr4_par = PL_x_c1_ddr4_PAR;
  assign c1_ddr4_reset_n = PL_x_c1_ddr4_RESET_N;
  assign c1_init_calib_complete = PL_x_c1_init_calib_complete;
  assign clk_out_125M = PL_x_clk_out_125M;
  assign clk_out_250M_0_1 = clk_250M;
  assign clk_out_300M = PL_x_clk_out_300M;
  assign clk_out_400M = PL_x_clk_out_400M;
  assign clk_out_PROG = PL_x_clk_out_PROG;
  assign iiC_SCL_I = iiC_scl_i;
  assign iiC_SDA_I = iiC_sda_i;
  assign iiC_scl_o = iiC_SCL_O;
  assign iiC_scl_t = iiC_SCL_T;
  assign iiC_sda_o = iiC_SDA_O;
  assign iiC_sda_t = iiC_SDA_T;
  assign s_axi_aresetn_0_1 = s_axi_aresetn;
  assign shell_sys_rst_in_0_1 = MIG_1_RST;
  assign user_lnk_up_sd_0_1 = user_lnk_up_sd;
  PL_x_imp_1DUJP0G PL_x
       (.BMC_GPIO(BMC_GPIO),
        .BMC_UART_rxd(BMC_UART_RxD),
        .BMC_UART_txd(BMC_UART_TxD),
        .C0_DDR_SREF_CTRL_IN(C0_DDR_SREF_CTRL_IN_1),
        .C0_DDR_SREF_CTRL_OUT(PL_x_C0_DDR_SREF_CTRL_OUT),
        .C1_SYS_CLK(C1_SYS_CLK),
        .C2_DDR_SREF_CTRL_IN(C2_DDR_SREF_CTRL_IN_1),
        .C2_DDR_SREF_CTRL_OUT(PL_x_C2_DDR_SREF_CTRL_OUT),
        .C3_DDR_SREF_CTRL_IN(C3_DDR_SREF_CTRL_IN_1),
        .C3_DDR_SREF_CTRL_OUT(PL_x_C3_DDR_SREF_CTRL_OUT),
        .EFUSE_IN_tri_i(PL_x_EFUSE_IN_TRI_I),
        .INIT_CAL_DONE(INIT_CAL_DONE_1),
        .MIG_1_RST(shell_sys_rst_in_0_1),
        .M_AXI_LITE_TO_HLS_PR_NORTH_araddr(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARADDR),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arprot(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARPROT),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arready(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARREADY),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arvalid(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_ARVALID),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awaddr(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWADDR),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awprot(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWPROT),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awready(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWREADY),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awvalid(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_AWVALID),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bready(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BREADY),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bresp(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BRESP),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bvalid(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_BVALID),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rdata(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RDATA),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rready(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RREADY),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rresp(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RRESP),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rvalid(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_RVALID),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wdata(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WDATA),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wready(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WREADY),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wstrb(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WSTRB),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wvalid(PL_x_M_AXI_LITE_TO_HLS_PR_NORTH_WVALID),
        .S00_AXI_araddr(S00_AXI_0_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_0_1_ARPROT),
        .S00_AXI_arready(S00_AXI_0_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_0_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_0_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_0_1_AWPROT),
        .S00_AXI_awready(S00_AXI_0_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_0_1_AWVALID),
        .S00_AXI_bready(S00_AXI_0_1_BREADY),
        .S00_AXI_bresp(S00_AXI_0_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_0_1_BVALID),
        .S00_AXI_rdata(S00_AXI_0_1_RDATA),
        .S00_AXI_rready(S00_AXI_0_1_RREADY),
        .S00_AXI_rresp(S00_AXI_0_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_0_1_RVALID),
        .S00_AXI_wdata(S00_AXI_0_1_WDATA),
        .S00_AXI_wready(S00_AXI_0_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_0_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_0_1_WVALID),
        .SHELL_VERSION_IN_tri_i(PL_x_SHELL_VERSION_IN_TRI_I),
        .S_AXI_MM_0_araddr(S_AXI_MM_0_1_ARADDR),
        .S_AXI_MM_0_arburst(S_AXI_MM_0_1_ARBURST),
        .S_AXI_MM_0_arcache(S_AXI_MM_0_1_ARCACHE),
        .S_AXI_MM_0_arid(S_AXI_MM_0_1_ARID),
        .S_AXI_MM_0_arlen(S_AXI_MM_0_1_ARLEN),
        .S_AXI_MM_0_arlock(S_AXI_MM_0_1_ARLOCK),
        .S_AXI_MM_0_arprot(S_AXI_MM_0_1_ARPROT),
        .S_AXI_MM_0_arqos(S_AXI_MM_0_1_ARQOS),
        .S_AXI_MM_0_arready(S_AXI_MM_0_1_ARREADY),
        .S_AXI_MM_0_arregion(S_AXI_MM_0_1_ARREGION),
        .S_AXI_MM_0_arsize(S_AXI_MM_0_1_ARSIZE),
        .S_AXI_MM_0_arvalid(S_AXI_MM_0_1_ARVALID),
        .S_AXI_MM_0_awaddr(S_AXI_MM_0_1_AWADDR),
        .S_AXI_MM_0_awburst(S_AXI_MM_0_1_AWBURST),
        .S_AXI_MM_0_awcache(S_AXI_MM_0_1_AWCACHE),
        .S_AXI_MM_0_awid(S_AXI_MM_0_1_AWID),
        .S_AXI_MM_0_awlen(S_AXI_MM_0_1_AWLEN),
        .S_AXI_MM_0_awlock(S_AXI_MM_0_1_AWLOCK),
        .S_AXI_MM_0_awprot(S_AXI_MM_0_1_AWPROT),
        .S_AXI_MM_0_awqos(S_AXI_MM_0_1_AWQOS),
        .S_AXI_MM_0_awready(S_AXI_MM_0_1_AWREADY),
        .S_AXI_MM_0_awregion(S_AXI_MM_0_1_AWREGION),
        .S_AXI_MM_0_awsize(S_AXI_MM_0_1_AWSIZE),
        .S_AXI_MM_0_awvalid(S_AXI_MM_0_1_AWVALID),
        .S_AXI_MM_0_bid(S_AXI_MM_0_1_BID),
        .S_AXI_MM_0_bready(S_AXI_MM_0_1_BREADY),
        .S_AXI_MM_0_bresp(S_AXI_MM_0_1_BRESP),
        .S_AXI_MM_0_bvalid(S_AXI_MM_0_1_BVALID),
        .S_AXI_MM_0_rdata(S_AXI_MM_0_1_RDATA),
        .S_AXI_MM_0_rid(S_AXI_MM_0_1_RID),
        .S_AXI_MM_0_rlast(S_AXI_MM_0_1_RLAST),
        .S_AXI_MM_0_rready(S_AXI_MM_0_1_RREADY),
        .S_AXI_MM_0_rresp(S_AXI_MM_0_1_RRESP),
        .S_AXI_MM_0_rvalid(S_AXI_MM_0_1_RVALID),
        .S_AXI_MM_0_wdata(S_AXI_MM_0_1_WDATA),
        .S_AXI_MM_0_wlast(S_AXI_MM_0_1_WLAST),
        .S_AXI_MM_0_wready(S_AXI_MM_0_1_WREADY),
        .S_AXI_MM_0_wstrb(S_AXI_MM_0_1_WSTRB),
        .S_AXI_MM_0_wvalid(S_AXI_MM_0_1_WVALID),
        .axi_reset_n_250M_out(PL_x_axi_reset_n_250M_out),
        .c1_ddr4_act_n(PL_x_c1_ddr4_ACT_N),
        .c1_ddr4_adr(PL_x_c1_ddr4_ADR),
        .c1_ddr4_ba(PL_x_c1_ddr4_BA),
        .c1_ddr4_bg(PL_x_c1_ddr4_BG),
        .c1_ddr4_ck_c(PL_x_c1_ddr4_CK_C),
        .c1_ddr4_ck_t(PL_x_c1_ddr4_CK_T),
        .c1_ddr4_cke(PL_x_c1_ddr4_CKE),
        .c1_ddr4_cs_n(PL_x_c1_ddr4_CS_N),
        .c1_ddr4_dq(c1_ddr4_dq[71:0]),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c[17:0]),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t[17:0]),
        .c1_ddr4_odt(PL_x_c1_ddr4_ODT),
        .c1_ddr4_par(PL_x_c1_ddr4_PAR),
        .c1_ddr4_reset_n(PL_x_c1_ddr4_RESET_N),
        .c1_init_calib_complete(PL_x_c1_init_calib_complete),
        .clk_out_125M(PL_x_clk_out_125M),
        .clk_out_250M(clk_out_250M_0_1),
        .clk_out_300M(PL_x_clk_out_300M),
        .clk_out_400M(PL_x_clk_out_400M),
        .clk_out_PROG(PL_x_clk_out_PROG),
        .deviceDNA_PA_tri_i(PL_x_deviceDNA_PA_TRI_I),
        .deviceDNA_PB_tri_i(PL_x_deviceDNA_PB_TRI_I),
        .deviceDNA_PC_tri_i(PL_x_deviceDNA_PC_TRI_I),
        .deviceDNA_PD_tri_i(PL_x_deviceDNA_PD_TRI_I),
        .iiC_scl_i(iiC_SCL_I),
        .iiC_scl_o(iiC_SCL_O),
        .iiC_scl_t(iiC_SCL_T),
        .iiC_sda_i(iiC_SDA_I),
        .iiC_sda_o(iiC_SDA_O),
        .iiC_sda_t(iiC_SDA_T),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .user_lnk_up_sd(user_lnk_up_sd_0_1));
endmodule

module PL_X_axi_interconnect_0_0
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
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [63:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [5:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [5:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [5:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [5:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARQOS;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]s00_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWQOS;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]s00_couplers_to_axi_interconnect_0_BID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]s00_couplers_to_axi_interconnect_0_RID;
  wire s00_couplers_to_axi_interconnect_0_RLAST;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WLAST;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[5:0] = s00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[5:0] = s00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[5:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[5:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_RQZ19F s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module PL_X_axi_pcie3_0_axi_periph_0
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
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arready,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awready,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
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
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
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
  input M02_ACLK;
  input M02_ARESETN;
  output [8:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [8:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [17:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [17:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [10:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [10:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [12:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [12:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [8:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [8:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [17:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input [0:0]M07_AXI_arready;
  output [0:0]M07_AXI_arvalid;
  output [17:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input [0:0]M07_AXI_awready;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [8:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [8:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [8:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [8:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [8:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [8:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [8:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [8:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [8:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [8:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [8:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [8:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [8:0]M14_AXI_araddr;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [8:0]M14_AXI_awaddr;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output [8:0]M15_AXI_araddr;
  input M15_AXI_arready;
  output M15_AXI_arvalid;
  output [8:0]M15_AXI_awaddr;
  input M15_AXI_awready;
  output M15_AXI_awvalid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire M10_ACLK_1;
  wire M10_ARESETN_1;
  wire M11_ACLK_1;
  wire M11_ARESETN_1;
  wire M12_ACLK_1;
  wire M12_ARESETN_1;
  wire M13_ACLK_1;
  wire M13_ARESETN_1;
  wire M14_ACLK_1;
  wire M14_ARESETN_1;
  wire M15_ACLK_1;
  wire M15_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_pcie3_0_axi_periph_ACLK_net;
  wire axi_pcie3_0_axi_periph_ARESETN_net;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_WDATA;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m02_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m02_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [17:0]m03_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [17:0]m03_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [10:0]m04_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [10:0]m04_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [12:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [2:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [12:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [2:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m06_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m06_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [17:0]m07_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [2:0]m07_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [17:0]m07_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [2:0]m07_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire [0:0]m07_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m08_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m08_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m08_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m09_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m09_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m09_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m10_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m10_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m10_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m10_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m10_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m10_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m10_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m10_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m11_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m11_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m11_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m11_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m11_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m11_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m11_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m11_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m12_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m12_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m12_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m12_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m12_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m12_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m12_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m12_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m13_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m13_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m13_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m13_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m13_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m13_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m13_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m13_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m14_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m14_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m14_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m14_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m14_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m14_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m14_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m14_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m15_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m15_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m15_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m15_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m15_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m15_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m15_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m15_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
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
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [383:352]xbar_to_m11_couplers_ARADDR;
  wire [35:33]xbar_to_m11_couplers_ARPROT;
  wire xbar_to_m11_couplers_ARREADY;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [383:352]xbar_to_m11_couplers_AWADDR;
  wire [35:33]xbar_to_m11_couplers_AWPROT;
  wire xbar_to_m11_couplers_AWREADY;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [415:384]xbar_to_m12_couplers_ARADDR;
  wire [38:36]xbar_to_m12_couplers_ARPROT;
  wire xbar_to_m12_couplers_ARREADY;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [415:384]xbar_to_m12_couplers_AWADDR;
  wire [38:36]xbar_to_m12_couplers_AWPROT;
  wire xbar_to_m12_couplers_AWREADY;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [31:0]xbar_to_m12_couplers_RDATA;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [447:416]xbar_to_m13_couplers_ARADDR;
  wire [41:39]xbar_to_m13_couplers_ARPROT;
  wire xbar_to_m13_couplers_ARREADY;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [447:416]xbar_to_m13_couplers_AWADDR;
  wire [41:39]xbar_to_m13_couplers_AWPROT;
  wire xbar_to_m13_couplers_AWREADY;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire [1:0]xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire [31:0]xbar_to_m13_couplers_RDATA;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire [1:0]xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [479:448]xbar_to_m14_couplers_ARADDR;
  wire [44:42]xbar_to_m14_couplers_ARPROT;
  wire xbar_to_m14_couplers_ARREADY;
  wire [14:14]xbar_to_m14_couplers_ARVALID;
  wire [479:448]xbar_to_m14_couplers_AWADDR;
  wire [44:42]xbar_to_m14_couplers_AWPROT;
  wire xbar_to_m14_couplers_AWREADY;
  wire [14:14]xbar_to_m14_couplers_AWVALID;
  wire [14:14]xbar_to_m14_couplers_BREADY;
  wire [1:0]xbar_to_m14_couplers_BRESP;
  wire xbar_to_m14_couplers_BVALID;
  wire [31:0]xbar_to_m14_couplers_RDATA;
  wire [14:14]xbar_to_m14_couplers_RREADY;
  wire [1:0]xbar_to_m14_couplers_RRESP;
  wire xbar_to_m14_couplers_RVALID;
  wire [479:448]xbar_to_m14_couplers_WDATA;
  wire xbar_to_m14_couplers_WREADY;
  wire [59:56]xbar_to_m14_couplers_WSTRB;
  wire [14:14]xbar_to_m14_couplers_WVALID;
  wire [511:480]xbar_to_m15_couplers_ARADDR;
  wire [47:45]xbar_to_m15_couplers_ARPROT;
  wire xbar_to_m15_couplers_ARREADY;
  wire [15:15]xbar_to_m15_couplers_ARVALID;
  wire [511:480]xbar_to_m15_couplers_AWADDR;
  wire [47:45]xbar_to_m15_couplers_AWPROT;
  wire xbar_to_m15_couplers_AWREADY;
  wire [15:15]xbar_to_m15_couplers_AWVALID;
  wire [15:15]xbar_to_m15_couplers_BREADY;
  wire [1:0]xbar_to_m15_couplers_BRESP;
  wire xbar_to_m15_couplers_BVALID;
  wire [31:0]xbar_to_m15_couplers_RDATA;
  wire [15:15]xbar_to_m15_couplers_RREADY;
  wire [1:0]xbar_to_m15_couplers_RRESP;
  wire xbar_to_m15_couplers_RVALID;
  wire [511:480]xbar_to_m15_couplers_WDATA;
  wire xbar_to_m15_couplers_WREADY;
  wire [63:60]xbar_to_m15_couplers_WSTRB;
  wire [15:15]xbar_to_m15_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[8:0] = m02_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[8:0] = m02_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[17:0] = m03_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[17:0] = m03_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[10:0] = m04_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[10:0] = m04_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[12:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[12:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[8:0] = m06_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[8:0] = m06_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[17:0] = m07_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M07_AXI_arvalid[0] = m07_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[17:0] = m07_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M07_AXI_awvalid[0] = m07_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[8:0] = m08_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[8:0] = m08_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[8:0] = m09_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M09_AXI_awaddr[8:0] = m09_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[8:0] = m10_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M10_AXI_awaddr[8:0] = m10_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN;
  assign M11_AXI_araddr[8:0] = m11_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M11_AXI_awaddr[8:0] = m11_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M11_AXI_rready = m11_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M12_ACLK_1 = M12_ACLK;
  assign M12_ARESETN_1 = M12_ARESETN;
  assign M12_AXI_araddr[8:0] = m12_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M12_AXI_awaddr[8:0] = m12_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M12_AXI_rready = m12_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M13_ACLK_1 = M13_ACLK;
  assign M13_ARESETN_1 = M13_ARESETN;
  assign M13_AXI_araddr[8:0] = m13_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M13_AXI_awaddr[8:0] = m13_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M13_AXI_rready = m13_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M14_ACLK_1 = M14_ACLK;
  assign M14_ARESETN_1 = M14_ARESETN;
  assign M14_AXI_araddr[8:0] = m14_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M14_AXI_arvalid = m14_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M14_AXI_awaddr[8:0] = m14_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M14_AXI_awvalid = m14_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M14_AXI_rready = m14_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M15_ACLK_1 = M15_ACLK;
  assign M15_ARESETN_1 = M15_ARESETN;
  assign M15_AXI_araddr[8:0] = m15_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M15_AXI_arvalid = m15_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M15_AXI_awaddr[8:0] = m15_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M15_AXI_awvalid = m15_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M15_AXI_rready = m15_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  assign axi_pcie3_0_axi_periph_ACLK_net = ACLK;
  assign axi_pcie3_0_axi_periph_ARESETN_net = ARESETN;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_pcie3_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_pcie3_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_pcie3_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_pcie3_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_pcie3_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_pcie3_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_pcie3_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_pcie3_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_pcie3_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_pcie3_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_pcie3_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_pcie3_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_pcie3_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_axi_pcie3_0_axi_periph_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_axi_pcie3_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_pcie3_0_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_axi_pcie3_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_pcie3_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_pcie3_0_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_axi_pcie3_0_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_axi_pcie3_0_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_pcie3_0_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_axi_pcie3_0_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_pcie3_0_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_pcie3_0_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_axi_pcie3_0_axi_periph_WREADY = M09_AXI_wready;
  assign m10_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_pcie3_0_axi_periph_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_pcie3_0_axi_periph_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_pcie3_0_axi_periph_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_pcie3_0_axi_periph_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_pcie3_0_axi_periph_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_pcie3_0_axi_periph_WREADY = M10_AXI_wready;
  assign m11_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_axi_pcie3_0_axi_periph_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_axi_pcie3_0_axi_periph_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_axi_pcie3_0_axi_periph_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_axi_pcie3_0_axi_periph_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_axi_pcie3_0_axi_periph_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_axi_pcie3_0_axi_periph_WREADY = M11_AXI_wready;
  assign m12_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_axi_pcie3_0_axi_periph_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_axi_pcie3_0_axi_periph_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_axi_pcie3_0_axi_periph_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_axi_pcie3_0_axi_periph_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_axi_pcie3_0_axi_periph_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_axi_pcie3_0_axi_periph_WREADY = M12_AXI_wready;
  assign m13_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_axi_pcie3_0_axi_periph_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_axi_pcie3_0_axi_periph_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_axi_pcie3_0_axi_periph_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_axi_pcie3_0_axi_periph_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_axi_pcie3_0_axi_periph_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_axi_pcie3_0_axi_periph_WREADY = M13_AXI_wready;
  assign m14_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_axi_pcie3_0_axi_periph_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_axi_pcie3_0_axi_periph_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_axi_pcie3_0_axi_periph_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_axi_pcie3_0_axi_periph_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_axi_pcie3_0_axi_periph_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_axi_pcie3_0_axi_periph_WREADY = M14_AXI_wready;
  assign m15_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_axi_pcie3_0_axi_periph_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_axi_pcie3_0_axi_periph_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_axi_pcie3_0_axi_periph_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_axi_pcie3_0_axi_periph_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_axi_pcie3_0_axi_periph_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_axi_pcie3_0_axi_periph_WREADY = M15_AXI_wready;
  m00_couplers_imp_193KZ0I m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
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
  m01_couplers_imp_HMHM44 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
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
  m02_couplers_imp_IU5LGV m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1PUONTL m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1FXDOIH m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_AL79YN m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_P1TWJ8 m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1JAJ0JM m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arprot(m07_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awprot(m07_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_14GMJCK m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_3KGNB6 m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m09_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_7M4GIY m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m10_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m10_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m10_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m10_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_11BFGF0 m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m11_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m11_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m11_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m11_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m11_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m11_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m11_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m11_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m11_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m11_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m11_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m11_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m11_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m11_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_1XEF213 m12_couplers
       (.M_ACLK(M12_ACLK_1),
        .M_ARESETN(M12_ARESETN_1),
        .M_AXI_araddr(m12_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m12_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m12_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m12_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m12_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m12_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m12_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m12_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m12_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m12_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m12_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m12_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m12_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m12_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m12_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_SLH5KH m13_couplers
       (.M_ACLK(M13_ACLK_1),
        .M_ARESETN(M13_ARESETN_1),
        .M_AXI_araddr(m13_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m13_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m13_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m13_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m13_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m13_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m13_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m13_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m13_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m13_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m13_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m13_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m13_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m13_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m13_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  m14_couplers_imp_SMY0H m14_couplers
       (.M_ACLK(M14_ACLK_1),
        .M_ARESETN(M14_ARESETN_1),
        .M_AXI_araddr(m14_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m14_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m14_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m14_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m14_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m14_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m14_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m14_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m14_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m14_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m14_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m14_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m14_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m14_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m14_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m14_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m14_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m14_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m14_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m14_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m14_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m14_couplers_RDATA),
        .S_AXI_rready(xbar_to_m14_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m14_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m14_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m14_couplers_WDATA),
        .S_AXI_wready(xbar_to_m14_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m14_couplers_WVALID));
  m15_couplers_imp_18CEIFB m15_couplers
       (.M_ACLK(M15_ACLK_1),
        .M_ARESETN(M15_ARESETN_1),
        .M_AXI_araddr(m15_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m15_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m15_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m15_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m15_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m15_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m15_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m15_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m15_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m15_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m15_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m15_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m15_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m15_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m15_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m15_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m15_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m15_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m15_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m15_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m15_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m15_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m15_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m15_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m15_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m15_couplers_RDATA),
        .S_AXI_rready(xbar_to_m15_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m15_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m15_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m15_couplers_WDATA),
        .S_AXI_wready(xbar_to_m15_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m15_couplers_WVALID));
  s00_couplers_imp_RSQ0L3 s00_couplers
       (.M_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
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
        .S_AXI_araddr(axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_pcie3_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_pcie3_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_pcie3_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_pcie3_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_pcie3_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_pcie3_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_pcie3_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_pcie3_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_pcie3_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_pcie3_0_axi_periph_to_s00_couplers_WVALID));
  PL_X_xbar_0 xbar
       (.aclk(axi_pcie3_0_axi_periph_ACLK_net),
        .aresetn(axi_pcie3_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m15_couplers_ARADDR,xbar_to_m14_couplers_ARADDR,xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m15_couplers_ARPROT,xbar_to_m14_couplers_ARPROT,xbar_to_m13_couplers_ARPROT,xbar_to_m12_couplers_ARPROT,xbar_to_m11_couplers_ARPROT,xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m15_couplers_ARREADY,xbar_to_m14_couplers_ARREADY,xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m15_couplers_ARVALID,xbar_to_m14_couplers_ARVALID,xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m15_couplers_AWADDR,xbar_to_m14_couplers_AWADDR,xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m15_couplers_AWPROT,xbar_to_m14_couplers_AWPROT,xbar_to_m13_couplers_AWPROT,xbar_to_m12_couplers_AWPROT,xbar_to_m11_couplers_AWPROT,xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m15_couplers_AWREADY,xbar_to_m14_couplers_AWREADY,xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m15_couplers_AWVALID,xbar_to_m14_couplers_AWVALID,xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m15_couplers_BREADY,xbar_to_m14_couplers_BREADY,xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m15_couplers_BRESP,xbar_to_m14_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m15_couplers_BVALID,xbar_to_m14_couplers_BVALID,xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m15_couplers_RDATA,xbar_to_m14_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m15_couplers_RREADY,xbar_to_m14_couplers_RREADY,xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m15_couplers_RRESP,xbar_to_m14_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m15_couplers_RVALID,xbar_to_m14_couplers_RVALID,xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m15_couplers_WDATA,xbar_to_m14_couplers_WDATA,xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m15_couplers_WREADY,xbar_to_m14_couplers_WREADY,xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m15_couplers_WSTRB,xbar_to_m14_couplers_WSTRB,xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m15_couplers_WVALID,xbar_to_m14_couplers_WVALID,xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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

module PL_x_imp_1DUJP0G
   (BMC_GPIO,
    BMC_UART_rxd,
    BMC_UART_txd,
    C0_DDR_SREF_CTRL_IN,
    C0_DDR_SREF_CTRL_OUT,
    C1_SYS_CLK,
    C2_DDR_SREF_CTRL_IN,
    C2_DDR_SREF_CTRL_OUT,
    C3_DDR_SREF_CTRL_IN,
    C3_DDR_SREF_CTRL_OUT,
    EFUSE_IN_tri_i,
    INIT_CAL_DONE,
    MIG_1_RST,
    M_AXI_LITE_TO_HLS_PR_NORTH_araddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_arprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_arready,
    M_AXI_LITE_TO_HLS_PR_NORTH_arvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_awaddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_awprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_awready,
    M_AXI_LITE_TO_HLS_PR_NORTH_awvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_bready,
    M_AXI_LITE_TO_HLS_PR_NORTH_bresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_bvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_rdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_rready,
    M_AXI_LITE_TO_HLS_PR_NORTH_rresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_rvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_wdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_wready,
    M_AXI_LITE_TO_HLS_PR_NORTH_wstrb,
    M_AXI_LITE_TO_HLS_PR_NORTH_wvalid,
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
    S00_AXI_wvalid,
    SHELL_VERSION_IN_tri_i,
    S_AXI_MM_0_araddr,
    S_AXI_MM_0_arburst,
    S_AXI_MM_0_arcache,
    S_AXI_MM_0_arid,
    S_AXI_MM_0_arlen,
    S_AXI_MM_0_arlock,
    S_AXI_MM_0_arprot,
    S_AXI_MM_0_arqos,
    S_AXI_MM_0_arready,
    S_AXI_MM_0_arregion,
    S_AXI_MM_0_arsize,
    S_AXI_MM_0_arvalid,
    S_AXI_MM_0_awaddr,
    S_AXI_MM_0_awburst,
    S_AXI_MM_0_awcache,
    S_AXI_MM_0_awid,
    S_AXI_MM_0_awlen,
    S_AXI_MM_0_awlock,
    S_AXI_MM_0_awprot,
    S_AXI_MM_0_awqos,
    S_AXI_MM_0_awready,
    S_AXI_MM_0_awregion,
    S_AXI_MM_0_awsize,
    S_AXI_MM_0_awvalid,
    S_AXI_MM_0_bid,
    S_AXI_MM_0_bready,
    S_AXI_MM_0_bresp,
    S_AXI_MM_0_bvalid,
    S_AXI_MM_0_rdata,
    S_AXI_MM_0_rid,
    S_AXI_MM_0_rlast,
    S_AXI_MM_0_rready,
    S_AXI_MM_0_rresp,
    S_AXI_MM_0_rvalid,
    S_AXI_MM_0_wdata,
    S_AXI_MM_0_wlast,
    S_AXI_MM_0_wready,
    S_AXI_MM_0_wstrb,
    S_AXI_MM_0_wvalid,
    axi_reset_n_250M_out,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_par,
    c1_ddr4_reset_n,
    c1_init_calib_complete,
    clk_out_125M,
    clk_out_250M,
    clk_out_300M,
    clk_out_400M,
    clk_out_PROG,
    deviceDNA_PA_tri_i,
    deviceDNA_PB_tri_i,
    deviceDNA_PC_tri_i,
    deviceDNA_PD_tri_i,
    iiC_scl_i,
    iiC_scl_o,
    iiC_scl_t,
    iiC_sda_i,
    iiC_sda_o,
    iiC_sda_t,
    s_axi_aresetn,
    user_lnk_up_sd);
  input [3:0]BMC_GPIO;
  input BMC_UART_rxd;
  output BMC_UART_txd;
  input [7:0]C0_DDR_SREF_CTRL_IN;
  output [7:0]C0_DDR_SREF_CTRL_OUT;
  input C1_SYS_CLK;
  input [7:0]C2_DDR_SREF_CTRL_IN;
  output [7:0]C2_DDR_SREF_CTRL_OUT;
  input [7:0]C3_DDR_SREF_CTRL_IN;
  output [7:0]C3_DDR_SREF_CTRL_OUT;
  input [31:0]EFUSE_IN_tri_i;
  input [3:0]INIT_CAL_DONE;
  input MIG_1_RST;
  output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  input M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  output M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  input M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  output M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  output M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  input M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  input [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  output M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  input M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  input M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  output [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  output M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [31:0]SHELL_VERSION_IN_tri_i;
  input [63:0]S_AXI_MM_0_araddr;
  input [1:0]S_AXI_MM_0_arburst;
  input [3:0]S_AXI_MM_0_arcache;
  input [5:0]S_AXI_MM_0_arid;
  input [7:0]S_AXI_MM_0_arlen;
  input [0:0]S_AXI_MM_0_arlock;
  input [2:0]S_AXI_MM_0_arprot;
  input [3:0]S_AXI_MM_0_arqos;
  output S_AXI_MM_0_arready;
  input [3:0]S_AXI_MM_0_arregion;
  input [2:0]S_AXI_MM_0_arsize;
  input S_AXI_MM_0_arvalid;
  input [63:0]S_AXI_MM_0_awaddr;
  input [1:0]S_AXI_MM_0_awburst;
  input [3:0]S_AXI_MM_0_awcache;
  input [5:0]S_AXI_MM_0_awid;
  input [7:0]S_AXI_MM_0_awlen;
  input [0:0]S_AXI_MM_0_awlock;
  input [2:0]S_AXI_MM_0_awprot;
  input [3:0]S_AXI_MM_0_awqos;
  output S_AXI_MM_0_awready;
  input [3:0]S_AXI_MM_0_awregion;
  input [2:0]S_AXI_MM_0_awsize;
  input S_AXI_MM_0_awvalid;
  output [5:0]S_AXI_MM_0_bid;
  input S_AXI_MM_0_bready;
  output [1:0]S_AXI_MM_0_bresp;
  output S_AXI_MM_0_bvalid;
  output [511:0]S_AXI_MM_0_rdata;
  output [5:0]S_AXI_MM_0_rid;
  output S_AXI_MM_0_rlast;
  input S_AXI_MM_0_rready;
  output [1:0]S_AXI_MM_0_rresp;
  output S_AXI_MM_0_rvalid;
  input [511:0]S_AXI_MM_0_wdata;
  input S_AXI_MM_0_wlast;
  output S_AXI_MM_0_wready;
  input [63:0]S_AXI_MM_0_wstrb;
  input S_AXI_MM_0_wvalid;
  output [0:0]axi_reset_n_250M_out;
  output c1_ddr4_act_n;
  output [16:0]c1_ddr4_adr;
  output [1:0]c1_ddr4_ba;
  output [1:0]c1_ddr4_bg;
  output [0:0]c1_ddr4_ck_c;
  output [0:0]c1_ddr4_ck_t;
  output [0:0]c1_ddr4_cke;
  output [0:0]c1_ddr4_cs_n;
  inout [71:0]c1_ddr4_dq;
  inout [17:0]c1_ddr4_dqs_c;
  inout [17:0]c1_ddr4_dqs_t;
  output [0:0]c1_ddr4_odt;
  output c1_ddr4_par;
  output c1_ddr4_reset_n;
  output c1_init_calib_complete;
  output clk_out_125M;
  input clk_out_250M;
  output clk_out_300M;
  output clk_out_400M;
  output clk_out_PROG;
  input [31:0]deviceDNA_PA_tri_i;
  input [31:0]deviceDNA_PB_tri_i;
  input [31:0]deviceDNA_PC_tri_i;
  input [31:0]deviceDNA_PD_tri_i;
  input iiC_scl_i;
  output iiC_scl_o;
  output iiC_scl_t;
  input iiC_sda_i;
  output iiC_sda_o;
  output iiC_sda_t;
  input s_axi_aresetn;
  input user_lnk_up_sd;

  wire [3:0]BMC_GPIO;
  wire BMC_UART_RxD;
  wire BMC_UART_TxD;
  wire [7:0]\^C1_SYS_CLK ;
  wire C1_SYS_CLK_1;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARADDR;
  wire [2:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARPROT;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARREADY;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARVALID;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWADDR;
  wire [2:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWPROT;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWREADY;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWVALID;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BREADY;
  wire [1:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BRESP;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BVALID;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RDATA;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RREADY;
  wire [1:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RRESP;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RVALID;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WDATA;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WREADY;
  wire [3:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WSTRB;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WVALID;
  wire MIG_1_RST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_ARADDR;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DONT_TOUCH *) wire [2:0]S00_AXI_1_ARPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_ARREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_ARVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_AWADDR;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DONT_TOUCH *) wire [2:0]S00_AXI_1_AWPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_AWREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_AWVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_BREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]S00_AXI_1_BRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_BVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_RDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_RREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]S00_AXI_1_RRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_RVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_WDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_WREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]S00_AXI_1_WSTRB;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_WVALID;
  wire [8:0]S_AXI_1_ARADDR;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [8:0]S_AXI_1_AWADDR;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [63:0]S_AXI_MM_0_1_ARADDR;
  wire [1:0]S_AXI_MM_0_1_ARBURST;
  wire [3:0]S_AXI_MM_0_1_ARCACHE;
  wire [5:0]S_AXI_MM_0_1_ARID;
  wire [7:0]S_AXI_MM_0_1_ARLEN;
  wire [0:0]S_AXI_MM_0_1_ARLOCK;
  wire [2:0]S_AXI_MM_0_1_ARPROT;
  wire [3:0]S_AXI_MM_0_1_ARQOS;
  wire S_AXI_MM_0_1_ARREADY;
  wire [3:0]S_AXI_MM_0_1_ARREGION;
  wire [2:0]S_AXI_MM_0_1_ARSIZE;
  wire S_AXI_MM_0_1_ARVALID;
  wire [63:0]S_AXI_MM_0_1_AWADDR;
  wire [1:0]S_AXI_MM_0_1_AWBURST;
  wire [3:0]S_AXI_MM_0_1_AWCACHE;
  wire [5:0]S_AXI_MM_0_1_AWID;
  wire [7:0]S_AXI_MM_0_1_AWLEN;
  wire [0:0]S_AXI_MM_0_1_AWLOCK;
  wire [2:0]S_AXI_MM_0_1_AWPROT;
  wire [3:0]S_AXI_MM_0_1_AWQOS;
  wire S_AXI_MM_0_1_AWREADY;
  wire [3:0]S_AXI_MM_0_1_AWREGION;
  wire [2:0]S_AXI_MM_0_1_AWSIZE;
  wire S_AXI_MM_0_1_AWVALID;
  wire [5:0]S_AXI_MM_0_1_BID;
  wire S_AXI_MM_0_1_BREADY;
  wire [1:0]S_AXI_MM_0_1_BRESP;
  wire S_AXI_MM_0_1_BVALID;
  wire [511:0]S_AXI_MM_0_1_RDATA;
  wire [5:0]S_AXI_MM_0_1_RID;
  wire S_AXI_MM_0_1_RLAST;
  wire S_AXI_MM_0_1_RREADY;
  wire [1:0]S_AXI_MM_0_1_RRESP;
  wire S_AXI_MM_0_1_RVALID;
  wire [511:0]S_AXI_MM_0_1_WDATA;
  wire S_AXI_MM_0_1_WLAST;
  wire S_AXI_MM_0_1_WREADY;
  wire [63:0]S_AXI_MM_0_1_WSTRB;
  wire S_AXI_MM_0_1_WVALID;
  wire THIN_SHELL_user_lnk_up;
  wire [63:0]TO_SH_AXI_MM_0_M_AXI_ARADDR;
  wire [1:0]TO_SH_AXI_MM_0_M_AXI_ARBURST;
  wire [3:0]TO_SH_AXI_MM_0_M_AXI_ARCACHE;
  wire [5:0]TO_SH_AXI_MM_0_M_AXI_ARID;
  wire [7:0]TO_SH_AXI_MM_0_M_AXI_ARLEN;
  wire [0:0]TO_SH_AXI_MM_0_M_AXI_ARLOCK;
  wire [2:0]TO_SH_AXI_MM_0_M_AXI_ARPROT;
  wire [3:0]TO_SH_AXI_MM_0_M_AXI_ARQOS;
  wire TO_SH_AXI_MM_0_M_AXI_ARREADY;
  wire [3:0]TO_SH_AXI_MM_0_M_AXI_ARREGION;
  wire [2:0]TO_SH_AXI_MM_0_M_AXI_ARSIZE;
  wire TO_SH_AXI_MM_0_M_AXI_ARVALID;
  wire [63:0]TO_SH_AXI_MM_0_M_AXI_AWADDR;
  wire [1:0]TO_SH_AXI_MM_0_M_AXI_AWBURST;
  wire [3:0]TO_SH_AXI_MM_0_M_AXI_AWCACHE;
  wire [5:0]TO_SH_AXI_MM_0_M_AXI_AWID;
  wire [7:0]TO_SH_AXI_MM_0_M_AXI_AWLEN;
  wire [0:0]TO_SH_AXI_MM_0_M_AXI_AWLOCK;
  wire [2:0]TO_SH_AXI_MM_0_M_AXI_AWPROT;
  wire [3:0]TO_SH_AXI_MM_0_M_AXI_AWQOS;
  wire TO_SH_AXI_MM_0_M_AXI_AWREADY;
  wire [3:0]TO_SH_AXI_MM_0_M_AXI_AWREGION;
  wire [2:0]TO_SH_AXI_MM_0_M_AXI_AWSIZE;
  wire TO_SH_AXI_MM_0_M_AXI_AWVALID;
  wire [5:0]TO_SH_AXI_MM_0_M_AXI_BID;
  wire TO_SH_AXI_MM_0_M_AXI_BREADY;
  wire [1:0]TO_SH_AXI_MM_0_M_AXI_BRESP;
  wire TO_SH_AXI_MM_0_M_AXI_BVALID;
  wire [511:0]TO_SH_AXI_MM_0_M_AXI_RDATA;
  wire [5:0]TO_SH_AXI_MM_0_M_AXI_RID;
  wire TO_SH_AXI_MM_0_M_AXI_RLAST;
  wire TO_SH_AXI_MM_0_M_AXI_RREADY;
  wire [1:0]TO_SH_AXI_MM_0_M_AXI_RRESP;
  wire TO_SH_AXI_MM_0_M_AXI_RVALID;
  wire [511:0]TO_SH_AXI_MM_0_M_AXI_WDATA;
  wire TO_SH_AXI_MM_0_M_AXI_WLAST;
  wire TO_SH_AXI_MM_0_M_AXI_WREADY;
  wire [63:0]TO_SH_AXI_MM_0_M_AXI_WSTRB;
  wire TO_SH_AXI_MM_0_M_AXI_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [31:0]axi_gpio_1_GPIO2_TRI_I;
  wire [31:0]axi_gpio_1_GPIO_TRI_I;
  wire [31:0]axi_gpio_2_GPIO2_TRI_I;
  wire [31:0]axi_gpio_2_GPIO_TRI_I;
  wire [7:0]axi_gpio_3_gpio_io_o;
  wire [7:0]axi_gpio_C0_SREF_gpio_io_o;
  wire [7:0]axi_gpio_C3_SREF_gpio_io_o;
  wire [31:0]axi_gpio_EFUSE_SHELL_VER_GPIO2_TRI_I;
  wire [31:0]axi_gpio_EFUSE_SHELL_VER_GPIO_TRI_I;
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
  wire axi_pcie3_0_axi_aclk;
  wire axi_pcie3_0_axi_aresetn;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M01_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M01_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M01_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M01_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M01_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M02_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M02_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M02_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M02_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M02_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M02_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M02_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M02_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M02_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M02_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M02_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M02_AXI_WVALID;
  wire [10:0]axi_pcie3_0_axi_periph_M04_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M04_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M04_AXI_ARVALID;
  wire [10:0]axi_pcie3_0_axi_periph_M04_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M04_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M04_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M04_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M04_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M04_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M04_AXI_WVALID;
  wire [12:0]axi_pcie3_0_axi_periph_M05_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M05_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARVALID;
  wire [12:0]axi_pcie3_0_axi_periph_M05_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M05_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M05_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M05_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M06_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M06_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M06_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M06_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M06_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M06_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M06_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M06_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M06_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M06_AXI_WVALID;
  wire [17:0]axi_pcie3_0_axi_periph_M07_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M07_AXI_ARPROT;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_ARREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_ARVALID;
  wire [17:0]axi_pcie3_0_axi_periph_M07_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M07_AXI_AWPROT;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_AWREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_AWVALID;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M07_AXI_BRESP;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M07_AXI_RDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M07_AXI_RRESP;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M07_AXI_WDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M07_AXI_WSTRB;
  wire [0:0]axi_pcie3_0_axi_periph_M07_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M08_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M08_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M08_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M08_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M08_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M08_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M08_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M08_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M08_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M08_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M08_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M08_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M09_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M09_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M09_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M09_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M09_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M09_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M09_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M09_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M09_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M09_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M09_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M09_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M09_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M09_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M09_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M09_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M09_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M11_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M11_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M11_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M11_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M11_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M11_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M11_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M11_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M11_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M11_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M11_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M11_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M11_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M11_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M11_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M11_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M11_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M12_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M12_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M12_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M12_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M12_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M12_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M12_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M12_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M12_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M12_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M12_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M12_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M12_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M12_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M12_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M12_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M12_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M13_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M13_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M13_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M13_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M13_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M13_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M13_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M13_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M13_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M13_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M13_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M13_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M13_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M13_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M13_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M13_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M13_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M14_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M14_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M14_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M14_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M14_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M14_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M14_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M14_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M14_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M14_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M14_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M14_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M14_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M14_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M14_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M14_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M14_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M15_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M15_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M15_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M15_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M15_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M15_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M15_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M15_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M15_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M15_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M15_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M15_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M15_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M15_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M15_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M15_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M15_AXI_WVALID;
  wire clk_wiz_0_clk_out_125M1;
  wire clk_wiz_0_clk_out_50M;
  wire clk_wiz_PROG_clk_out_300M;
  wire clk_wiz_PROG_clk_out_400M;
  wire clk_wiz_PROG_clk_out_PROG;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [71:0]ddr4_0_C0_DDR4_DQ;
  wire [17:0]ddr4_0_C0_DDR4_DQS_C;
  wire [17:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_PAR;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_1_c0_init_calib_complete;
  wire [7:0]gpio2_io_i_0_1;
  wire [7:0]gpio2_io_i_0_2;
  wire [3:0]gpio_io_i_0_1;
  wire iiC_SCL_I;
  wire iiC_SCL_O;
  wire iiC_SCL_T;
  wire iiC_SDA_I;
  wire iiC_SDA_O;
  wire iiC_SDA_T;
  wire [0:0]rst_250M_peripheral_aresetn;
  wire [0:0]rst_ddr4_0_300M1_peripheral_aresetn;
  wire [0:0]rst_ddr4_0_300M_peripheral_aresetn;
  wire [17:0]s00_axi_2_ARADDR;
  wire [2:0]s00_axi_2_ARPROT;
  wire s00_axi_2_ARREADY;
  wire s00_axi_2_ARVALID;
  wire [17:0]s00_axi_2_AWADDR;
  wire [2:0]s00_axi_2_AWPROT;
  wire s00_axi_2_AWREADY;
  wire s00_axi_2_AWVALID;
  wire s00_axi_2_BREADY;
  wire [1:0]s00_axi_2_BRESP;
  wire s00_axi_2_BVALID;
  wire [31:0]s00_axi_2_RDATA;
  wire s00_axi_2_RREADY;
  wire [1:0]s00_axi_2_RRESP;
  wire s00_axi_2_RVALID;
  wire [31:0]s00_axi_2_WDATA;
  wire s00_axi_2_WREADY;
  wire [3:0]s00_axi_2_WSTRB;
  wire s00_axi_2_WVALID;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlslice_0_Dout;

  assign BMC_UART_RxD = BMC_UART_rxd;
  assign BMC_UART_txd = BMC_UART_TxD;
  assign C0_DDR_SREF_CTRL_OUT[7:0] = axi_gpio_C0_SREF_gpio_io_o;
  assign C1_SYS_CLK_1 = C1_SYS_CLK;
  assign C2_DDR_SREF_CTRL_OUT[7:0] = axi_gpio_3_gpio_io_o;
  assign C3_DDR_SREF_CTRL_OUT[7:0] = axi_gpio_C3_SREF_gpio_io_o;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARREADY = M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWREADY = M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BRESP = M_AXI_LITE_TO_HLS_PR_NORTH_bresp[1:0];
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BVALID = M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RDATA = M_AXI_LITE_TO_HLS_PR_NORTH_rdata[31:0];
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RRESP = M_AXI_LITE_TO_HLS_PR_NORTH_rresp[1:0];
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RVALID = M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WREADY = M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_araddr[31:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARADDR;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_arprot[2:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARPROT;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_arvalid = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARVALID;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awaddr[31:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWADDR;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awprot[2:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWPROT;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awvalid = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWVALID;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_bready = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BREADY;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_rready = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RREADY;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wdata[31:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WDATA;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wstrb[3:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WSTRB;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wvalid = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S_AXI_MM_0_1_ARADDR = S_AXI_MM_0_araddr[63:0];
  assign S_AXI_MM_0_1_ARBURST = S_AXI_MM_0_arburst[1:0];
  assign S_AXI_MM_0_1_ARCACHE = S_AXI_MM_0_arcache[3:0];
  assign S_AXI_MM_0_1_ARID = S_AXI_MM_0_arid[5:0];
  assign S_AXI_MM_0_1_ARLEN = S_AXI_MM_0_arlen[7:0];
  assign S_AXI_MM_0_1_ARLOCK = S_AXI_MM_0_arlock[0];
  assign S_AXI_MM_0_1_ARPROT = S_AXI_MM_0_arprot[2:0];
  assign S_AXI_MM_0_1_ARQOS = S_AXI_MM_0_arqos[3:0];
  assign S_AXI_MM_0_1_ARREGION = S_AXI_MM_0_arregion[3:0];
  assign S_AXI_MM_0_1_ARSIZE = S_AXI_MM_0_arsize[2:0];
  assign S_AXI_MM_0_1_ARVALID = S_AXI_MM_0_arvalid;
  assign S_AXI_MM_0_1_AWADDR = S_AXI_MM_0_awaddr[63:0];
  assign S_AXI_MM_0_1_AWBURST = S_AXI_MM_0_awburst[1:0];
  assign S_AXI_MM_0_1_AWCACHE = S_AXI_MM_0_awcache[3:0];
  assign S_AXI_MM_0_1_AWID = S_AXI_MM_0_awid[5:0];
  assign S_AXI_MM_0_1_AWLEN = S_AXI_MM_0_awlen[7:0];
  assign S_AXI_MM_0_1_AWLOCK = S_AXI_MM_0_awlock[0];
  assign S_AXI_MM_0_1_AWPROT = S_AXI_MM_0_awprot[2:0];
  assign S_AXI_MM_0_1_AWQOS = S_AXI_MM_0_awqos[3:0];
  assign S_AXI_MM_0_1_AWREGION = S_AXI_MM_0_awregion[3:0];
  assign S_AXI_MM_0_1_AWSIZE = S_AXI_MM_0_awsize[2:0];
  assign S_AXI_MM_0_1_AWVALID = S_AXI_MM_0_awvalid;
  assign S_AXI_MM_0_1_BREADY = S_AXI_MM_0_bready;
  assign S_AXI_MM_0_1_RREADY = S_AXI_MM_0_rready;
  assign S_AXI_MM_0_1_WDATA = S_AXI_MM_0_wdata[511:0];
  assign S_AXI_MM_0_1_WLAST = S_AXI_MM_0_wlast;
  assign S_AXI_MM_0_1_WSTRB = S_AXI_MM_0_wstrb[63:0];
  assign S_AXI_MM_0_1_WVALID = S_AXI_MM_0_wvalid;
  assign S_AXI_MM_0_arready = S_AXI_MM_0_1_ARREADY;
  assign S_AXI_MM_0_awready = S_AXI_MM_0_1_AWREADY;
  assign S_AXI_MM_0_bid[5:0] = S_AXI_MM_0_1_BID;
  assign S_AXI_MM_0_bresp[1:0] = S_AXI_MM_0_1_BRESP;
  assign S_AXI_MM_0_bvalid = S_AXI_MM_0_1_BVALID;
  assign S_AXI_MM_0_rdata[511:0] = S_AXI_MM_0_1_RDATA;
  assign S_AXI_MM_0_rid[5:0] = S_AXI_MM_0_1_RID;
  assign S_AXI_MM_0_rlast = S_AXI_MM_0_1_RLAST;
  assign S_AXI_MM_0_rresp[1:0] = S_AXI_MM_0_1_RRESP;
  assign S_AXI_MM_0_rvalid = S_AXI_MM_0_1_RVALID;
  assign S_AXI_MM_0_wready = S_AXI_MM_0_1_WREADY;
  assign THIN_SHELL_user_lnk_up = user_lnk_up_sd;
  assign \^C1_SYS_CLK [7:0] = C0_DDR_SREF_CTRL_IN[7:0];
  assign axi_gpio_1_GPIO2_TRI_I = deviceDNA_PB_tri_i[31:0];
  assign axi_gpio_1_GPIO_TRI_I = deviceDNA_PA_tri_i[31:0];
  assign axi_gpio_2_GPIO2_TRI_I = deviceDNA_PD_tri_i[31:0];
  assign axi_gpio_2_GPIO_TRI_I = deviceDNA_PC_tri_i[31:0];
  assign axi_gpio_EFUSE_SHELL_VER_GPIO2_TRI_I = SHELL_VERSION_IN_tri_i[31:0];
  assign axi_gpio_EFUSE_SHELL_VER_GPIO_TRI_I = EFUSE_IN_tri_i[31:0];
  assign axi_pcie3_0_axi_aclk = clk_out_250M;
  assign axi_pcie3_0_axi_aresetn = s_axi_aresetn;
  assign axi_reset_n_250M_out[0] = rst_250M_peripheral_aresetn;
  assign c1_ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign c1_ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign c1_ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign c1_ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign c1_ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign c1_ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign c1_ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign c1_ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign c1_ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign c1_ddr4_par = ddr4_0_C0_DDR4_PAR;
  assign c1_ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign c1_init_calib_complete = ddr4_1_c0_init_calib_complete;
  assign clk_out_125M = clk_wiz_0_clk_out_125M1;
  assign clk_out_300M = clk_wiz_PROG_clk_out_300M;
  assign clk_out_400M = clk_wiz_PROG_clk_out_400M;
  assign clk_out_PROG = clk_wiz_PROG_clk_out_PROG;
  assign gpio2_io_i_0_1 = C2_DDR_SREF_CTRL_IN[7:0];
  assign gpio2_io_i_0_2 = C3_DDR_SREF_CTRL_IN[7:0];
  assign gpio_io_i_0_1 = INIT_CAL_DONE[3:0];
  assign iiC_SCL_I = iiC_scl_i;
  assign iiC_SDA_I = iiC_sda_i;
  assign iiC_scl_o = iiC_SCL_O;
  assign iiC_scl_t = iiC_SCL_T;
  assign iiC_sda_o = iiC_SDA_O;
  assign iiC_sda_t = iiC_SDA_T;
  DDR4_SH_imp_1TO3ZW0 DDR4_SH
       (.C0_DDR4_S_AXI_CTRL_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .C0_DDR4_S_AXI_CTRL_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .C0_DDR4_S_AXI_CTRL_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .C0_DDR4_S_AXI_CTRL_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .C0_DDR4_S_AXI_CTRL_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .C0_DDR4_S_AXI_CTRL_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .C0_DDR4_S_AXI_CTRL_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .C0_DDR4_S_AXI_CTRL_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .C0_DDR4_S_AXI_CTRL_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .C0_DDR4_S_AXI_CTRL_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .C0_DDR4_S_AXI_CTRL_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .C0_DDR4_S_AXI_CTRL_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .C0_DDR4_S_AXI_CTRL_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .C0_DDR4_S_AXI_CTRL_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .C0_DDR4_S_AXI_CTRL_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .C0_DDR4_S_AXI_CTRL_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
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
        .C1_SYS_CLK(C1_SYS_CLK_1),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .c0_ddr4_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c1_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c1_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c1_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c1_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c1_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c1_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c1_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c1_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c1_ddr4_dq(c1_ddr4_dq[71:0]),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c[17:0]),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t[17:0]),
        .c1_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c1_ddr4_par(ddr4_0_C0_DDR4_PAR),
        .c1_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c1_init_calib_complete(ddr4_1_c0_init_calib_complete),
        .s00_axi_araddr(s00_axi_2_ARADDR),
        .s00_axi_arprot(s00_axi_2_ARPROT),
        .s00_axi_arready(s00_axi_2_ARREADY),
        .s00_axi_arvalid(s00_axi_2_ARVALID),
        .s00_axi_awaddr(s00_axi_2_AWADDR),
        .s00_axi_awprot(s00_axi_2_AWPROT),
        .s00_axi_awready(s00_axi_2_AWREADY),
        .s00_axi_awvalid(s00_axi_2_AWVALID),
        .s00_axi_bready(s00_axi_2_BREADY),
        .s00_axi_bresp(s00_axi_2_BRESP),
        .s00_axi_bvalid(s00_axi_2_BVALID),
        .s00_axi_rdata(s00_axi_2_RDATA),
        .s00_axi_rready(s00_axi_2_RREADY),
        .s00_axi_rresp(s00_axi_2_RRESP),
        .s00_axi_rvalid(s00_axi_2_RVALID),
        .s00_axi_wdata(s00_axi_2_WDATA),
        .s00_axi_wready(s00_axi_2_WREADY),
        .s00_axi_wstrb(s00_axi_2_WSTRB),
        .s00_axi_wvalid(s00_axi_2_WVALID),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .shell_sys_rst_in(MIG_1_RST));
  FROM_SH_AXI_LITE_NORTH_imp_44SG2B FROM_SH_AXI_LITE_NORTH
       (.S_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .S_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .S_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .S_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .S_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .S_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .S_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .S_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .S_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .S_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .S_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .S_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .S_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .S_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .S_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .S_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .S_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .S_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .S_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .aclk(axi_pcie3_0_axi_aclk),
        .decouple(xlconstant_0_dout),
        .rp_AXI_LITE_TO_HLS_PR_0_araddr(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARADDR),
        .rp_AXI_LITE_TO_HLS_PR_0_arprot(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARPROT),
        .rp_AXI_LITE_TO_HLS_PR_0_arready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_arvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_awaddr(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWADDR),
        .rp_AXI_LITE_TO_HLS_PR_0_awprot(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWPROT),
        .rp_AXI_LITE_TO_HLS_PR_0_awready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_awvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_bready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_bresp(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BRESP),
        .rp_AXI_LITE_TO_HLS_PR_0_bvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_rdata(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RDATA),
        .rp_AXI_LITE_TO_HLS_PR_0_rready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_rresp(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RRESP),
        .rp_AXI_LITE_TO_HLS_PR_0_rvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_wdata(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WDATA),
        .rp_AXI_LITE_TO_HLS_PR_0_wready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_wstrb(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WSTRB),
        .rp_AXI_LITE_TO_HLS_PR_0_wvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WVALID));
  TO_SH_AXI_MM_0_imp_O8FAOB TO_SH_AXI_MM_0
       (.M_AXI_araddr(TO_SH_AXI_MM_0_M_AXI_ARADDR),
        .M_AXI_arburst(TO_SH_AXI_MM_0_M_AXI_ARBURST),
        .M_AXI_arcache(TO_SH_AXI_MM_0_M_AXI_ARCACHE),
        .M_AXI_arid(TO_SH_AXI_MM_0_M_AXI_ARID),
        .M_AXI_arlen(TO_SH_AXI_MM_0_M_AXI_ARLEN),
        .M_AXI_arlock(TO_SH_AXI_MM_0_M_AXI_ARLOCK),
        .M_AXI_arprot(TO_SH_AXI_MM_0_M_AXI_ARPROT),
        .M_AXI_arqos(TO_SH_AXI_MM_0_M_AXI_ARQOS),
        .M_AXI_arready(TO_SH_AXI_MM_0_M_AXI_ARREADY),
        .M_AXI_arregion(TO_SH_AXI_MM_0_M_AXI_ARREGION),
        .M_AXI_arsize(TO_SH_AXI_MM_0_M_AXI_ARSIZE),
        .M_AXI_arvalid(TO_SH_AXI_MM_0_M_AXI_ARVALID),
        .M_AXI_awaddr(TO_SH_AXI_MM_0_M_AXI_AWADDR),
        .M_AXI_awburst(TO_SH_AXI_MM_0_M_AXI_AWBURST),
        .M_AXI_awcache(TO_SH_AXI_MM_0_M_AXI_AWCACHE),
        .M_AXI_awid(TO_SH_AXI_MM_0_M_AXI_AWID),
        .M_AXI_awlen(TO_SH_AXI_MM_0_M_AXI_AWLEN),
        .M_AXI_awlock(TO_SH_AXI_MM_0_M_AXI_AWLOCK),
        .M_AXI_awprot(TO_SH_AXI_MM_0_M_AXI_AWPROT),
        .M_AXI_awqos(TO_SH_AXI_MM_0_M_AXI_AWQOS),
        .M_AXI_awready(TO_SH_AXI_MM_0_M_AXI_AWREADY),
        .M_AXI_awregion(TO_SH_AXI_MM_0_M_AXI_AWREGION),
        .M_AXI_awsize(TO_SH_AXI_MM_0_M_AXI_AWSIZE),
        .M_AXI_awvalid(TO_SH_AXI_MM_0_M_AXI_AWVALID),
        .M_AXI_bid(TO_SH_AXI_MM_0_M_AXI_BID),
        .M_AXI_bready(TO_SH_AXI_MM_0_M_AXI_BREADY),
        .M_AXI_bresp(TO_SH_AXI_MM_0_M_AXI_BRESP),
        .M_AXI_bvalid(TO_SH_AXI_MM_0_M_AXI_BVALID),
        .M_AXI_rdata(TO_SH_AXI_MM_0_M_AXI_RDATA),
        .M_AXI_rid(TO_SH_AXI_MM_0_M_AXI_RID),
        .M_AXI_rlast(TO_SH_AXI_MM_0_M_AXI_RLAST),
        .M_AXI_rready(TO_SH_AXI_MM_0_M_AXI_RREADY),
        .M_AXI_rresp(TO_SH_AXI_MM_0_M_AXI_RRESP),
        .M_AXI_rvalid(TO_SH_AXI_MM_0_M_AXI_RVALID),
        .M_AXI_wdata(TO_SH_AXI_MM_0_M_AXI_WDATA),
        .M_AXI_wlast(TO_SH_AXI_MM_0_M_AXI_WLAST),
        .M_AXI_wready(TO_SH_AXI_MM_0_M_AXI_WREADY),
        .M_AXI_wstrb(TO_SH_AXI_MM_0_M_AXI_WSTRB),
        .M_AXI_wvalid(TO_SH_AXI_MM_0_M_AXI_WVALID),
        .aclk(axi_pcie3_0_axi_aclk),
        .decouple(xlconstant_0_dout),
        .rp_AXI_MM_FROM_HLS_PR_0_araddr(S_AXI_MM_0_1_ARADDR),
        .rp_AXI_MM_FROM_HLS_PR_0_arburst(S_AXI_MM_0_1_ARBURST),
        .rp_AXI_MM_FROM_HLS_PR_0_arcache(S_AXI_MM_0_1_ARCACHE),
        .rp_AXI_MM_FROM_HLS_PR_0_arid(S_AXI_MM_0_1_ARID),
        .rp_AXI_MM_FROM_HLS_PR_0_arlen(S_AXI_MM_0_1_ARLEN),
        .rp_AXI_MM_FROM_HLS_PR_0_arlock(S_AXI_MM_0_1_ARLOCK),
        .rp_AXI_MM_FROM_HLS_PR_0_arprot(S_AXI_MM_0_1_ARPROT),
        .rp_AXI_MM_FROM_HLS_PR_0_arqos(S_AXI_MM_0_1_ARQOS),
        .rp_AXI_MM_FROM_HLS_PR_0_arready(S_AXI_MM_0_1_ARREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_arregion(S_AXI_MM_0_1_ARREGION),
        .rp_AXI_MM_FROM_HLS_PR_0_arsize(S_AXI_MM_0_1_ARSIZE),
        .rp_AXI_MM_FROM_HLS_PR_0_arvalid(S_AXI_MM_0_1_ARVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_awaddr(S_AXI_MM_0_1_AWADDR),
        .rp_AXI_MM_FROM_HLS_PR_0_awburst(S_AXI_MM_0_1_AWBURST),
        .rp_AXI_MM_FROM_HLS_PR_0_awcache(S_AXI_MM_0_1_AWCACHE),
        .rp_AXI_MM_FROM_HLS_PR_0_awid(S_AXI_MM_0_1_AWID),
        .rp_AXI_MM_FROM_HLS_PR_0_awlen(S_AXI_MM_0_1_AWLEN),
        .rp_AXI_MM_FROM_HLS_PR_0_awlock(S_AXI_MM_0_1_AWLOCK),
        .rp_AXI_MM_FROM_HLS_PR_0_awprot(S_AXI_MM_0_1_AWPROT),
        .rp_AXI_MM_FROM_HLS_PR_0_awqos(S_AXI_MM_0_1_AWQOS),
        .rp_AXI_MM_FROM_HLS_PR_0_awready(S_AXI_MM_0_1_AWREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_awregion(S_AXI_MM_0_1_AWREGION),
        .rp_AXI_MM_FROM_HLS_PR_0_awsize(S_AXI_MM_0_1_AWSIZE),
        .rp_AXI_MM_FROM_HLS_PR_0_awvalid(S_AXI_MM_0_1_AWVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_bid(S_AXI_MM_0_1_BID),
        .rp_AXI_MM_FROM_HLS_PR_0_bready(S_AXI_MM_0_1_BREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_bresp(S_AXI_MM_0_1_BRESP),
        .rp_AXI_MM_FROM_HLS_PR_0_bvalid(S_AXI_MM_0_1_BVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_rdata(S_AXI_MM_0_1_RDATA),
        .rp_AXI_MM_FROM_HLS_PR_0_rid(S_AXI_MM_0_1_RID),
        .rp_AXI_MM_FROM_HLS_PR_0_rlast(S_AXI_MM_0_1_RLAST),
        .rp_AXI_MM_FROM_HLS_PR_0_rready(S_AXI_MM_0_1_RREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_rresp(S_AXI_MM_0_1_RRESP),
        .rp_AXI_MM_FROM_HLS_PR_0_rvalid(S_AXI_MM_0_1_RVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_wdata(S_AXI_MM_0_1_WDATA),
        .rp_AXI_MM_FROM_HLS_PR_0_wlast(S_AXI_MM_0_1_WLAST),
        .rp_AXI_MM_FROM_HLS_PR_0_wready(S_AXI_MM_0_1_WREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_wstrb(S_AXI_MM_0_1_WSTRB),
        .rp_AXI_MM_FROM_HLS_PR_0_wvalid(S_AXI_MM_0_1_WVALID));
  PL_X_axi_bram_ctrl_0_0 axi_bram_ctrl_0
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
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M05_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M05_AXI_AWADDR),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M05_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M05_AXI_WVALID));
  PL_X_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
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
  PL_X_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(xlslice_0_Dout),
        .gpio_io_o(xlslice_0_Dout),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M02_AXI_WVALID));
  PL_X_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_i(axi_gpio_1_GPIO2_TRI_I),
        .gpio_io_i(axi_gpio_1_GPIO_TRI_I),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M08_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M08_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M08_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M08_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M08_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M08_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M08_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M08_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M08_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M08_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M08_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M08_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M08_AXI_WVALID));
  PL_X_axi_gpio_2_0 axi_gpio_2
       (.gpio2_io_i(axi_gpio_2_GPIO2_TRI_I),
        .gpio_io_i(axi_gpio_2_GPIO_TRI_I),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M09_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M09_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M09_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M09_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M09_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M09_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M09_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M09_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M09_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M09_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M09_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M09_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M09_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M09_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M09_AXI_WVALID));
  PL_X_axi_gpio_4_0 axi_gpio_4
       (.gpio_io_i(gpio_io_i_0_1),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M06_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M06_AXI_WVALID));
  PL_X_axi_gpio_C0_SREF_0 axi_gpio_C0_SREF
       (.gpio2_io_i(\^C1_SYS_CLK ),
        .gpio_io_o(axi_gpio_C0_SREF_gpio_io_o),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M13_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M13_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M13_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M13_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M13_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M13_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M13_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M13_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M13_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M13_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M13_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M13_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M13_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M13_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M13_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M13_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M13_AXI_WVALID));
  PL_X_axi_gpio_C2_SREF_0 axi_gpio_C2_SREF
       (.gpio2_io_i(gpio2_io_i_0_1),
        .gpio_io_o(axi_gpio_3_gpio_io_o),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M14_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M14_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M14_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M14_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M14_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M14_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M14_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M14_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M14_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M14_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M14_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M14_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M14_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M14_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M14_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M14_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M14_AXI_WVALID));
  PL_X_axi_gpio_C3_SREF_0 axi_gpio_C3_SREF
       (.gpio2_io_i(gpio2_io_i_0_2),
        .gpio_io_o(axi_gpio_C3_SREF_gpio_io_o),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M15_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M15_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M15_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M15_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M15_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M15_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M15_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M15_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M15_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M15_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M15_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M15_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M15_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M15_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M15_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M15_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M15_AXI_WVALID));
  PL_X_axi_gpio_EFUSE_SHELL_VER_0 axi_gpio_EFUSE_SHELL_VER
       (.gpio2_io_i(axi_gpio_EFUSE_SHELL_VER_GPIO2_TRI_I),
        .gpio_io_i(axi_gpio_EFUSE_SHELL_VER_GPIO_TRI_I),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M12_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M12_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M12_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M12_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M12_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M12_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M12_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M12_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M12_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M12_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M12_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M12_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M12_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M12_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M12_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M12_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M12_AXI_WVALID));
  PL_X_axi_iic_0_0 axi_iic_0
       (.s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M11_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M11_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M11_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M11_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M11_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M11_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M11_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M11_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M11_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M11_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M11_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M11_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M11_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M11_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M11_AXI_WVALID),
        .scl_i(iiC_SCL_I),
        .scl_o(iiC_SCL_O),
        .scl_t(iiC_SCL_T),
        .sda_i(iiC_SDA_I),
        .sda_o(iiC_SDA_O),
        .sda_t(iiC_SDA_T));
  PL_X_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(axi_pcie3_0_axi_aclk),
        .ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_ACLK(ddr4_0_c0_ddr4_ui_clk),
        .M00_ARESETN(rst_ddr4_0_300M_peripheral_aresetn),
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
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(axi_pcie3_0_axi_aresetn),
        .S00_AXI_araddr(TO_SH_AXI_MM_0_M_AXI_ARADDR),
        .S00_AXI_arburst(TO_SH_AXI_MM_0_M_AXI_ARBURST),
        .S00_AXI_arcache(TO_SH_AXI_MM_0_M_AXI_ARCACHE),
        .S00_AXI_arid(TO_SH_AXI_MM_0_M_AXI_ARID),
        .S00_AXI_arlen(TO_SH_AXI_MM_0_M_AXI_ARLEN),
        .S00_AXI_arlock(TO_SH_AXI_MM_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(TO_SH_AXI_MM_0_M_AXI_ARPROT),
        .S00_AXI_arqos(TO_SH_AXI_MM_0_M_AXI_ARQOS),
        .S00_AXI_arready(TO_SH_AXI_MM_0_M_AXI_ARREADY),
        .S00_AXI_arregion(TO_SH_AXI_MM_0_M_AXI_ARREGION),
        .S00_AXI_arsize(TO_SH_AXI_MM_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(TO_SH_AXI_MM_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(TO_SH_AXI_MM_0_M_AXI_AWADDR),
        .S00_AXI_awburst(TO_SH_AXI_MM_0_M_AXI_AWBURST),
        .S00_AXI_awcache(TO_SH_AXI_MM_0_M_AXI_AWCACHE),
        .S00_AXI_awid(TO_SH_AXI_MM_0_M_AXI_AWID),
        .S00_AXI_awlen(TO_SH_AXI_MM_0_M_AXI_AWLEN),
        .S00_AXI_awlock(TO_SH_AXI_MM_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(TO_SH_AXI_MM_0_M_AXI_AWPROT),
        .S00_AXI_awqos(TO_SH_AXI_MM_0_M_AXI_AWQOS),
        .S00_AXI_awready(TO_SH_AXI_MM_0_M_AXI_AWREADY),
        .S00_AXI_awregion(TO_SH_AXI_MM_0_M_AXI_AWREGION),
        .S00_AXI_awsize(TO_SH_AXI_MM_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(TO_SH_AXI_MM_0_M_AXI_AWVALID),
        .S00_AXI_bid(TO_SH_AXI_MM_0_M_AXI_BID),
        .S00_AXI_bready(TO_SH_AXI_MM_0_M_AXI_BREADY),
        .S00_AXI_bresp(TO_SH_AXI_MM_0_M_AXI_BRESP),
        .S00_AXI_bvalid(TO_SH_AXI_MM_0_M_AXI_BVALID),
        .S00_AXI_rdata(TO_SH_AXI_MM_0_M_AXI_RDATA),
        .S00_AXI_rid(TO_SH_AXI_MM_0_M_AXI_RID),
        .S00_AXI_rlast(TO_SH_AXI_MM_0_M_AXI_RLAST),
        .S00_AXI_rready(TO_SH_AXI_MM_0_M_AXI_RREADY),
        .S00_AXI_rresp(TO_SH_AXI_MM_0_M_AXI_RRESP),
        .S00_AXI_rvalid(TO_SH_AXI_MM_0_M_AXI_RVALID),
        .S00_AXI_wdata(TO_SH_AXI_MM_0_M_AXI_WDATA),
        .S00_AXI_wlast(TO_SH_AXI_MM_0_M_AXI_WLAST),
        .S00_AXI_wready(TO_SH_AXI_MM_0_M_AXI_WREADY),
        .S00_AXI_wstrb(TO_SH_AXI_MM_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(TO_SH_AXI_MM_0_M_AXI_WVALID));
  PL_X_axi_pcie3_0_axi_periph_0 axi_pcie3_0_axi_periph
       (.ACLK(axi_pcie3_0_axi_aclk),
        .ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_ACLK(ddr4_0_c0_ddr4_ui_clk),
        .M00_ARESETN(rst_ddr4_0_300M_peripheral_aresetn),
        .M00_AXI_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie3_0_axi_aclk),
        .M01_ARESETN(axi_pcie3_0_axi_aresetn),
        .M01_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out_50M),
        .M02_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M02_AXI_araddr(axi_pcie3_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_pcie3_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_pcie3_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_pcie3_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_pcie3_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_pcie3_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_pcie3_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_pcie3_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_pcie3_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_pcie3_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(axi_pcie3_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_pcie3_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_pcie3_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_pcie3_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(axi_pcie3_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_pcie3_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_pcie3_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(ddr4_0_c0_ddr4_ui_clk),
        .M03_ARESETN(rst_ddr4_0_300M_peripheral_aresetn),
        .M03_AXI_araddr(s00_axi_2_ARADDR),
        .M03_AXI_arprot(s00_axi_2_ARPROT),
        .M03_AXI_arready(s00_axi_2_ARREADY),
        .M03_AXI_arvalid(s00_axi_2_ARVALID),
        .M03_AXI_awaddr(s00_axi_2_AWADDR),
        .M03_AXI_awprot(s00_axi_2_AWPROT),
        .M03_AXI_awready(s00_axi_2_AWREADY),
        .M03_AXI_awvalid(s00_axi_2_AWVALID),
        .M03_AXI_bready(s00_axi_2_BREADY),
        .M03_AXI_bresp(s00_axi_2_BRESP),
        .M03_AXI_bvalid(s00_axi_2_BVALID),
        .M03_AXI_rdata(s00_axi_2_RDATA),
        .M03_AXI_rready(s00_axi_2_RREADY),
        .M03_AXI_rresp(s00_axi_2_RRESP),
        .M03_AXI_rvalid(s00_axi_2_RVALID),
        .M03_AXI_wdata(s00_axi_2_WDATA),
        .M03_AXI_wready(s00_axi_2_WREADY),
        .M03_AXI_wstrb(s00_axi_2_WSTRB),
        .M03_AXI_wvalid(s00_axi_2_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out_50M),
        .M04_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M04_AXI_araddr(axi_pcie3_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_pcie3_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_pcie3_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_pcie3_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_pcie3_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_pcie3_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_pcie3_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_pcie3_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_pcie3_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_pcie3_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(axi_pcie3_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_pcie3_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_pcie3_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_pcie3_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(axi_pcie3_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_pcie3_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_pcie3_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out_50M),
        .M05_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M05_AXI_araddr(axi_pcie3_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_pcie3_0_axi_periph_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_pcie3_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_pcie3_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_pcie3_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_pcie3_0_axi_periph_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_pcie3_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_pcie3_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_pcie3_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_pcie3_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_pcie3_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_pcie3_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(axi_pcie3_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_pcie3_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_pcie3_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_pcie3_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(axi_pcie3_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_pcie3_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_pcie3_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_0_clk_out_50M),
        .M06_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M06_AXI_araddr(axi_pcie3_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_pcie3_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_pcie3_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_pcie3_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_pcie3_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_pcie3_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_pcie3_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_pcie3_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_pcie3_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_pcie3_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(axi_pcie3_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_pcie3_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_pcie3_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_pcie3_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(axi_pcie3_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_pcie3_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_pcie3_0_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(clk_wiz_0_clk_out_50M),
        .M07_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M07_AXI_araddr(axi_pcie3_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arprot(axi_pcie3_0_axi_periph_M07_AXI_ARPROT),
        .M07_AXI_arready(axi_pcie3_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_pcie3_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_pcie3_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awprot(axi_pcie3_0_axi_periph_M07_AXI_AWPROT),
        .M07_AXI_awready(axi_pcie3_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_pcie3_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_pcie3_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_pcie3_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_pcie3_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_pcie3_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(axi_pcie3_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_pcie3_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_pcie3_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_pcie3_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(axi_pcie3_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_pcie3_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_pcie3_0_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(clk_wiz_0_clk_out_50M),
        .M08_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M08_AXI_araddr(axi_pcie3_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_pcie3_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_pcie3_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_pcie3_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_pcie3_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_pcie3_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_pcie3_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_pcie3_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_pcie3_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_pcie3_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(axi_pcie3_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_pcie3_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_pcie3_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_pcie3_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(axi_pcie3_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_pcie3_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_pcie3_0_axi_periph_M08_AXI_WVALID),
        .M09_ACLK(clk_wiz_0_clk_out_50M),
        .M09_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M09_AXI_araddr(axi_pcie3_0_axi_periph_M09_AXI_ARADDR),
        .M09_AXI_arready(axi_pcie3_0_axi_periph_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_pcie3_0_axi_periph_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_pcie3_0_axi_periph_M09_AXI_AWADDR),
        .M09_AXI_awready(axi_pcie3_0_axi_periph_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_pcie3_0_axi_periph_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_pcie3_0_axi_periph_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_pcie3_0_axi_periph_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_pcie3_0_axi_periph_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_pcie3_0_axi_periph_M09_AXI_RDATA),
        .M09_AXI_rready(axi_pcie3_0_axi_periph_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_pcie3_0_axi_periph_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_pcie3_0_axi_periph_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_pcie3_0_axi_periph_M09_AXI_WDATA),
        .M09_AXI_wready(axi_pcie3_0_axi_periph_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_pcie3_0_axi_periph_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_pcie3_0_axi_periph_M09_AXI_WVALID),
        .M10_ACLK(clk_wiz_0_clk_out_50M),
        .M10_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M10_AXI_araddr(S_AXI_1_ARADDR),
        .M10_AXI_arready(S_AXI_1_ARREADY),
        .M10_AXI_arvalid(S_AXI_1_ARVALID),
        .M10_AXI_awaddr(S_AXI_1_AWADDR),
        .M10_AXI_awready(S_AXI_1_AWREADY),
        .M10_AXI_awvalid(S_AXI_1_AWVALID),
        .M10_AXI_bready(S_AXI_1_BREADY),
        .M10_AXI_bresp(S_AXI_1_BRESP),
        .M10_AXI_bvalid(S_AXI_1_BVALID),
        .M10_AXI_rdata(S_AXI_1_RDATA),
        .M10_AXI_rready(S_AXI_1_RREADY),
        .M10_AXI_rresp(S_AXI_1_RRESP),
        .M10_AXI_rvalid(S_AXI_1_RVALID),
        .M10_AXI_wdata(S_AXI_1_WDATA),
        .M10_AXI_wready(S_AXI_1_WREADY),
        .M10_AXI_wstrb(S_AXI_1_WSTRB),
        .M10_AXI_wvalid(S_AXI_1_WVALID),
        .M11_ACLK(clk_wiz_0_clk_out_50M),
        .M11_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M11_AXI_araddr(axi_pcie3_0_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arready(axi_pcie3_0_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_pcie3_0_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_pcie3_0_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awready(axi_pcie3_0_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(axi_pcie3_0_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(axi_pcie3_0_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(axi_pcie3_0_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(axi_pcie3_0_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(axi_pcie3_0_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(axi_pcie3_0_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(axi_pcie3_0_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(axi_pcie3_0_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(axi_pcie3_0_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(axi_pcie3_0_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(axi_pcie3_0_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(axi_pcie3_0_axi_periph_M11_AXI_WVALID),
        .M12_ACLK(clk_wiz_0_clk_out_50M),
        .M12_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M12_AXI_araddr(axi_pcie3_0_axi_periph_M12_AXI_ARADDR),
        .M12_AXI_arready(axi_pcie3_0_axi_periph_M12_AXI_ARREADY),
        .M12_AXI_arvalid(axi_pcie3_0_axi_periph_M12_AXI_ARVALID),
        .M12_AXI_awaddr(axi_pcie3_0_axi_periph_M12_AXI_AWADDR),
        .M12_AXI_awready(axi_pcie3_0_axi_periph_M12_AXI_AWREADY),
        .M12_AXI_awvalid(axi_pcie3_0_axi_periph_M12_AXI_AWVALID),
        .M12_AXI_bready(axi_pcie3_0_axi_periph_M12_AXI_BREADY),
        .M12_AXI_bresp(axi_pcie3_0_axi_periph_M12_AXI_BRESP),
        .M12_AXI_bvalid(axi_pcie3_0_axi_periph_M12_AXI_BVALID),
        .M12_AXI_rdata(axi_pcie3_0_axi_periph_M12_AXI_RDATA),
        .M12_AXI_rready(axi_pcie3_0_axi_periph_M12_AXI_RREADY),
        .M12_AXI_rresp(axi_pcie3_0_axi_periph_M12_AXI_RRESP),
        .M12_AXI_rvalid(axi_pcie3_0_axi_periph_M12_AXI_RVALID),
        .M12_AXI_wdata(axi_pcie3_0_axi_periph_M12_AXI_WDATA),
        .M12_AXI_wready(axi_pcie3_0_axi_periph_M12_AXI_WREADY),
        .M12_AXI_wstrb(axi_pcie3_0_axi_periph_M12_AXI_WSTRB),
        .M12_AXI_wvalid(axi_pcie3_0_axi_periph_M12_AXI_WVALID),
        .M13_ACLK(clk_wiz_0_clk_out_50M),
        .M13_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M13_AXI_araddr(axi_pcie3_0_axi_periph_M13_AXI_ARADDR),
        .M13_AXI_arready(axi_pcie3_0_axi_periph_M13_AXI_ARREADY),
        .M13_AXI_arvalid(axi_pcie3_0_axi_periph_M13_AXI_ARVALID),
        .M13_AXI_awaddr(axi_pcie3_0_axi_periph_M13_AXI_AWADDR),
        .M13_AXI_awready(axi_pcie3_0_axi_periph_M13_AXI_AWREADY),
        .M13_AXI_awvalid(axi_pcie3_0_axi_periph_M13_AXI_AWVALID),
        .M13_AXI_bready(axi_pcie3_0_axi_periph_M13_AXI_BREADY),
        .M13_AXI_bresp(axi_pcie3_0_axi_periph_M13_AXI_BRESP),
        .M13_AXI_bvalid(axi_pcie3_0_axi_periph_M13_AXI_BVALID),
        .M13_AXI_rdata(axi_pcie3_0_axi_periph_M13_AXI_RDATA),
        .M13_AXI_rready(axi_pcie3_0_axi_periph_M13_AXI_RREADY),
        .M13_AXI_rresp(axi_pcie3_0_axi_periph_M13_AXI_RRESP),
        .M13_AXI_rvalid(axi_pcie3_0_axi_periph_M13_AXI_RVALID),
        .M13_AXI_wdata(axi_pcie3_0_axi_periph_M13_AXI_WDATA),
        .M13_AXI_wready(axi_pcie3_0_axi_periph_M13_AXI_WREADY),
        .M13_AXI_wstrb(axi_pcie3_0_axi_periph_M13_AXI_WSTRB),
        .M13_AXI_wvalid(axi_pcie3_0_axi_periph_M13_AXI_WVALID),
        .M14_ACLK(clk_wiz_0_clk_out_50M),
        .M14_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M14_AXI_araddr(axi_pcie3_0_axi_periph_M14_AXI_ARADDR),
        .M14_AXI_arready(axi_pcie3_0_axi_periph_M14_AXI_ARREADY),
        .M14_AXI_arvalid(axi_pcie3_0_axi_periph_M14_AXI_ARVALID),
        .M14_AXI_awaddr(axi_pcie3_0_axi_periph_M14_AXI_AWADDR),
        .M14_AXI_awready(axi_pcie3_0_axi_periph_M14_AXI_AWREADY),
        .M14_AXI_awvalid(axi_pcie3_0_axi_periph_M14_AXI_AWVALID),
        .M14_AXI_bready(axi_pcie3_0_axi_periph_M14_AXI_BREADY),
        .M14_AXI_bresp(axi_pcie3_0_axi_periph_M14_AXI_BRESP),
        .M14_AXI_bvalid(axi_pcie3_0_axi_periph_M14_AXI_BVALID),
        .M14_AXI_rdata(axi_pcie3_0_axi_periph_M14_AXI_RDATA),
        .M14_AXI_rready(axi_pcie3_0_axi_periph_M14_AXI_RREADY),
        .M14_AXI_rresp(axi_pcie3_0_axi_periph_M14_AXI_RRESP),
        .M14_AXI_rvalid(axi_pcie3_0_axi_periph_M14_AXI_RVALID),
        .M14_AXI_wdata(axi_pcie3_0_axi_periph_M14_AXI_WDATA),
        .M14_AXI_wready(axi_pcie3_0_axi_periph_M14_AXI_WREADY),
        .M14_AXI_wstrb(axi_pcie3_0_axi_periph_M14_AXI_WSTRB),
        .M14_AXI_wvalid(axi_pcie3_0_axi_periph_M14_AXI_WVALID),
        .M15_ACLK(clk_wiz_0_clk_out_50M),
        .M15_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M15_AXI_araddr(axi_pcie3_0_axi_periph_M15_AXI_ARADDR),
        .M15_AXI_arready(axi_pcie3_0_axi_periph_M15_AXI_ARREADY),
        .M15_AXI_arvalid(axi_pcie3_0_axi_periph_M15_AXI_ARVALID),
        .M15_AXI_awaddr(axi_pcie3_0_axi_periph_M15_AXI_AWADDR),
        .M15_AXI_awready(axi_pcie3_0_axi_periph_M15_AXI_AWREADY),
        .M15_AXI_awvalid(axi_pcie3_0_axi_periph_M15_AXI_AWVALID),
        .M15_AXI_bready(axi_pcie3_0_axi_periph_M15_AXI_BREADY),
        .M15_AXI_bresp(axi_pcie3_0_axi_periph_M15_AXI_BRESP),
        .M15_AXI_bvalid(axi_pcie3_0_axi_periph_M15_AXI_BVALID),
        .M15_AXI_rdata(axi_pcie3_0_axi_periph_M15_AXI_RDATA),
        .M15_AXI_rready(axi_pcie3_0_axi_periph_M15_AXI_RREADY),
        .M15_AXI_rresp(axi_pcie3_0_axi_periph_M15_AXI_RRESP),
        .M15_AXI_rvalid(axi_pcie3_0_axi_periph_M15_AXI_RVALID),
        .M15_AXI_wdata(axi_pcie3_0_axi_periph_M15_AXI_WDATA),
        .M15_AXI_wready(axi_pcie3_0_axi_periph_M15_AXI_WREADY),
        .M15_AXI_wstrb(axi_pcie3_0_axi_periph_M15_AXI_WSTRB),
        .M15_AXI_wvalid(axi_pcie3_0_axi_periph_M15_AXI_WVALID),
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(axi_pcie3_0_axi_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  PL_X_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(axi_pcie3_0_axi_aclk),
        .clk_out_125M(clk_wiz_0_clk_out_125M1),
        .clk_out_50M(clk_wiz_0_clk_out_50M));
  PL_X_clk_wiz_PROG_0 clk_wiz_PROG
       (.clk_in1(ddr4_0_c0_ddr4_ui_clk),
        .clk_out_300M(clk_wiz_PROG_clk_out_300M),
        .clk_out_400M(clk_wiz_PROG_clk_out_400M),
        .clk_out_PROG(clk_wiz_PROG_clk_out_PROG),
        .s_axi_aclk(clk_wiz_0_clk_out_50M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M04_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M04_AXI_WVALID));
  PL_X_cms_subsystem_0_0 cms_subsystem_0
       (.aclk_ctrl(clk_wiz_0_clk_out_50M),
        .aresetn_ctrl(rst_ddr4_0_300M1_peripheral_aresetn),
        .qsfp0_int_l(1'b0),
        .qsfp0_modprs_l(1'b0),
        .qsfp1_int_l(1'b0),
        .qsfp1_modprs_l(1'b0),
        .s_axi_ctrl_araddr(axi_pcie3_0_axi_periph_M07_AXI_ARADDR),
        .s_axi_ctrl_arprot(axi_pcie3_0_axi_periph_M07_AXI_ARPROT),
        .s_axi_ctrl_arready(axi_pcie3_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_ctrl_arvalid(axi_pcie3_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_ctrl_awaddr(axi_pcie3_0_axi_periph_M07_AXI_AWADDR),
        .s_axi_ctrl_awprot(axi_pcie3_0_axi_periph_M07_AXI_AWPROT),
        .s_axi_ctrl_awready(axi_pcie3_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_ctrl_awvalid(axi_pcie3_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_ctrl_bready(axi_pcie3_0_axi_periph_M07_AXI_BREADY),
        .s_axi_ctrl_bresp(axi_pcie3_0_axi_periph_M07_AXI_BRESP),
        .s_axi_ctrl_bvalid(axi_pcie3_0_axi_periph_M07_AXI_BVALID),
        .s_axi_ctrl_rdata(axi_pcie3_0_axi_periph_M07_AXI_RDATA),
        .s_axi_ctrl_rready(axi_pcie3_0_axi_periph_M07_AXI_RREADY),
        .s_axi_ctrl_rresp(axi_pcie3_0_axi_periph_M07_AXI_RRESP),
        .s_axi_ctrl_rvalid(axi_pcie3_0_axi_periph_M07_AXI_RVALID),
        .s_axi_ctrl_wdata(axi_pcie3_0_axi_periph_M07_AXI_WDATA),
        .s_axi_ctrl_wready(axi_pcie3_0_axi_periph_M07_AXI_WREADY),
        .s_axi_ctrl_wstrb(axi_pcie3_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_ctrl_wvalid(axi_pcie3_0_axi_periph_M07_AXI_WVALID),
        .satellite_gpio(BMC_GPIO),
        .satellite_uart_rxd(BMC_UART_RxD),
        .satellite_uart_txd(BMC_UART_TxD));
  PL_X_rst_250M_0 rst_250M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(axi_pcie3_0_axi_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_250M_peripheral_aresetn),
        .slowest_sync_clk(axi_pcie3_0_axi_aclk));
  PL_X_rst_50M_0 rst_50M
       (.aux_reset_in(1'b1),
        .dcm_locked(THIN_SHELL_user_lnk_up),
        .ext_reset_in(axi_pcie3_0_axi_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out_50M));
  PL_X_rst_ddr4_0_300M_0 rst_ddr4_0_300M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_c0_ddr4_ui_clk));
  PL_X_system_ila_AXIL_0 system_ila_AXIL
       (.SLOT_0_AXI_araddr(S00_AXI_1_ARADDR),
        .SLOT_0_AXI_arprot(S00_AXI_1_ARPROT),
        .SLOT_0_AXI_arready(S00_AXI_1_ARREADY),
        .SLOT_0_AXI_arvalid(S00_AXI_1_ARVALID),
        .SLOT_0_AXI_awaddr(S00_AXI_1_AWADDR),
        .SLOT_0_AXI_awprot(S00_AXI_1_AWPROT),
        .SLOT_0_AXI_awready(S00_AXI_1_AWREADY),
        .SLOT_0_AXI_awvalid(S00_AXI_1_AWVALID),
        .SLOT_0_AXI_bready(S00_AXI_1_BREADY),
        .SLOT_0_AXI_bresp(S00_AXI_1_BRESP),
        .SLOT_0_AXI_bvalid(S00_AXI_1_BVALID),
        .SLOT_0_AXI_rdata(S00_AXI_1_RDATA),
        .SLOT_0_AXI_rready(S00_AXI_1_RREADY),
        .SLOT_0_AXI_rresp(S00_AXI_1_RRESP),
        .SLOT_0_AXI_rvalid(S00_AXI_1_RVALID),
        .SLOT_0_AXI_wdata(S00_AXI_1_WDATA),
        .SLOT_0_AXI_wready(S00_AXI_1_WREADY),
        .SLOT_0_AXI_wstrb(S00_AXI_1_WSTRB),
        .SLOT_0_AXI_wvalid(S00_AXI_1_WVALID),
        .clk(axi_pcie3_0_axi_aclk),
        .resetn(axi_pcie3_0_axi_aresetn));
  PL_X_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module TO_SH_AXI_MM_0_imp_O8FAOB
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
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
    M_AXI_awregion,
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
    aclk,
    decouple,
    rp_AXI_MM_FROM_HLS_PR_0_araddr,
    rp_AXI_MM_FROM_HLS_PR_0_arburst,
    rp_AXI_MM_FROM_HLS_PR_0_arcache,
    rp_AXI_MM_FROM_HLS_PR_0_arid,
    rp_AXI_MM_FROM_HLS_PR_0_arlen,
    rp_AXI_MM_FROM_HLS_PR_0_arlock,
    rp_AXI_MM_FROM_HLS_PR_0_arprot,
    rp_AXI_MM_FROM_HLS_PR_0_arqos,
    rp_AXI_MM_FROM_HLS_PR_0_arready,
    rp_AXI_MM_FROM_HLS_PR_0_arregion,
    rp_AXI_MM_FROM_HLS_PR_0_arsize,
    rp_AXI_MM_FROM_HLS_PR_0_arvalid,
    rp_AXI_MM_FROM_HLS_PR_0_awaddr,
    rp_AXI_MM_FROM_HLS_PR_0_awburst,
    rp_AXI_MM_FROM_HLS_PR_0_awcache,
    rp_AXI_MM_FROM_HLS_PR_0_awid,
    rp_AXI_MM_FROM_HLS_PR_0_awlen,
    rp_AXI_MM_FROM_HLS_PR_0_awlock,
    rp_AXI_MM_FROM_HLS_PR_0_awprot,
    rp_AXI_MM_FROM_HLS_PR_0_awqos,
    rp_AXI_MM_FROM_HLS_PR_0_awready,
    rp_AXI_MM_FROM_HLS_PR_0_awregion,
    rp_AXI_MM_FROM_HLS_PR_0_awsize,
    rp_AXI_MM_FROM_HLS_PR_0_awvalid,
    rp_AXI_MM_FROM_HLS_PR_0_bid,
    rp_AXI_MM_FROM_HLS_PR_0_bready,
    rp_AXI_MM_FROM_HLS_PR_0_bresp,
    rp_AXI_MM_FROM_HLS_PR_0_bvalid,
    rp_AXI_MM_FROM_HLS_PR_0_rdata,
    rp_AXI_MM_FROM_HLS_PR_0_rid,
    rp_AXI_MM_FROM_HLS_PR_0_rlast,
    rp_AXI_MM_FROM_HLS_PR_0_rready,
    rp_AXI_MM_FROM_HLS_PR_0_rresp,
    rp_AXI_MM_FROM_HLS_PR_0_rvalid,
    rp_AXI_MM_FROM_HLS_PR_0_wdata,
    rp_AXI_MM_FROM_HLS_PR_0_wlast,
    rp_AXI_MM_FROM_HLS_PR_0_wready,
    rp_AXI_MM_FROM_HLS_PR_0_wstrb,
    rp_AXI_MM_FROM_HLS_PR_0_wvalid);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
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
  output [3:0]M_AXI_awregion;
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
  input aclk;
  input decouple;
  input [63:0]rp_AXI_MM_FROM_HLS_PR_0_araddr;
  input [1:0]rp_AXI_MM_FROM_HLS_PR_0_arburst;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_arcache;
  input [5:0]rp_AXI_MM_FROM_HLS_PR_0_arid;
  input [7:0]rp_AXI_MM_FROM_HLS_PR_0_arlen;
  input [0:0]rp_AXI_MM_FROM_HLS_PR_0_arlock;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_arprot;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_arqos;
  output rp_AXI_MM_FROM_HLS_PR_0_arready;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_arregion;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_arsize;
  input rp_AXI_MM_FROM_HLS_PR_0_arvalid;
  input [63:0]rp_AXI_MM_FROM_HLS_PR_0_awaddr;
  input [1:0]rp_AXI_MM_FROM_HLS_PR_0_awburst;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_awcache;
  input [5:0]rp_AXI_MM_FROM_HLS_PR_0_awid;
  input [7:0]rp_AXI_MM_FROM_HLS_PR_0_awlen;
  input [0:0]rp_AXI_MM_FROM_HLS_PR_0_awlock;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_awprot;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_awqos;
  output rp_AXI_MM_FROM_HLS_PR_0_awready;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_awregion;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_awsize;
  input rp_AXI_MM_FROM_HLS_PR_0_awvalid;
  output [5:0]rp_AXI_MM_FROM_HLS_PR_0_bid;
  input rp_AXI_MM_FROM_HLS_PR_0_bready;
  output [1:0]rp_AXI_MM_FROM_HLS_PR_0_bresp;
  output rp_AXI_MM_FROM_HLS_PR_0_bvalid;
  output [511:0]rp_AXI_MM_FROM_HLS_PR_0_rdata;
  output [5:0]rp_AXI_MM_FROM_HLS_PR_0_rid;
  output rp_AXI_MM_FROM_HLS_PR_0_rlast;
  input rp_AXI_MM_FROM_HLS_PR_0_rready;
  output [1:0]rp_AXI_MM_FROM_HLS_PR_0_rresp;
  output rp_AXI_MM_FROM_HLS_PR_0_rvalid;
  input [511:0]rp_AXI_MM_FROM_HLS_PR_0_wdata;
  input rp_AXI_MM_FROM_HLS_PR_0_wlast;
  output rp_AXI_MM_FROM_HLS_PR_0_wready;
  input [63:0]rp_AXI_MM_FROM_HLS_PR_0_wstrb;
  input rp_AXI_MM_FROM_HLS_PR_0_wvalid;

  wire [63:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARCACHE;
  wire [5:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARID;
  wire [7:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARQOS;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARSIZE;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWCACHE;
  wire [5:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWID;
  wire [7:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWQOS;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWSIZE;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWVALID;
  wire [5:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BID;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BREADY;
  wire [1:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BRESP;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BVALID;
  wire [511:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RDATA;
  wire [5:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RID;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RLAST;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RREADY;
  wire [1:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RRESP;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RVALID;
  wire [511:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WDATA;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WLAST;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WREADY;
  wire [63:0]axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WSTRB;
  wire axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WVALID;
  wire clk_wiz_0_clk_out_125M;
  wire decouple_1;
  wire [63:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARADDR;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARBURST;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARCACHE;
  wire [5:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARID;
  wire [7:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARLEN;
  wire [0:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARLOCK;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARPROT;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARQOS;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARREGION;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARSIZE;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_ARVALID;
  wire [63:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWADDR;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWBURST;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWCACHE;
  wire [5:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWID;
  wire [7:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWLEN;
  wire [0:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWLOCK;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWPROT;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWQOS;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWREGION;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWSIZE;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_AWVALID;
  wire [5:0]rp_AXI_MM_FROM_HLS_PR_0_1_BID;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_BREADY;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  wire [511:0]rp_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  wire [5:0]rp_AXI_MM_FROM_HLS_PR_0_1_RID;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_RREADY;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  wire [511:0]rp_AXI_MM_FROM_HLS_PR_0_1_WDATA;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_WLAST;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  wire [63:0]rp_AXI_MM_FROM_HLS_PR_0_1_WSTRB;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_WVALID;

  assign M_AXI_araddr[63:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARCACHE;
  assign M_AXI_arid[5:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARID;
  assign M_AXI_arlen[7:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARLEN;
  assign M_AXI_arlock[0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARPROT;
  assign M_AXI_arqos[3:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARQOS;
  assign M_AXI_arregion[3:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARREGION;
  assign M_AXI_arsize[2:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARSIZE;
  assign M_AXI_arvalid = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWCACHE;
  assign M_AXI_awid[5:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWID;
  assign M_AXI_awlen[7:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWLEN;
  assign M_AXI_awlock[0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWPROT;
  assign M_AXI_awqos[3:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWQOS;
  assign M_AXI_awregion[3:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWREGION;
  assign M_AXI_awsize[2:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWSIZE;
  assign M_AXI_awvalid = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWVALID;
  assign M_AXI_bready = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BREADY;
  assign M_AXI_rready = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RREADY;
  assign M_AXI_wdata[511:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WDATA;
  assign M_AXI_wlast = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WLAST;
  assign M_AXI_wstrb[63:0] = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WSTRB;
  assign M_AXI_wvalid = axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WVALID;
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARREADY = M_AXI_arready;
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWREADY = M_AXI_awready;
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BID = M_AXI_bid[5:0];
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BVALID = M_AXI_bvalid;
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RDATA = M_AXI_rdata[511:0];
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RID = M_AXI_rid[5:0];
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RLAST = M_AXI_rlast;
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RVALID = M_AXI_rvalid;
  assign axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WREADY = M_AXI_wready;
  assign clk_wiz_0_clk_out_125M = aclk;
  assign decouple_1 = decouple;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARADDR = rp_AXI_MM_FROM_HLS_PR_0_araddr[63:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARBURST = rp_AXI_MM_FROM_HLS_PR_0_arburst[1:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARCACHE = rp_AXI_MM_FROM_HLS_PR_0_arcache[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARID = rp_AXI_MM_FROM_HLS_PR_0_arid[5:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARLEN = rp_AXI_MM_FROM_HLS_PR_0_arlen[7:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARLOCK = rp_AXI_MM_FROM_HLS_PR_0_arlock[0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARPROT = rp_AXI_MM_FROM_HLS_PR_0_arprot[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARQOS = rp_AXI_MM_FROM_HLS_PR_0_arqos[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARREGION = rp_AXI_MM_FROM_HLS_PR_0_arregion[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARSIZE = rp_AXI_MM_FROM_HLS_PR_0_arsize[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARVALID = rp_AXI_MM_FROM_HLS_PR_0_arvalid;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWADDR = rp_AXI_MM_FROM_HLS_PR_0_awaddr[63:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWBURST = rp_AXI_MM_FROM_HLS_PR_0_awburst[1:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWCACHE = rp_AXI_MM_FROM_HLS_PR_0_awcache[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWID = rp_AXI_MM_FROM_HLS_PR_0_awid[5:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWLEN = rp_AXI_MM_FROM_HLS_PR_0_awlen[7:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWLOCK = rp_AXI_MM_FROM_HLS_PR_0_awlock[0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWPROT = rp_AXI_MM_FROM_HLS_PR_0_awprot[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWQOS = rp_AXI_MM_FROM_HLS_PR_0_awqos[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWREGION = rp_AXI_MM_FROM_HLS_PR_0_awregion[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWSIZE = rp_AXI_MM_FROM_HLS_PR_0_awsize[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWVALID = rp_AXI_MM_FROM_HLS_PR_0_awvalid;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_BREADY = rp_AXI_MM_FROM_HLS_PR_0_bready;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_RREADY = rp_AXI_MM_FROM_HLS_PR_0_rready;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WDATA = rp_AXI_MM_FROM_HLS_PR_0_wdata[511:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WLAST = rp_AXI_MM_FROM_HLS_PR_0_wlast;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WSTRB = rp_AXI_MM_FROM_HLS_PR_0_wstrb[63:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WVALID = rp_AXI_MM_FROM_HLS_PR_0_wvalid;
  assign rp_AXI_MM_FROM_HLS_PR_0_arready = rp_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  assign rp_AXI_MM_FROM_HLS_PR_0_awready = rp_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  assign rp_AXI_MM_FROM_HLS_PR_0_bid[5:0] = rp_AXI_MM_FROM_HLS_PR_0_1_BID;
  assign rp_AXI_MM_FROM_HLS_PR_0_bresp[1:0] = rp_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  assign rp_AXI_MM_FROM_HLS_PR_0_bvalid = rp_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  assign rp_AXI_MM_FROM_HLS_PR_0_rdata[511:0] = rp_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  assign rp_AXI_MM_FROM_HLS_PR_0_rid[5:0] = rp_AXI_MM_FROM_HLS_PR_0_1_RID;
  assign rp_AXI_MM_FROM_HLS_PR_0_rlast = rp_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  assign rp_AXI_MM_FROM_HLS_PR_0_rresp[1:0] = rp_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  assign rp_AXI_MM_FROM_HLS_PR_0_rvalid = rp_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  assign rp_AXI_MM_FROM_HLS_PR_0_wready = rp_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  PL_X_axi_register_slice_PR_DECOUPLE_AXI_MM_0 axi_register_slice_PR_DECOUPLE_AXI_MM
       (.aclk(clk_wiz_0_clk_out_125M),
        .aresetn(decouple_1),
        .m_axi_araddr(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BID),
        .m_axi_bready(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RID),
        .m_axi_rlast(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI_WVALID),
        .s_axi_araddr(rp_AXI_MM_FROM_HLS_PR_0_1_ARADDR),
        .s_axi_arburst(rp_AXI_MM_FROM_HLS_PR_0_1_ARBURST),
        .s_axi_arcache(rp_AXI_MM_FROM_HLS_PR_0_1_ARCACHE),
        .s_axi_arid(rp_AXI_MM_FROM_HLS_PR_0_1_ARID),
        .s_axi_arlen(rp_AXI_MM_FROM_HLS_PR_0_1_ARLEN),
        .s_axi_arlock(rp_AXI_MM_FROM_HLS_PR_0_1_ARLOCK),
        .s_axi_arprot(rp_AXI_MM_FROM_HLS_PR_0_1_ARPROT),
        .s_axi_arqos(rp_AXI_MM_FROM_HLS_PR_0_1_ARQOS),
        .s_axi_arready(rp_AXI_MM_FROM_HLS_PR_0_1_ARREADY),
        .s_axi_arregion(rp_AXI_MM_FROM_HLS_PR_0_1_ARREGION),
        .s_axi_arsize(rp_AXI_MM_FROM_HLS_PR_0_1_ARSIZE),
        .s_axi_arvalid(rp_AXI_MM_FROM_HLS_PR_0_1_ARVALID),
        .s_axi_awaddr(rp_AXI_MM_FROM_HLS_PR_0_1_AWADDR),
        .s_axi_awburst(rp_AXI_MM_FROM_HLS_PR_0_1_AWBURST),
        .s_axi_awcache(rp_AXI_MM_FROM_HLS_PR_0_1_AWCACHE),
        .s_axi_awid(rp_AXI_MM_FROM_HLS_PR_0_1_AWID),
        .s_axi_awlen(rp_AXI_MM_FROM_HLS_PR_0_1_AWLEN),
        .s_axi_awlock(rp_AXI_MM_FROM_HLS_PR_0_1_AWLOCK),
        .s_axi_awprot(rp_AXI_MM_FROM_HLS_PR_0_1_AWPROT),
        .s_axi_awqos(rp_AXI_MM_FROM_HLS_PR_0_1_AWQOS),
        .s_axi_awready(rp_AXI_MM_FROM_HLS_PR_0_1_AWREADY),
        .s_axi_awregion(rp_AXI_MM_FROM_HLS_PR_0_1_AWREGION),
        .s_axi_awsize(rp_AXI_MM_FROM_HLS_PR_0_1_AWSIZE),
        .s_axi_awvalid(rp_AXI_MM_FROM_HLS_PR_0_1_AWVALID),
        .s_axi_bid(rp_AXI_MM_FROM_HLS_PR_0_1_BID),
        .s_axi_bready(rp_AXI_MM_FROM_HLS_PR_0_1_BREADY),
        .s_axi_bresp(rp_AXI_MM_FROM_HLS_PR_0_1_BRESP),
        .s_axi_bvalid(rp_AXI_MM_FROM_HLS_PR_0_1_BVALID),
        .s_axi_rdata(rp_AXI_MM_FROM_HLS_PR_0_1_RDATA),
        .s_axi_rid(rp_AXI_MM_FROM_HLS_PR_0_1_RID),
        .s_axi_rlast(rp_AXI_MM_FROM_HLS_PR_0_1_RLAST),
        .s_axi_rready(rp_AXI_MM_FROM_HLS_PR_0_1_RREADY),
        .s_axi_rresp(rp_AXI_MM_FROM_HLS_PR_0_1_RRESP),
        .s_axi_rvalid(rp_AXI_MM_FROM_HLS_PR_0_1_RVALID),
        .s_axi_wdata(rp_AXI_MM_FROM_HLS_PR_0_1_WDATA),
        .s_axi_wlast(rp_AXI_MM_FROM_HLS_PR_0_1_WLAST),
        .s_axi_wready(rp_AXI_MM_FROM_HLS_PR_0_1_WREADY),
        .s_axi_wstrb(rp_AXI_MM_FROM_HLS_PR_0_1_WSTRB),
        .s_axi_wvalid(rp_AXI_MM_FROM_HLS_PR_0_1_WVALID));
endmodule

module m00_couplers_imp_193KZ0I
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
  PL_X_auto_cc_1 auto_cc
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

module m01_couplers_imp_HMHM44
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
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  wire [31:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [31:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [31:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [31:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  PL_X_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_IU5LGV
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [8:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_1PUONTL
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
  wire [17:0]auto_cc_to_m03_couplers_ARADDR;
  wire [2:0]auto_cc_to_m03_couplers_ARPROT;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [17:0]auto_cc_to_m03_couplers_AWADDR;
  wire [2:0]auto_cc_to_m03_couplers_AWPROT;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [3:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[17:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[17:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[17:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module m04_couplers_imp_1FXDOIH
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
  output [10:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
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
  wire [10:0]auto_cc_to_m04_couplers_ARADDR;
  wire auto_cc_to_m04_couplers_ARREADY;
  wire auto_cc_to_m04_couplers_ARVALID;
  wire [10:0]auto_cc_to_m04_couplers_AWADDR;
  wire auto_cc_to_m04_couplers_AWREADY;
  wire auto_cc_to_m04_couplers_AWVALID;
  wire auto_cc_to_m04_couplers_BREADY;
  wire [1:0]auto_cc_to_m04_couplers_BRESP;
  wire auto_cc_to_m04_couplers_BVALID;
  wire [31:0]auto_cc_to_m04_couplers_RDATA;
  wire auto_cc_to_m04_couplers_RREADY;
  wire [1:0]auto_cc_to_m04_couplers_RRESP;
  wire auto_cc_to_m04_couplers_RVALID;
  wire [31:0]auto_cc_to_m04_couplers_WDATA;
  wire auto_cc_to_m04_couplers_WREADY;
  wire [3:0]auto_cc_to_m04_couplers_WSTRB;
  wire auto_cc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [31:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = auto_cc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = auto_cc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[10:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[10:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
endmodule

module m05_couplers_imp_AL79YN
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
  output [12:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
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
  wire [12:0]auto_cc_to_m05_couplers_ARADDR;
  wire [2:0]auto_cc_to_m05_couplers_ARPROT;
  wire auto_cc_to_m05_couplers_ARREADY;
  wire auto_cc_to_m05_couplers_ARVALID;
  wire [12:0]auto_cc_to_m05_couplers_AWADDR;
  wire [2:0]auto_cc_to_m05_couplers_AWPROT;
  wire auto_cc_to_m05_couplers_AWREADY;
  wire auto_cc_to_m05_couplers_AWVALID;
  wire auto_cc_to_m05_couplers_BREADY;
  wire [1:0]auto_cc_to_m05_couplers_BRESP;
  wire auto_cc_to_m05_couplers_BVALID;
  wire [31:0]auto_cc_to_m05_couplers_RDATA;
  wire auto_cc_to_m05_couplers_RREADY;
  wire [1:0]auto_cc_to_m05_couplers_RRESP;
  wire auto_cc_to_m05_couplers_RVALID;
  wire [31:0]auto_cc_to_m05_couplers_WDATA;
  wire auto_cc_to_m05_couplers_WREADY;
  wire [3:0]auto_cc_to_m05_couplers_WSTRB;
  wire auto_cc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_cc_ARADDR;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [31:0]m05_couplers_to_auto_cc_AWADDR;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [31:0]m05_couplers_to_auto_cc_RDATA;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [31:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [3:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[12:0] = auto_cc_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_cc_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m05_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m05_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m05_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m05_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[12:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[12:0]),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
endmodule

module m06_couplers_imp_P1TWJ8
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [8:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [31:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module m07_couplers_imp_1JAJ0JM
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
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
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
  wire [17:0]auto_cc_to_m07_regslice_ARADDR;
  wire [2:0]auto_cc_to_m07_regslice_ARPROT;
  wire auto_cc_to_m07_regslice_ARREADY;
  wire auto_cc_to_m07_regslice_ARVALID;
  wire [17:0]auto_cc_to_m07_regslice_AWADDR;
  wire [2:0]auto_cc_to_m07_regslice_AWPROT;
  wire auto_cc_to_m07_regslice_AWREADY;
  wire auto_cc_to_m07_regslice_AWVALID;
  wire auto_cc_to_m07_regslice_BREADY;
  wire [1:0]auto_cc_to_m07_regslice_BRESP;
  wire auto_cc_to_m07_regslice_BVALID;
  wire [31:0]auto_cc_to_m07_regslice_RDATA;
  wire auto_cc_to_m07_regslice_RREADY;
  wire [1:0]auto_cc_to_m07_regslice_RRESP;
  wire auto_cc_to_m07_regslice_RVALID;
  wire [31:0]auto_cc_to_m07_regslice_WDATA;
  wire auto_cc_to_m07_regslice_WREADY;
  wire [3:0]auto_cc_to_m07_regslice_WSTRB;
  wire auto_cc_to_m07_regslice_WVALID;
  wire [31:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [31:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;
  wire [17:0]m07_regslice_to_m07_couplers_ARADDR;
  wire [2:0]m07_regslice_to_m07_couplers_ARPROT;
  wire [0:0]m07_regslice_to_m07_couplers_ARREADY;
  wire m07_regslice_to_m07_couplers_ARVALID;
  wire [17:0]m07_regslice_to_m07_couplers_AWADDR;
  wire [2:0]m07_regslice_to_m07_couplers_AWPROT;
  wire [0:0]m07_regslice_to_m07_couplers_AWREADY;
  wire m07_regslice_to_m07_couplers_AWVALID;
  wire m07_regslice_to_m07_couplers_BREADY;
  wire [1:0]m07_regslice_to_m07_couplers_BRESP;
  wire [0:0]m07_regslice_to_m07_couplers_BVALID;
  wire [31:0]m07_regslice_to_m07_couplers_RDATA;
  wire m07_regslice_to_m07_couplers_RREADY;
  wire [1:0]m07_regslice_to_m07_couplers_RRESP;
  wire [0:0]m07_regslice_to_m07_couplers_RVALID;
  wire [31:0]m07_regslice_to_m07_couplers_WDATA;
  wire [0:0]m07_regslice_to_m07_couplers_WREADY;
  wire [3:0]m07_regslice_to_m07_couplers_WSTRB;
  wire m07_regslice_to_m07_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[17:0] = m07_regslice_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m07_regslice_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m07_regslice_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m07_regslice_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m07_regslice_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m07_regslice_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_regslice_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_regslice_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_regslice_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_regslice_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_regslice_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m07_regslice_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_regslice_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_regslice_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_regslice_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_regslice_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_regslice_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_regslice_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_regslice_to_m07_couplers_WREADY = M_AXI_wready[0];
  PL_X_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m07_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m07_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m07_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m07_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m07_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m07_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m07_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m07_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m07_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m07_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m07_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m07_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m07_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[17:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[17:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
  PL_X_m07_regslice_0 m07_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m07_regslice_to_m07_couplers_ARADDR),
        .m_axi_arprot(m07_regslice_to_m07_couplers_ARPROT),
        .m_axi_arready(m07_regslice_to_m07_couplers_ARREADY),
        .m_axi_arvalid(m07_regslice_to_m07_couplers_ARVALID),
        .m_axi_awaddr(m07_regslice_to_m07_couplers_AWADDR),
        .m_axi_awprot(m07_regslice_to_m07_couplers_AWPROT),
        .m_axi_awready(m07_regslice_to_m07_couplers_AWREADY),
        .m_axi_awvalid(m07_regslice_to_m07_couplers_AWVALID),
        .m_axi_bready(m07_regslice_to_m07_couplers_BREADY),
        .m_axi_bresp(m07_regslice_to_m07_couplers_BRESP),
        .m_axi_bvalid(m07_regslice_to_m07_couplers_BVALID),
        .m_axi_rdata(m07_regslice_to_m07_couplers_RDATA),
        .m_axi_rready(m07_regslice_to_m07_couplers_RREADY),
        .m_axi_rresp(m07_regslice_to_m07_couplers_RRESP),
        .m_axi_rvalid(m07_regslice_to_m07_couplers_RVALID),
        .m_axi_wdata(m07_regslice_to_m07_couplers_WDATA),
        .m_axi_wready(m07_regslice_to_m07_couplers_WREADY),
        .m_axi_wstrb(m07_regslice_to_m07_couplers_WSTRB),
        .m_axi_wvalid(m07_regslice_to_m07_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m07_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m07_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m07_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m07_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m07_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m07_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m07_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m07_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m07_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m07_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m07_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m07_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m07_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m07_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m07_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m07_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m07_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m07_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m07_regslice_WVALID));
endmodule

module m08_couplers_imp_14GMJCK
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m08_couplers_ARADDR;
  wire auto_cc_to_m08_couplers_ARREADY;
  wire auto_cc_to_m08_couplers_ARVALID;
  wire [8:0]auto_cc_to_m08_couplers_AWADDR;
  wire auto_cc_to_m08_couplers_AWREADY;
  wire auto_cc_to_m08_couplers_AWVALID;
  wire auto_cc_to_m08_couplers_BREADY;
  wire [1:0]auto_cc_to_m08_couplers_BRESP;
  wire auto_cc_to_m08_couplers_BVALID;
  wire [31:0]auto_cc_to_m08_couplers_RDATA;
  wire auto_cc_to_m08_couplers_RREADY;
  wire [1:0]auto_cc_to_m08_couplers_RRESP;
  wire auto_cc_to_m08_couplers_RVALID;
  wire [31:0]auto_cc_to_m08_couplers_WDATA;
  wire auto_cc_to_m08_couplers_WREADY;
  wire [3:0]auto_cc_to_m08_couplers_WSTRB;
  wire auto_cc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_cc_ARADDR;
  wire [2:0]m08_couplers_to_auto_cc_ARPROT;
  wire m08_couplers_to_auto_cc_ARREADY;
  wire m08_couplers_to_auto_cc_ARVALID;
  wire [31:0]m08_couplers_to_auto_cc_AWADDR;
  wire [2:0]m08_couplers_to_auto_cc_AWPROT;
  wire m08_couplers_to_auto_cc_AWREADY;
  wire m08_couplers_to_auto_cc_AWVALID;
  wire m08_couplers_to_auto_cc_BREADY;
  wire [1:0]m08_couplers_to_auto_cc_BRESP;
  wire m08_couplers_to_auto_cc_BVALID;
  wire [31:0]m08_couplers_to_auto_cc_RDATA;
  wire m08_couplers_to_auto_cc_RREADY;
  wire [1:0]m08_couplers_to_auto_cc_RRESP;
  wire m08_couplers_to_auto_cc_RVALID;
  wire [31:0]m08_couplers_to_auto_cc_WDATA;
  wire m08_couplers_to_auto_cc_WREADY;
  wire [3:0]m08_couplers_to_auto_cc_WSTRB;
  wire m08_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_8 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m08_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m08_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m08_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m08_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m08_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m08_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m08_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m08_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m08_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m08_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m08_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_cc_WVALID));
endmodule

module m09_couplers_imp_3KGNB6
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m09_couplers_ARADDR;
  wire auto_cc_to_m09_couplers_ARREADY;
  wire auto_cc_to_m09_couplers_ARVALID;
  wire [8:0]auto_cc_to_m09_couplers_AWADDR;
  wire auto_cc_to_m09_couplers_AWREADY;
  wire auto_cc_to_m09_couplers_AWVALID;
  wire auto_cc_to_m09_couplers_BREADY;
  wire [1:0]auto_cc_to_m09_couplers_BRESP;
  wire auto_cc_to_m09_couplers_BVALID;
  wire [31:0]auto_cc_to_m09_couplers_RDATA;
  wire auto_cc_to_m09_couplers_RREADY;
  wire [1:0]auto_cc_to_m09_couplers_RRESP;
  wire auto_cc_to_m09_couplers_RVALID;
  wire [31:0]auto_cc_to_m09_couplers_WDATA;
  wire auto_cc_to_m09_couplers_WREADY;
  wire [3:0]auto_cc_to_m09_couplers_WSTRB;
  wire auto_cc_to_m09_couplers_WVALID;
  wire [31:0]m09_couplers_to_auto_cc_ARADDR;
  wire [2:0]m09_couplers_to_auto_cc_ARPROT;
  wire m09_couplers_to_auto_cc_ARREADY;
  wire m09_couplers_to_auto_cc_ARVALID;
  wire [31:0]m09_couplers_to_auto_cc_AWADDR;
  wire [2:0]m09_couplers_to_auto_cc_AWPROT;
  wire m09_couplers_to_auto_cc_AWREADY;
  wire m09_couplers_to_auto_cc_AWVALID;
  wire m09_couplers_to_auto_cc_BREADY;
  wire [1:0]m09_couplers_to_auto_cc_BRESP;
  wire m09_couplers_to_auto_cc_BVALID;
  wire [31:0]m09_couplers_to_auto_cc_RDATA;
  wire m09_couplers_to_auto_cc_RREADY;
  wire [1:0]m09_couplers_to_auto_cc_RRESP;
  wire m09_couplers_to_auto_cc_RVALID;
  wire [31:0]m09_couplers_to_auto_cc_WDATA;
  wire m09_couplers_to_auto_cc_WREADY;
  wire [3:0]m09_couplers_to_auto_cc_WSTRB;
  wire m09_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_9 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m09_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m09_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m09_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m09_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m09_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m09_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m09_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m09_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m09_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m09_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m09_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m09_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m09_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m09_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_cc_WVALID));
endmodule

module m10_couplers_imp_7M4GIY
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m10_couplers_ARADDR;
  wire auto_cc_to_m10_couplers_ARREADY;
  wire auto_cc_to_m10_couplers_ARVALID;
  wire [8:0]auto_cc_to_m10_couplers_AWADDR;
  wire auto_cc_to_m10_couplers_AWREADY;
  wire auto_cc_to_m10_couplers_AWVALID;
  wire auto_cc_to_m10_couplers_BREADY;
  wire [1:0]auto_cc_to_m10_couplers_BRESP;
  wire auto_cc_to_m10_couplers_BVALID;
  wire [31:0]auto_cc_to_m10_couplers_RDATA;
  wire auto_cc_to_m10_couplers_RREADY;
  wire [1:0]auto_cc_to_m10_couplers_RRESP;
  wire auto_cc_to_m10_couplers_RVALID;
  wire [31:0]auto_cc_to_m10_couplers_WDATA;
  wire auto_cc_to_m10_couplers_WREADY;
  wire [3:0]auto_cc_to_m10_couplers_WSTRB;
  wire auto_cc_to_m10_couplers_WVALID;
  wire [31:0]m10_couplers_to_auto_cc_ARADDR;
  wire [2:0]m10_couplers_to_auto_cc_ARPROT;
  wire m10_couplers_to_auto_cc_ARREADY;
  wire m10_couplers_to_auto_cc_ARVALID;
  wire [31:0]m10_couplers_to_auto_cc_AWADDR;
  wire [2:0]m10_couplers_to_auto_cc_AWPROT;
  wire m10_couplers_to_auto_cc_AWREADY;
  wire m10_couplers_to_auto_cc_AWVALID;
  wire m10_couplers_to_auto_cc_BREADY;
  wire [1:0]m10_couplers_to_auto_cc_BRESP;
  wire m10_couplers_to_auto_cc_BVALID;
  wire [31:0]m10_couplers_to_auto_cc_RDATA;
  wire m10_couplers_to_auto_cc_RREADY;
  wire [1:0]m10_couplers_to_auto_cc_RRESP;
  wire m10_couplers_to_auto_cc_RVALID;
  wire [31:0]m10_couplers_to_auto_cc_WDATA;
  wire m10_couplers_to_auto_cc_WREADY;
  wire [3:0]m10_couplers_to_auto_cc_WSTRB;
  wire m10_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m10_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_10 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m10_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m10_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m10_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m10_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m10_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m10_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m10_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m10_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m10_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m10_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m10_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m10_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m10_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_cc_WVALID));
endmodule

module m11_couplers_imp_11BFGF0
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m11_couplers_ARADDR;
  wire auto_cc_to_m11_couplers_ARREADY;
  wire auto_cc_to_m11_couplers_ARVALID;
  wire [8:0]auto_cc_to_m11_couplers_AWADDR;
  wire auto_cc_to_m11_couplers_AWREADY;
  wire auto_cc_to_m11_couplers_AWVALID;
  wire auto_cc_to_m11_couplers_BREADY;
  wire [1:0]auto_cc_to_m11_couplers_BRESP;
  wire auto_cc_to_m11_couplers_BVALID;
  wire [31:0]auto_cc_to_m11_couplers_RDATA;
  wire auto_cc_to_m11_couplers_RREADY;
  wire [1:0]auto_cc_to_m11_couplers_RRESP;
  wire auto_cc_to_m11_couplers_RVALID;
  wire [31:0]auto_cc_to_m11_couplers_WDATA;
  wire auto_cc_to_m11_couplers_WREADY;
  wire [3:0]auto_cc_to_m11_couplers_WSTRB;
  wire auto_cc_to_m11_couplers_WVALID;
  wire [31:0]m11_couplers_to_auto_cc_ARADDR;
  wire [2:0]m11_couplers_to_auto_cc_ARPROT;
  wire m11_couplers_to_auto_cc_ARREADY;
  wire m11_couplers_to_auto_cc_ARVALID;
  wire [31:0]m11_couplers_to_auto_cc_AWADDR;
  wire [2:0]m11_couplers_to_auto_cc_AWPROT;
  wire m11_couplers_to_auto_cc_AWREADY;
  wire m11_couplers_to_auto_cc_AWVALID;
  wire m11_couplers_to_auto_cc_BREADY;
  wire [1:0]m11_couplers_to_auto_cc_BRESP;
  wire m11_couplers_to_auto_cc_BVALID;
  wire [31:0]m11_couplers_to_auto_cc_RDATA;
  wire m11_couplers_to_auto_cc_RREADY;
  wire [1:0]m11_couplers_to_auto_cc_RRESP;
  wire m11_couplers_to_auto_cc_RVALID;
  wire [31:0]m11_couplers_to_auto_cc_WDATA;
  wire m11_couplers_to_auto_cc_WREADY;
  wire [3:0]m11_couplers_to_auto_cc_WSTRB;
  wire m11_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m11_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m11_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m11_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m11_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m11_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m11_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m11_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m11_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m11_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m11_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_11 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m11_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m11_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m11_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m11_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m11_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m11_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m11_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m11_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m11_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m11_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m11_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m11_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m11_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m11_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m11_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m11_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m11_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m11_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m11_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m11_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m11_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m11_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m11_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m11_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m11_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m11_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m11_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m11_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m11_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m11_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m11_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m11_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m11_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m11_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m11_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m11_couplers_to_auto_cc_WVALID));
endmodule

module m12_couplers_imp_1XEF213
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m12_couplers_ARADDR;
  wire auto_cc_to_m12_couplers_ARREADY;
  wire auto_cc_to_m12_couplers_ARVALID;
  wire [8:0]auto_cc_to_m12_couplers_AWADDR;
  wire auto_cc_to_m12_couplers_AWREADY;
  wire auto_cc_to_m12_couplers_AWVALID;
  wire auto_cc_to_m12_couplers_BREADY;
  wire [1:0]auto_cc_to_m12_couplers_BRESP;
  wire auto_cc_to_m12_couplers_BVALID;
  wire [31:0]auto_cc_to_m12_couplers_RDATA;
  wire auto_cc_to_m12_couplers_RREADY;
  wire [1:0]auto_cc_to_m12_couplers_RRESP;
  wire auto_cc_to_m12_couplers_RVALID;
  wire [31:0]auto_cc_to_m12_couplers_WDATA;
  wire auto_cc_to_m12_couplers_WREADY;
  wire [3:0]auto_cc_to_m12_couplers_WSTRB;
  wire auto_cc_to_m12_couplers_WVALID;
  wire [31:0]m12_couplers_to_auto_cc_ARADDR;
  wire [2:0]m12_couplers_to_auto_cc_ARPROT;
  wire m12_couplers_to_auto_cc_ARREADY;
  wire m12_couplers_to_auto_cc_ARVALID;
  wire [31:0]m12_couplers_to_auto_cc_AWADDR;
  wire [2:0]m12_couplers_to_auto_cc_AWPROT;
  wire m12_couplers_to_auto_cc_AWREADY;
  wire m12_couplers_to_auto_cc_AWVALID;
  wire m12_couplers_to_auto_cc_BREADY;
  wire [1:0]m12_couplers_to_auto_cc_BRESP;
  wire m12_couplers_to_auto_cc_BVALID;
  wire [31:0]m12_couplers_to_auto_cc_RDATA;
  wire m12_couplers_to_auto_cc_RREADY;
  wire [1:0]m12_couplers_to_auto_cc_RRESP;
  wire m12_couplers_to_auto_cc_RVALID;
  wire [31:0]m12_couplers_to_auto_cc_WDATA;
  wire m12_couplers_to_auto_cc_WREADY;
  wire [3:0]m12_couplers_to_auto_cc_WSTRB;
  wire m12_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m12_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m12_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m12_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m12_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m12_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m12_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m12_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m12_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m12_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m12_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m12_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m12_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_12 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m12_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m12_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m12_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m12_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m12_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m12_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m12_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m12_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m12_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m12_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m12_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m12_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m12_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m12_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m12_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m12_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m12_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m12_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m12_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m12_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m12_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m12_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m12_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m12_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m12_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m12_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m12_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m12_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m12_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m12_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m12_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m12_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m12_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m12_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m12_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m12_couplers_to_auto_cc_WVALID));
endmodule

module m13_couplers_imp_SLH5KH
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m13_couplers_ARADDR;
  wire auto_cc_to_m13_couplers_ARREADY;
  wire auto_cc_to_m13_couplers_ARVALID;
  wire [8:0]auto_cc_to_m13_couplers_AWADDR;
  wire auto_cc_to_m13_couplers_AWREADY;
  wire auto_cc_to_m13_couplers_AWVALID;
  wire auto_cc_to_m13_couplers_BREADY;
  wire [1:0]auto_cc_to_m13_couplers_BRESP;
  wire auto_cc_to_m13_couplers_BVALID;
  wire [31:0]auto_cc_to_m13_couplers_RDATA;
  wire auto_cc_to_m13_couplers_RREADY;
  wire [1:0]auto_cc_to_m13_couplers_RRESP;
  wire auto_cc_to_m13_couplers_RVALID;
  wire [31:0]auto_cc_to_m13_couplers_WDATA;
  wire auto_cc_to_m13_couplers_WREADY;
  wire [3:0]auto_cc_to_m13_couplers_WSTRB;
  wire auto_cc_to_m13_couplers_WVALID;
  wire [31:0]m13_couplers_to_auto_cc_ARADDR;
  wire [2:0]m13_couplers_to_auto_cc_ARPROT;
  wire m13_couplers_to_auto_cc_ARREADY;
  wire m13_couplers_to_auto_cc_ARVALID;
  wire [31:0]m13_couplers_to_auto_cc_AWADDR;
  wire [2:0]m13_couplers_to_auto_cc_AWPROT;
  wire m13_couplers_to_auto_cc_AWREADY;
  wire m13_couplers_to_auto_cc_AWVALID;
  wire m13_couplers_to_auto_cc_BREADY;
  wire [1:0]m13_couplers_to_auto_cc_BRESP;
  wire m13_couplers_to_auto_cc_BVALID;
  wire [31:0]m13_couplers_to_auto_cc_RDATA;
  wire m13_couplers_to_auto_cc_RREADY;
  wire [1:0]m13_couplers_to_auto_cc_RRESP;
  wire m13_couplers_to_auto_cc_RVALID;
  wire [31:0]m13_couplers_to_auto_cc_WDATA;
  wire m13_couplers_to_auto_cc_WREADY;
  wire [3:0]m13_couplers_to_auto_cc_WSTRB;
  wire m13_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m13_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m13_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m13_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m13_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m13_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m13_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m13_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m13_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m13_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m13_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m13_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m13_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m13_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m13_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m13_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m13_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_13 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m13_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m13_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m13_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m13_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m13_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m13_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m13_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m13_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m13_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m13_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m13_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m13_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m13_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m13_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m13_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m13_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m13_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m13_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m13_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m13_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m13_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m13_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m13_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m13_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m13_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m13_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m13_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m13_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m13_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m13_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m13_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m13_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m13_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m13_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m13_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m13_couplers_to_auto_cc_WVALID));
endmodule

module m14_couplers_imp_SMY0H
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m14_couplers_ARADDR;
  wire auto_cc_to_m14_couplers_ARREADY;
  wire auto_cc_to_m14_couplers_ARVALID;
  wire [8:0]auto_cc_to_m14_couplers_AWADDR;
  wire auto_cc_to_m14_couplers_AWREADY;
  wire auto_cc_to_m14_couplers_AWVALID;
  wire auto_cc_to_m14_couplers_BREADY;
  wire [1:0]auto_cc_to_m14_couplers_BRESP;
  wire auto_cc_to_m14_couplers_BVALID;
  wire [31:0]auto_cc_to_m14_couplers_RDATA;
  wire auto_cc_to_m14_couplers_RREADY;
  wire [1:0]auto_cc_to_m14_couplers_RRESP;
  wire auto_cc_to_m14_couplers_RVALID;
  wire [31:0]auto_cc_to_m14_couplers_WDATA;
  wire auto_cc_to_m14_couplers_WREADY;
  wire [3:0]auto_cc_to_m14_couplers_WSTRB;
  wire auto_cc_to_m14_couplers_WVALID;
  wire [31:0]m14_couplers_to_auto_cc_ARADDR;
  wire [2:0]m14_couplers_to_auto_cc_ARPROT;
  wire m14_couplers_to_auto_cc_ARREADY;
  wire m14_couplers_to_auto_cc_ARVALID;
  wire [31:0]m14_couplers_to_auto_cc_AWADDR;
  wire [2:0]m14_couplers_to_auto_cc_AWPROT;
  wire m14_couplers_to_auto_cc_AWREADY;
  wire m14_couplers_to_auto_cc_AWVALID;
  wire m14_couplers_to_auto_cc_BREADY;
  wire [1:0]m14_couplers_to_auto_cc_BRESP;
  wire m14_couplers_to_auto_cc_BVALID;
  wire [31:0]m14_couplers_to_auto_cc_RDATA;
  wire m14_couplers_to_auto_cc_RREADY;
  wire [1:0]m14_couplers_to_auto_cc_RRESP;
  wire m14_couplers_to_auto_cc_RVALID;
  wire [31:0]m14_couplers_to_auto_cc_WDATA;
  wire m14_couplers_to_auto_cc_WREADY;
  wire [3:0]m14_couplers_to_auto_cc_WSTRB;
  wire m14_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m14_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m14_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m14_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m14_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m14_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m14_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m14_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m14_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m14_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m14_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m14_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m14_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m14_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m14_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m14_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m14_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_14 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m14_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m14_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m14_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m14_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m14_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m14_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m14_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m14_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m14_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m14_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m14_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m14_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m14_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m14_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m14_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m14_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m14_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m14_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m14_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m14_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m14_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m14_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m14_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m14_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m14_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m14_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m14_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m14_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m14_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m14_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m14_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m14_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m14_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m14_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m14_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m14_couplers_to_auto_cc_WVALID));
endmodule

module m15_couplers_imp_18CEIFB
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  wire [8:0]auto_cc_to_m15_couplers_ARADDR;
  wire auto_cc_to_m15_couplers_ARREADY;
  wire auto_cc_to_m15_couplers_ARVALID;
  wire [8:0]auto_cc_to_m15_couplers_AWADDR;
  wire auto_cc_to_m15_couplers_AWREADY;
  wire auto_cc_to_m15_couplers_AWVALID;
  wire auto_cc_to_m15_couplers_BREADY;
  wire [1:0]auto_cc_to_m15_couplers_BRESP;
  wire auto_cc_to_m15_couplers_BVALID;
  wire [31:0]auto_cc_to_m15_couplers_RDATA;
  wire auto_cc_to_m15_couplers_RREADY;
  wire [1:0]auto_cc_to_m15_couplers_RRESP;
  wire auto_cc_to_m15_couplers_RVALID;
  wire [31:0]auto_cc_to_m15_couplers_WDATA;
  wire auto_cc_to_m15_couplers_WREADY;
  wire [3:0]auto_cc_to_m15_couplers_WSTRB;
  wire auto_cc_to_m15_couplers_WVALID;
  wire [31:0]m15_couplers_to_auto_cc_ARADDR;
  wire [2:0]m15_couplers_to_auto_cc_ARPROT;
  wire m15_couplers_to_auto_cc_ARREADY;
  wire m15_couplers_to_auto_cc_ARVALID;
  wire [31:0]m15_couplers_to_auto_cc_AWADDR;
  wire [2:0]m15_couplers_to_auto_cc_AWPROT;
  wire m15_couplers_to_auto_cc_AWREADY;
  wire m15_couplers_to_auto_cc_AWVALID;
  wire m15_couplers_to_auto_cc_BREADY;
  wire [1:0]m15_couplers_to_auto_cc_BRESP;
  wire m15_couplers_to_auto_cc_BVALID;
  wire [31:0]m15_couplers_to_auto_cc_RDATA;
  wire m15_couplers_to_auto_cc_RREADY;
  wire [1:0]m15_couplers_to_auto_cc_RRESP;
  wire m15_couplers_to_auto_cc_RVALID;
  wire [31:0]m15_couplers_to_auto_cc_WDATA;
  wire m15_couplers_to_auto_cc_WREADY;
  wire [3:0]m15_couplers_to_auto_cc_WSTRB;
  wire m15_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m15_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m15_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m15_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m15_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m15_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m15_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m15_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m15_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m15_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m15_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m15_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m15_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m15_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m15_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m15_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m15_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m15_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m15_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m15_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m15_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m15_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m15_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  PL_X_auto_cc_15 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m15_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m15_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m15_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m15_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m15_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m15_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m15_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m15_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m15_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m15_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m15_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m15_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m15_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m15_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m15_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m15_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m15_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m15_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m15_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m15_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m15_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m15_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m15_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m15_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m15_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m15_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m15_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m15_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m15_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m15_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m15_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m15_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m15_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m15_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m15_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m15_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_RQZ19F
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
  PL_X_auto_cc_0 auto_cc
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
  PL_X_s00_regslice_36 s00_regslice
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

module s00_couplers_imp_RSQ0L3
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
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [31:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [31:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [3:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  PL_X_s00_regslice_37 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule
