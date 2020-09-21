//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sun Jun 21 17:26:30 2020
//Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
//Command     : generate_target axi_ic_ddr4_pcim.bd
//Design      : axi_ic_ddr4_pcim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_ic_ddr4_pcim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_ic_ddr4_pcim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_ic_ddr4_pcim.hwdef" *) 
module axi_ic_ddr4_pcim
   (AXI_RESET_N,
    CLK_IN_250,
    M_AXI_MM_MIG0_araddr,
    M_AXI_MM_MIG0_arburst,
    M_AXI_MM_MIG0_arcache,
    M_AXI_MM_MIG0_arid,
    M_AXI_MM_MIG0_arlen,
    M_AXI_MM_MIG0_arlock,
    M_AXI_MM_MIG0_arprot,
    M_AXI_MM_MIG0_arqos,
    M_AXI_MM_MIG0_arready,
    M_AXI_MM_MIG0_arregion,
    M_AXI_MM_MIG0_arsize,
    M_AXI_MM_MIG0_arvalid,
    M_AXI_MM_MIG0_awaddr,
    M_AXI_MM_MIG0_awburst,
    M_AXI_MM_MIG0_awcache,
    M_AXI_MM_MIG0_awid,
    M_AXI_MM_MIG0_awlen,
    M_AXI_MM_MIG0_awlock,
    M_AXI_MM_MIG0_awprot,
    M_AXI_MM_MIG0_awqos,
    M_AXI_MM_MIG0_awready,
    M_AXI_MM_MIG0_awregion,
    M_AXI_MM_MIG0_awsize,
    M_AXI_MM_MIG0_awvalid,
    M_AXI_MM_MIG0_bid,
    M_AXI_MM_MIG0_bready,
    M_AXI_MM_MIG0_bresp,
    M_AXI_MM_MIG0_bvalid,
    M_AXI_MM_MIG0_rdata,
    M_AXI_MM_MIG0_rid,
    M_AXI_MM_MIG0_rlast,
    M_AXI_MM_MIG0_rready,
    M_AXI_MM_MIG0_rresp,
    M_AXI_MM_MIG0_rvalid,
    M_AXI_MM_MIG0_wdata,
    M_AXI_MM_MIG0_wlast,
    M_AXI_MM_MIG0_wready,
    M_AXI_MM_MIG0_wstrb,
    M_AXI_MM_MIG0_wvalid,
    M_AXI_MM_MIG2_araddr,
    M_AXI_MM_MIG2_arburst,
    M_AXI_MM_MIG2_arcache,
    M_AXI_MM_MIG2_arid,
    M_AXI_MM_MIG2_arlen,
    M_AXI_MM_MIG2_arlock,
    M_AXI_MM_MIG2_arprot,
    M_AXI_MM_MIG2_arqos,
    M_AXI_MM_MIG2_arready,
    M_AXI_MM_MIG2_arregion,
    M_AXI_MM_MIG2_arsize,
    M_AXI_MM_MIG2_arvalid,
    M_AXI_MM_MIG2_awaddr,
    M_AXI_MM_MIG2_awburst,
    M_AXI_MM_MIG2_awcache,
    M_AXI_MM_MIG2_awid,
    M_AXI_MM_MIG2_awlen,
    M_AXI_MM_MIG2_awlock,
    M_AXI_MM_MIG2_awprot,
    M_AXI_MM_MIG2_awqos,
    M_AXI_MM_MIG2_awready,
    M_AXI_MM_MIG2_awregion,
    M_AXI_MM_MIG2_awsize,
    M_AXI_MM_MIG2_awvalid,
    M_AXI_MM_MIG2_bid,
    M_AXI_MM_MIG2_bready,
    M_AXI_MM_MIG2_bresp,
    M_AXI_MM_MIG2_bvalid,
    M_AXI_MM_MIG2_rdata,
    M_AXI_MM_MIG2_rid,
    M_AXI_MM_MIG2_rlast,
    M_AXI_MM_MIG2_rready,
    M_AXI_MM_MIG2_rresp,
    M_AXI_MM_MIG2_rvalid,
    M_AXI_MM_MIG2_wdata,
    M_AXI_MM_MIG2_wlast,
    M_AXI_MM_MIG2_wready,
    M_AXI_MM_MIG2_wstrb,
    M_AXI_MM_MIG2_wvalid,
    M_AXI_MM_MIG3_araddr,
    M_AXI_MM_MIG3_arburst,
    M_AXI_MM_MIG3_arcache,
    M_AXI_MM_MIG3_arid,
    M_AXI_MM_MIG3_arlen,
    M_AXI_MM_MIG3_arlock,
    M_AXI_MM_MIG3_arprot,
    M_AXI_MM_MIG3_arqos,
    M_AXI_MM_MIG3_arready,
    M_AXI_MM_MIG3_arregion,
    M_AXI_MM_MIG3_arsize,
    M_AXI_MM_MIG3_arvalid,
    M_AXI_MM_MIG3_awaddr,
    M_AXI_MM_MIG3_awburst,
    M_AXI_MM_MIG3_awcache,
    M_AXI_MM_MIG3_awid,
    M_AXI_MM_MIG3_awlen,
    M_AXI_MM_MIG3_awlock,
    M_AXI_MM_MIG3_awprot,
    M_AXI_MM_MIG3_awqos,
    M_AXI_MM_MIG3_awready,
    M_AXI_MM_MIG3_awregion,
    M_AXI_MM_MIG3_awsize,
    M_AXI_MM_MIG3_awvalid,
    M_AXI_MM_MIG3_bid,
    M_AXI_MM_MIG3_bready,
    M_AXI_MM_MIG3_bresp,
    M_AXI_MM_MIG3_bvalid,
    M_AXI_MM_MIG3_rdata,
    M_AXI_MM_MIG3_rid,
    M_AXI_MM_MIG3_rlast,
    M_AXI_MM_MIG3_rready,
    M_AXI_MM_MIG3_rresp,
    M_AXI_MM_MIG3_rvalid,
    M_AXI_MM_MIG3_wdata,
    M_AXI_MM_MIG3_wlast,
    M_AXI_MM_MIG3_wready,
    M_AXI_MM_MIG3_wstrb,
    M_AXI_MM_MIG3_wvalid,
    M_AXI_MM_MIG_araddr,
    M_AXI_MM_MIG_arburst,
    M_AXI_MM_MIG_arcache,
    M_AXI_MM_MIG_arid,
    M_AXI_MM_MIG_arlen,
    M_AXI_MM_MIG_arlock,
    M_AXI_MM_MIG_arprot,
    M_AXI_MM_MIG_arqos,
    M_AXI_MM_MIG_arready,
    M_AXI_MM_MIG_arregion,
    M_AXI_MM_MIG_arsize,
    M_AXI_MM_MIG_arvalid,
    M_AXI_MM_MIG_awaddr,
    M_AXI_MM_MIG_awburst,
    M_AXI_MM_MIG_awcache,
    M_AXI_MM_MIG_awid,
    M_AXI_MM_MIG_awlen,
    M_AXI_MM_MIG_awlock,
    M_AXI_MM_MIG_awprot,
    M_AXI_MM_MIG_awqos,
    M_AXI_MM_MIG_awready,
    M_AXI_MM_MIG_awregion,
    M_AXI_MM_MIG_awsize,
    M_AXI_MM_MIG_awvalid,
    M_AXI_MM_MIG_bid,
    M_AXI_MM_MIG_bready,
    M_AXI_MM_MIG_bresp,
    M_AXI_MM_MIG_bvalid,
    M_AXI_MM_MIG_rdata,
    M_AXI_MM_MIG_rid,
    M_AXI_MM_MIG_rlast,
    M_AXI_MM_MIG_rready,
    M_AXI_MM_MIG_rresp,
    M_AXI_MM_MIG_rvalid,
    M_AXI_MM_MIG_wdata,
    M_AXI_MM_MIG_wlast,
    M_AXI_MM_MIG_wready,
    M_AXI_MM_MIG_wstrb,
    M_AXI_MM_MIG_wvalid,
    M_AXI_MM_PCIM_araddr,
    M_AXI_MM_PCIM_arburst,
    M_AXI_MM_PCIM_arcache,
    M_AXI_MM_PCIM_arid,
    M_AXI_MM_PCIM_arlen,
    M_AXI_MM_PCIM_arlock,
    M_AXI_MM_PCIM_arprot,
    M_AXI_MM_PCIM_arqos,
    M_AXI_MM_PCIM_arready,
    M_AXI_MM_PCIM_arregion,
    M_AXI_MM_PCIM_arsize,
    M_AXI_MM_PCIM_arvalid,
    M_AXI_MM_PCIM_awaddr,
    M_AXI_MM_PCIM_awburst,
    M_AXI_MM_PCIM_awcache,
    M_AXI_MM_PCIM_awid,
    M_AXI_MM_PCIM_awlen,
    M_AXI_MM_PCIM_awlock,
    M_AXI_MM_PCIM_awprot,
    M_AXI_MM_PCIM_awqos,
    M_AXI_MM_PCIM_awready,
    M_AXI_MM_PCIM_awregion,
    M_AXI_MM_PCIM_awsize,
    M_AXI_MM_PCIM_awvalid,
    M_AXI_MM_PCIM_bid,
    M_AXI_MM_PCIM_bready,
    M_AXI_MM_PCIM_bresp,
    M_AXI_MM_PCIM_bvalid,
    M_AXI_MM_PCIM_rdata,
    M_AXI_MM_PCIM_rid,
    M_AXI_MM_PCIM_rlast,
    M_AXI_MM_PCIM_rready,
    M_AXI_MM_PCIM_rresp,
    M_AXI_MM_PCIM_rvalid,
    M_AXI_MM_PCIM_wdata,
    M_AXI_MM_PCIM_wlast,
    M_AXI_MM_PCIM_wready,
    M_AXI_MM_PCIM_wstrb,
    M_AXI_MM_PCIM_wvalid,
    S_AXI_MM_araddr,
    S_AXI_MM_arburst,
    S_AXI_MM_arcache,
    S_AXI_MM_arid,
    S_AXI_MM_arlen,
    S_AXI_MM_arlock,
    S_AXI_MM_arprot,
    S_AXI_MM_arqos,
    S_AXI_MM_arready,
    S_AXI_MM_arregion,
    S_AXI_MM_arsize,
    S_AXI_MM_arvalid,
    S_AXI_MM_awaddr,
    S_AXI_MM_awburst,
    S_AXI_MM_awcache,
    S_AXI_MM_awid,
    S_AXI_MM_awlen,
    S_AXI_MM_awlock,
    S_AXI_MM_awprot,
    S_AXI_MM_awqos,
    S_AXI_MM_awready,
    S_AXI_MM_awregion,
    S_AXI_MM_awsize,
    S_AXI_MM_awvalid,
    S_AXI_MM_bid,
    S_AXI_MM_bready,
    S_AXI_MM_bresp,
    S_AXI_MM_bvalid,
    S_AXI_MM_rdata,
    S_AXI_MM_rid,
    S_AXI_MM_rlast,
    S_AXI_MM_rready,
    S_AXI_MM_rresp,
    S_AXI_MM_rvalid,
    S_AXI_MM_wdata,
    S_AXI_MM_wlast,
    S_AXI_MM_wready,
    S_AXI_MM_wstrb,
    S_AXI_MM_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input AXI_RESET_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_250 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_250, ASSOCIATED_BUSIF S_AXI_MM:M_AXI_MM_MIG3:M_AXI_MM_MIG2:M_AXI_MM_MIG:M_AXI_MM_MIG0:M_AXI_MM_PCIM, ASSOCIATED_RESET AXI_RESET_N, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK_IN_250;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM_MIG0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_MM_MIG0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARBURST" *) output [1:0]M_AXI_MM_MIG0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARCACHE" *) output [3:0]M_AXI_MM_MIG0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARID" *) output [5:0]M_AXI_MM_MIG0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARLEN" *) output [7:0]M_AXI_MM_MIG0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARLOCK" *) output [0:0]M_AXI_MM_MIG0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARPROT" *) output [2:0]M_AXI_MM_MIG0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARQOS" *) output [3:0]M_AXI_MM_MIG0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARREADY" *) input M_AXI_MM_MIG0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARREGION" *) output [3:0]M_AXI_MM_MIG0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARSIZE" *) output [2:0]M_AXI_MM_MIG0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 ARVALID" *) output M_AXI_MM_MIG0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWADDR" *) output [63:0]M_AXI_MM_MIG0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWBURST" *) output [1:0]M_AXI_MM_MIG0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWCACHE" *) output [3:0]M_AXI_MM_MIG0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWID" *) output [5:0]M_AXI_MM_MIG0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWLEN" *) output [7:0]M_AXI_MM_MIG0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWLOCK" *) output [0:0]M_AXI_MM_MIG0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWPROT" *) output [2:0]M_AXI_MM_MIG0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWQOS" *) output [3:0]M_AXI_MM_MIG0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWREADY" *) input M_AXI_MM_MIG0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWREGION" *) output [3:0]M_AXI_MM_MIG0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWSIZE" *) output [2:0]M_AXI_MM_MIG0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 AWVALID" *) output M_AXI_MM_MIG0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 BID" *) input [5:0]M_AXI_MM_MIG0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 BREADY" *) output M_AXI_MM_MIG0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 BRESP" *) input [1:0]M_AXI_MM_MIG0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 BVALID" *) input M_AXI_MM_MIG0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 RDATA" *) input [511:0]M_AXI_MM_MIG0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 RID" *) input [5:0]M_AXI_MM_MIG0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 RLAST" *) input M_AXI_MM_MIG0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 RREADY" *) output M_AXI_MM_MIG0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 RRESP" *) input [1:0]M_AXI_MM_MIG0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 RVALID" *) input M_AXI_MM_MIG0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 WDATA" *) output [511:0]M_AXI_MM_MIG0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 WLAST" *) output M_AXI_MM_MIG0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 WREADY" *) input M_AXI_MM_MIG0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 WSTRB" *) output [63:0]M_AXI_MM_MIG0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG0 WVALID" *) output M_AXI_MM_MIG0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM_MIG2, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_MM_MIG2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARBURST" *) output [1:0]M_AXI_MM_MIG2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARCACHE" *) output [3:0]M_AXI_MM_MIG2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARID" *) output [5:0]M_AXI_MM_MIG2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARLEN" *) output [7:0]M_AXI_MM_MIG2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARLOCK" *) output [0:0]M_AXI_MM_MIG2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARPROT" *) output [2:0]M_AXI_MM_MIG2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARQOS" *) output [3:0]M_AXI_MM_MIG2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARREADY" *) input M_AXI_MM_MIG2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARREGION" *) output [3:0]M_AXI_MM_MIG2_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARSIZE" *) output [2:0]M_AXI_MM_MIG2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 ARVALID" *) output M_AXI_MM_MIG2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWADDR" *) output [63:0]M_AXI_MM_MIG2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWBURST" *) output [1:0]M_AXI_MM_MIG2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWCACHE" *) output [3:0]M_AXI_MM_MIG2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWID" *) output [5:0]M_AXI_MM_MIG2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWLEN" *) output [7:0]M_AXI_MM_MIG2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWLOCK" *) output [0:0]M_AXI_MM_MIG2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWPROT" *) output [2:0]M_AXI_MM_MIG2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWQOS" *) output [3:0]M_AXI_MM_MIG2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWREADY" *) input M_AXI_MM_MIG2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWREGION" *) output [3:0]M_AXI_MM_MIG2_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWSIZE" *) output [2:0]M_AXI_MM_MIG2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 AWVALID" *) output M_AXI_MM_MIG2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 BID" *) input [5:0]M_AXI_MM_MIG2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 BREADY" *) output M_AXI_MM_MIG2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 BRESP" *) input [1:0]M_AXI_MM_MIG2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 BVALID" *) input M_AXI_MM_MIG2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 RDATA" *) input [511:0]M_AXI_MM_MIG2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 RID" *) input [5:0]M_AXI_MM_MIG2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 RLAST" *) input M_AXI_MM_MIG2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 RREADY" *) output M_AXI_MM_MIG2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 RRESP" *) input [1:0]M_AXI_MM_MIG2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 RVALID" *) input M_AXI_MM_MIG2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 WDATA" *) output [511:0]M_AXI_MM_MIG2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 WLAST" *) output M_AXI_MM_MIG2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 WREADY" *) input M_AXI_MM_MIG2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 WSTRB" *) output [63:0]M_AXI_MM_MIG2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG2 WVALID" *) output M_AXI_MM_MIG2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM_MIG3, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_MM_MIG3_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARBURST" *) output [1:0]M_AXI_MM_MIG3_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARCACHE" *) output [3:0]M_AXI_MM_MIG3_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARID" *) output [5:0]M_AXI_MM_MIG3_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARLEN" *) output [7:0]M_AXI_MM_MIG3_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARLOCK" *) output [0:0]M_AXI_MM_MIG3_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARPROT" *) output [2:0]M_AXI_MM_MIG3_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARQOS" *) output [3:0]M_AXI_MM_MIG3_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARREADY" *) input M_AXI_MM_MIG3_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARREGION" *) output [3:0]M_AXI_MM_MIG3_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARSIZE" *) output [2:0]M_AXI_MM_MIG3_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 ARVALID" *) output M_AXI_MM_MIG3_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWADDR" *) output [63:0]M_AXI_MM_MIG3_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWBURST" *) output [1:0]M_AXI_MM_MIG3_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWCACHE" *) output [3:0]M_AXI_MM_MIG3_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWID" *) output [5:0]M_AXI_MM_MIG3_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWLEN" *) output [7:0]M_AXI_MM_MIG3_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWLOCK" *) output [0:0]M_AXI_MM_MIG3_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWPROT" *) output [2:0]M_AXI_MM_MIG3_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWQOS" *) output [3:0]M_AXI_MM_MIG3_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWREADY" *) input M_AXI_MM_MIG3_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWREGION" *) output [3:0]M_AXI_MM_MIG3_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWSIZE" *) output [2:0]M_AXI_MM_MIG3_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 AWVALID" *) output M_AXI_MM_MIG3_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 BID" *) input [5:0]M_AXI_MM_MIG3_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 BREADY" *) output M_AXI_MM_MIG3_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 BRESP" *) input [1:0]M_AXI_MM_MIG3_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 BVALID" *) input M_AXI_MM_MIG3_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 RDATA" *) input [511:0]M_AXI_MM_MIG3_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 RID" *) input [5:0]M_AXI_MM_MIG3_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 RLAST" *) input M_AXI_MM_MIG3_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 RREADY" *) output M_AXI_MM_MIG3_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 RRESP" *) input [1:0]M_AXI_MM_MIG3_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 RVALID" *) input M_AXI_MM_MIG3_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 WDATA" *) output [511:0]M_AXI_MM_MIG3_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 WLAST" *) output M_AXI_MM_MIG3_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 WREADY" *) input M_AXI_MM_MIG3_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 WSTRB" *) output [63:0]M_AXI_MM_MIG3_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG3 WVALID" *) output M_AXI_MM_MIG3_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM_MIG, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_MM_MIG_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARBURST" *) output [1:0]M_AXI_MM_MIG_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARCACHE" *) output [3:0]M_AXI_MM_MIG_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARID" *) output [5:0]M_AXI_MM_MIG_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARLEN" *) output [7:0]M_AXI_MM_MIG_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARLOCK" *) output [0:0]M_AXI_MM_MIG_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARPROT" *) output [2:0]M_AXI_MM_MIG_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARQOS" *) output [3:0]M_AXI_MM_MIG_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARREADY" *) input M_AXI_MM_MIG_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARREGION" *) output [3:0]M_AXI_MM_MIG_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARSIZE" *) output [2:0]M_AXI_MM_MIG_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG ARVALID" *) output M_AXI_MM_MIG_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWADDR" *) output [63:0]M_AXI_MM_MIG_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWBURST" *) output [1:0]M_AXI_MM_MIG_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWCACHE" *) output [3:0]M_AXI_MM_MIG_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWID" *) output [5:0]M_AXI_MM_MIG_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWLEN" *) output [7:0]M_AXI_MM_MIG_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWLOCK" *) output [0:0]M_AXI_MM_MIG_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWPROT" *) output [2:0]M_AXI_MM_MIG_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWQOS" *) output [3:0]M_AXI_MM_MIG_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWREADY" *) input M_AXI_MM_MIG_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWREGION" *) output [3:0]M_AXI_MM_MIG_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWSIZE" *) output [2:0]M_AXI_MM_MIG_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG AWVALID" *) output M_AXI_MM_MIG_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG BID" *) input [5:0]M_AXI_MM_MIG_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG BREADY" *) output M_AXI_MM_MIG_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG BRESP" *) input [1:0]M_AXI_MM_MIG_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG BVALID" *) input M_AXI_MM_MIG_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG RDATA" *) input [511:0]M_AXI_MM_MIG_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG RID" *) input [5:0]M_AXI_MM_MIG_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG RLAST" *) input M_AXI_MM_MIG_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG RREADY" *) output M_AXI_MM_MIG_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG RRESP" *) input [1:0]M_AXI_MM_MIG_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG RVALID" *) input M_AXI_MM_MIG_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG WDATA" *) output [511:0]M_AXI_MM_MIG_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG WLAST" *) output M_AXI_MM_MIG_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG WREADY" *) input M_AXI_MM_MIG_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG WSTRB" *) output [63:0]M_AXI_MM_MIG_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_MIG WVALID" *) output M_AXI_MM_MIG_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM_PCIM, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_MM_PCIM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARBURST" *) output [1:0]M_AXI_MM_PCIM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARCACHE" *) output [3:0]M_AXI_MM_PCIM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARID" *) output [5:0]M_AXI_MM_PCIM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARLEN" *) output [7:0]M_AXI_MM_PCIM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARLOCK" *) output [0:0]M_AXI_MM_PCIM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARPROT" *) output [2:0]M_AXI_MM_PCIM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARQOS" *) output [3:0]M_AXI_MM_PCIM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARREADY" *) input M_AXI_MM_PCIM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARREGION" *) output [3:0]M_AXI_MM_PCIM_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARSIZE" *) output [2:0]M_AXI_MM_PCIM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM ARVALID" *) output M_AXI_MM_PCIM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWADDR" *) output [63:0]M_AXI_MM_PCIM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWBURST" *) output [1:0]M_AXI_MM_PCIM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWCACHE" *) output [3:0]M_AXI_MM_PCIM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWID" *) output [5:0]M_AXI_MM_PCIM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWLEN" *) output [7:0]M_AXI_MM_PCIM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWLOCK" *) output [0:0]M_AXI_MM_PCIM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWPROT" *) output [2:0]M_AXI_MM_PCIM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWQOS" *) output [3:0]M_AXI_MM_PCIM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWREADY" *) input M_AXI_MM_PCIM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWREGION" *) output [3:0]M_AXI_MM_PCIM_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWSIZE" *) output [2:0]M_AXI_MM_PCIM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM AWVALID" *) output M_AXI_MM_PCIM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM BID" *) input [5:0]M_AXI_MM_PCIM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM BREADY" *) output M_AXI_MM_PCIM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM BRESP" *) input [1:0]M_AXI_MM_PCIM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM BVALID" *) input M_AXI_MM_PCIM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM RDATA" *) input [511:0]M_AXI_MM_PCIM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM RID" *) input [5:0]M_AXI_MM_PCIM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM RLAST" *) input M_AXI_MM_PCIM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM RREADY" *) output M_AXI_MM_PCIM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM RRESP" *) input [1:0]M_AXI_MM_PCIM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM RVALID" *) input M_AXI_MM_PCIM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM WDATA" *) output [511:0]M_AXI_MM_PCIM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM WLAST" *) output M_AXI_MM_PCIM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM WREADY" *) input M_AXI_MM_PCIM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM WSTRB" *) output [63:0]M_AXI_MM_PCIM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_PCIM WVALID" *) output M_AXI_MM_PCIM_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MM, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S_AXI_MM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARBURST" *) input [1:0]S_AXI_MM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARCACHE" *) input [3:0]S_AXI_MM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARID" *) input [5:0]S_AXI_MM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARLEN" *) input [7:0]S_AXI_MM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARLOCK" *) input [0:0]S_AXI_MM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARPROT" *) input [2:0]S_AXI_MM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARQOS" *) input [3:0]S_AXI_MM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARREADY" *) output S_AXI_MM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARREGION" *) input [3:0]S_AXI_MM_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARSIZE" *) input [2:0]S_AXI_MM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARVALID" *) input S_AXI_MM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWADDR" *) input [63:0]S_AXI_MM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWBURST" *) input [1:0]S_AXI_MM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWCACHE" *) input [3:0]S_AXI_MM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWID" *) input [5:0]S_AXI_MM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWLEN" *) input [7:0]S_AXI_MM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWLOCK" *) input [0:0]S_AXI_MM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWPROT" *) input [2:0]S_AXI_MM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWQOS" *) input [3:0]S_AXI_MM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWREADY" *) output S_AXI_MM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWREGION" *) input [3:0]S_AXI_MM_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWSIZE" *) input [2:0]S_AXI_MM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWVALID" *) input S_AXI_MM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM BID" *) output [5:0]S_AXI_MM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM BREADY" *) input S_AXI_MM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM BRESP" *) output [1:0]S_AXI_MM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM BVALID" *) output S_AXI_MM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM RDATA" *) output [511:0]S_AXI_MM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM RID" *) output [5:0]S_AXI_MM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM RLAST" *) output S_AXI_MM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM RREADY" *) input S_AXI_MM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM RRESP" *) output [1:0]S_AXI_MM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM RVALID" *) output S_AXI_MM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM WDATA" *) input [511:0]S_AXI_MM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM WLAST" *) input S_AXI_MM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM WREADY" *) output S_AXI_MM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM WSTRB" *) input [63:0]S_AXI_MM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MM WVALID" *) input S_AXI_MM_wvalid;

  wire [63:0]AXI_MASTER_0_1_ARADDR;
  wire [1:0]AXI_MASTER_0_1_ARBURST;
  wire [3:0]AXI_MASTER_0_1_ARCACHE;
  wire [5:0]AXI_MASTER_0_1_ARID;
  wire [7:0]AXI_MASTER_0_1_ARLEN;
  wire [0:0]AXI_MASTER_0_1_ARLOCK;
  wire [2:0]AXI_MASTER_0_1_ARPROT;
  wire [3:0]AXI_MASTER_0_1_ARQOS;
  wire AXI_MASTER_0_1_ARREADY;
  wire [3:0]AXI_MASTER_0_1_ARREGION;
  wire [2:0]AXI_MASTER_0_1_ARSIZE;
  wire AXI_MASTER_0_1_ARVALID;
  wire [63:0]AXI_MASTER_0_1_AWADDR;
  wire [1:0]AXI_MASTER_0_1_AWBURST;
  wire [3:0]AXI_MASTER_0_1_AWCACHE;
  wire [5:0]AXI_MASTER_0_1_AWID;
  wire [7:0]AXI_MASTER_0_1_AWLEN;
  wire [0:0]AXI_MASTER_0_1_AWLOCK;
  wire [2:0]AXI_MASTER_0_1_AWPROT;
  wire [3:0]AXI_MASTER_0_1_AWQOS;
  wire AXI_MASTER_0_1_AWREADY;
  wire [3:0]AXI_MASTER_0_1_AWREGION;
  wire [2:0]AXI_MASTER_0_1_AWSIZE;
  wire AXI_MASTER_0_1_AWVALID;
  wire [5:0]AXI_MASTER_0_1_BID;
  wire AXI_MASTER_0_1_BREADY;
  wire [1:0]AXI_MASTER_0_1_BRESP;
  wire AXI_MASTER_0_1_BVALID;
  wire [511:0]AXI_MASTER_0_1_RDATA;
  wire [5:0]AXI_MASTER_0_1_RID;
  wire AXI_MASTER_0_1_RLAST;
  wire AXI_MASTER_0_1_RREADY;
  wire [1:0]AXI_MASTER_0_1_RRESP;
  wire AXI_MASTER_0_1_RVALID;
  wire [511:0]AXI_MASTER_0_1_WDATA;
  wire AXI_MASTER_0_1_WLAST;
  wire AXI_MASTER_0_1_WREADY;
  wire [63:0]AXI_MASTER_0_1_WSTRB;
  wire AXI_MASTER_0_1_WVALID;
  wire AXI_RESET_N_1;
  wire CLK_IN_250_1;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
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
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
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
  wire [63:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M01_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M01_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M01_AXI_ARID;
  wire [7:0]axi_interconnect_0_M01_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M01_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M01_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M01_AXI_ARQOS;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M01_AXI_ARSIZE;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M01_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M01_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M01_AXI_AWID;
  wire [7:0]axi_interconnect_0_M01_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M01_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M01_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M01_AXI_AWQOS;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M01_AXI_AWSIZE;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M01_AXI_BID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M01_AXI_RID;
  wire axi_interconnect_0_M01_AXI_RLAST;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WLAST;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [63:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M02_AXI_ARID;
  wire [7:0]axi_interconnect_0_M02_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M02_AXI_ARQOS;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M02_AXI_ARSIZE;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M02_AXI_AWID;
  wire [7:0]axi_interconnect_0_M02_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M02_AXI_AWQOS;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M02_AXI_AWSIZE;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M02_AXI_BID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M02_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M02_AXI_RID;
  wire axi_interconnect_0_M02_AXI_RLAST;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WLAST;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [63:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M03_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M03_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M03_AXI_ARID;
  wire [7:0]axi_interconnect_0_M03_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M03_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M03_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M03_AXI_ARQOS;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M03_AXI_ARSIZE;
  wire axi_interconnect_0_M03_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M03_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M03_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M03_AXI_AWID;
  wire [7:0]axi_interconnect_0_M03_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M03_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M03_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M03_AXI_AWQOS;
  wire axi_interconnect_0_M03_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M03_AXI_AWSIZE;
  wire axi_interconnect_0_M03_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M03_AXI_BID;
  wire axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire axi_interconnect_0_M03_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M03_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M03_AXI_RID;
  wire axi_interconnect_0_M03_AXI_RLAST;
  wire axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire axi_interconnect_0_M03_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M03_AXI_WDATA;
  wire axi_interconnect_0_M03_AXI_WLAST;
  wire axi_interconnect_0_M03_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire axi_interconnect_0_M03_AXI_WVALID;
  wire [63:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M04_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M04_AXI_ARCACHE;
  wire [5:0]axi_interconnect_0_M04_AXI_ARID;
  wire [7:0]axi_interconnect_0_M04_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M04_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M04_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M04_AXI_ARQOS;
  wire axi_interconnect_0_M04_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M04_AXI_ARSIZE;
  wire axi_interconnect_0_M04_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M04_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M04_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M04_AXI_AWCACHE;
  wire [5:0]axi_interconnect_0_M04_AXI_AWID;
  wire [7:0]axi_interconnect_0_M04_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M04_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M04_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M04_AXI_AWQOS;
  wire axi_interconnect_0_M04_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M04_AXI_AWSIZE;
  wire axi_interconnect_0_M04_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M04_AXI_BID;
  wire axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_BRESP;
  wire axi_interconnect_0_M04_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M04_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M04_AXI_RID;
  wire axi_interconnect_0_M04_AXI_RLAST;
  wire axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_RRESP;
  wire axi_interconnect_0_M04_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M04_AXI_WDATA;
  wire axi_interconnect_0_M04_AXI_WLAST;
  wire axi_interconnect_0_M04_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M04_AXI_WSTRB;
  wire axi_interconnect_0_M04_AXI_WVALID;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;

  assign AXI_MASTER_0_1_ARADDR = S_AXI_MM_araddr[63:0];
  assign AXI_MASTER_0_1_ARBURST = S_AXI_MM_arburst[1:0];
  assign AXI_MASTER_0_1_ARCACHE = S_AXI_MM_arcache[3:0];
  assign AXI_MASTER_0_1_ARID = S_AXI_MM_arid[5:0];
  assign AXI_MASTER_0_1_ARLEN = S_AXI_MM_arlen[7:0];
  assign AXI_MASTER_0_1_ARLOCK = S_AXI_MM_arlock[0];
  assign AXI_MASTER_0_1_ARPROT = S_AXI_MM_arprot[2:0];
  assign AXI_MASTER_0_1_ARQOS = S_AXI_MM_arqos[3:0];
  assign AXI_MASTER_0_1_ARREGION = S_AXI_MM_arregion[3:0];
  assign AXI_MASTER_0_1_ARSIZE = S_AXI_MM_arsize[2:0];
  assign AXI_MASTER_0_1_ARVALID = S_AXI_MM_arvalid;
  assign AXI_MASTER_0_1_AWADDR = S_AXI_MM_awaddr[63:0];
  assign AXI_MASTER_0_1_AWBURST = S_AXI_MM_awburst[1:0];
  assign AXI_MASTER_0_1_AWCACHE = S_AXI_MM_awcache[3:0];
  assign AXI_MASTER_0_1_AWID = S_AXI_MM_awid[5:0];
  assign AXI_MASTER_0_1_AWLEN = S_AXI_MM_awlen[7:0];
  assign AXI_MASTER_0_1_AWLOCK = S_AXI_MM_awlock[0];
  assign AXI_MASTER_0_1_AWPROT = S_AXI_MM_awprot[2:0];
  assign AXI_MASTER_0_1_AWQOS = S_AXI_MM_awqos[3:0];
  assign AXI_MASTER_0_1_AWREGION = S_AXI_MM_awregion[3:0];
  assign AXI_MASTER_0_1_AWSIZE = S_AXI_MM_awsize[2:0];
  assign AXI_MASTER_0_1_AWVALID = S_AXI_MM_awvalid;
  assign AXI_MASTER_0_1_BREADY = S_AXI_MM_bready;
  assign AXI_MASTER_0_1_RREADY = S_AXI_MM_rready;
  assign AXI_MASTER_0_1_WDATA = S_AXI_MM_wdata[511:0];
  assign AXI_MASTER_0_1_WLAST = S_AXI_MM_wlast;
  assign AXI_MASTER_0_1_WSTRB = S_AXI_MM_wstrb[63:0];
  assign AXI_MASTER_0_1_WVALID = S_AXI_MM_wvalid;
  assign AXI_RESET_N_1 = AXI_RESET_N;
  assign CLK_IN_250_1 = CLK_IN_250;
  assign M_AXI_MM_MIG0_araddr[63:0] = axi_interconnect_0_M00_AXI_ARADDR;
  assign M_AXI_MM_MIG0_arburst[1:0] = axi_interconnect_0_M00_AXI_ARBURST;
  assign M_AXI_MM_MIG0_arcache[3:0] = axi_interconnect_0_M00_AXI_ARCACHE;
  assign M_AXI_MM_MIG0_arid[5:0] = axi_interconnect_0_M00_AXI_ARID;
  assign M_AXI_MM_MIG0_arlen[7:0] = axi_interconnect_0_M00_AXI_ARLEN;
  assign M_AXI_MM_MIG0_arlock[0] = axi_interconnect_0_M00_AXI_ARLOCK;
  assign M_AXI_MM_MIG0_arprot[2:0] = axi_interconnect_0_M00_AXI_ARPROT;
  assign M_AXI_MM_MIG0_arqos[3:0] = axi_interconnect_0_M00_AXI_ARQOS;
  assign M_AXI_MM_MIG0_arregion[3:0] = axi_interconnect_0_M00_AXI_ARREGION;
  assign M_AXI_MM_MIG0_arsize[2:0] = axi_interconnect_0_M00_AXI_ARSIZE;
  assign M_AXI_MM_MIG0_arvalid = axi_interconnect_0_M00_AXI_ARVALID;
  assign M_AXI_MM_MIG0_awaddr[63:0] = axi_interconnect_0_M00_AXI_AWADDR;
  assign M_AXI_MM_MIG0_awburst[1:0] = axi_interconnect_0_M00_AXI_AWBURST;
  assign M_AXI_MM_MIG0_awcache[3:0] = axi_interconnect_0_M00_AXI_AWCACHE;
  assign M_AXI_MM_MIG0_awid[5:0] = axi_interconnect_0_M00_AXI_AWID;
  assign M_AXI_MM_MIG0_awlen[7:0] = axi_interconnect_0_M00_AXI_AWLEN;
  assign M_AXI_MM_MIG0_awlock[0] = axi_interconnect_0_M00_AXI_AWLOCK;
  assign M_AXI_MM_MIG0_awprot[2:0] = axi_interconnect_0_M00_AXI_AWPROT;
  assign M_AXI_MM_MIG0_awqos[3:0] = axi_interconnect_0_M00_AXI_AWQOS;
  assign M_AXI_MM_MIG0_awregion[3:0] = axi_interconnect_0_M00_AXI_AWREGION;
  assign M_AXI_MM_MIG0_awsize[2:0] = axi_interconnect_0_M00_AXI_AWSIZE;
  assign M_AXI_MM_MIG0_awvalid = axi_interconnect_0_M00_AXI_AWVALID;
  assign M_AXI_MM_MIG0_bready = axi_interconnect_0_M00_AXI_BREADY;
  assign M_AXI_MM_MIG0_rready = axi_interconnect_0_M00_AXI_RREADY;
  assign M_AXI_MM_MIG0_wdata[511:0] = axi_interconnect_0_M00_AXI_WDATA;
  assign M_AXI_MM_MIG0_wlast = axi_interconnect_0_M00_AXI_WLAST;
  assign M_AXI_MM_MIG0_wstrb[63:0] = axi_interconnect_0_M00_AXI_WSTRB;
  assign M_AXI_MM_MIG0_wvalid = axi_interconnect_0_M00_AXI_WVALID;
  assign M_AXI_MM_MIG2_araddr[63:0] = axi_interconnect_0_M02_AXI_ARADDR;
  assign M_AXI_MM_MIG2_arburst[1:0] = axi_interconnect_0_M02_AXI_ARBURST;
  assign M_AXI_MM_MIG2_arcache[3:0] = axi_interconnect_0_M02_AXI_ARCACHE;
  assign M_AXI_MM_MIG2_arid[5:0] = axi_interconnect_0_M02_AXI_ARID;
  assign M_AXI_MM_MIG2_arlen[7:0] = axi_interconnect_0_M02_AXI_ARLEN;
  assign M_AXI_MM_MIG2_arlock[0] = axi_interconnect_0_M02_AXI_ARLOCK;
  assign M_AXI_MM_MIG2_arprot[2:0] = axi_interconnect_0_M02_AXI_ARPROT;
  assign M_AXI_MM_MIG2_arqos[3:0] = axi_interconnect_0_M02_AXI_ARQOS;
  assign M_AXI_MM_MIG2_arregion[3:0] = axi_interconnect_0_M02_AXI_ARREGION;
  assign M_AXI_MM_MIG2_arsize[2:0] = axi_interconnect_0_M02_AXI_ARSIZE;
  assign M_AXI_MM_MIG2_arvalid = axi_interconnect_0_M02_AXI_ARVALID;
  assign M_AXI_MM_MIG2_awaddr[63:0] = axi_interconnect_0_M02_AXI_AWADDR;
  assign M_AXI_MM_MIG2_awburst[1:0] = axi_interconnect_0_M02_AXI_AWBURST;
  assign M_AXI_MM_MIG2_awcache[3:0] = axi_interconnect_0_M02_AXI_AWCACHE;
  assign M_AXI_MM_MIG2_awid[5:0] = axi_interconnect_0_M02_AXI_AWID;
  assign M_AXI_MM_MIG2_awlen[7:0] = axi_interconnect_0_M02_AXI_AWLEN;
  assign M_AXI_MM_MIG2_awlock[0] = axi_interconnect_0_M02_AXI_AWLOCK;
  assign M_AXI_MM_MIG2_awprot[2:0] = axi_interconnect_0_M02_AXI_AWPROT;
  assign M_AXI_MM_MIG2_awqos[3:0] = axi_interconnect_0_M02_AXI_AWQOS;
  assign M_AXI_MM_MIG2_awregion[3:0] = axi_interconnect_0_M02_AXI_AWREGION;
  assign M_AXI_MM_MIG2_awsize[2:0] = axi_interconnect_0_M02_AXI_AWSIZE;
  assign M_AXI_MM_MIG2_awvalid = axi_interconnect_0_M02_AXI_AWVALID;
  assign M_AXI_MM_MIG2_bready = axi_interconnect_0_M02_AXI_BREADY;
  assign M_AXI_MM_MIG2_rready = axi_interconnect_0_M02_AXI_RREADY;
  assign M_AXI_MM_MIG2_wdata[511:0] = axi_interconnect_0_M02_AXI_WDATA;
  assign M_AXI_MM_MIG2_wlast = axi_interconnect_0_M02_AXI_WLAST;
  assign M_AXI_MM_MIG2_wstrb[63:0] = axi_interconnect_0_M02_AXI_WSTRB;
  assign M_AXI_MM_MIG2_wvalid = axi_interconnect_0_M02_AXI_WVALID;
  assign M_AXI_MM_MIG3_araddr[63:0] = axi_interconnect_0_M03_AXI_ARADDR;
  assign M_AXI_MM_MIG3_arburst[1:0] = axi_interconnect_0_M03_AXI_ARBURST;
  assign M_AXI_MM_MIG3_arcache[3:0] = axi_interconnect_0_M03_AXI_ARCACHE;
  assign M_AXI_MM_MIG3_arid[5:0] = axi_interconnect_0_M03_AXI_ARID;
  assign M_AXI_MM_MIG3_arlen[7:0] = axi_interconnect_0_M03_AXI_ARLEN;
  assign M_AXI_MM_MIG3_arlock[0] = axi_interconnect_0_M03_AXI_ARLOCK;
  assign M_AXI_MM_MIG3_arprot[2:0] = axi_interconnect_0_M03_AXI_ARPROT;
  assign M_AXI_MM_MIG3_arqos[3:0] = axi_interconnect_0_M03_AXI_ARQOS;
  assign M_AXI_MM_MIG3_arregion[3:0] = axi_interconnect_0_M03_AXI_ARREGION;
  assign M_AXI_MM_MIG3_arsize[2:0] = axi_interconnect_0_M03_AXI_ARSIZE;
  assign M_AXI_MM_MIG3_arvalid = axi_interconnect_0_M03_AXI_ARVALID;
  assign M_AXI_MM_MIG3_awaddr[63:0] = axi_interconnect_0_M03_AXI_AWADDR;
  assign M_AXI_MM_MIG3_awburst[1:0] = axi_interconnect_0_M03_AXI_AWBURST;
  assign M_AXI_MM_MIG3_awcache[3:0] = axi_interconnect_0_M03_AXI_AWCACHE;
  assign M_AXI_MM_MIG3_awid[5:0] = axi_interconnect_0_M03_AXI_AWID;
  assign M_AXI_MM_MIG3_awlen[7:0] = axi_interconnect_0_M03_AXI_AWLEN;
  assign M_AXI_MM_MIG3_awlock[0] = axi_interconnect_0_M03_AXI_AWLOCK;
  assign M_AXI_MM_MIG3_awprot[2:0] = axi_interconnect_0_M03_AXI_AWPROT;
  assign M_AXI_MM_MIG3_awqos[3:0] = axi_interconnect_0_M03_AXI_AWQOS;
  assign M_AXI_MM_MIG3_awregion[3:0] = axi_interconnect_0_M03_AXI_AWREGION;
  assign M_AXI_MM_MIG3_awsize[2:0] = axi_interconnect_0_M03_AXI_AWSIZE;
  assign M_AXI_MM_MIG3_awvalid = axi_interconnect_0_M03_AXI_AWVALID;
  assign M_AXI_MM_MIG3_bready = axi_interconnect_0_M03_AXI_BREADY;
  assign M_AXI_MM_MIG3_rready = axi_interconnect_0_M03_AXI_RREADY;
  assign M_AXI_MM_MIG3_wdata[511:0] = axi_interconnect_0_M03_AXI_WDATA;
  assign M_AXI_MM_MIG3_wlast = axi_interconnect_0_M03_AXI_WLAST;
  assign M_AXI_MM_MIG3_wstrb[63:0] = axi_interconnect_0_M03_AXI_WSTRB;
  assign M_AXI_MM_MIG3_wvalid = axi_interconnect_0_M03_AXI_WVALID;
  assign M_AXI_MM_MIG_araddr[63:0] = axi_interconnect_0_M01_AXI_ARADDR;
  assign M_AXI_MM_MIG_arburst[1:0] = axi_interconnect_0_M01_AXI_ARBURST;
  assign M_AXI_MM_MIG_arcache[3:0] = axi_interconnect_0_M01_AXI_ARCACHE;
  assign M_AXI_MM_MIG_arid[5:0] = axi_interconnect_0_M01_AXI_ARID;
  assign M_AXI_MM_MIG_arlen[7:0] = axi_interconnect_0_M01_AXI_ARLEN;
  assign M_AXI_MM_MIG_arlock[0] = axi_interconnect_0_M01_AXI_ARLOCK;
  assign M_AXI_MM_MIG_arprot[2:0] = axi_interconnect_0_M01_AXI_ARPROT;
  assign M_AXI_MM_MIG_arqos[3:0] = axi_interconnect_0_M01_AXI_ARQOS;
  assign M_AXI_MM_MIG_arregion[3:0] = axi_interconnect_0_M01_AXI_ARREGION;
  assign M_AXI_MM_MIG_arsize[2:0] = axi_interconnect_0_M01_AXI_ARSIZE;
  assign M_AXI_MM_MIG_arvalid = axi_interconnect_0_M01_AXI_ARVALID;
  assign M_AXI_MM_MIG_awaddr[63:0] = axi_interconnect_0_M01_AXI_AWADDR;
  assign M_AXI_MM_MIG_awburst[1:0] = axi_interconnect_0_M01_AXI_AWBURST;
  assign M_AXI_MM_MIG_awcache[3:0] = axi_interconnect_0_M01_AXI_AWCACHE;
  assign M_AXI_MM_MIG_awid[5:0] = axi_interconnect_0_M01_AXI_AWID;
  assign M_AXI_MM_MIG_awlen[7:0] = axi_interconnect_0_M01_AXI_AWLEN;
  assign M_AXI_MM_MIG_awlock[0] = axi_interconnect_0_M01_AXI_AWLOCK;
  assign M_AXI_MM_MIG_awprot[2:0] = axi_interconnect_0_M01_AXI_AWPROT;
  assign M_AXI_MM_MIG_awqos[3:0] = axi_interconnect_0_M01_AXI_AWQOS;
  assign M_AXI_MM_MIG_awregion[3:0] = axi_interconnect_0_M01_AXI_AWREGION;
  assign M_AXI_MM_MIG_awsize[2:0] = axi_interconnect_0_M01_AXI_AWSIZE;
  assign M_AXI_MM_MIG_awvalid = axi_interconnect_0_M01_AXI_AWVALID;
  assign M_AXI_MM_MIG_bready = axi_interconnect_0_M01_AXI_BREADY;
  assign M_AXI_MM_MIG_rready = axi_interconnect_0_M01_AXI_RREADY;
  assign M_AXI_MM_MIG_wdata[511:0] = axi_interconnect_0_M01_AXI_WDATA;
  assign M_AXI_MM_MIG_wlast = axi_interconnect_0_M01_AXI_WLAST;
  assign M_AXI_MM_MIG_wstrb[63:0] = axi_interconnect_0_M01_AXI_WSTRB;
  assign M_AXI_MM_MIG_wvalid = axi_interconnect_0_M01_AXI_WVALID;
  assign M_AXI_MM_PCIM_araddr[63:0] = axi_interconnect_0_M04_AXI_ARADDR;
  assign M_AXI_MM_PCIM_arburst[1:0] = axi_interconnect_0_M04_AXI_ARBURST;
  assign M_AXI_MM_PCIM_arcache[3:0] = axi_interconnect_0_M04_AXI_ARCACHE;
  assign M_AXI_MM_PCIM_arid[5:0] = axi_interconnect_0_M04_AXI_ARID;
  assign M_AXI_MM_PCIM_arlen[7:0] = axi_interconnect_0_M04_AXI_ARLEN;
  assign M_AXI_MM_PCIM_arlock[0] = axi_interconnect_0_M04_AXI_ARLOCK;
  assign M_AXI_MM_PCIM_arprot[2:0] = axi_interconnect_0_M04_AXI_ARPROT;
  assign M_AXI_MM_PCIM_arqos[3:0] = axi_interconnect_0_M04_AXI_ARQOS;
  assign M_AXI_MM_PCIM_arregion[3:0] = axi_interconnect_0_M04_AXI_ARREGION;
  assign M_AXI_MM_PCIM_arsize[2:0] = axi_interconnect_0_M04_AXI_ARSIZE;
  assign M_AXI_MM_PCIM_arvalid = axi_interconnect_0_M04_AXI_ARVALID;
  assign M_AXI_MM_PCIM_awaddr[63:0] = axi_interconnect_0_M04_AXI_AWADDR;
  assign M_AXI_MM_PCIM_awburst[1:0] = axi_interconnect_0_M04_AXI_AWBURST;
  assign M_AXI_MM_PCIM_awcache[3:0] = axi_interconnect_0_M04_AXI_AWCACHE;
  assign M_AXI_MM_PCIM_awid[5:0] = axi_interconnect_0_M04_AXI_AWID;
  assign M_AXI_MM_PCIM_awlen[7:0] = axi_interconnect_0_M04_AXI_AWLEN;
  assign M_AXI_MM_PCIM_awlock[0] = axi_interconnect_0_M04_AXI_AWLOCK;
  assign M_AXI_MM_PCIM_awprot[2:0] = axi_interconnect_0_M04_AXI_AWPROT;
  assign M_AXI_MM_PCIM_awqos[3:0] = axi_interconnect_0_M04_AXI_AWQOS;
  assign M_AXI_MM_PCIM_awregion[3:0] = axi_interconnect_0_M04_AXI_AWREGION;
  assign M_AXI_MM_PCIM_awsize[2:0] = axi_interconnect_0_M04_AXI_AWSIZE;
  assign M_AXI_MM_PCIM_awvalid = axi_interconnect_0_M04_AXI_AWVALID;
  assign M_AXI_MM_PCIM_bready = axi_interconnect_0_M04_AXI_BREADY;
  assign M_AXI_MM_PCIM_rready = axi_interconnect_0_M04_AXI_RREADY;
  assign M_AXI_MM_PCIM_wdata[511:0] = axi_interconnect_0_M04_AXI_WDATA;
  assign M_AXI_MM_PCIM_wlast = axi_interconnect_0_M04_AXI_WLAST;
  assign M_AXI_MM_PCIM_wstrb[63:0] = axi_interconnect_0_M04_AXI_WSTRB;
  assign M_AXI_MM_PCIM_wvalid = axi_interconnect_0_M04_AXI_WVALID;
  assign S_AXI_MM_arready = AXI_MASTER_0_1_ARREADY;
  assign S_AXI_MM_awready = AXI_MASTER_0_1_AWREADY;
  assign S_AXI_MM_bid[5:0] = AXI_MASTER_0_1_BID;
  assign S_AXI_MM_bresp[1:0] = AXI_MASTER_0_1_BRESP;
  assign S_AXI_MM_bvalid = AXI_MASTER_0_1_BVALID;
  assign S_AXI_MM_rdata[511:0] = AXI_MASTER_0_1_RDATA;
  assign S_AXI_MM_rid[5:0] = AXI_MASTER_0_1_RID;
  assign S_AXI_MM_rlast = AXI_MASTER_0_1_RLAST;
  assign S_AXI_MM_rresp[1:0] = AXI_MASTER_0_1_RRESP;
  assign S_AXI_MM_rvalid = AXI_MASTER_0_1_RVALID;
  assign S_AXI_MM_wready = AXI_MASTER_0_1_WREADY;
  assign axi_interconnect_0_M00_AXI_ARREADY = M_AXI_MM_MIG0_arready;
  assign axi_interconnect_0_M00_AXI_AWREADY = M_AXI_MM_MIG0_awready;
  assign axi_interconnect_0_M00_AXI_BID = M_AXI_MM_MIG0_bid[5:0];
  assign axi_interconnect_0_M00_AXI_BRESP = M_AXI_MM_MIG0_bresp[1:0];
  assign axi_interconnect_0_M00_AXI_BVALID = M_AXI_MM_MIG0_bvalid;
  assign axi_interconnect_0_M00_AXI_RDATA = M_AXI_MM_MIG0_rdata[511:0];
  assign axi_interconnect_0_M00_AXI_RID = M_AXI_MM_MIG0_rid[5:0];
  assign axi_interconnect_0_M00_AXI_RLAST = M_AXI_MM_MIG0_rlast;
  assign axi_interconnect_0_M00_AXI_RRESP = M_AXI_MM_MIG0_rresp[1:0];
  assign axi_interconnect_0_M00_AXI_RVALID = M_AXI_MM_MIG0_rvalid;
  assign axi_interconnect_0_M00_AXI_WREADY = M_AXI_MM_MIG0_wready;
  assign axi_interconnect_0_M01_AXI_ARREADY = M_AXI_MM_MIG_arready;
  assign axi_interconnect_0_M01_AXI_AWREADY = M_AXI_MM_MIG_awready;
  assign axi_interconnect_0_M01_AXI_BID = M_AXI_MM_MIG_bid[5:0];
  assign axi_interconnect_0_M01_AXI_BRESP = M_AXI_MM_MIG_bresp[1:0];
  assign axi_interconnect_0_M01_AXI_BVALID = M_AXI_MM_MIG_bvalid;
  assign axi_interconnect_0_M01_AXI_RDATA = M_AXI_MM_MIG_rdata[511:0];
  assign axi_interconnect_0_M01_AXI_RID = M_AXI_MM_MIG_rid[5:0];
  assign axi_interconnect_0_M01_AXI_RLAST = M_AXI_MM_MIG_rlast;
  assign axi_interconnect_0_M01_AXI_RRESP = M_AXI_MM_MIG_rresp[1:0];
  assign axi_interconnect_0_M01_AXI_RVALID = M_AXI_MM_MIG_rvalid;
  assign axi_interconnect_0_M01_AXI_WREADY = M_AXI_MM_MIG_wready;
  assign axi_interconnect_0_M02_AXI_ARREADY = M_AXI_MM_MIG2_arready;
  assign axi_interconnect_0_M02_AXI_AWREADY = M_AXI_MM_MIG2_awready;
  assign axi_interconnect_0_M02_AXI_BID = M_AXI_MM_MIG2_bid[5:0];
  assign axi_interconnect_0_M02_AXI_BRESP = M_AXI_MM_MIG2_bresp[1:0];
  assign axi_interconnect_0_M02_AXI_BVALID = M_AXI_MM_MIG2_bvalid;
  assign axi_interconnect_0_M02_AXI_RDATA = M_AXI_MM_MIG2_rdata[511:0];
  assign axi_interconnect_0_M02_AXI_RID = M_AXI_MM_MIG2_rid[5:0];
  assign axi_interconnect_0_M02_AXI_RLAST = M_AXI_MM_MIG2_rlast;
  assign axi_interconnect_0_M02_AXI_RRESP = M_AXI_MM_MIG2_rresp[1:0];
  assign axi_interconnect_0_M02_AXI_RVALID = M_AXI_MM_MIG2_rvalid;
  assign axi_interconnect_0_M02_AXI_WREADY = M_AXI_MM_MIG2_wready;
  assign axi_interconnect_0_M03_AXI_ARREADY = M_AXI_MM_MIG3_arready;
  assign axi_interconnect_0_M03_AXI_AWREADY = M_AXI_MM_MIG3_awready;
  assign axi_interconnect_0_M03_AXI_BID = M_AXI_MM_MIG3_bid[5:0];
  assign axi_interconnect_0_M03_AXI_BRESP = M_AXI_MM_MIG3_bresp[1:0];
  assign axi_interconnect_0_M03_AXI_BVALID = M_AXI_MM_MIG3_bvalid;
  assign axi_interconnect_0_M03_AXI_RDATA = M_AXI_MM_MIG3_rdata[511:0];
  assign axi_interconnect_0_M03_AXI_RID = M_AXI_MM_MIG3_rid[5:0];
  assign axi_interconnect_0_M03_AXI_RLAST = M_AXI_MM_MIG3_rlast;
  assign axi_interconnect_0_M03_AXI_RRESP = M_AXI_MM_MIG3_rresp[1:0];
  assign axi_interconnect_0_M03_AXI_RVALID = M_AXI_MM_MIG3_rvalid;
  assign axi_interconnect_0_M03_AXI_WREADY = M_AXI_MM_MIG3_wready;
  assign axi_interconnect_0_M04_AXI_ARREADY = M_AXI_MM_PCIM_arready;
  assign axi_interconnect_0_M04_AXI_AWREADY = M_AXI_MM_PCIM_awready;
  assign axi_interconnect_0_M04_AXI_BID = M_AXI_MM_PCIM_bid[5:0];
  assign axi_interconnect_0_M04_AXI_BRESP = M_AXI_MM_PCIM_bresp[1:0];
  assign axi_interconnect_0_M04_AXI_BVALID = M_AXI_MM_PCIM_bvalid;
  assign axi_interconnect_0_M04_AXI_RDATA = M_AXI_MM_PCIM_rdata[511:0];
  assign axi_interconnect_0_M04_AXI_RID = M_AXI_MM_PCIM_rid[5:0];
  assign axi_interconnect_0_M04_AXI_RLAST = M_AXI_MM_PCIM_rlast;
  assign axi_interconnect_0_M04_AXI_RRESP = M_AXI_MM_PCIM_rresp[1:0];
  assign axi_interconnect_0_M04_AXI_RVALID = M_AXI_MM_PCIM_rvalid;
  assign axi_interconnect_0_M04_AXI_WREADY = M_AXI_MM_PCIM_wready;
  axi_ic_ddr4_pcim_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(CLK_IN_250_1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(CLK_IN_250_1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
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
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
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
        .M01_ACLK(CLK_IN_250_1),
        .M01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_interconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_interconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_interconnect_0_M01_AXI_ARID),
        .M01_AXI_arlen(axi_interconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_interconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_interconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_interconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arregion(axi_interconnect_0_M01_AXI_ARREGION),
        .M01_AXI_arsize(axi_interconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_interconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_interconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_interconnect_0_M01_AXI_AWID),
        .M01_AXI_awlen(axi_interconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_interconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_interconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_interconnect_0_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awregion(axi_interconnect_0_M01_AXI_AWREGION),
        .M01_AXI_awsize(axi_interconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_interconnect_0_M01_AXI_BID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rid(axi_interconnect_0_M01_AXI_RID),
        .M01_AXI_rlast(axi_interconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_interconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(CLK_IN_250_1),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_interconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_interconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arid(axi_interconnect_0_M02_AXI_ARID),
        .M02_AXI_arlen(axi_interconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_interconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(axi_interconnect_0_M02_AXI_ARQOS),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arregion(axi_interconnect_0_M02_AXI_ARREGION),
        .M02_AXI_arsize(axi_interconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_interconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_interconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awid(axi_interconnect_0_M02_AXI_AWID),
        .M02_AXI_awlen(axi_interconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_interconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(axi_interconnect_0_M02_AXI_AWQOS),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awregion(axi_interconnect_0_M02_AXI_AWREGION),
        .M02_AXI_awsize(axi_interconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bid(axi_interconnect_0_M02_AXI_BID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rid(axi_interconnect_0_M02_AXI_RID),
        .M02_AXI_rlast(axi_interconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_interconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(CLK_IN_250_1),
        .M03_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(axi_interconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(axi_interconnect_0_M03_AXI_ARCACHE),
        .M03_AXI_arid(axi_interconnect_0_M03_AXI_ARID),
        .M03_AXI_arlen(axi_interconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(axi_interconnect_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arqos(axi_interconnect_0_M03_AXI_ARQOS),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arregion(axi_interconnect_0_M03_AXI_ARREGION),
        .M03_AXI_arsize(axi_interconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(axi_interconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(axi_interconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awid(axi_interconnect_0_M03_AXI_AWID),
        .M03_AXI_awlen(axi_interconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(axi_interconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awqos(axi_interconnect_0_M03_AXI_AWQOS),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awregion(axi_interconnect_0_M03_AXI_AWREGION),
        .M03_AXI_awsize(axi_interconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bid(axi_interconnect_0_M03_AXI_BID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rid(axi_interconnect_0_M03_AXI_RID),
        .M03_AXI_rlast(axi_interconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(axi_interconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .M04_ACLK(CLK_IN_250_1),
        .M04_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arburst(axi_interconnect_0_M04_AXI_ARBURST),
        .M04_AXI_arcache(axi_interconnect_0_M04_AXI_ARCACHE),
        .M04_AXI_arid(axi_interconnect_0_M04_AXI_ARID),
        .M04_AXI_arlen(axi_interconnect_0_M04_AXI_ARLEN),
        .M04_AXI_arlock(axi_interconnect_0_M04_AXI_ARLOCK),
        .M04_AXI_arprot(axi_interconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arqos(axi_interconnect_0_M04_AXI_ARQOS),
        .M04_AXI_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arregion(axi_interconnect_0_M04_AXI_ARREGION),
        .M04_AXI_arsize(axi_interconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awburst(axi_interconnect_0_M04_AXI_AWBURST),
        .M04_AXI_awcache(axi_interconnect_0_M04_AXI_AWCACHE),
        .M04_AXI_awid(axi_interconnect_0_M04_AXI_AWID),
        .M04_AXI_awlen(axi_interconnect_0_M04_AXI_AWLEN),
        .M04_AXI_awlock(axi_interconnect_0_M04_AXI_AWLOCK),
        .M04_AXI_awprot(axi_interconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awqos(axi_interconnect_0_M04_AXI_AWQOS),
        .M04_AXI_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awregion(axi_interconnect_0_M04_AXI_AWREGION),
        .M04_AXI_awsize(axi_interconnect_0_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bid(axi_interconnect_0_M04_AXI_BID),
        .M04_AXI_bready(axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rid(axi_interconnect_0_M04_AXI_RID),
        .M04_AXI_rlast(axi_interconnect_0_M04_AXI_RLAST),
        .M04_AXI_rready(axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wlast(axi_interconnect_0_M04_AXI_WLAST),
        .M04_AXI_wready(axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .S00_ACLK(CLK_IN_250_1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(AXI_MASTER_0_1_ARADDR),
        .S00_AXI_arburst(AXI_MASTER_0_1_ARBURST),
        .S00_AXI_arcache(AXI_MASTER_0_1_ARCACHE),
        .S00_AXI_arid(AXI_MASTER_0_1_ARID),
        .S00_AXI_arlen(AXI_MASTER_0_1_ARLEN),
        .S00_AXI_arlock(AXI_MASTER_0_1_ARLOCK),
        .S00_AXI_arprot(AXI_MASTER_0_1_ARPROT),
        .S00_AXI_arqos(AXI_MASTER_0_1_ARQOS),
        .S00_AXI_arready(AXI_MASTER_0_1_ARREADY),
        .S00_AXI_arregion(AXI_MASTER_0_1_ARREGION),
        .S00_AXI_arsize(AXI_MASTER_0_1_ARSIZE),
        .S00_AXI_arvalid(AXI_MASTER_0_1_ARVALID),
        .S00_AXI_awaddr(AXI_MASTER_0_1_AWADDR),
        .S00_AXI_awburst(AXI_MASTER_0_1_AWBURST),
        .S00_AXI_awcache(AXI_MASTER_0_1_AWCACHE),
        .S00_AXI_awid(AXI_MASTER_0_1_AWID),
        .S00_AXI_awlen(AXI_MASTER_0_1_AWLEN),
        .S00_AXI_awlock(AXI_MASTER_0_1_AWLOCK),
        .S00_AXI_awprot(AXI_MASTER_0_1_AWPROT),
        .S00_AXI_awqos(AXI_MASTER_0_1_AWQOS),
        .S00_AXI_awready(AXI_MASTER_0_1_AWREADY),
        .S00_AXI_awregion(AXI_MASTER_0_1_AWREGION),
        .S00_AXI_awsize(AXI_MASTER_0_1_AWSIZE),
        .S00_AXI_awvalid(AXI_MASTER_0_1_AWVALID),
        .S00_AXI_bid(AXI_MASTER_0_1_BID),
        .S00_AXI_bready(AXI_MASTER_0_1_BREADY),
        .S00_AXI_bresp(AXI_MASTER_0_1_BRESP),
        .S00_AXI_bvalid(AXI_MASTER_0_1_BVALID),
        .S00_AXI_rdata(AXI_MASTER_0_1_RDATA),
        .S00_AXI_rid(AXI_MASTER_0_1_RID),
        .S00_AXI_rlast(AXI_MASTER_0_1_RLAST),
        .S00_AXI_rready(AXI_MASTER_0_1_RREADY),
        .S00_AXI_rresp(AXI_MASTER_0_1_RRESP),
        .S00_AXI_rvalid(AXI_MASTER_0_1_RVALID),
        .S00_AXI_wdata(AXI_MASTER_0_1_WDATA),
        .S00_AXI_wlast(AXI_MASTER_0_1_WLAST),
        .S00_AXI_wready(AXI_MASTER_0_1_WREADY),
        .S00_AXI_wstrb(AXI_MASTER_0_1_WSTRB),
        .S00_AXI_wvalid(AXI_MASTER_0_1_WVALID));
  axi_ic_ddr4_pcim_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(AXI_RESET_N_1),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(CLK_IN_250_1));
endmodule

module axi_ic_ddr4_pcim_axi_interconnect_0_0
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
    M00_AXI_arregion,
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
    M00_AXI_awregion,
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
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arregion,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awregion,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arregion,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awid,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awqos,
    M03_AXI_awready,
    M03_AXI_awregion,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arburst,
    M04_AXI_arcache,
    M04_AXI_arid,
    M04_AXI_arlen,
    M04_AXI_arlock,
    M04_AXI_arprot,
    M04_AXI_arqos,
    M04_AXI_arready,
    M04_AXI_arregion,
    M04_AXI_arsize,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awburst,
    M04_AXI_awcache,
    M04_AXI_awid,
    M04_AXI_awlen,
    M04_AXI_awlock,
    M04_AXI_awprot,
    M04_AXI_awqos,
    M04_AXI_awready,
    M04_AXI_awregion,
    M04_AXI_awsize,
    M04_AXI_awvalid,
    M04_AXI_bid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rid,
    M04_AXI_rlast,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wlast,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
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
  output [3:0]M00_AXI_arregion;
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
  output [3:0]M00_AXI_awregion;
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
  input M01_ACLK;
  input M01_ARESETN;
  output [63:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [5:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input M01_AXI_arready;
  output [3:0]M01_AXI_arregion;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [63:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [5:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input M01_AXI_awready;
  output [3:0]M01_AXI_awregion;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [5:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [511:0]M01_AXI_rdata;
  input [5:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [511:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [63:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [63:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [5:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  input M02_AXI_arready;
  output [3:0]M02_AXI_arregion;
  output [2:0]M02_AXI_arsize;
  output M02_AXI_arvalid;
  output [63:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [5:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  input M02_AXI_awready;
  output [3:0]M02_AXI_awregion;
  output [2:0]M02_AXI_awsize;
  output M02_AXI_awvalid;
  input [5:0]M02_AXI_bid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [511:0]M02_AXI_rdata;
  input [5:0]M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [511:0]M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output [63:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [63:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [5:0]M03_AXI_arid;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  input M03_AXI_arready;
  output [3:0]M03_AXI_arregion;
  output [2:0]M03_AXI_arsize;
  output M03_AXI_arvalid;
  output [63:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [5:0]M03_AXI_awid;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  output [3:0]M03_AXI_awqos;
  input M03_AXI_awready;
  output [3:0]M03_AXI_awregion;
  output [2:0]M03_AXI_awsize;
  output M03_AXI_awvalid;
  input [5:0]M03_AXI_bid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [511:0]M03_AXI_rdata;
  input [5:0]M03_AXI_rid;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [511:0]M03_AXI_wdata;
  output M03_AXI_wlast;
  input M03_AXI_wready;
  output [63:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [63:0]M04_AXI_araddr;
  output [1:0]M04_AXI_arburst;
  output [3:0]M04_AXI_arcache;
  output [5:0]M04_AXI_arid;
  output [7:0]M04_AXI_arlen;
  output [0:0]M04_AXI_arlock;
  output [2:0]M04_AXI_arprot;
  output [3:0]M04_AXI_arqos;
  input M04_AXI_arready;
  output [3:0]M04_AXI_arregion;
  output [2:0]M04_AXI_arsize;
  output M04_AXI_arvalid;
  output [63:0]M04_AXI_awaddr;
  output [1:0]M04_AXI_awburst;
  output [3:0]M04_AXI_awcache;
  output [5:0]M04_AXI_awid;
  output [7:0]M04_AXI_awlen;
  output [0:0]M04_AXI_awlock;
  output [2:0]M04_AXI_awprot;
  output [3:0]M04_AXI_awqos;
  input M04_AXI_awready;
  output [3:0]M04_AXI_awregion;
  output [2:0]M04_AXI_awsize;
  output M04_AXI_awvalid;
  input [5:0]M04_AXI_bid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [511:0]M04_AXI_rdata;
  input [5:0]M04_AXI_rid;
  input M04_AXI_rlast;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [511:0]M04_AXI_wdata;
  output M04_AXI_wlast;
  input M04_AXI_wready;
  output [63:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
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
  wire [63:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]m00_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]m00_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]m00_couplers_to_axi_interconnect_0_BID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]m00_couplers_to_axi_interconnect_0_RID;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [63:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m01_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m01_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]m01_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m01_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m01_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m01_couplers_to_axi_interconnect_0_ARQOS;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m01_couplers_to_axi_interconnect_0_ARSIZE;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m01_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m01_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]m01_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m01_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m01_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m01_couplers_to_axi_interconnect_0_AWQOS;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m01_couplers_to_axi_interconnect_0_AWSIZE;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]m01_couplers_to_axi_interconnect_0_BID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]m01_couplers_to_axi_interconnect_0_RID;
  wire m01_couplers_to_axi_interconnect_0_RLAST;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WLAST;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [63:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m02_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m02_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]m02_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m02_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m02_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m02_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m02_couplers_to_axi_interconnect_0_ARQOS;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m02_couplers_to_axi_interconnect_0_ARSIZE;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m02_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m02_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]m02_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m02_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m02_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m02_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m02_couplers_to_axi_interconnect_0_AWQOS;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m02_couplers_to_axi_interconnect_0_AWSIZE;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]m02_couplers_to_axi_interconnect_0_BID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]m02_couplers_to_axi_interconnect_0_RID;
  wire m02_couplers_to_axi_interconnect_0_RLAST;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WLAST;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [63:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]m03_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m03_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m03_couplers_to_axi_interconnect_0_ARQOS;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARSIZE;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]m03_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m03_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m03_couplers_to_axi_interconnect_0_AWQOS;
  wire m03_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWSIZE;
  wire m03_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]m03_couplers_to_axi_interconnect_0_BID;
  wire m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire m03_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]m03_couplers_to_axi_interconnect_0_RID;
  wire m03_couplers_to_axi_interconnect_0_RLAST;
  wire m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire m03_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire m03_couplers_to_axi_interconnect_0_WLAST;
  wire m03_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire m03_couplers_to_axi_interconnect_0_WVALID;
  wire [63:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]m04_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m04_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m04_couplers_to_axi_interconnect_0_ARQOS;
  wire m04_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARSIZE;
  wire m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]m04_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m04_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m04_couplers_to_axi_interconnect_0_AWQOS;
  wire m04_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWSIZE;
  wire m04_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]m04_couplers_to_axi_interconnect_0_BID;
  wire m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire m04_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]m04_couplers_to_axi_interconnect_0_RID;
  wire m04_couplers_to_axi_interconnect_0_RLAST;
  wire m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire m04_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire m04_couplers_to_axi_interconnect_0_WLAST;
  wire m04_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire m04_couplers_to_axi_interconnect_0_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [5:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [5:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [5:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [5:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [5:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [5:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [11:6]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [11:6]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [5:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [511:0]xbar_to_m01_couplers_RDATA;
  wire [5:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [1023:512]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [127:64]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [191:128]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [17:12]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [191:128]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [17:12]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [5:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [511:0]xbar_to_m02_couplers_RDATA;
  wire [5:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [1535:1024]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [191:128]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [255:192]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [23:18]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [255:192]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [23:18]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [5:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [511:0]xbar_to_m03_couplers_RDATA;
  wire [5:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [2047:1536]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [255:192]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [319:256]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [29:24]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [319:256]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [29:24]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [5:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [511:0]xbar_to_m04_couplers_RDATA;
  wire [5:0]xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [2559:2048]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [319:256]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[5:0] = m00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_interconnect_0_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[5:0] = m00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_interconnect_0_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[63:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_interconnect_0_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_axi_interconnect_0_ARCACHE;
  assign M01_AXI_arid[5:0] = m01_couplers_to_axi_interconnect_0_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_interconnect_0_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_axi_interconnect_0_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_interconnect_0_ARPROT;
  assign M01_AXI_arqos[3:0] = m01_couplers_to_axi_interconnect_0_ARQOS;
  assign M01_AXI_arregion[3:0] = m01_couplers_to_axi_interconnect_0_ARREGION;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_interconnect_0_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[63:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_interconnect_0_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_axi_interconnect_0_AWCACHE;
  assign M01_AXI_awid[5:0] = m01_couplers_to_axi_interconnect_0_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_interconnect_0_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_axi_interconnect_0_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_interconnect_0_AWPROT;
  assign M01_AXI_awqos[3:0] = m01_couplers_to_axi_interconnect_0_AWQOS;
  assign M01_AXI_awregion[3:0] = m01_couplers_to_axi_interconnect_0_AWREGION;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_interconnect_0_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[511:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_interconnect_0_WLAST;
  assign M01_AXI_wstrb[63:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[63:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_axi_interconnect_0_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_axi_interconnect_0_ARCACHE;
  assign M02_AXI_arid[5:0] = m02_couplers_to_axi_interconnect_0_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_axi_interconnect_0_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_axi_interconnect_0_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_interconnect_0_ARPROT;
  assign M02_AXI_arqos[3:0] = m02_couplers_to_axi_interconnect_0_ARQOS;
  assign M02_AXI_arregion[3:0] = m02_couplers_to_axi_interconnect_0_ARREGION;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_axi_interconnect_0_ARSIZE;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[63:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_axi_interconnect_0_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_axi_interconnect_0_AWCACHE;
  assign M02_AXI_awid[5:0] = m02_couplers_to_axi_interconnect_0_AWID;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_axi_interconnect_0_AWLEN;
  assign M02_AXI_awlock[0] = m02_couplers_to_axi_interconnect_0_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_interconnect_0_AWPROT;
  assign M02_AXI_awqos[3:0] = m02_couplers_to_axi_interconnect_0_AWQOS;
  assign M02_AXI_awregion[3:0] = m02_couplers_to_axi_interconnect_0_AWREGION;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_axi_interconnect_0_AWSIZE;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[511:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wlast = m02_couplers_to_axi_interconnect_0_WLAST;
  assign M02_AXI_wstrb[63:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[63:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_axi_interconnect_0_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_axi_interconnect_0_ARCACHE;
  assign M03_AXI_arid[5:0] = m03_couplers_to_axi_interconnect_0_ARID;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_axi_interconnect_0_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_axi_interconnect_0_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_0_ARPROT;
  assign M03_AXI_arqos[3:0] = m03_couplers_to_axi_interconnect_0_ARQOS;
  assign M03_AXI_arregion[3:0] = m03_couplers_to_axi_interconnect_0_ARREGION;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_axi_interconnect_0_ARSIZE;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[63:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_axi_interconnect_0_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_axi_interconnect_0_AWCACHE;
  assign M03_AXI_awid[5:0] = m03_couplers_to_axi_interconnect_0_AWID;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_axi_interconnect_0_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_axi_interconnect_0_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_0_AWPROT;
  assign M03_AXI_awqos[3:0] = m03_couplers_to_axi_interconnect_0_AWQOS;
  assign M03_AXI_awregion[3:0] = m03_couplers_to_axi_interconnect_0_AWREGION;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_axi_interconnect_0_AWSIZE;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[511:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wlast = m03_couplers_to_axi_interconnect_0_WLAST;
  assign M03_AXI_wstrb[63:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[63:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arburst[1:0] = m04_couplers_to_axi_interconnect_0_ARBURST;
  assign M04_AXI_arcache[3:0] = m04_couplers_to_axi_interconnect_0_ARCACHE;
  assign M04_AXI_arid[5:0] = m04_couplers_to_axi_interconnect_0_ARID;
  assign M04_AXI_arlen[7:0] = m04_couplers_to_axi_interconnect_0_ARLEN;
  assign M04_AXI_arlock[0] = m04_couplers_to_axi_interconnect_0_ARLOCK;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_interconnect_0_ARPROT;
  assign M04_AXI_arqos[3:0] = m04_couplers_to_axi_interconnect_0_ARQOS;
  assign M04_AXI_arregion[3:0] = m04_couplers_to_axi_interconnect_0_ARREGION;
  assign M04_AXI_arsize[2:0] = m04_couplers_to_axi_interconnect_0_ARSIZE;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[63:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awburst[1:0] = m04_couplers_to_axi_interconnect_0_AWBURST;
  assign M04_AXI_awcache[3:0] = m04_couplers_to_axi_interconnect_0_AWCACHE;
  assign M04_AXI_awid[5:0] = m04_couplers_to_axi_interconnect_0_AWID;
  assign M04_AXI_awlen[7:0] = m04_couplers_to_axi_interconnect_0_AWLEN;
  assign M04_AXI_awlock[0] = m04_couplers_to_axi_interconnect_0_AWLOCK;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_interconnect_0_AWPROT;
  assign M04_AXI_awqos[3:0] = m04_couplers_to_axi_interconnect_0_AWQOS;
  assign M04_AXI_awregion[3:0] = m04_couplers_to_axi_interconnect_0_AWREGION;
  assign M04_AXI_awsize[2:0] = m04_couplers_to_axi_interconnect_0_AWSIZE;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[511:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wlast = m04_couplers_to_axi_interconnect_0_WLAST;
  assign M04_AXI_wstrb[63:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_0_WVALID;
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
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
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
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BID = M01_AXI_bid[5:0];
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[511:0];
  assign m01_couplers_to_axi_interconnect_0_RID = M01_AXI_rid[5:0];
  assign m01_couplers_to_axi_interconnect_0_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BID = M02_AXI_bid[5:0];
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[511:0];
  assign m02_couplers_to_axi_interconnect_0_RID = M02_AXI_rid[5:0];
  assign m02_couplers_to_axi_interconnect_0_RLAST = M02_AXI_rlast;
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_0_BID = M03_AXI_bid[5:0];
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[511:0];
  assign m03_couplers_to_axi_interconnect_0_RID = M03_AXI_rid[5:0];
  assign m03_couplers_to_axi_interconnect_0_RLAST = M03_AXI_rlast;
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_interconnect_0_BID = M04_AXI_bid[5:0];
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[511:0];
  assign m04_couplers_to_axi_interconnect_0_RID = M04_AXI_rid[5:0];
  assign m04_couplers_to_axi_interconnect_0_RLAST = M04_AXI_rlast;
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready;
  m00_couplers_imp_1F67KNP m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_QHBD8I m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m01_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m01_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m01_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m01_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m01_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m01_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m01_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m01_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m01_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m01_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m01_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m01_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m01_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1C1LEEY m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m02_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m02_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m02_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m02_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m02_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m02_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m02_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m02_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m02_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m02_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m02_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m02_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m02_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m02_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m02_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m02_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m02_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m02_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m02_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m02_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_KLFR1P m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m03_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m03_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m03_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m03_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m03_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m03_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m03_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m03_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m03_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m03_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m03_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m03_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m03_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m03_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m03_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m03_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m03_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m03_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m03_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m03_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_14S2U17 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m04_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m04_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m04_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m04_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m04_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m04_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m04_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m04_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m04_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m04_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m04_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m04_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m04_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m04_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m04_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m04_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m04_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m04_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m04_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m04_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m04_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m04_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_1BHE5NN s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
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
  axi_ic_ddr4_pcim_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_1F67KNP
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
  wire [63:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [1:0]m00_couplers_to_m00_regslice_ARBURST;
  wire [3:0]m00_couplers_to_m00_regslice_ARCACHE;
  wire [5:0]m00_couplers_to_m00_regslice_ARID;
  wire [7:0]m00_couplers_to_m00_regslice_ARLEN;
  wire [0:0]m00_couplers_to_m00_regslice_ARLOCK;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire [3:0]m00_couplers_to_m00_regslice_ARQOS;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire [3:0]m00_couplers_to_m00_regslice_ARREGION;
  wire [2:0]m00_couplers_to_m00_regslice_ARSIZE;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [63:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [1:0]m00_couplers_to_m00_regslice_AWBURST;
  wire [3:0]m00_couplers_to_m00_regslice_AWCACHE;
  wire [5:0]m00_couplers_to_m00_regslice_AWID;
  wire [7:0]m00_couplers_to_m00_regslice_AWLEN;
  wire [0:0]m00_couplers_to_m00_regslice_AWLOCK;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire [3:0]m00_couplers_to_m00_regslice_AWQOS;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire [3:0]m00_couplers_to_m00_regslice_AWREGION;
  wire [2:0]m00_couplers_to_m00_regslice_AWSIZE;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire [5:0]m00_couplers_to_m00_regslice_BID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [511:0]m00_couplers_to_m00_regslice_RDATA;
  wire [5:0]m00_couplers_to_m00_regslice_RID;
  wire m00_couplers_to_m00_regslice_RLAST;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [511:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WLAST;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [63:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [63:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [5:0]m00_regslice_to_m00_couplers_ARID;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [3:0]m00_regslice_to_m00_couplers_ARREGION;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [63:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [5:0]m00_regslice_to_m00_couplers_AWID;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [3:0]m00_regslice_to_m00_couplers_AWREGION;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [5:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [511:0]m00_regslice_to_m00_couplers_RDATA;
  wire [5:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [511:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [63:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_regslice_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_regslice_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bid[5:0] = m00_couplers_to_m00_regslice_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rid[5:0] = m00_couplers_to_m00_regslice_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_regslice_ARID = S_AXI_arid[5:0];
  assign m00_couplers_to_m00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_regslice_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_regslice_AWID = S_AXI_awid[5:0];
  assign m00_couplers_to_m00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_regslice_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_m00_regslice_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  axi_ic_ddr4_pcim_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arregion(m00_regslice_to_m00_couplers_ARREGION),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awregion(m00_regslice_to_m00_couplers_AWREGION),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR),
        .s_axi_arburst(m00_couplers_to_m00_regslice_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_regslice_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_regslice_ARID),
        .s_axi_arlen(m00_couplers_to_m00_regslice_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_regslice_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_regslice_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_regslice_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR),
        .s_axi_awburst(m00_couplers_to_m00_regslice_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_regslice_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_regslice_AWID),
        .s_axi_awlen(m00_couplers_to_m00_regslice_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_regslice_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_regslice_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_regslice_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_regslice_BID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rid(m00_couplers_to_m00_regslice_RID),
        .s_axi_rlast(m00_couplers_to_m00_regslice_RLAST),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_regslice_WLAST),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_QHBD8I
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
  wire [63:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [1:0]m01_couplers_to_m01_regslice_ARBURST;
  wire [3:0]m01_couplers_to_m01_regslice_ARCACHE;
  wire [5:0]m01_couplers_to_m01_regslice_ARID;
  wire [7:0]m01_couplers_to_m01_regslice_ARLEN;
  wire [0:0]m01_couplers_to_m01_regslice_ARLOCK;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire [3:0]m01_couplers_to_m01_regslice_ARQOS;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire [3:0]m01_couplers_to_m01_regslice_ARREGION;
  wire [2:0]m01_couplers_to_m01_regslice_ARSIZE;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [63:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [1:0]m01_couplers_to_m01_regslice_AWBURST;
  wire [3:0]m01_couplers_to_m01_regslice_AWCACHE;
  wire [5:0]m01_couplers_to_m01_regslice_AWID;
  wire [7:0]m01_couplers_to_m01_regslice_AWLEN;
  wire [0:0]m01_couplers_to_m01_regslice_AWLOCK;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire [3:0]m01_couplers_to_m01_regslice_AWQOS;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire [3:0]m01_couplers_to_m01_regslice_AWREGION;
  wire [2:0]m01_couplers_to_m01_regslice_AWSIZE;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire [5:0]m01_couplers_to_m01_regslice_BID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [511:0]m01_couplers_to_m01_regslice_RDATA;
  wire [5:0]m01_couplers_to_m01_regslice_RID;
  wire m01_couplers_to_m01_regslice_RLAST;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [511:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WLAST;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [63:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [63:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [1:0]m01_regslice_to_m01_couplers_ARBURST;
  wire [3:0]m01_regslice_to_m01_couplers_ARCACHE;
  wire [5:0]m01_regslice_to_m01_couplers_ARID;
  wire [7:0]m01_regslice_to_m01_couplers_ARLEN;
  wire [0:0]m01_regslice_to_m01_couplers_ARLOCK;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire [3:0]m01_regslice_to_m01_couplers_ARQOS;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire [3:0]m01_regslice_to_m01_couplers_ARREGION;
  wire [2:0]m01_regslice_to_m01_couplers_ARSIZE;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [63:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [1:0]m01_regslice_to_m01_couplers_AWBURST;
  wire [3:0]m01_regslice_to_m01_couplers_AWCACHE;
  wire [5:0]m01_regslice_to_m01_couplers_AWID;
  wire [7:0]m01_regslice_to_m01_couplers_AWLEN;
  wire [0:0]m01_regslice_to_m01_couplers_AWLOCK;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire [3:0]m01_regslice_to_m01_couplers_AWQOS;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire [3:0]m01_regslice_to_m01_couplers_AWREGION;
  wire [2:0]m01_regslice_to_m01_couplers_AWSIZE;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire [5:0]m01_regslice_to_m01_couplers_BID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [511:0]m01_regslice_to_m01_couplers_RDATA;
  wire [5:0]m01_regslice_to_m01_couplers_RID;
  wire m01_regslice_to_m01_couplers_RLAST;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [511:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WLAST;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [63:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_regslice_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_regslice_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m01_regslice_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_regslice_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = m01_regslice_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m01_regslice_to_m01_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m01_regslice_to_m01_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m01_regslice_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_regslice_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_regslice_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m01_regslice_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_regslice_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = m01_regslice_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m01_regslice_to_m01_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m01_regslice_to_m01_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m01_regslice_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_regslice_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bid[5:0] = m01_couplers_to_m01_regslice_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[511:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rid[5:0] = m01_couplers_to_m01_regslice_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_m01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_regslice_ARID = S_AXI_arid[5:0];
  assign m01_couplers_to_m01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_regslice_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_m01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_m01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_m01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_regslice_AWID = S_AXI_awid[5:0];
  assign m01_couplers_to_m01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_regslice_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_m01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_m01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[511:0];
  assign m01_couplers_to_m01_regslice_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BID = M_AXI_bid[5:0];
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[511:0];
  assign m01_regslice_to_m01_couplers_RID = M_AXI_rid[5:0];
  assign m01_regslice_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  axi_ic_ddr4_pcim_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arburst(m01_regslice_to_m01_couplers_ARBURST),
        .m_axi_arcache(m01_regslice_to_m01_couplers_ARCACHE),
        .m_axi_arid(m01_regslice_to_m01_couplers_ARID),
        .m_axi_arlen(m01_regslice_to_m01_couplers_ARLEN),
        .m_axi_arlock(m01_regslice_to_m01_couplers_ARLOCK),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arqos(m01_regslice_to_m01_couplers_ARQOS),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arregion(m01_regslice_to_m01_couplers_ARREGION),
        .m_axi_arsize(m01_regslice_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awburst(m01_regslice_to_m01_couplers_AWBURST),
        .m_axi_awcache(m01_regslice_to_m01_couplers_AWCACHE),
        .m_axi_awid(m01_regslice_to_m01_couplers_AWID),
        .m_axi_awlen(m01_regslice_to_m01_couplers_AWLEN),
        .m_axi_awlock(m01_regslice_to_m01_couplers_AWLOCK),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awqos(m01_regslice_to_m01_couplers_AWQOS),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awregion(m01_regslice_to_m01_couplers_AWREGION),
        .m_axi_awsize(m01_regslice_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bid(m01_regslice_to_m01_couplers_BID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rid(m01_regslice_to_m01_couplers_RID),
        .m_axi_rlast(m01_regslice_to_m01_couplers_RLAST),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wlast(m01_regslice_to_m01_couplers_WLAST),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR),
        .s_axi_arburst(m01_couplers_to_m01_regslice_ARBURST),
        .s_axi_arcache(m01_couplers_to_m01_regslice_ARCACHE),
        .s_axi_arid(m01_couplers_to_m01_regslice_ARID),
        .s_axi_arlen(m01_couplers_to_m01_regslice_ARLEN),
        .s_axi_arlock(m01_couplers_to_m01_regslice_ARLOCK),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arqos(m01_couplers_to_m01_regslice_ARQOS),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arregion(m01_couplers_to_m01_regslice_ARREGION),
        .s_axi_arsize(m01_couplers_to_m01_regslice_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR),
        .s_axi_awburst(m01_couplers_to_m01_regslice_AWBURST),
        .s_axi_awcache(m01_couplers_to_m01_regslice_AWCACHE),
        .s_axi_awid(m01_couplers_to_m01_regslice_AWID),
        .s_axi_awlen(m01_couplers_to_m01_regslice_AWLEN),
        .s_axi_awlock(m01_couplers_to_m01_regslice_AWLOCK),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awqos(m01_couplers_to_m01_regslice_AWQOS),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awregion(m01_couplers_to_m01_regslice_AWREGION),
        .s_axi_awsize(m01_couplers_to_m01_regslice_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bid(m01_couplers_to_m01_regslice_BID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rid(m01_couplers_to_m01_regslice_RID),
        .s_axi_rlast(m01_couplers_to_m01_regslice_RLAST),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wlast(m01_couplers_to_m01_regslice_WLAST),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_1C1LEEY
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
  wire [63:0]m02_couplers_to_m02_regslice_ARADDR;
  wire [1:0]m02_couplers_to_m02_regslice_ARBURST;
  wire [3:0]m02_couplers_to_m02_regslice_ARCACHE;
  wire [5:0]m02_couplers_to_m02_regslice_ARID;
  wire [7:0]m02_couplers_to_m02_regslice_ARLEN;
  wire [0:0]m02_couplers_to_m02_regslice_ARLOCK;
  wire [2:0]m02_couplers_to_m02_regslice_ARPROT;
  wire [3:0]m02_couplers_to_m02_regslice_ARQOS;
  wire m02_couplers_to_m02_regslice_ARREADY;
  wire [3:0]m02_couplers_to_m02_regslice_ARREGION;
  wire [2:0]m02_couplers_to_m02_regslice_ARSIZE;
  wire m02_couplers_to_m02_regslice_ARVALID;
  wire [63:0]m02_couplers_to_m02_regslice_AWADDR;
  wire [1:0]m02_couplers_to_m02_regslice_AWBURST;
  wire [3:0]m02_couplers_to_m02_regslice_AWCACHE;
  wire [5:0]m02_couplers_to_m02_regslice_AWID;
  wire [7:0]m02_couplers_to_m02_regslice_AWLEN;
  wire [0:0]m02_couplers_to_m02_regslice_AWLOCK;
  wire [2:0]m02_couplers_to_m02_regslice_AWPROT;
  wire [3:0]m02_couplers_to_m02_regslice_AWQOS;
  wire m02_couplers_to_m02_regslice_AWREADY;
  wire [3:0]m02_couplers_to_m02_regslice_AWREGION;
  wire [2:0]m02_couplers_to_m02_regslice_AWSIZE;
  wire m02_couplers_to_m02_regslice_AWVALID;
  wire [5:0]m02_couplers_to_m02_regslice_BID;
  wire m02_couplers_to_m02_regslice_BREADY;
  wire [1:0]m02_couplers_to_m02_regslice_BRESP;
  wire m02_couplers_to_m02_regslice_BVALID;
  wire [511:0]m02_couplers_to_m02_regslice_RDATA;
  wire [5:0]m02_couplers_to_m02_regslice_RID;
  wire m02_couplers_to_m02_regslice_RLAST;
  wire m02_couplers_to_m02_regslice_RREADY;
  wire [1:0]m02_couplers_to_m02_regslice_RRESP;
  wire m02_couplers_to_m02_regslice_RVALID;
  wire [511:0]m02_couplers_to_m02_regslice_WDATA;
  wire m02_couplers_to_m02_regslice_WLAST;
  wire m02_couplers_to_m02_regslice_WREADY;
  wire [63:0]m02_couplers_to_m02_regslice_WSTRB;
  wire m02_couplers_to_m02_regslice_WVALID;
  wire [63:0]m02_regslice_to_m02_couplers_ARADDR;
  wire [1:0]m02_regslice_to_m02_couplers_ARBURST;
  wire [3:0]m02_regslice_to_m02_couplers_ARCACHE;
  wire [5:0]m02_regslice_to_m02_couplers_ARID;
  wire [7:0]m02_regslice_to_m02_couplers_ARLEN;
  wire [0:0]m02_regslice_to_m02_couplers_ARLOCK;
  wire [2:0]m02_regslice_to_m02_couplers_ARPROT;
  wire [3:0]m02_regslice_to_m02_couplers_ARQOS;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire [3:0]m02_regslice_to_m02_couplers_ARREGION;
  wire [2:0]m02_regslice_to_m02_couplers_ARSIZE;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [63:0]m02_regslice_to_m02_couplers_AWADDR;
  wire [1:0]m02_regslice_to_m02_couplers_AWBURST;
  wire [3:0]m02_regslice_to_m02_couplers_AWCACHE;
  wire [5:0]m02_regslice_to_m02_couplers_AWID;
  wire [7:0]m02_regslice_to_m02_couplers_AWLEN;
  wire [0:0]m02_regslice_to_m02_couplers_AWLOCK;
  wire [2:0]m02_regslice_to_m02_couplers_AWPROT;
  wire [3:0]m02_regslice_to_m02_couplers_AWQOS;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire [3:0]m02_regslice_to_m02_couplers_AWREGION;
  wire [2:0]m02_regslice_to_m02_couplers_AWSIZE;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire [5:0]m02_regslice_to_m02_couplers_BID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [511:0]m02_regslice_to_m02_couplers_RDATA;
  wire [5:0]m02_regslice_to_m02_couplers_RID;
  wire m02_regslice_to_m02_couplers_RLAST;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [511:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WLAST;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [63:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m02_regslice_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m02_regslice_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m02_regslice_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = m02_regslice_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = m02_regslice_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m02_regslice_to_m02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m02_regslice_to_m02_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m02_regslice_to_m02_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m02_regslice_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m02_regslice_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m02_regslice_to_m02_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m02_regslice_to_m02_couplers_AWID;
  assign M_AXI_awlen[7:0] = m02_regslice_to_m02_couplers_AWLEN;
  assign M_AXI_awlock[0] = m02_regslice_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m02_regslice_to_m02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m02_regslice_to_m02_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m02_regslice_to_m02_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m02_regslice_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wlast = m02_regslice_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_regslice_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_regslice_AWREADY;
  assign S_AXI_bid[5:0] = m02_couplers_to_m02_regslice_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_regslice_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_regslice_BVALID;
  assign S_AXI_rdata[511:0] = m02_couplers_to_m02_regslice_RDATA;
  assign S_AXI_rid[5:0] = m02_couplers_to_m02_regslice_RID;
  assign S_AXI_rlast = m02_couplers_to_m02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_regslice_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_regslice_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_regslice_WREADY;
  assign m02_couplers_to_m02_regslice_ARADDR = S_AXI_araddr[63:0];
  assign m02_couplers_to_m02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_m02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_m02_regslice_ARID = S_AXI_arid[5:0];
  assign m02_couplers_to_m02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_m02_regslice_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_m02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_m02_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_m02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_m02_regslice_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign m02_couplers_to_m02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_m02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_m02_regslice_AWID = S_AXI_awid[5:0];
  assign m02_couplers_to_m02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_m02_regslice_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_m02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_m02_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_m02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_m02_regslice_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_regslice_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_regslice_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_regslice_WDATA = S_AXI_wdata[511:0];
  assign m02_couplers_to_m02_regslice_WLAST = S_AXI_wlast;
  assign m02_couplers_to_m02_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign m02_couplers_to_m02_regslice_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BID = M_AXI_bid[5:0];
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[511:0];
  assign m02_regslice_to_m02_couplers_RID = M_AXI_rid[5:0];
  assign m02_regslice_to_m02_couplers_RLAST = M_AXI_rlast;
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  axi_ic_ddr4_pcim_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arburst(m02_regslice_to_m02_couplers_ARBURST),
        .m_axi_arcache(m02_regslice_to_m02_couplers_ARCACHE),
        .m_axi_arid(m02_regslice_to_m02_couplers_ARID),
        .m_axi_arlen(m02_regslice_to_m02_couplers_ARLEN),
        .m_axi_arlock(m02_regslice_to_m02_couplers_ARLOCK),
        .m_axi_arprot(m02_regslice_to_m02_couplers_ARPROT),
        .m_axi_arqos(m02_regslice_to_m02_couplers_ARQOS),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arregion(m02_regslice_to_m02_couplers_ARREGION),
        .m_axi_arsize(m02_regslice_to_m02_couplers_ARSIZE),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awburst(m02_regslice_to_m02_couplers_AWBURST),
        .m_axi_awcache(m02_regslice_to_m02_couplers_AWCACHE),
        .m_axi_awid(m02_regslice_to_m02_couplers_AWID),
        .m_axi_awlen(m02_regslice_to_m02_couplers_AWLEN),
        .m_axi_awlock(m02_regslice_to_m02_couplers_AWLOCK),
        .m_axi_awprot(m02_regslice_to_m02_couplers_AWPROT),
        .m_axi_awqos(m02_regslice_to_m02_couplers_AWQOS),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awregion(m02_regslice_to_m02_couplers_AWREGION),
        .m_axi_awsize(m02_regslice_to_m02_couplers_AWSIZE),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bid(m02_regslice_to_m02_couplers_BID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rid(m02_regslice_to_m02_couplers_RID),
        .m_axi_rlast(m02_regslice_to_m02_couplers_RLAST),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wlast(m02_regslice_to_m02_couplers_WLAST),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_m02_regslice_ARADDR),
        .s_axi_arburst(m02_couplers_to_m02_regslice_ARBURST),
        .s_axi_arcache(m02_couplers_to_m02_regslice_ARCACHE),
        .s_axi_arid(m02_couplers_to_m02_regslice_ARID),
        .s_axi_arlen(m02_couplers_to_m02_regslice_ARLEN),
        .s_axi_arlock(m02_couplers_to_m02_regslice_ARLOCK),
        .s_axi_arprot(m02_couplers_to_m02_regslice_ARPROT),
        .s_axi_arqos(m02_couplers_to_m02_regslice_ARQOS),
        .s_axi_arready(m02_couplers_to_m02_regslice_ARREADY),
        .s_axi_arregion(m02_couplers_to_m02_regslice_ARREGION),
        .s_axi_arsize(m02_couplers_to_m02_regslice_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_m02_regslice_ARVALID),
        .s_axi_awaddr(m02_couplers_to_m02_regslice_AWADDR),
        .s_axi_awburst(m02_couplers_to_m02_regslice_AWBURST),
        .s_axi_awcache(m02_couplers_to_m02_regslice_AWCACHE),
        .s_axi_awid(m02_couplers_to_m02_regslice_AWID),
        .s_axi_awlen(m02_couplers_to_m02_regslice_AWLEN),
        .s_axi_awlock(m02_couplers_to_m02_regslice_AWLOCK),
        .s_axi_awprot(m02_couplers_to_m02_regslice_AWPROT),
        .s_axi_awqos(m02_couplers_to_m02_regslice_AWQOS),
        .s_axi_awready(m02_couplers_to_m02_regslice_AWREADY),
        .s_axi_awregion(m02_couplers_to_m02_regslice_AWREGION),
        .s_axi_awsize(m02_couplers_to_m02_regslice_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_m02_regslice_AWVALID),
        .s_axi_bid(m02_couplers_to_m02_regslice_BID),
        .s_axi_bready(m02_couplers_to_m02_regslice_BREADY),
        .s_axi_bresp(m02_couplers_to_m02_regslice_BRESP),
        .s_axi_bvalid(m02_couplers_to_m02_regslice_BVALID),
        .s_axi_rdata(m02_couplers_to_m02_regslice_RDATA),
        .s_axi_rid(m02_couplers_to_m02_regslice_RID),
        .s_axi_rlast(m02_couplers_to_m02_regslice_RLAST),
        .s_axi_rready(m02_couplers_to_m02_regslice_RREADY),
        .s_axi_rresp(m02_couplers_to_m02_regslice_RRESP),
        .s_axi_rvalid(m02_couplers_to_m02_regslice_RVALID),
        .s_axi_wdata(m02_couplers_to_m02_regslice_WDATA),
        .s_axi_wlast(m02_couplers_to_m02_regslice_WLAST),
        .s_axi_wready(m02_couplers_to_m02_regslice_WREADY),
        .s_axi_wstrb(m02_couplers_to_m02_regslice_WSTRB),
        .s_axi_wvalid(m02_couplers_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_KLFR1P
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
  wire [63:0]m03_couplers_to_m03_regslice_ARADDR;
  wire [1:0]m03_couplers_to_m03_regslice_ARBURST;
  wire [3:0]m03_couplers_to_m03_regslice_ARCACHE;
  wire [5:0]m03_couplers_to_m03_regslice_ARID;
  wire [7:0]m03_couplers_to_m03_regslice_ARLEN;
  wire [0:0]m03_couplers_to_m03_regslice_ARLOCK;
  wire [2:0]m03_couplers_to_m03_regslice_ARPROT;
  wire [3:0]m03_couplers_to_m03_regslice_ARQOS;
  wire m03_couplers_to_m03_regslice_ARREADY;
  wire [3:0]m03_couplers_to_m03_regslice_ARREGION;
  wire [2:0]m03_couplers_to_m03_regslice_ARSIZE;
  wire m03_couplers_to_m03_regslice_ARVALID;
  wire [63:0]m03_couplers_to_m03_regslice_AWADDR;
  wire [1:0]m03_couplers_to_m03_regslice_AWBURST;
  wire [3:0]m03_couplers_to_m03_regslice_AWCACHE;
  wire [5:0]m03_couplers_to_m03_regslice_AWID;
  wire [7:0]m03_couplers_to_m03_regslice_AWLEN;
  wire [0:0]m03_couplers_to_m03_regslice_AWLOCK;
  wire [2:0]m03_couplers_to_m03_regslice_AWPROT;
  wire [3:0]m03_couplers_to_m03_regslice_AWQOS;
  wire m03_couplers_to_m03_regslice_AWREADY;
  wire [3:0]m03_couplers_to_m03_regslice_AWREGION;
  wire [2:0]m03_couplers_to_m03_regslice_AWSIZE;
  wire m03_couplers_to_m03_regslice_AWVALID;
  wire [5:0]m03_couplers_to_m03_regslice_BID;
  wire m03_couplers_to_m03_regslice_BREADY;
  wire [1:0]m03_couplers_to_m03_regslice_BRESP;
  wire m03_couplers_to_m03_regslice_BVALID;
  wire [511:0]m03_couplers_to_m03_regslice_RDATA;
  wire [5:0]m03_couplers_to_m03_regslice_RID;
  wire m03_couplers_to_m03_regslice_RLAST;
  wire m03_couplers_to_m03_regslice_RREADY;
  wire [1:0]m03_couplers_to_m03_regslice_RRESP;
  wire m03_couplers_to_m03_regslice_RVALID;
  wire [511:0]m03_couplers_to_m03_regslice_WDATA;
  wire m03_couplers_to_m03_regslice_WLAST;
  wire m03_couplers_to_m03_regslice_WREADY;
  wire [63:0]m03_couplers_to_m03_regslice_WSTRB;
  wire m03_couplers_to_m03_regslice_WVALID;
  wire [63:0]m03_regslice_to_m03_couplers_ARADDR;
  wire [1:0]m03_regslice_to_m03_couplers_ARBURST;
  wire [3:0]m03_regslice_to_m03_couplers_ARCACHE;
  wire [5:0]m03_regslice_to_m03_couplers_ARID;
  wire [7:0]m03_regslice_to_m03_couplers_ARLEN;
  wire [0:0]m03_regslice_to_m03_couplers_ARLOCK;
  wire [2:0]m03_regslice_to_m03_couplers_ARPROT;
  wire [3:0]m03_regslice_to_m03_couplers_ARQOS;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire [3:0]m03_regslice_to_m03_couplers_ARREGION;
  wire [2:0]m03_regslice_to_m03_couplers_ARSIZE;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [63:0]m03_regslice_to_m03_couplers_AWADDR;
  wire [1:0]m03_regslice_to_m03_couplers_AWBURST;
  wire [3:0]m03_regslice_to_m03_couplers_AWCACHE;
  wire [5:0]m03_regslice_to_m03_couplers_AWID;
  wire [7:0]m03_regslice_to_m03_couplers_AWLEN;
  wire [0:0]m03_regslice_to_m03_couplers_AWLOCK;
  wire [2:0]m03_regslice_to_m03_couplers_AWPROT;
  wire [3:0]m03_regslice_to_m03_couplers_AWQOS;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire [3:0]m03_regslice_to_m03_couplers_AWREGION;
  wire [2:0]m03_regslice_to_m03_couplers_AWSIZE;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire [5:0]m03_regslice_to_m03_couplers_BID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [511:0]m03_regslice_to_m03_couplers_RDATA;
  wire [5:0]m03_regslice_to_m03_couplers_RID;
  wire m03_regslice_to_m03_couplers_RLAST;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [511:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WLAST;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [63:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m03_regslice_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m03_regslice_to_m03_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m03_regslice_to_m03_couplers_ARID;
  assign M_AXI_arlen[7:0] = m03_regslice_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = m03_regslice_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m03_regslice_to_m03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m03_regslice_to_m03_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m03_regslice_to_m03_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m03_regslice_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m03_regslice_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m03_regslice_to_m03_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m03_regslice_to_m03_couplers_AWID;
  assign M_AXI_awlen[7:0] = m03_regslice_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = m03_regslice_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m03_regslice_to_m03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m03_regslice_to_m03_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m03_regslice_to_m03_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m03_regslice_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wlast = m03_regslice_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_regslice_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_regslice_AWREADY;
  assign S_AXI_bid[5:0] = m03_couplers_to_m03_regslice_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_regslice_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_regslice_BVALID;
  assign S_AXI_rdata[511:0] = m03_couplers_to_m03_regslice_RDATA;
  assign S_AXI_rid[5:0] = m03_couplers_to_m03_regslice_RID;
  assign S_AXI_rlast = m03_couplers_to_m03_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_regslice_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_regslice_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_regslice_WREADY;
  assign m03_couplers_to_m03_regslice_ARADDR = S_AXI_araddr[63:0];
  assign m03_couplers_to_m03_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_m03_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_m03_regslice_ARID = S_AXI_arid[5:0];
  assign m03_couplers_to_m03_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_m03_regslice_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_m03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_m03_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_m03_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_m03_regslice_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign m03_couplers_to_m03_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_m03_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_m03_regslice_AWID = S_AXI_awid[5:0];
  assign m03_couplers_to_m03_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_m03_regslice_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_m03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_m03_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_m03_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_m03_regslice_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_regslice_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_regslice_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_regslice_WDATA = S_AXI_wdata[511:0];
  assign m03_couplers_to_m03_regslice_WLAST = S_AXI_wlast;
  assign m03_couplers_to_m03_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign m03_couplers_to_m03_regslice_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BID = M_AXI_bid[5:0];
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[511:0];
  assign m03_regslice_to_m03_couplers_RID = M_AXI_rid[5:0];
  assign m03_regslice_to_m03_couplers_RLAST = M_AXI_rlast;
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  axi_ic_ddr4_pcim_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arburst(m03_regslice_to_m03_couplers_ARBURST),
        .m_axi_arcache(m03_regslice_to_m03_couplers_ARCACHE),
        .m_axi_arid(m03_regslice_to_m03_couplers_ARID),
        .m_axi_arlen(m03_regslice_to_m03_couplers_ARLEN),
        .m_axi_arlock(m03_regslice_to_m03_couplers_ARLOCK),
        .m_axi_arprot(m03_regslice_to_m03_couplers_ARPROT),
        .m_axi_arqos(m03_regslice_to_m03_couplers_ARQOS),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arregion(m03_regslice_to_m03_couplers_ARREGION),
        .m_axi_arsize(m03_regslice_to_m03_couplers_ARSIZE),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awburst(m03_regslice_to_m03_couplers_AWBURST),
        .m_axi_awcache(m03_regslice_to_m03_couplers_AWCACHE),
        .m_axi_awid(m03_regslice_to_m03_couplers_AWID),
        .m_axi_awlen(m03_regslice_to_m03_couplers_AWLEN),
        .m_axi_awlock(m03_regslice_to_m03_couplers_AWLOCK),
        .m_axi_awprot(m03_regslice_to_m03_couplers_AWPROT),
        .m_axi_awqos(m03_regslice_to_m03_couplers_AWQOS),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awregion(m03_regslice_to_m03_couplers_AWREGION),
        .m_axi_awsize(m03_regslice_to_m03_couplers_AWSIZE),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bid(m03_regslice_to_m03_couplers_BID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rid(m03_regslice_to_m03_couplers_RID),
        .m_axi_rlast(m03_regslice_to_m03_couplers_RLAST),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wlast(m03_regslice_to_m03_couplers_WLAST),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_m03_regslice_ARADDR),
        .s_axi_arburst(m03_couplers_to_m03_regslice_ARBURST),
        .s_axi_arcache(m03_couplers_to_m03_regslice_ARCACHE),
        .s_axi_arid(m03_couplers_to_m03_regslice_ARID),
        .s_axi_arlen(m03_couplers_to_m03_regslice_ARLEN),
        .s_axi_arlock(m03_couplers_to_m03_regslice_ARLOCK),
        .s_axi_arprot(m03_couplers_to_m03_regslice_ARPROT),
        .s_axi_arqos(m03_couplers_to_m03_regslice_ARQOS),
        .s_axi_arready(m03_couplers_to_m03_regslice_ARREADY),
        .s_axi_arregion(m03_couplers_to_m03_regslice_ARREGION),
        .s_axi_arsize(m03_couplers_to_m03_regslice_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_m03_regslice_ARVALID),
        .s_axi_awaddr(m03_couplers_to_m03_regslice_AWADDR),
        .s_axi_awburst(m03_couplers_to_m03_regslice_AWBURST),
        .s_axi_awcache(m03_couplers_to_m03_regslice_AWCACHE),
        .s_axi_awid(m03_couplers_to_m03_regslice_AWID),
        .s_axi_awlen(m03_couplers_to_m03_regslice_AWLEN),
        .s_axi_awlock(m03_couplers_to_m03_regslice_AWLOCK),
        .s_axi_awprot(m03_couplers_to_m03_regslice_AWPROT),
        .s_axi_awqos(m03_couplers_to_m03_regslice_AWQOS),
        .s_axi_awready(m03_couplers_to_m03_regslice_AWREADY),
        .s_axi_awregion(m03_couplers_to_m03_regslice_AWREGION),
        .s_axi_awsize(m03_couplers_to_m03_regslice_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_m03_regslice_AWVALID),
        .s_axi_bid(m03_couplers_to_m03_regslice_BID),
        .s_axi_bready(m03_couplers_to_m03_regslice_BREADY),
        .s_axi_bresp(m03_couplers_to_m03_regslice_BRESP),
        .s_axi_bvalid(m03_couplers_to_m03_regslice_BVALID),
        .s_axi_rdata(m03_couplers_to_m03_regslice_RDATA),
        .s_axi_rid(m03_couplers_to_m03_regslice_RID),
        .s_axi_rlast(m03_couplers_to_m03_regslice_RLAST),
        .s_axi_rready(m03_couplers_to_m03_regslice_RREADY),
        .s_axi_rresp(m03_couplers_to_m03_regslice_RRESP),
        .s_axi_rvalid(m03_couplers_to_m03_regslice_RVALID),
        .s_axi_wdata(m03_couplers_to_m03_regslice_WDATA),
        .s_axi_wlast(m03_couplers_to_m03_regslice_WLAST),
        .s_axi_wready(m03_couplers_to_m03_regslice_WREADY),
        .s_axi_wstrb(m03_couplers_to_m03_regslice_WSTRB),
        .s_axi_wvalid(m03_couplers_to_m03_regslice_WVALID));
endmodule

module m04_couplers_imp_14S2U17
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
  wire [63:0]m04_couplers_to_m04_regslice_ARADDR;
  wire [1:0]m04_couplers_to_m04_regslice_ARBURST;
  wire [3:0]m04_couplers_to_m04_regslice_ARCACHE;
  wire [5:0]m04_couplers_to_m04_regslice_ARID;
  wire [7:0]m04_couplers_to_m04_regslice_ARLEN;
  wire [0:0]m04_couplers_to_m04_regslice_ARLOCK;
  wire [2:0]m04_couplers_to_m04_regslice_ARPROT;
  wire [3:0]m04_couplers_to_m04_regslice_ARQOS;
  wire m04_couplers_to_m04_regslice_ARREADY;
  wire [3:0]m04_couplers_to_m04_regslice_ARREGION;
  wire [2:0]m04_couplers_to_m04_regslice_ARSIZE;
  wire m04_couplers_to_m04_regslice_ARVALID;
  wire [63:0]m04_couplers_to_m04_regslice_AWADDR;
  wire [1:0]m04_couplers_to_m04_regslice_AWBURST;
  wire [3:0]m04_couplers_to_m04_regslice_AWCACHE;
  wire [5:0]m04_couplers_to_m04_regslice_AWID;
  wire [7:0]m04_couplers_to_m04_regslice_AWLEN;
  wire [0:0]m04_couplers_to_m04_regslice_AWLOCK;
  wire [2:0]m04_couplers_to_m04_regslice_AWPROT;
  wire [3:0]m04_couplers_to_m04_regslice_AWQOS;
  wire m04_couplers_to_m04_regslice_AWREADY;
  wire [3:0]m04_couplers_to_m04_regslice_AWREGION;
  wire [2:0]m04_couplers_to_m04_regslice_AWSIZE;
  wire m04_couplers_to_m04_regslice_AWVALID;
  wire [5:0]m04_couplers_to_m04_regslice_BID;
  wire m04_couplers_to_m04_regslice_BREADY;
  wire [1:0]m04_couplers_to_m04_regslice_BRESP;
  wire m04_couplers_to_m04_regslice_BVALID;
  wire [511:0]m04_couplers_to_m04_regslice_RDATA;
  wire [5:0]m04_couplers_to_m04_regslice_RID;
  wire m04_couplers_to_m04_regslice_RLAST;
  wire m04_couplers_to_m04_regslice_RREADY;
  wire [1:0]m04_couplers_to_m04_regslice_RRESP;
  wire m04_couplers_to_m04_regslice_RVALID;
  wire [511:0]m04_couplers_to_m04_regslice_WDATA;
  wire m04_couplers_to_m04_regslice_WLAST;
  wire m04_couplers_to_m04_regslice_WREADY;
  wire [63:0]m04_couplers_to_m04_regslice_WSTRB;
  wire m04_couplers_to_m04_regslice_WVALID;
  wire [63:0]m04_regslice_to_m04_couplers_ARADDR;
  wire [1:0]m04_regslice_to_m04_couplers_ARBURST;
  wire [3:0]m04_regslice_to_m04_couplers_ARCACHE;
  wire [5:0]m04_regslice_to_m04_couplers_ARID;
  wire [7:0]m04_regslice_to_m04_couplers_ARLEN;
  wire [0:0]m04_regslice_to_m04_couplers_ARLOCK;
  wire [2:0]m04_regslice_to_m04_couplers_ARPROT;
  wire [3:0]m04_regslice_to_m04_couplers_ARQOS;
  wire m04_regslice_to_m04_couplers_ARREADY;
  wire [3:0]m04_regslice_to_m04_couplers_ARREGION;
  wire [2:0]m04_regslice_to_m04_couplers_ARSIZE;
  wire m04_regslice_to_m04_couplers_ARVALID;
  wire [63:0]m04_regslice_to_m04_couplers_AWADDR;
  wire [1:0]m04_regslice_to_m04_couplers_AWBURST;
  wire [3:0]m04_regslice_to_m04_couplers_AWCACHE;
  wire [5:0]m04_regslice_to_m04_couplers_AWID;
  wire [7:0]m04_regslice_to_m04_couplers_AWLEN;
  wire [0:0]m04_regslice_to_m04_couplers_AWLOCK;
  wire [2:0]m04_regslice_to_m04_couplers_AWPROT;
  wire [3:0]m04_regslice_to_m04_couplers_AWQOS;
  wire m04_regslice_to_m04_couplers_AWREADY;
  wire [3:0]m04_regslice_to_m04_couplers_AWREGION;
  wire [2:0]m04_regslice_to_m04_couplers_AWSIZE;
  wire m04_regslice_to_m04_couplers_AWVALID;
  wire [5:0]m04_regslice_to_m04_couplers_BID;
  wire m04_regslice_to_m04_couplers_BREADY;
  wire [1:0]m04_regslice_to_m04_couplers_BRESP;
  wire m04_regslice_to_m04_couplers_BVALID;
  wire [511:0]m04_regslice_to_m04_couplers_RDATA;
  wire [5:0]m04_regslice_to_m04_couplers_RID;
  wire m04_regslice_to_m04_couplers_RLAST;
  wire m04_regslice_to_m04_couplers_RREADY;
  wire [1:0]m04_regslice_to_m04_couplers_RRESP;
  wire m04_regslice_to_m04_couplers_RVALID;
  wire [511:0]m04_regslice_to_m04_couplers_WDATA;
  wire m04_regslice_to_m04_couplers_WLAST;
  wire m04_regslice_to_m04_couplers_WREADY;
  wire [63:0]m04_regslice_to_m04_couplers_WSTRB;
  wire m04_regslice_to_m04_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m04_regslice_to_m04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m04_regslice_to_m04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m04_regslice_to_m04_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m04_regslice_to_m04_couplers_ARID;
  assign M_AXI_arlen[7:0] = m04_regslice_to_m04_couplers_ARLEN;
  assign M_AXI_arlock[0] = m04_regslice_to_m04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m04_regslice_to_m04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m04_regslice_to_m04_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m04_regslice_to_m04_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m04_regslice_to_m04_couplers_ARSIZE;
  assign M_AXI_arvalid = m04_regslice_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m04_regslice_to_m04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m04_regslice_to_m04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m04_regslice_to_m04_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m04_regslice_to_m04_couplers_AWID;
  assign M_AXI_awlen[7:0] = m04_regslice_to_m04_couplers_AWLEN;
  assign M_AXI_awlock[0] = m04_regslice_to_m04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m04_regslice_to_m04_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m04_regslice_to_m04_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m04_regslice_to_m04_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m04_regslice_to_m04_couplers_AWSIZE;
  assign M_AXI_awvalid = m04_regslice_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_regslice_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_regslice_to_m04_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m04_regslice_to_m04_couplers_WDATA;
  assign M_AXI_wlast = m04_regslice_to_m04_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m04_regslice_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_regslice_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_regslice_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_regslice_AWREADY;
  assign S_AXI_bid[5:0] = m04_couplers_to_m04_regslice_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_regslice_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_regslice_BVALID;
  assign S_AXI_rdata[511:0] = m04_couplers_to_m04_regslice_RDATA;
  assign S_AXI_rid[5:0] = m04_couplers_to_m04_regslice_RID;
  assign S_AXI_rlast = m04_couplers_to_m04_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_regslice_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_regslice_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_regslice_WREADY;
  assign m04_couplers_to_m04_regslice_ARADDR = S_AXI_araddr[63:0];
  assign m04_couplers_to_m04_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_m04_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_m04_regslice_ARID = S_AXI_arid[5:0];
  assign m04_couplers_to_m04_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_m04_regslice_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_m04_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_m04_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_m04_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_m04_regslice_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign m04_couplers_to_m04_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_m04_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_m04_regslice_AWID = S_AXI_awid[5:0];
  assign m04_couplers_to_m04_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_m04_regslice_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_m04_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_m04_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_m04_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_m04_regslice_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_regslice_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_regslice_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_regslice_WDATA = S_AXI_wdata[511:0];
  assign m04_couplers_to_m04_regslice_WLAST = S_AXI_wlast;
  assign m04_couplers_to_m04_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign m04_couplers_to_m04_regslice_WVALID = S_AXI_wvalid;
  assign m04_regslice_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_regslice_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_regslice_to_m04_couplers_BID = M_AXI_bid[5:0];
  assign m04_regslice_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_regslice_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_regslice_to_m04_couplers_RDATA = M_AXI_rdata[511:0];
  assign m04_regslice_to_m04_couplers_RID = M_AXI_rid[5:0];
  assign m04_regslice_to_m04_couplers_RLAST = M_AXI_rlast;
  assign m04_regslice_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_regslice_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_regslice_to_m04_couplers_WREADY = M_AXI_wready;
  axi_ic_ddr4_pcim_m04_regslice_0 m04_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m04_regslice_to_m04_couplers_ARADDR),
        .m_axi_arburst(m04_regslice_to_m04_couplers_ARBURST),
        .m_axi_arcache(m04_regslice_to_m04_couplers_ARCACHE),
        .m_axi_arid(m04_regslice_to_m04_couplers_ARID),
        .m_axi_arlen(m04_regslice_to_m04_couplers_ARLEN),
        .m_axi_arlock(m04_regslice_to_m04_couplers_ARLOCK),
        .m_axi_arprot(m04_regslice_to_m04_couplers_ARPROT),
        .m_axi_arqos(m04_regslice_to_m04_couplers_ARQOS),
        .m_axi_arready(m04_regslice_to_m04_couplers_ARREADY),
        .m_axi_arregion(m04_regslice_to_m04_couplers_ARREGION),
        .m_axi_arsize(m04_regslice_to_m04_couplers_ARSIZE),
        .m_axi_arvalid(m04_regslice_to_m04_couplers_ARVALID),
        .m_axi_awaddr(m04_regslice_to_m04_couplers_AWADDR),
        .m_axi_awburst(m04_regslice_to_m04_couplers_AWBURST),
        .m_axi_awcache(m04_regslice_to_m04_couplers_AWCACHE),
        .m_axi_awid(m04_regslice_to_m04_couplers_AWID),
        .m_axi_awlen(m04_regslice_to_m04_couplers_AWLEN),
        .m_axi_awlock(m04_regslice_to_m04_couplers_AWLOCK),
        .m_axi_awprot(m04_regslice_to_m04_couplers_AWPROT),
        .m_axi_awqos(m04_regslice_to_m04_couplers_AWQOS),
        .m_axi_awready(m04_regslice_to_m04_couplers_AWREADY),
        .m_axi_awregion(m04_regslice_to_m04_couplers_AWREGION),
        .m_axi_awsize(m04_regslice_to_m04_couplers_AWSIZE),
        .m_axi_awvalid(m04_regslice_to_m04_couplers_AWVALID),
        .m_axi_bid(m04_regslice_to_m04_couplers_BID),
        .m_axi_bready(m04_regslice_to_m04_couplers_BREADY),
        .m_axi_bresp(m04_regslice_to_m04_couplers_BRESP),
        .m_axi_bvalid(m04_regslice_to_m04_couplers_BVALID),
        .m_axi_rdata(m04_regslice_to_m04_couplers_RDATA),
        .m_axi_rid(m04_regslice_to_m04_couplers_RID),
        .m_axi_rlast(m04_regslice_to_m04_couplers_RLAST),
        .m_axi_rready(m04_regslice_to_m04_couplers_RREADY),
        .m_axi_rresp(m04_regslice_to_m04_couplers_RRESP),
        .m_axi_rvalid(m04_regslice_to_m04_couplers_RVALID),
        .m_axi_wdata(m04_regslice_to_m04_couplers_WDATA),
        .m_axi_wlast(m04_regslice_to_m04_couplers_WLAST),
        .m_axi_wready(m04_regslice_to_m04_couplers_WREADY),
        .m_axi_wstrb(m04_regslice_to_m04_couplers_WSTRB),
        .m_axi_wvalid(m04_regslice_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_m04_regslice_ARADDR),
        .s_axi_arburst(m04_couplers_to_m04_regslice_ARBURST),
        .s_axi_arcache(m04_couplers_to_m04_regslice_ARCACHE),
        .s_axi_arid(m04_couplers_to_m04_regslice_ARID),
        .s_axi_arlen(m04_couplers_to_m04_regslice_ARLEN),
        .s_axi_arlock(m04_couplers_to_m04_regslice_ARLOCK),
        .s_axi_arprot(m04_couplers_to_m04_regslice_ARPROT),
        .s_axi_arqos(m04_couplers_to_m04_regslice_ARQOS),
        .s_axi_arready(m04_couplers_to_m04_regslice_ARREADY),
        .s_axi_arregion(m04_couplers_to_m04_regslice_ARREGION),
        .s_axi_arsize(m04_couplers_to_m04_regslice_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_m04_regslice_ARVALID),
        .s_axi_awaddr(m04_couplers_to_m04_regslice_AWADDR),
        .s_axi_awburst(m04_couplers_to_m04_regslice_AWBURST),
        .s_axi_awcache(m04_couplers_to_m04_regslice_AWCACHE),
        .s_axi_awid(m04_couplers_to_m04_regslice_AWID),
        .s_axi_awlen(m04_couplers_to_m04_regslice_AWLEN),
        .s_axi_awlock(m04_couplers_to_m04_regslice_AWLOCK),
        .s_axi_awprot(m04_couplers_to_m04_regslice_AWPROT),
        .s_axi_awqos(m04_couplers_to_m04_regslice_AWQOS),
        .s_axi_awready(m04_couplers_to_m04_regslice_AWREADY),
        .s_axi_awregion(m04_couplers_to_m04_regslice_AWREGION),
        .s_axi_awsize(m04_couplers_to_m04_regslice_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_m04_regslice_AWVALID),
        .s_axi_bid(m04_couplers_to_m04_regslice_BID),
        .s_axi_bready(m04_couplers_to_m04_regslice_BREADY),
        .s_axi_bresp(m04_couplers_to_m04_regslice_BRESP),
        .s_axi_bvalid(m04_couplers_to_m04_regslice_BVALID),
        .s_axi_rdata(m04_couplers_to_m04_regslice_RDATA),
        .s_axi_rid(m04_couplers_to_m04_regslice_RID),
        .s_axi_rlast(m04_couplers_to_m04_regslice_RLAST),
        .s_axi_rready(m04_couplers_to_m04_regslice_RREADY),
        .s_axi_rresp(m04_couplers_to_m04_regslice_RRESP),
        .s_axi_rvalid(m04_couplers_to_m04_regslice_RVALID),
        .s_axi_wdata(m04_couplers_to_m04_regslice_WDATA),
        .s_axi_wlast(m04_couplers_to_m04_regslice_WLAST),
        .s_axi_wready(m04_couplers_to_m04_regslice_WREADY),
        .s_axi_wstrb(m04_couplers_to_m04_regslice_WSTRB),
        .s_axi_wvalid(m04_couplers_to_m04_regslice_WVALID));
endmodule

module s00_couplers_imp_1BHE5NN
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

  wire S_ACLK_1;
  wire S_ARESETN_1;
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
  wire [63:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [5:0]s00_regslice_to_s00_couplers_ARID;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [63:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [5:0]s00_regslice_to_s00_couplers_AWID;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire [5:0]s00_regslice_to_s00_couplers_BID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire [5:0]s00_regslice_to_s00_couplers_RID;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = s00_regslice_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = s00_regslice_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
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
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  axi_ic_ddr4_pcim_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_regslice_to_s00_couplers_ARID),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_regslice_to_s00_couplers_AWID),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_regslice_to_s00_couplers_BID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rid(s00_regslice_to_s00_couplers_RID),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
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
