//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Sep 21 14:00:00 2020
//Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
//Command     : generate_target X_PCIe_Bridge_ICAP_complex_wrapper.bd
//Design      : X_PCIe_Bridge_ICAP_complex_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module X_PCIe_Bridge_ICAP_complex_wrapper
   (DEVICE_DNA_A_tri_i,
    DEVICE_DNA_B_tri_i,
    DEVICE_DNA_C_tri_i,
    DEVICE_DNA_D_tri_i,
    EFUSE_i_tri_i,
    M_AXI_B_araddr,
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
    PCIE_USR_CLK_DIV4_62_5MHz,
    PR_DECOUPLE,
    RESET_GATE,
    SHELL_TO_CL_RST,
    SHELL_VER_i_tri_i,
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
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_clk,
    sys_clk_gt,
    sys_rst_n,
    user_lnk_up_sd);
  input [31:0]DEVICE_DNA_A_tri_i;
  input [31:0]DEVICE_DNA_B_tri_i;
  input [31:0]DEVICE_DNA_C_tri_i;
  input [31:0]DEVICE_DNA_D_tri_i;
  input [31:0]EFUSE_i_tri_i;
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
  output [0:0]PCIE_USR_CLK_DIV4_62_5MHz;
  output [0:0]PR_DECOUPLE;
  output [0:0]RESET_GATE;
  output [3:0]SHELL_TO_CL_RST;
  input [31:0]SHELL_VER_i_tri_i;
  input [63:0]S_AXI_MM_PCIM_araddr;
  input [1:0]S_AXI_MM_PCIM_arburst;
  input [3:0]S_AXI_MM_PCIM_arid;
  input [7:0]S_AXI_MM_PCIM_arlen;
  output S_AXI_MM_PCIM_arready;
  input [3:0]S_AXI_MM_PCIM_arregion;
  input [2:0]S_AXI_MM_PCIM_arsize;
  input S_AXI_MM_PCIM_arvalid;
  input [63:0]S_AXI_MM_PCIM_awaddr;
  input [1:0]S_AXI_MM_PCIM_awburst;
  input [3:0]S_AXI_MM_PCIM_awid;
  input [7:0]S_AXI_MM_PCIM_awlen;
  output S_AXI_MM_PCIM_awready;
  input [3:0]S_AXI_MM_PCIM_awregion;
  input [2:0]S_AXI_MM_PCIM_awsize;
  input S_AXI_MM_PCIM_awvalid;
  output [3:0]S_AXI_MM_PCIM_bid;
  input S_AXI_MM_PCIM_bready;
  output [1:0]S_AXI_MM_PCIM_bresp;
  output S_AXI_MM_PCIM_bvalid;
  output [511:0]S_AXI_MM_PCIM_rdata;
  output [3:0]S_AXI_MM_PCIM_rid;
  output S_AXI_MM_PCIM_rlast;
  input S_AXI_MM_PCIM_rready;
  output [1:0]S_AXI_MM_PCIM_rresp;
  output [63:0]S_AXI_MM_PCIM_ruser;
  output S_AXI_MM_PCIM_rvalid;
  input [511:0]S_AXI_MM_PCIM_wdata;
  input S_AXI_MM_PCIM_wlast;
  output S_AXI_MM_PCIM_wready;
  input [63:0]S_AXI_MM_PCIM_wstrb;
  input [63:0]S_AXI_MM_PCIM_wuser;
  input S_AXI_MM_PCIM_wvalid;
  output axi_aresetn;
  output clk_out_250M;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;
  output user_lnk_up_sd;

  wire [31:0]DEVICE_DNA_A_tri_i;
  wire [31:0]DEVICE_DNA_B_tri_i;
  wire [31:0]DEVICE_DNA_C_tri_i;
  wire [31:0]DEVICE_DNA_D_tri_i;
  wire [31:0]EFUSE_i_tri_i;
  wire [31:0]M_AXI_B_araddr;
  wire [2:0]M_AXI_B_arprot;
  wire M_AXI_B_arready;
  wire [10:0]M_AXI_B_aruser;
  wire M_AXI_B_arvalid;
  wire [31:0]M_AXI_B_awaddr;
  wire [2:0]M_AXI_B_awprot;
  wire M_AXI_B_awready;
  wire [10:0]M_AXI_B_awuser;
  wire M_AXI_B_awvalid;
  wire M_AXI_B_bready;
  wire [1:0]M_AXI_B_bresp;
  wire M_AXI_B_bvalid;
  wire [31:0]M_AXI_B_rdata;
  wire M_AXI_B_rready;
  wire [1:0]M_AXI_B_rresp;
  wire M_AXI_B_rvalid;
  wire [31:0]M_AXI_B_wdata;
  wire M_AXI_B_wready;
  wire [3:0]M_AXI_B_wstrb;
  wire M_AXI_B_wvalid;
  wire [0:0]PCIE_USR_CLK_DIV4_62_5MHz;
  wire [0:0]PR_DECOUPLE;
  wire [0:0]RESET_GATE;
  wire [3:0]SHELL_TO_CL_RST;
  wire [31:0]SHELL_VER_i_tri_i;
  wire [63:0]S_AXI_MM_PCIM_araddr;
  wire [1:0]S_AXI_MM_PCIM_arburst;
  wire [3:0]S_AXI_MM_PCIM_arid;
  wire [7:0]S_AXI_MM_PCIM_arlen;
  wire S_AXI_MM_PCIM_arready;
  wire [3:0]S_AXI_MM_PCIM_arregion;
  wire [2:0]S_AXI_MM_PCIM_arsize;
  wire S_AXI_MM_PCIM_arvalid;
  wire [63:0]S_AXI_MM_PCIM_awaddr;
  wire [1:0]S_AXI_MM_PCIM_awburst;
  wire [3:0]S_AXI_MM_PCIM_awid;
  wire [7:0]S_AXI_MM_PCIM_awlen;
  wire S_AXI_MM_PCIM_awready;
  wire [3:0]S_AXI_MM_PCIM_awregion;
  wire [2:0]S_AXI_MM_PCIM_awsize;
  wire S_AXI_MM_PCIM_awvalid;
  wire [3:0]S_AXI_MM_PCIM_bid;
  wire S_AXI_MM_PCIM_bready;
  wire [1:0]S_AXI_MM_PCIM_bresp;
  wire S_AXI_MM_PCIM_bvalid;
  wire [511:0]S_AXI_MM_PCIM_rdata;
  wire [3:0]S_AXI_MM_PCIM_rid;
  wire S_AXI_MM_PCIM_rlast;
  wire S_AXI_MM_PCIM_rready;
  wire [1:0]S_AXI_MM_PCIM_rresp;
  wire [63:0]S_AXI_MM_PCIM_ruser;
  wire S_AXI_MM_PCIM_rvalid;
  wire [511:0]S_AXI_MM_PCIM_wdata;
  wire S_AXI_MM_PCIM_wlast;
  wire S_AXI_MM_PCIM_wready;
  wire [63:0]S_AXI_MM_PCIM_wstrb;
  wire [63:0]S_AXI_MM_PCIM_wuser;
  wire S_AXI_MM_PCIM_wvalid;
  wire axi_aresetn;
  wire clk_out_250M;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire sys_clk;
  wire sys_clk_gt;
  wire sys_rst_n;
  wire user_lnk_up_sd;

  X_PCIe_Bridge_ICAP_complex X_PCIe_Bridge_ICAP_complex_i
       (.DEVICE_DNA_A_tri_i(DEVICE_DNA_A_tri_i),
        .DEVICE_DNA_B_tri_i(DEVICE_DNA_B_tri_i),
        .DEVICE_DNA_C_tri_i(DEVICE_DNA_C_tri_i),
        .DEVICE_DNA_D_tri_i(DEVICE_DNA_D_tri_i),
        .EFUSE_i_tri_i(EFUSE_i_tri_i),
        .M_AXI_B_araddr(M_AXI_B_araddr),
        .M_AXI_B_arprot(M_AXI_B_arprot),
        .M_AXI_B_arready(M_AXI_B_arready),
        .M_AXI_B_aruser(M_AXI_B_aruser),
        .M_AXI_B_arvalid(M_AXI_B_arvalid),
        .M_AXI_B_awaddr(M_AXI_B_awaddr),
        .M_AXI_B_awprot(M_AXI_B_awprot),
        .M_AXI_B_awready(M_AXI_B_awready),
        .M_AXI_B_awuser(M_AXI_B_awuser),
        .M_AXI_B_awvalid(M_AXI_B_awvalid),
        .M_AXI_B_bready(M_AXI_B_bready),
        .M_AXI_B_bresp(M_AXI_B_bresp),
        .M_AXI_B_bvalid(M_AXI_B_bvalid),
        .M_AXI_B_rdata(M_AXI_B_rdata),
        .M_AXI_B_rready(M_AXI_B_rready),
        .M_AXI_B_rresp(M_AXI_B_rresp),
        .M_AXI_B_rvalid(M_AXI_B_rvalid),
        .M_AXI_B_wdata(M_AXI_B_wdata),
        .M_AXI_B_wready(M_AXI_B_wready),
        .M_AXI_B_wstrb(M_AXI_B_wstrb),
        .M_AXI_B_wvalid(M_AXI_B_wvalid),
        .PCIE_USR_CLK_DIV4_62_5MHz(PCIE_USR_CLK_DIV4_62_5MHz),
        .PR_DECOUPLE(PR_DECOUPLE),
        .RESET_GATE(RESET_GATE),
        .SHELL_TO_CL_RST(SHELL_TO_CL_RST),
        .SHELL_VER_i_tri_i(SHELL_VER_i_tri_i),
        .S_AXI_MM_PCIM_araddr(S_AXI_MM_PCIM_araddr),
        .S_AXI_MM_PCIM_arburst(S_AXI_MM_PCIM_arburst),
        .S_AXI_MM_PCIM_arid(S_AXI_MM_PCIM_arid),
        .S_AXI_MM_PCIM_arlen(S_AXI_MM_PCIM_arlen),
        .S_AXI_MM_PCIM_arready(S_AXI_MM_PCIM_arready),
        .S_AXI_MM_PCIM_arregion(S_AXI_MM_PCIM_arregion),
        .S_AXI_MM_PCIM_arsize(S_AXI_MM_PCIM_arsize),
        .S_AXI_MM_PCIM_arvalid(S_AXI_MM_PCIM_arvalid),
        .S_AXI_MM_PCIM_awaddr(S_AXI_MM_PCIM_awaddr),
        .S_AXI_MM_PCIM_awburst(S_AXI_MM_PCIM_awburst),
        .S_AXI_MM_PCIM_awid(S_AXI_MM_PCIM_awid),
        .S_AXI_MM_PCIM_awlen(S_AXI_MM_PCIM_awlen),
        .S_AXI_MM_PCIM_awready(S_AXI_MM_PCIM_awready),
        .S_AXI_MM_PCIM_awregion(S_AXI_MM_PCIM_awregion),
        .S_AXI_MM_PCIM_awsize(S_AXI_MM_PCIM_awsize),
        .S_AXI_MM_PCIM_awvalid(S_AXI_MM_PCIM_awvalid),
        .S_AXI_MM_PCIM_bid(S_AXI_MM_PCIM_bid),
        .S_AXI_MM_PCIM_bready(S_AXI_MM_PCIM_bready),
        .S_AXI_MM_PCIM_bresp(S_AXI_MM_PCIM_bresp),
        .S_AXI_MM_PCIM_bvalid(S_AXI_MM_PCIM_bvalid),
        .S_AXI_MM_PCIM_rdata(S_AXI_MM_PCIM_rdata),
        .S_AXI_MM_PCIM_rid(S_AXI_MM_PCIM_rid),
        .S_AXI_MM_PCIM_rlast(S_AXI_MM_PCIM_rlast),
        .S_AXI_MM_PCIM_rready(S_AXI_MM_PCIM_rready),
        .S_AXI_MM_PCIM_rresp(S_AXI_MM_PCIM_rresp),
        .S_AXI_MM_PCIM_ruser(S_AXI_MM_PCIM_ruser),
        .S_AXI_MM_PCIM_rvalid(S_AXI_MM_PCIM_rvalid),
        .S_AXI_MM_PCIM_wdata(S_AXI_MM_PCIM_wdata),
        .S_AXI_MM_PCIM_wlast(S_AXI_MM_PCIM_wlast),
        .S_AXI_MM_PCIM_wready(S_AXI_MM_PCIM_wready),
        .S_AXI_MM_PCIM_wstrb(S_AXI_MM_PCIM_wstrb),
        .S_AXI_MM_PCIM_wuser(S_AXI_MM_PCIM_wuser),
        .S_AXI_MM_PCIM_wvalid(S_AXI_MM_PCIM_wvalid),
        .axi_aresetn(axi_aresetn),
        .clk_out_250M(clk_out_250M),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .sys_clk(sys_clk),
        .sys_clk_gt(sys_clk_gt),
        .sys_rst_n(sys_rst_n),
        .user_lnk_up_sd(user_lnk_up_sd));
endmodule
