//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sun Sep  6 08:44:22 2020
//Host        : xsjgd1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
//Command     : generate_target PL_X_wrapper.bd
//Design      : PL_X_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PL_X_wrapper
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
    iiC_scl_io,
    iiC_sda_io,
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
  input [31:0]S00_AXI_0_araddr;
  input [2:0]S00_AXI_0_arprot;
  output S00_AXI_0_arready;
  input S00_AXI_0_arvalid;
  input [31:0]S00_AXI_0_awaddr;
  input [2:0]S00_AXI_0_awprot;
  output S00_AXI_0_awready;
  input S00_AXI_0_awvalid;
  input S00_AXI_0_bready;
  output [1:0]S00_AXI_0_bresp;
  output S00_AXI_0_bvalid;
  output [31:0]S00_AXI_0_rdata;
  input S00_AXI_0_rready;
  output [1:0]S00_AXI_0_rresp;
  output S00_AXI_0_rvalid;
  input [31:0]S00_AXI_0_wdata;
  output S00_AXI_0_wready;
  input [3:0]S00_AXI_0_wstrb;
  input S00_AXI_0_wvalid;
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
  input clk_250M;
  output clk_out_125M;
  output clk_out_300M;
  output clk_out_400M;
  output clk_out_PROG;
  input [31:0]deviceDNA_PA_tri_i;
  input [31:0]deviceDNA_PB_tri_i;
  input [31:0]deviceDNA_PC_tri_i;
  input [31:0]deviceDNA_PD_tri_i;
  inout iiC_scl_io;
  inout iiC_sda_io;
  input s_axi_aresetn;
  input user_lnk_up_sd;

  wire [3:0]BMC_GPIO;
  wire BMC_UART_rxd;
  wire BMC_UART_txd;
  wire [7:0]C0_DDR_SREF_CTRL_IN;
  wire [7:0]C0_DDR_SREF_CTRL_OUT;
  wire C1_SYS_CLK;
  wire [7:0]C2_DDR_SREF_CTRL_IN;
  wire [7:0]C2_DDR_SREF_CTRL_OUT;
  wire [7:0]C3_DDR_SREF_CTRL_IN;
  wire [7:0]C3_DDR_SREF_CTRL_OUT;
  wire [31:0]EFUSE_IN_tri_i;
  wire [3:0]INIT_CAL_DONE;
  wire MIG_1_RST;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;
  wire [31:0]S00_AXI_0_araddr;
  wire [2:0]S00_AXI_0_arprot;
  wire S00_AXI_0_arready;
  wire S00_AXI_0_arvalid;
  wire [31:0]S00_AXI_0_awaddr;
  wire [2:0]S00_AXI_0_awprot;
  wire S00_AXI_0_awready;
  wire S00_AXI_0_awvalid;
  wire S00_AXI_0_bready;
  wire [1:0]S00_AXI_0_bresp;
  wire S00_AXI_0_bvalid;
  wire [31:0]S00_AXI_0_rdata;
  wire S00_AXI_0_rready;
  wire [1:0]S00_AXI_0_rresp;
  wire S00_AXI_0_rvalid;
  wire [31:0]S00_AXI_0_wdata;
  wire S00_AXI_0_wready;
  wire [3:0]S00_AXI_0_wstrb;
  wire S00_AXI_0_wvalid;
  wire [31:0]SHELL_VERSION_IN_tri_i;
  wire [63:0]S_AXI_MM_0_araddr;
  wire [1:0]S_AXI_MM_0_arburst;
  wire [3:0]S_AXI_MM_0_arcache;
  wire [5:0]S_AXI_MM_0_arid;
  wire [7:0]S_AXI_MM_0_arlen;
  wire [0:0]S_AXI_MM_0_arlock;
  wire [2:0]S_AXI_MM_0_arprot;
  wire [3:0]S_AXI_MM_0_arqos;
  wire S_AXI_MM_0_arready;
  wire [3:0]S_AXI_MM_0_arregion;
  wire [2:0]S_AXI_MM_0_arsize;
  wire S_AXI_MM_0_arvalid;
  wire [63:0]S_AXI_MM_0_awaddr;
  wire [1:0]S_AXI_MM_0_awburst;
  wire [3:0]S_AXI_MM_0_awcache;
  wire [5:0]S_AXI_MM_0_awid;
  wire [7:0]S_AXI_MM_0_awlen;
  wire [0:0]S_AXI_MM_0_awlock;
  wire [2:0]S_AXI_MM_0_awprot;
  wire [3:0]S_AXI_MM_0_awqos;
  wire S_AXI_MM_0_awready;
  wire [3:0]S_AXI_MM_0_awregion;
  wire [2:0]S_AXI_MM_0_awsize;
  wire S_AXI_MM_0_awvalid;
  wire [5:0]S_AXI_MM_0_bid;
  wire S_AXI_MM_0_bready;
  wire [1:0]S_AXI_MM_0_bresp;
  wire S_AXI_MM_0_bvalid;
  wire [511:0]S_AXI_MM_0_rdata;
  wire [5:0]S_AXI_MM_0_rid;
  wire S_AXI_MM_0_rlast;
  wire S_AXI_MM_0_rready;
  wire [1:0]S_AXI_MM_0_rresp;
  wire S_AXI_MM_0_rvalid;
  wire [511:0]S_AXI_MM_0_wdata;
  wire S_AXI_MM_0_wlast;
  wire S_AXI_MM_0_wready;
  wire [63:0]S_AXI_MM_0_wstrb;
  wire S_AXI_MM_0_wvalid;
  wire [0:0]axi_reset_n_250M_out;
  wire c1_ddr4_act_n;
  wire [16:0]c1_ddr4_adr;
  wire [1:0]c1_ddr4_ba;
  wire [1:0]c1_ddr4_bg;
  wire [0:0]c1_ddr4_ck_c;
  wire [0:0]c1_ddr4_ck_t;
  wire [0:0]c1_ddr4_cke;
  wire [0:0]c1_ddr4_cs_n;
  wire [71:0]c1_ddr4_dq;
  wire [17:0]c1_ddr4_dqs_c;
  wire [17:0]c1_ddr4_dqs_t;
  wire [0:0]c1_ddr4_odt;
  wire c1_ddr4_par;
  wire c1_ddr4_reset_n;
  wire c1_init_calib_complete;
  wire clk_250M;
  wire clk_out_125M;
  wire clk_out_300M;
  wire clk_out_400M;
  wire clk_out_PROG;
  wire [31:0]deviceDNA_PA_tri_i;
  wire [31:0]deviceDNA_PB_tri_i;
  wire [31:0]deviceDNA_PC_tri_i;
  wire [31:0]deviceDNA_PD_tri_i;
  wire iiC_scl_i;
  wire iiC_scl_io;
  wire iiC_scl_o;
  wire iiC_scl_t;
  wire iiC_sda_i;
  wire iiC_sda_io;
  wire iiC_sda_o;
  wire iiC_sda_t;
  wire s_axi_aresetn;
  wire user_lnk_up_sd;

  PL_X PL_X_i
       (.BMC_GPIO(BMC_GPIO),
        .BMC_UART_rxd(BMC_UART_rxd),
        .BMC_UART_txd(BMC_UART_txd),
        .C0_DDR_SREF_CTRL_IN(C0_DDR_SREF_CTRL_IN),
        .C0_DDR_SREF_CTRL_OUT(C0_DDR_SREF_CTRL_OUT),
        .C1_SYS_CLK(C1_SYS_CLK),
        .C2_DDR_SREF_CTRL_IN(C2_DDR_SREF_CTRL_IN),
        .C2_DDR_SREF_CTRL_OUT(C2_DDR_SREF_CTRL_OUT),
        .C3_DDR_SREF_CTRL_IN(C3_DDR_SREF_CTRL_IN),
        .C3_DDR_SREF_CTRL_OUT(C3_DDR_SREF_CTRL_OUT),
        .EFUSE_IN_tri_i(EFUSE_IN_tri_i),
        .INIT_CAL_DONE(INIT_CAL_DONE),
        .MIG_1_RST(MIG_1_RST),
        .M_AXI_LITE_TO_HLS_PR_NORTH_araddr(M_AXI_LITE_TO_HLS_PR_NORTH_araddr),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arprot(M_AXI_LITE_TO_HLS_PR_NORTH_arprot),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arready(M_AXI_LITE_TO_HLS_PR_NORTH_arready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arvalid(M_AXI_LITE_TO_HLS_PR_NORTH_arvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awaddr(M_AXI_LITE_TO_HLS_PR_NORTH_awaddr),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awprot(M_AXI_LITE_TO_HLS_PR_NORTH_awprot),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awready(M_AXI_LITE_TO_HLS_PR_NORTH_awready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awvalid(M_AXI_LITE_TO_HLS_PR_NORTH_awvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bready(M_AXI_LITE_TO_HLS_PR_NORTH_bready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bresp(M_AXI_LITE_TO_HLS_PR_NORTH_bresp),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bvalid(M_AXI_LITE_TO_HLS_PR_NORTH_bvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rdata(M_AXI_LITE_TO_HLS_PR_NORTH_rdata),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rready(M_AXI_LITE_TO_HLS_PR_NORTH_rready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rresp(M_AXI_LITE_TO_HLS_PR_NORTH_rresp),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rvalid(M_AXI_LITE_TO_HLS_PR_NORTH_rvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wdata(M_AXI_LITE_TO_HLS_PR_NORTH_wdata),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wready(M_AXI_LITE_TO_HLS_PR_NORTH_wready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wstrb(M_AXI_LITE_TO_HLS_PR_NORTH_wstrb),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wvalid(M_AXI_LITE_TO_HLS_PR_NORTH_wvalid),
        .S00_AXI_0_araddr(S00_AXI_0_araddr),
        .S00_AXI_0_arprot(S00_AXI_0_arprot),
        .S00_AXI_0_arready(S00_AXI_0_arready),
        .S00_AXI_0_arvalid(S00_AXI_0_arvalid),
        .S00_AXI_0_awaddr(S00_AXI_0_awaddr),
        .S00_AXI_0_awprot(S00_AXI_0_awprot),
        .S00_AXI_0_awready(S00_AXI_0_awready),
        .S00_AXI_0_awvalid(S00_AXI_0_awvalid),
        .S00_AXI_0_bready(S00_AXI_0_bready),
        .S00_AXI_0_bresp(S00_AXI_0_bresp),
        .S00_AXI_0_bvalid(S00_AXI_0_bvalid),
        .S00_AXI_0_rdata(S00_AXI_0_rdata),
        .S00_AXI_0_rready(S00_AXI_0_rready),
        .S00_AXI_0_rresp(S00_AXI_0_rresp),
        .S00_AXI_0_rvalid(S00_AXI_0_rvalid),
        .S00_AXI_0_wdata(S00_AXI_0_wdata),
        .S00_AXI_0_wready(S00_AXI_0_wready),
        .S00_AXI_0_wstrb(S00_AXI_0_wstrb),
        .S00_AXI_0_wvalid(S00_AXI_0_wvalid),
        .SHELL_VERSION_IN_tri_i(SHELL_VERSION_IN_tri_i),
        .S_AXI_MM_0_araddr(S_AXI_MM_0_araddr),
        .S_AXI_MM_0_arburst(S_AXI_MM_0_arburst),
        .S_AXI_MM_0_arcache(S_AXI_MM_0_arcache),
        .S_AXI_MM_0_arid(S_AXI_MM_0_arid),
        .S_AXI_MM_0_arlen(S_AXI_MM_0_arlen),
        .S_AXI_MM_0_arlock(S_AXI_MM_0_arlock),
        .S_AXI_MM_0_arprot(S_AXI_MM_0_arprot),
        .S_AXI_MM_0_arqos(S_AXI_MM_0_arqos),
        .S_AXI_MM_0_arready(S_AXI_MM_0_arready),
        .S_AXI_MM_0_arregion(S_AXI_MM_0_arregion),
        .S_AXI_MM_0_arsize(S_AXI_MM_0_arsize),
        .S_AXI_MM_0_arvalid(S_AXI_MM_0_arvalid),
        .S_AXI_MM_0_awaddr(S_AXI_MM_0_awaddr),
        .S_AXI_MM_0_awburst(S_AXI_MM_0_awburst),
        .S_AXI_MM_0_awcache(S_AXI_MM_0_awcache),
        .S_AXI_MM_0_awid(S_AXI_MM_0_awid),
        .S_AXI_MM_0_awlen(S_AXI_MM_0_awlen),
        .S_AXI_MM_0_awlock(S_AXI_MM_0_awlock),
        .S_AXI_MM_0_awprot(S_AXI_MM_0_awprot),
        .S_AXI_MM_0_awqos(S_AXI_MM_0_awqos),
        .S_AXI_MM_0_awready(S_AXI_MM_0_awready),
        .S_AXI_MM_0_awregion(S_AXI_MM_0_awregion),
        .S_AXI_MM_0_awsize(S_AXI_MM_0_awsize),
        .S_AXI_MM_0_awvalid(S_AXI_MM_0_awvalid),
        .S_AXI_MM_0_bid(S_AXI_MM_0_bid),
        .S_AXI_MM_0_bready(S_AXI_MM_0_bready),
        .S_AXI_MM_0_bresp(S_AXI_MM_0_bresp),
        .S_AXI_MM_0_bvalid(S_AXI_MM_0_bvalid),
        .S_AXI_MM_0_rdata(S_AXI_MM_0_rdata),
        .S_AXI_MM_0_rid(S_AXI_MM_0_rid),
        .S_AXI_MM_0_rlast(S_AXI_MM_0_rlast),
        .S_AXI_MM_0_rready(S_AXI_MM_0_rready),
        .S_AXI_MM_0_rresp(S_AXI_MM_0_rresp),
        .S_AXI_MM_0_rvalid(S_AXI_MM_0_rvalid),
        .S_AXI_MM_0_wdata(S_AXI_MM_0_wdata),
        .S_AXI_MM_0_wlast(S_AXI_MM_0_wlast),
        .S_AXI_MM_0_wready(S_AXI_MM_0_wready),
        .S_AXI_MM_0_wstrb(S_AXI_MM_0_wstrb),
        .S_AXI_MM_0_wvalid(S_AXI_MM_0_wvalid),
        .axi_reset_n_250M_out(axi_reset_n_250M_out),
        .c1_ddr4_act_n(c1_ddr4_act_n),
        .c1_ddr4_adr(c1_ddr4_adr),
        .c1_ddr4_ba(c1_ddr4_ba),
        .c1_ddr4_bg(c1_ddr4_bg),
        .c1_ddr4_ck_c(c1_ddr4_ck_c),
        .c1_ddr4_ck_t(c1_ddr4_ck_t),
        .c1_ddr4_cke(c1_ddr4_cke),
        .c1_ddr4_cs_n(c1_ddr4_cs_n),
        .c1_ddr4_dq(c1_ddr4_dq),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t),
        .c1_ddr4_odt(c1_ddr4_odt),
        .c1_ddr4_par(c1_ddr4_par),
        .c1_ddr4_reset_n(c1_ddr4_reset_n),
        .c1_init_calib_complete(c1_init_calib_complete),
        .clk_250M(clk_250M),
        .clk_out_125M(clk_out_125M),
        .clk_out_300M(clk_out_300M),
        .clk_out_400M(clk_out_400M),
        .clk_out_PROG(clk_out_PROG),
        .deviceDNA_PA_tri_i(deviceDNA_PA_tri_i),
        .deviceDNA_PB_tri_i(deviceDNA_PB_tri_i),
        .deviceDNA_PC_tri_i(deviceDNA_PC_tri_i),
        .deviceDNA_PD_tri_i(deviceDNA_PD_tri_i),
        .iiC_scl_i(iiC_scl_i),
        .iiC_scl_o(iiC_scl_o),
        .iiC_scl_t(iiC_scl_t),
        .iiC_sda_i(iiC_sda_i),
        .iiC_sda_o(iiC_sda_o),
        .iiC_sda_t(iiC_sda_t),
        .s_axi_aresetn(s_axi_aresetn),
        .user_lnk_up_sd(user_lnk_up_sd));
  IOBUF iiC_scl_iobuf
       (.I(iiC_scl_o),
        .IO(iiC_scl_io),
        .O(iiC_scl_i),
        .T(iiC_scl_t));
  IOBUF iiC_sda_iobuf
       (.I(iiC_sda_o),
        .IO(iiC_sda_io),
        .O(iiC_sda_i),
        .T(iiC_sda_t));
endmodule
