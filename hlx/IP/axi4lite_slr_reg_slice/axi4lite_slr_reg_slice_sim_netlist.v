// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Jun 21 16:39:47 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /home/sanjayr/projects/Illumina/U200_Eclipse/THIN_SHELL/u200_hlx_v16_ASYNC_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2020_1/hlx/IP/axi4lite_slr_reg_slice/axi4lite_slr_reg_slice_sim_netlist.v
// Design      : axi4lite_slr_reg_slice
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi4lite_slr_reg_slice,axi_register_slice_v2_1_21_axi_register_slice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_register_slice_v2_1_21_axi_register_slice,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module axi4lite_slr_reg_slice
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
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
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXI:S_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_NUM_SLR_CROSSINGS = "0" *) 
  (* C_PIPELINES_MASTER_AR = "0" *) 
  (* C_PIPELINES_MASTER_AW = "0" *) 
  (* C_PIPELINES_MASTER_B = "0" *) 
  (* C_PIPELINES_MASTER_R = "0" *) 
  (* C_PIPELINES_MASTER_W = "0" *) 
  (* C_PIPELINES_MIDDLE_AR = "0" *) 
  (* C_PIPELINES_MIDDLE_AW = "0" *) 
  (* C_PIPELINES_MIDDLE_B = "0" *) 
  (* C_PIPELINES_MIDDLE_R = "0" *) 
  (* C_PIPELINES_MIDDLE_W = "0" *) 
  (* C_PIPELINES_SLAVE_AR = "0" *) 
  (* C_PIPELINES_SLAVE_AW = "0" *) 
  (* C_PIPELINES_SLAVE_B = "0" *) 
  (* C_PIPELINES_SLAVE_R = "0" *) 
  (* C_PIPELINES_SLAVE_W = "0" *) 
  (* C_REG_CONFIG_AR = "12" *) 
  (* C_REG_CONFIG_AW = "12" *) 
  (* C_REG_CONFIG_B = "12" *) 
  (* C_REG_CONFIG_R = "12" *) 
  (* C_REG_CONFIG_W = "12" *) 
  (* C_RESERVE_MODE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_AXI_ARADDR_INDEX = "0" *) 
  (* G_AXI_ARADDR_WIDTH = "32" *) 
  (* G_AXI_ARBURST_INDEX = "35" *) 
  (* G_AXI_ARBURST_WIDTH = "0" *) 
  (* G_AXI_ARCACHE_INDEX = "35" *) 
  (* G_AXI_ARCACHE_WIDTH = "0" *) 
  (* G_AXI_ARID_INDEX = "35" *) 
  (* G_AXI_ARID_WIDTH = "0" *) 
  (* G_AXI_ARLEN_INDEX = "35" *) 
  (* G_AXI_ARLEN_WIDTH = "0" *) 
  (* G_AXI_ARLOCK_INDEX = "35" *) 
  (* G_AXI_ARLOCK_WIDTH = "0" *) 
  (* G_AXI_ARPAYLOAD_WIDTH = "35" *) 
  (* G_AXI_ARPROT_INDEX = "32" *) 
  (* G_AXI_ARPROT_WIDTH = "3" *) 
  (* G_AXI_ARQOS_INDEX = "35" *) 
  (* G_AXI_ARQOS_WIDTH = "0" *) 
  (* G_AXI_ARREGION_INDEX = "35" *) 
  (* G_AXI_ARREGION_WIDTH = "0" *) 
  (* G_AXI_ARSIZE_INDEX = "35" *) 
  (* G_AXI_ARSIZE_WIDTH = "0" *) 
  (* G_AXI_ARUSER_INDEX = "35" *) 
  (* G_AXI_ARUSER_WIDTH = "0" *) 
  (* G_AXI_AWADDR_INDEX = "0" *) 
  (* G_AXI_AWADDR_WIDTH = "32" *) 
  (* G_AXI_AWBURST_INDEX = "35" *) 
  (* G_AXI_AWBURST_WIDTH = "0" *) 
  (* G_AXI_AWCACHE_INDEX = "35" *) 
  (* G_AXI_AWCACHE_WIDTH = "0" *) 
  (* G_AXI_AWID_INDEX = "35" *) 
  (* G_AXI_AWID_WIDTH = "0" *) 
  (* G_AXI_AWLEN_INDEX = "35" *) 
  (* G_AXI_AWLEN_WIDTH = "0" *) 
  (* G_AXI_AWLOCK_INDEX = "35" *) 
  (* G_AXI_AWLOCK_WIDTH = "0" *) 
  (* G_AXI_AWPAYLOAD_WIDTH = "35" *) 
  (* G_AXI_AWPROT_INDEX = "32" *) 
  (* G_AXI_AWPROT_WIDTH = "3" *) 
  (* G_AXI_AWQOS_INDEX = "35" *) 
  (* G_AXI_AWQOS_WIDTH = "0" *) 
  (* G_AXI_AWREGION_INDEX = "35" *) 
  (* G_AXI_AWREGION_WIDTH = "0" *) 
  (* G_AXI_AWSIZE_INDEX = "35" *) 
  (* G_AXI_AWSIZE_WIDTH = "0" *) 
  (* G_AXI_AWUSER_INDEX = "35" *) 
  (* G_AXI_AWUSER_WIDTH = "0" *) 
  (* G_AXI_BID_INDEX = "2" *) 
  (* G_AXI_BID_WIDTH = "0" *) 
  (* G_AXI_BPAYLOAD_WIDTH = "2" *) 
  (* G_AXI_BRESP_INDEX = "0" *) 
  (* G_AXI_BRESP_WIDTH = "2" *) 
  (* G_AXI_BUSER_INDEX = "2" *) 
  (* G_AXI_BUSER_WIDTH = "0" *) 
  (* G_AXI_RDATA_INDEX = "0" *) 
  (* G_AXI_RDATA_WIDTH = "32" *) 
  (* G_AXI_RID_INDEX = "34" *) 
  (* G_AXI_RID_WIDTH = "0" *) 
  (* G_AXI_RLAST_INDEX = "34" *) 
  (* G_AXI_RLAST_WIDTH = "0" *) 
  (* G_AXI_RPAYLOAD_WIDTH = "34" *) 
  (* G_AXI_RRESP_INDEX = "32" *) 
  (* G_AXI_RRESP_WIDTH = "2" *) 
  (* G_AXI_RUSER_INDEX = "34" *) 
  (* G_AXI_RUSER_WIDTH = "0" *) 
  (* G_AXI_WDATA_INDEX = "0" *) 
  (* G_AXI_WDATA_WIDTH = "32" *) 
  (* G_AXI_WID_INDEX = "36" *) 
  (* G_AXI_WID_WIDTH = "0" *) 
  (* G_AXI_WLAST_INDEX = "36" *) 
  (* G_AXI_WLAST_WIDTH = "0" *) 
  (* G_AXI_WPAYLOAD_WIDTH = "36" *) 
  (* G_AXI_WSTRB_INDEX = "32" *) 
  (* G_AXI_WSTRB_WIDTH = "4" *) 
  (* G_AXI_WUSER_INDEX = "36" *) 
  (* G_AXI_WUSER_WIDTH = "0" *) 
  (* P_FORWARD = "0" *) 
  (* P_RESPONSE = "1" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axi_register_slice inst
       (.aclk(aclk),
        .aclk2x(1'b0),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "virtexuplus" *) 
(* C_NUM_SLR_CROSSINGS = "0" *) (* C_PIPELINES_MASTER_AR = "0" *) (* C_PIPELINES_MASTER_AW = "0" *) 
(* C_PIPELINES_MASTER_B = "0" *) (* C_PIPELINES_MASTER_R = "0" *) (* C_PIPELINES_MASTER_W = "0" *) 
(* C_PIPELINES_MIDDLE_AR = "0" *) (* C_PIPELINES_MIDDLE_AW = "0" *) (* C_PIPELINES_MIDDLE_B = "0" *) 
(* C_PIPELINES_MIDDLE_R = "0" *) (* C_PIPELINES_MIDDLE_W = "0" *) (* C_PIPELINES_SLAVE_AR = "0" *) 
(* C_PIPELINES_SLAVE_AW = "0" *) (* C_PIPELINES_SLAVE_B = "0" *) (* C_PIPELINES_SLAVE_R = "0" *) 
(* C_PIPELINES_SLAVE_W = "0" *) (* C_REG_CONFIG_AR = "12" *) (* C_REG_CONFIG_AW = "12" *) 
(* C_REG_CONFIG_B = "12" *) (* C_REG_CONFIG_R = "12" *) (* C_REG_CONFIG_W = "12" *) 
(* C_RESERVE_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* G_AXI_ARADDR_INDEX = "0" *) 
(* G_AXI_ARADDR_WIDTH = "32" *) (* G_AXI_ARBURST_INDEX = "35" *) (* G_AXI_ARBURST_WIDTH = "0" *) 
(* G_AXI_ARCACHE_INDEX = "35" *) (* G_AXI_ARCACHE_WIDTH = "0" *) (* G_AXI_ARID_INDEX = "35" *) 
(* G_AXI_ARID_WIDTH = "0" *) (* G_AXI_ARLEN_INDEX = "35" *) (* G_AXI_ARLEN_WIDTH = "0" *) 
(* G_AXI_ARLOCK_INDEX = "35" *) (* G_AXI_ARLOCK_WIDTH = "0" *) (* G_AXI_ARPAYLOAD_WIDTH = "35" *) 
(* G_AXI_ARPROT_INDEX = "32" *) (* G_AXI_ARPROT_WIDTH = "3" *) (* G_AXI_ARQOS_INDEX = "35" *) 
(* G_AXI_ARQOS_WIDTH = "0" *) (* G_AXI_ARREGION_INDEX = "35" *) (* G_AXI_ARREGION_WIDTH = "0" *) 
(* G_AXI_ARSIZE_INDEX = "35" *) (* G_AXI_ARSIZE_WIDTH = "0" *) (* G_AXI_ARUSER_INDEX = "35" *) 
(* G_AXI_ARUSER_WIDTH = "0" *) (* G_AXI_AWADDR_INDEX = "0" *) (* G_AXI_AWADDR_WIDTH = "32" *) 
(* G_AXI_AWBURST_INDEX = "35" *) (* G_AXI_AWBURST_WIDTH = "0" *) (* G_AXI_AWCACHE_INDEX = "35" *) 
(* G_AXI_AWCACHE_WIDTH = "0" *) (* G_AXI_AWID_INDEX = "35" *) (* G_AXI_AWID_WIDTH = "0" *) 
(* G_AXI_AWLEN_INDEX = "35" *) (* G_AXI_AWLEN_WIDTH = "0" *) (* G_AXI_AWLOCK_INDEX = "35" *) 
(* G_AXI_AWLOCK_WIDTH = "0" *) (* G_AXI_AWPAYLOAD_WIDTH = "35" *) (* G_AXI_AWPROT_INDEX = "32" *) 
(* G_AXI_AWPROT_WIDTH = "3" *) (* G_AXI_AWQOS_INDEX = "35" *) (* G_AXI_AWQOS_WIDTH = "0" *) 
(* G_AXI_AWREGION_INDEX = "35" *) (* G_AXI_AWREGION_WIDTH = "0" *) (* G_AXI_AWSIZE_INDEX = "35" *) 
(* G_AXI_AWSIZE_WIDTH = "0" *) (* G_AXI_AWUSER_INDEX = "35" *) (* G_AXI_AWUSER_WIDTH = "0" *) 
(* G_AXI_BID_INDEX = "2" *) (* G_AXI_BID_WIDTH = "0" *) (* G_AXI_BPAYLOAD_WIDTH = "2" *) 
(* G_AXI_BRESP_INDEX = "0" *) (* G_AXI_BRESP_WIDTH = "2" *) (* G_AXI_BUSER_INDEX = "2" *) 
(* G_AXI_BUSER_WIDTH = "0" *) (* G_AXI_RDATA_INDEX = "0" *) (* G_AXI_RDATA_WIDTH = "32" *) 
(* G_AXI_RID_INDEX = "34" *) (* G_AXI_RID_WIDTH = "0" *) (* G_AXI_RLAST_INDEX = "34" *) 
(* G_AXI_RLAST_WIDTH = "0" *) (* G_AXI_RPAYLOAD_WIDTH = "34" *) (* G_AXI_RRESP_INDEX = "32" *) 
(* G_AXI_RRESP_WIDTH = "2" *) (* G_AXI_RUSER_INDEX = "34" *) (* G_AXI_RUSER_WIDTH = "0" *) 
(* G_AXI_WDATA_INDEX = "0" *) (* G_AXI_WDATA_WIDTH = "32" *) (* G_AXI_WID_INDEX = "36" *) 
(* G_AXI_WID_WIDTH = "0" *) (* G_AXI_WLAST_INDEX = "36" *) (* G_AXI_WLAST_WIDTH = "0" *) 
(* G_AXI_WPAYLOAD_WIDTH = "36" *) (* G_AXI_WSTRB_INDEX = "32" *) (* G_AXI_WSTRB_WIDTH = "4" *) 
(* G_AXI_WUSER_INDEX = "36" *) (* G_AXI_WUSER_WIDTH = "0" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axi_register_slice" *) 
(* P_FORWARD = "0" *) (* P_RESPONSE = "1" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axi_register_slice
   (aclk,
    aclk2x,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aclk2x;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire \ar12.slr_arhandshake ;
  wire \ar12.slr_arready ;
  wire \ar12.slr_master_ar_n_10 ;
  wire \ar12.slr_master_ar_n_11 ;
  wire \ar12.slr_master_ar_n_12 ;
  wire \ar12.slr_master_ar_n_13 ;
  wire \ar12.slr_master_ar_n_14 ;
  wire \ar12.slr_master_ar_n_15 ;
  wire \ar12.slr_master_ar_n_16 ;
  wire \ar12.slr_master_ar_n_17 ;
  wire \ar12.slr_master_ar_n_18 ;
  wire \ar12.slr_master_ar_n_19 ;
  wire \ar12.slr_master_ar_n_2 ;
  wire \ar12.slr_master_ar_n_20 ;
  wire \ar12.slr_master_ar_n_21 ;
  wire \ar12.slr_master_ar_n_22 ;
  wire \ar12.slr_master_ar_n_23 ;
  wire \ar12.slr_master_ar_n_24 ;
  wire \ar12.slr_master_ar_n_25 ;
  wire \ar12.slr_master_ar_n_26 ;
  wire \ar12.slr_master_ar_n_27 ;
  wire \ar12.slr_master_ar_n_28 ;
  wire \ar12.slr_master_ar_n_29 ;
  wire \ar12.slr_master_ar_n_3 ;
  wire \ar12.slr_master_ar_n_30 ;
  wire \ar12.slr_master_ar_n_31 ;
  wire \ar12.slr_master_ar_n_32 ;
  wire \ar12.slr_master_ar_n_33 ;
  wire \ar12.slr_master_ar_n_34 ;
  wire \ar12.slr_master_ar_n_35 ;
  wire \ar12.slr_master_ar_n_36 ;
  wire \ar12.slr_master_ar_n_4 ;
  wire \ar12.slr_master_ar_n_5 ;
  wire \ar12.slr_master_ar_n_6 ;
  wire \ar12.slr_master_ar_n_7 ;
  wire \ar12.slr_master_ar_n_8 ;
  wire \ar12.slr_master_ar_n_9 ;
  wire aresetn;
  wire \aw12.slr_awhandshake ;
  wire \aw12.slr_awready ;
  wire \b12.slr_bhandshake ;
  wire \b12.slr_bready ;
  wire \b12.slr_slave_b_n_2 ;
  wire \b12.slr_slave_b_n_3 ;
  wire [34:0]\common.laguna_m_payload_i ;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire \r12.slr_master_r_n_2 ;
  wire \r12.slr_rhandshake ;
  wire \r12.slr_rready ;
  wire \r12.slr_slave_r_n_10 ;
  wire \r12.slr_slave_r_n_11 ;
  wire \r12.slr_slave_r_n_12 ;
  wire \r12.slr_slave_r_n_13 ;
  wire \r12.slr_slave_r_n_14 ;
  wire \r12.slr_slave_r_n_15 ;
  wire \r12.slr_slave_r_n_16 ;
  wire \r12.slr_slave_r_n_17 ;
  wire \r12.slr_slave_r_n_18 ;
  wire \r12.slr_slave_r_n_19 ;
  wire \r12.slr_slave_r_n_2 ;
  wire \r12.slr_slave_r_n_20 ;
  wire \r12.slr_slave_r_n_21 ;
  wire \r12.slr_slave_r_n_22 ;
  wire \r12.slr_slave_r_n_23 ;
  wire \r12.slr_slave_r_n_24 ;
  wire \r12.slr_slave_r_n_25 ;
  wire \r12.slr_slave_r_n_26 ;
  wire \r12.slr_slave_r_n_27 ;
  wire \r12.slr_slave_r_n_28 ;
  wire \r12.slr_slave_r_n_29 ;
  wire \r12.slr_slave_r_n_3 ;
  wire \r12.slr_slave_r_n_30 ;
  wire \r12.slr_slave_r_n_31 ;
  wire \r12.slr_slave_r_n_32 ;
  wire \r12.slr_slave_r_n_33 ;
  wire \r12.slr_slave_r_n_34 ;
  wire \r12.slr_slave_r_n_35 ;
  wire \r12.slr_slave_r_n_4 ;
  wire \r12.slr_slave_r_n_5 ;
  wire \r12.slr_slave_r_n_6 ;
  wire \r12.slr_slave_r_n_7 ;
  wire \r12.slr_slave_r_n_8 ;
  wire \r12.slr_slave_r_n_9 ;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \w12.slr_master_w_n_10 ;
  wire \w12.slr_master_w_n_11 ;
  wire \w12.slr_master_w_n_12 ;
  wire \w12.slr_master_w_n_13 ;
  wire \w12.slr_master_w_n_14 ;
  wire \w12.slr_master_w_n_15 ;
  wire \w12.slr_master_w_n_16 ;
  wire \w12.slr_master_w_n_17 ;
  wire \w12.slr_master_w_n_18 ;
  wire \w12.slr_master_w_n_19 ;
  wire \w12.slr_master_w_n_2 ;
  wire \w12.slr_master_w_n_20 ;
  wire \w12.slr_master_w_n_21 ;
  wire \w12.slr_master_w_n_22 ;
  wire \w12.slr_master_w_n_23 ;
  wire \w12.slr_master_w_n_24 ;
  wire \w12.slr_master_w_n_25 ;
  wire \w12.slr_master_w_n_26 ;
  wire \w12.slr_master_w_n_27 ;
  wire \w12.slr_master_w_n_28 ;
  wire \w12.slr_master_w_n_29 ;
  wire \w12.slr_master_w_n_3 ;
  wire \w12.slr_master_w_n_30 ;
  wire \w12.slr_master_w_n_31 ;
  wire \w12.slr_master_w_n_32 ;
  wire \w12.slr_master_w_n_33 ;
  wire \w12.slr_master_w_n_34 ;
  wire \w12.slr_master_w_n_35 ;
  wire \w12.slr_master_w_n_36 ;
  wire \w12.slr_master_w_n_37 ;
  wire \w12.slr_master_w_n_4 ;
  wire \w12.slr_master_w_n_5 ;
  wire \w12.slr_master_w_n_6 ;
  wire \w12.slr_master_w_n_7 ;
  wire \w12.slr_master_w_n_8 ;
  wire \w12.slr_master_w_n_9 ;
  wire \w12.slr_whandshake ;
  wire \w12.slr_wready ;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const1> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const1> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const1> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const1> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr \ar12.slr_master_ar 
       (.D({s_axi_arprot,s_axi_araddr}),
        .Q({\ar12.slr_master_ar_n_2 ,\ar12.slr_master_ar_n_3 ,\ar12.slr_master_ar_n_4 ,\ar12.slr_master_ar_n_5 ,\ar12.slr_master_ar_n_6 ,\ar12.slr_master_ar_n_7 ,\ar12.slr_master_ar_n_8 ,\ar12.slr_master_ar_n_9 ,\ar12.slr_master_ar_n_10 ,\ar12.slr_master_ar_n_11 ,\ar12.slr_master_ar_n_12 ,\ar12.slr_master_ar_n_13 ,\ar12.slr_master_ar_n_14 ,\ar12.slr_master_ar_n_15 ,\ar12.slr_master_ar_n_16 ,\ar12.slr_master_ar_n_17 ,\ar12.slr_master_ar_n_18 ,\ar12.slr_master_ar_n_19 ,\ar12.slr_master_ar_n_20 ,\ar12.slr_master_ar_n_21 ,\ar12.slr_master_ar_n_22 ,\ar12.slr_master_ar_n_23 ,\ar12.slr_master_ar_n_24 ,\ar12.slr_master_ar_n_25 ,\ar12.slr_master_ar_n_26 ,\ar12.slr_master_ar_n_27 ,\ar12.slr_master_ar_n_28 ,\ar12.slr_master_ar_n_29 ,\ar12.slr_master_ar_n_30 ,\ar12.slr_master_ar_n_31 ,\ar12.slr_master_ar_n_32 ,\ar12.slr_master_ar_n_33 ,\ar12.slr_master_ar_n_34 ,\ar12.slr_master_ar_n_35 ,\ar12.slr_master_ar_n_36 }),
        .aclk(aclk),
        .\ar12.slr_arhandshake (\ar12.slr_arhandshake ),
        .aresetn(aresetn),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .out(\ar12.slr_arready ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr \ar12.slr_slave_ar 
       (.D({\ar12.slr_master_ar_n_2 ,\ar12.slr_master_ar_n_3 ,\ar12.slr_master_ar_n_4 ,\ar12.slr_master_ar_n_5 ,\ar12.slr_master_ar_n_6 ,\ar12.slr_master_ar_n_7 ,\ar12.slr_master_ar_n_8 ,\ar12.slr_master_ar_n_9 ,\ar12.slr_master_ar_n_10 ,\ar12.slr_master_ar_n_11 ,\ar12.slr_master_ar_n_12 ,\ar12.slr_master_ar_n_13 ,\ar12.slr_master_ar_n_14 ,\ar12.slr_master_ar_n_15 ,\ar12.slr_master_ar_n_16 ,\ar12.slr_master_ar_n_17 ,\ar12.slr_master_ar_n_18 ,\ar12.slr_master_ar_n_19 ,\ar12.slr_master_ar_n_20 ,\ar12.slr_master_ar_n_21 ,\ar12.slr_master_ar_n_22 ,\ar12.slr_master_ar_n_23 ,\ar12.slr_master_ar_n_24 ,\ar12.slr_master_ar_n_25 ,\ar12.slr_master_ar_n_26 ,\ar12.slr_master_ar_n_27 ,\ar12.slr_master_ar_n_28 ,\ar12.slr_master_ar_n_29 ,\ar12.slr_master_ar_n_30 ,\ar12.slr_master_ar_n_31 ,\ar12.slr_master_ar_n_32 ,\ar12.slr_master_ar_n_33 ,\ar12.slr_master_ar_n_34 ,\ar12.slr_master_ar_n_35 ,\ar12.slr_master_ar_n_36 }),
        .Q({m_axi_arprot,m_axi_araddr}),
        .aclk(aclk),
        .\ar12.slr_arhandshake (\ar12.slr_arhandshake ),
        .asyncclear_mvalid_inst(m_axi_arvalid),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .m_axi_arready(m_axi_arready),
        .out(\ar12.slr_arready ));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr_0 \aw12.slr_master_aw 
       (.D({s_axi_awprot,s_axi_awaddr}),
        .Q(\common.laguna_m_payload_i ),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aw12.slr_awhandshake (\aw12.slr_awhandshake ),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .out(\aw12.slr_awready ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr_1 \aw12.slr_slave_aw 
       (.D(\common.laguna_m_payload_i ),
        .Q({m_axi_awprot,m_axi_awaddr}),
        .aclk(aclk),
        .asyncclear_mvalid_inst(m_axi_awvalid),
        .\aw12.slr_awhandshake (\aw12.slr_awhandshake ),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .m_axi_awready(m_axi_awready),
        .out(\aw12.slr_awready ));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr__parameterized1 \b12.slr_master_b 
       (.Q({\b12.slr_slave_b_n_2 ,\b12.slr_slave_b_n_3 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(s_axi_bvalid),
        .\b12.slr_bhandshake (\b12.slr_bhandshake ),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .out(\b12.slr_bready ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr__parameterized1 \b12.slr_slave_b 
       (.Q({\b12.slr_slave_b_n_2 ,\b12.slr_slave_b_n_3 }),
        .aclk(aclk),
        .\b12.slr_bhandshake (\b12.slr_bhandshake ),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(\b12.slr_bready ));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr__parameterized2 \r12.slr_master_r 
       (.Q({\r12.slr_slave_r_n_2 ,\r12.slr_slave_r_n_3 ,\r12.slr_slave_r_n_4 ,\r12.slr_slave_r_n_5 ,\r12.slr_slave_r_n_6 ,\r12.slr_slave_r_n_7 ,\r12.slr_slave_r_n_8 ,\r12.slr_slave_r_n_9 ,\r12.slr_slave_r_n_10 ,\r12.slr_slave_r_n_11 ,\r12.slr_slave_r_n_12 ,\r12.slr_slave_r_n_13 ,\r12.slr_slave_r_n_14 ,\r12.slr_slave_r_n_15 ,\r12.slr_slave_r_n_16 ,\r12.slr_slave_r_n_17 ,\r12.slr_slave_r_n_18 ,\r12.slr_slave_r_n_19 ,\r12.slr_slave_r_n_20 ,\r12.slr_slave_r_n_21 ,\r12.slr_slave_r_n_22 ,\r12.slr_slave_r_n_23 ,\r12.slr_slave_r_n_24 ,\r12.slr_slave_r_n_25 ,\r12.slr_slave_r_n_26 ,\r12.slr_slave_r_n_27 ,\r12.slr_slave_r_n_28 ,\r12.slr_slave_r_n_29 ,\r12.slr_slave_r_n_30 ,\r12.slr_slave_r_n_31 ,\r12.slr_slave_r_n_32 ,\r12.slr_slave_r_n_33 ,\r12.slr_slave_r_n_34 ,\r12.slr_slave_r_n_35 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\r12.slr_master_r_n_2 ),
        .asyncclear_mvalid_inst(s_axi_rvalid),
        .\mesg_reg_reg[33] ({s_axi_rresp,s_axi_rdata}),
        .out(\r12.slr_rready ),
        .\r12.slr_rhandshake (\r12.slr_rhandshake ),
        .s_axi_rready(s_axi_rready));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr__parameterized2 \r12.slr_slave_r 
       (.D({m_axi_rresp,m_axi_rdata}),
        .Q({\r12.slr_slave_r_n_2 ,\r12.slr_slave_r_n_3 ,\r12.slr_slave_r_n_4 ,\r12.slr_slave_r_n_5 ,\r12.slr_slave_r_n_6 ,\r12.slr_slave_r_n_7 ,\r12.slr_slave_r_n_8 ,\r12.slr_slave_r_n_9 ,\r12.slr_slave_r_n_10 ,\r12.slr_slave_r_n_11 ,\r12.slr_slave_r_n_12 ,\r12.slr_slave_r_n_13 ,\r12.slr_slave_r_n_14 ,\r12.slr_slave_r_n_15 ,\r12.slr_slave_r_n_16 ,\r12.slr_slave_r_n_17 ,\r12.slr_slave_r_n_18 ,\r12.slr_slave_r_n_19 ,\r12.slr_slave_r_n_20 ,\r12.slr_slave_r_n_21 ,\r12.slr_slave_r_n_22 ,\r12.slr_slave_r_n_23 ,\r12.slr_slave_r_n_24 ,\r12.slr_slave_r_n_25 ,\r12.slr_slave_r_n_26 ,\r12.slr_slave_r_n_27 ,\r12.slr_slave_r_n_28 ,\r12.slr_slave_r_n_29 ,\r12.slr_slave_r_n_30 ,\r12.slr_slave_r_n_31 ,\r12.slr_slave_r_n_32 ,\r12.slr_slave_r_n_33 ,\r12.slr_slave_r_n_34 ,\r12.slr_slave_r_n_35 }),
        .aclk(aclk),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(\r12.slr_rready ),
        .\r12.slr_rhandshake (\r12.slr_rhandshake ));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr__parameterized0 \w12.slr_master_w 
       (.D({s_axi_wstrb,s_axi_wdata}),
        .Q({\w12.slr_master_w_n_2 ,\w12.slr_master_w_n_3 ,\w12.slr_master_w_n_4 ,\w12.slr_master_w_n_5 ,\w12.slr_master_w_n_6 ,\w12.slr_master_w_n_7 ,\w12.slr_master_w_n_8 ,\w12.slr_master_w_n_9 ,\w12.slr_master_w_n_10 ,\w12.slr_master_w_n_11 ,\w12.slr_master_w_n_12 ,\w12.slr_master_w_n_13 ,\w12.slr_master_w_n_14 ,\w12.slr_master_w_n_15 ,\w12.slr_master_w_n_16 ,\w12.slr_master_w_n_17 ,\w12.slr_master_w_n_18 ,\w12.slr_master_w_n_19 ,\w12.slr_master_w_n_20 ,\w12.slr_master_w_n_21 ,\w12.slr_master_w_n_22 ,\w12.slr_master_w_n_23 ,\w12.slr_master_w_n_24 ,\w12.slr_master_w_n_25 ,\w12.slr_master_w_n_26 ,\w12.slr_master_w_n_27 ,\w12.slr_master_w_n_28 ,\w12.slr_master_w_n_29 ,\w12.slr_master_w_n_30 ,\w12.slr_master_w_n_31 ,\w12.slr_master_w_n_32 ,\w12.slr_master_w_n_33 ,\w12.slr_master_w_n_34 ,\w12.slr_master_w_n_35 ,\w12.slr_master_w_n_36 ,\w12.slr_master_w_n_37 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .out(\w12.slr_wready ),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\w12.slr_whandshake (\w12.slr_whandshake ));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr__parameterized0 \w12.slr_slave_w 
       (.D({\w12.slr_master_w_n_2 ,\w12.slr_master_w_n_3 ,\w12.slr_master_w_n_4 ,\w12.slr_master_w_n_5 ,\w12.slr_master_w_n_6 ,\w12.slr_master_w_n_7 ,\w12.slr_master_w_n_8 ,\w12.slr_master_w_n_9 ,\w12.slr_master_w_n_10 ,\w12.slr_master_w_n_11 ,\w12.slr_master_w_n_12 ,\w12.slr_master_w_n_13 ,\w12.slr_master_w_n_14 ,\w12.slr_master_w_n_15 ,\w12.slr_master_w_n_16 ,\w12.slr_master_w_n_17 ,\w12.slr_master_w_n_18 ,\w12.slr_master_w_n_19 ,\w12.slr_master_w_n_20 ,\w12.slr_master_w_n_21 ,\w12.slr_master_w_n_22 ,\w12.slr_master_w_n_23 ,\w12.slr_master_w_n_24 ,\w12.slr_master_w_n_25 ,\w12.slr_master_w_n_26 ,\w12.slr_master_w_n_27 ,\w12.slr_master_w_n_28 ,\w12.slr_master_w_n_29 ,\w12.slr_master_w_n_30 ,\w12.slr_master_w_n_31 ,\w12.slr_master_w_n_32 ,\w12.slr_master_w_n_33 ,\w12.slr_master_w_n_34 ,\w12.slr_master_w_n_35 ,\w12.slr_master_w_n_36 ,\w12.slr_master_w_n_37 }),
        .Q({m_axi_wstrb,m_axi_wdata}),
        .aclk(aclk),
        .asyncclear_mvalid_inst(m_axi_wvalid),
        .\common.areset_d_reg_0 (\r12.slr_master_r_n_2 ),
        .m_axi_wready(m_axi_wready),
        .out(\w12.slr_wready ),
        .\w12.slr_whandshake (\w12.slr_whandshake ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_reg_srl_fifo" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo
   (asyncclear_mvalid_inst_0,
    m_axi_awready_0,
    \mesg_reg_reg[34]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    m_axi_awready,
    out);
  output asyncclear_mvalid_inst_0;
  output m_axi_awready_0;
  output [34:0]\mesg_reg_reg[34]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [34:0]Q;
  input m_axi_awready;
  input out;

  wire [34:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1_n_0;
  wire asyncclear_state1_inst_i_1_n_0;
  wire asyncclear_state1_inst_i_3_n_0;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1_n_0 ;
  wire \fifoaddr[1]_i_1_n_0 ;
  wire \fifoaddr[2]_i_1_n_0 ;
  wire \fifoaddr[3]_i_1_n_0 ;
  wire \fifoaddr[3]_i_2_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_axi_awready;
  wire m_axi_awready_0;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__0_n_0 ;
  wire \mesg_reg[10]_i_1_n_0 ;
  wire \mesg_reg[11]_i_1_n_0 ;
  wire \mesg_reg[12]_i_1_n_0 ;
  wire \mesg_reg[13]_i_1_n_0 ;
  wire \mesg_reg[14]_i_1_n_0 ;
  wire \mesg_reg[15]_i_1_n_0 ;
  wire \mesg_reg[16]_i_1_n_0 ;
  wire \mesg_reg[17]_i_1_n_0 ;
  wire \mesg_reg[18]_i_1_n_0 ;
  wire \mesg_reg[19]_i_1_n_0 ;
  wire \mesg_reg[1]_i_1__0_n_0 ;
  wire \mesg_reg[20]_i_1_n_0 ;
  wire \mesg_reg[21]_i_1_n_0 ;
  wire \mesg_reg[22]_i_1_n_0 ;
  wire \mesg_reg[23]_i_1_n_0 ;
  wire \mesg_reg[24]_i_1_n_0 ;
  wire \mesg_reg[25]_i_1_n_0 ;
  wire \mesg_reg[26]_i_1_n_0 ;
  wire \mesg_reg[27]_i_1_n_0 ;
  wire \mesg_reg[28]_i_1_n_0 ;
  wire \mesg_reg[29]_i_1_n_0 ;
  wire \mesg_reg[2]_i_1_n_0 ;
  wire \mesg_reg[30]_i_1_n_0 ;
  wire \mesg_reg[31]_i_2_n_0 ;
  wire \mesg_reg[32]_i_1_n_0 ;
  wire \mesg_reg[33]_i_1_n_0 ;
  wire \mesg_reg[34]_i_1_n_0 ;
  wire \mesg_reg[3]_i_1_n_0 ;
  wire \mesg_reg[4]_i_1_n_0 ;
  wire \mesg_reg[5]_i_1_n_0 ;
  wire \mesg_reg[6]_i_1_n_0 ;
  wire \mesg_reg[7]_i_1_n_0 ;
  wire \mesg_reg[8]_i_1_n_0 ;
  wire \mesg_reg[9]_i_1_n_0 ;
  wire [34:0]\mesg_reg_reg[34]_0 ;
  wire out;
  wire p_0_out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_out;
  wire p_20_out;
  wire p_21_out;
  wire p_22_out;
  wire p_23_out;
  wire p_24_out;
  wire p_25_out;
  wire p_26_out;
  wire p_27_out;
  wire p_28_out;
  wire p_29_out;
  wire p_2_out;
  wire p_30_out;
  wire p_31_out;
  wire p_32_out;
  wire p_33_out;
  wire p_34_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1
       (.I0(m_axi_awready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state0_inst_i_1_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(m_axi_awready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state1_inst_i_1_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2
       (.I0(m_axi_awready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1 
       (.I0(m_axi_awready),
        .I1(asyncclear_mvalid_inst_0),
        .O(m_axi_awready_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_awready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_awready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[3]_i_2_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__0 
       (.I0(p_34_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1 
       (.I0(p_24_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1 
       (.I0(p_23_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1 
       (.I0(p_22_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1 
       (.I0(p_21_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1 
       (.I0(p_20_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1 
       (.I0(p_19_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1 
       (.I0(p_18_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1 
       (.I0(p_17_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1 
       (.I0(p_16_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1 
       (.I0(p_15_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__0 
       (.I0(p_33_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1 
       (.I0(p_14_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1 
       (.I0(p_13_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1 
       (.I0(p_12_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1 
       (.I0(p_11_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_1 
       (.I0(p_10_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1 
       (.I0(p_9_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1 
       (.I0(p_8_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1 
       (.I0(p_7_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[28]_i_1 
       (.I0(p_6_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[28]),
        .O(\mesg_reg[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[29]_i_1 
       (.I0(p_5_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[29]),
        .O(\mesg_reg[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1 
       (.I0(p_32_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[30]_i_1 
       (.I0(p_4_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[30]),
        .O(\mesg_reg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[31]_i_1 
       (.I0(m_axi_awready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[31]_i_2 
       (.I0(p_3_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[31]),
        .O(\mesg_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[32]_i_1 
       (.I0(p_2_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[32]),
        .O(\mesg_reg[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[33]_i_1 
       (.I0(p_1_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[33]),
        .O(\mesg_reg[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[34]_i_1 
       (.I0(p_0_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[34]),
        .O(\mesg_reg[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1 
       (.I0(p_31_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1 
       (.I0(p_30_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1 
       (.I0(p_29_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1 
       (.I0(p_28_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1 
       (.I0(p_27_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1 
       (.I0(p_26_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1 
       (.I0(p_25_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[28] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[28]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \mesg_reg_reg[29] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[29]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [29]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[30] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[30]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [30]),
        .R(1'b0));
  FDRE \mesg_reg_reg[31] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[31]_i_2_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [31]),
        .R(1'b0));
  FDRE \mesg_reg_reg[32] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[32]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [32]),
        .R(1'b0));
  FDRE \mesg_reg_reg[33] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[33]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [33]),
        .R(1'b0));
  FDRE \mesg_reg_reg[34] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[34]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [34]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__108 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(p_34_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__118 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(p_24_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__119 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(p_23_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__120 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(p_22_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__121 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(p_21_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__122 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(p_20_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__123 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(p_19_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__124 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(p_18_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__125 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(p_17_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__126 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(p_16_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__127 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(p_15_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__109 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(p_33_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__128 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(p_14_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__129 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(p_13_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__130 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(p_12_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__131 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(p_11_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__132 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(p_10_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__133 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(p_9_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__134 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(p_8_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__135 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(p_7_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__136 \srl[28].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[28]),
        .q(p_6_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__137 \srl[29].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[29]),
        .q(p_5_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__110 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(p_32_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__138 \srl[30].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[30]),
        .q(p_4_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__139 \srl[31].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[31]),
        .q(p_3_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__140 \srl[32].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[32]),
        .q(p_2_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__141 \srl[33].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[33]),
        .q(p_1_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__1 \srl[34].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[34]),
        .q(p_0_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__111 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(p_31_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__112 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(p_30_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__113 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(p_29_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__114 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(p_28_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__115 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(p_27_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__116 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(p_26_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__117 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(p_25_out));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_reg_srl_fifo" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo_2
   (asyncclear_mvalid_inst_0,
    m_axi_arready_0,
    \mesg_reg_reg[34]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    m_axi_arready,
    out);
  output asyncclear_mvalid_inst_0;
  output m_axi_arready_0;
  output [34:0]\mesg_reg_reg[34]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [34:0]Q;
  input m_axi_arready;
  input out;

  wire [34:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__2_n_0;
  wire asyncclear_state1_inst_i_1__2_n_0;
  wire asyncclear_state1_inst_i_3__2_n_0;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__2_n_0 ;
  wire \fifoaddr[1]_i_1__2_n_0 ;
  wire \fifoaddr[2]_i_1__2_n_0 ;
  wire \fifoaddr[3]_i_1__2_n_0 ;
  wire \fifoaddr[3]_i_2__2_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_axi_arready;
  wire m_axi_arready_0;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__2_n_0 ;
  wire \mesg_reg[10]_i_1__1_n_0 ;
  wire \mesg_reg[11]_i_1__1_n_0 ;
  wire \mesg_reg[12]_i_1__1_n_0 ;
  wire \mesg_reg[13]_i_1__1_n_0 ;
  wire \mesg_reg[14]_i_1__1_n_0 ;
  wire \mesg_reg[15]_i_1__1_n_0 ;
  wire \mesg_reg[16]_i_1__1_n_0 ;
  wire \mesg_reg[17]_i_1__1_n_0 ;
  wire \mesg_reg[18]_i_1__1_n_0 ;
  wire \mesg_reg[19]_i_1__1_n_0 ;
  wire \mesg_reg[1]_i_1__2_n_0 ;
  wire \mesg_reg[20]_i_1__1_n_0 ;
  wire \mesg_reg[21]_i_1__1_n_0 ;
  wire \mesg_reg[22]_i_1__1_n_0 ;
  wire \mesg_reg[23]_i_1__1_n_0 ;
  wire \mesg_reg[24]_i_1__1_n_0 ;
  wire \mesg_reg[25]_i_1__1_n_0 ;
  wire \mesg_reg[26]_i_1__1_n_0 ;
  wire \mesg_reg[27]_i_1__1_n_0 ;
  wire \mesg_reg[28]_i_1__1_n_0 ;
  wire \mesg_reg[29]_i_1__1_n_0 ;
  wire \mesg_reg[2]_i_1__1_n_0 ;
  wire \mesg_reg[30]_i_1__1_n_0 ;
  wire \mesg_reg[31]_i_2__1_n_0 ;
  wire \mesg_reg[32]_i_1__1_n_0 ;
  wire \mesg_reg[33]_i_1__1_n_0 ;
  wire \mesg_reg[34]_i_1__1_n_0 ;
  wire \mesg_reg[3]_i_1__1_n_0 ;
  wire \mesg_reg[4]_i_1__1_n_0 ;
  wire \mesg_reg[5]_i_1__1_n_0 ;
  wire \mesg_reg[6]_i_1__1_n_0 ;
  wire \mesg_reg[7]_i_1__1_n_0 ;
  wire \mesg_reg[8]_i_1__1_n_0 ;
  wire \mesg_reg[9]_i_1__1_n_0 ;
  wire [34:0]\mesg_reg_reg[34]_0 ;
  wire out;
  wire p_0_out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_out;
  wire p_20_out;
  wire p_21_out;
  wire p_22_out;
  wire p_23_out;
  wire p_24_out;
  wire p_25_out;
  wire p_26_out;
  wire p_27_out;
  wire p_28_out;
  wire p_29_out;
  wire p_2_out;
  wire p_30_out;
  wire p_31_out;
  wire p_32_out;
  wire p_33_out;
  wire p_34_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__2
       (.I0(m_axi_arready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state0_inst_i_1__2_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__2
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(m_axi_arready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state1_inst_i_1__2_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__2
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__2_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__2
       (.I0(m_axi_arready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__2
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__2 
       (.I0(m_axi_arready),
        .I1(asyncclear_mvalid_inst_0),
        .O(m_axi_arready_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__2 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__2 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__2 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_arready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__2 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__2 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_arready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[0]_i_1__2_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[1]_i_1__2_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[2]_i_1__2_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[3]_i_2__2_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__2 
       (.I0(p_34_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1__1 
       (.I0(p_24_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1__1 
       (.I0(p_23_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1__1 
       (.I0(p_22_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1__1 
       (.I0(p_21_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1__1 
       (.I0(p_20_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1__1 
       (.I0(p_19_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1__1 
       (.I0(p_18_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1__1 
       (.I0(p_17_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1__1 
       (.I0(p_16_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1__1 
       (.I0(p_15_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__2 
       (.I0(p_33_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1__1 
       (.I0(p_14_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1__1 
       (.I0(p_13_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1__1 
       (.I0(p_12_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1__1 
       (.I0(p_11_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_1__1 
       (.I0(p_10_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1__1 
       (.I0(p_9_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1__1 
       (.I0(p_8_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1__1 
       (.I0(p_7_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[28]_i_1__1 
       (.I0(p_6_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[28]),
        .O(\mesg_reg[28]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[29]_i_1__1 
       (.I0(p_5_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[29]),
        .O(\mesg_reg[29]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1__1 
       (.I0(p_32_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[30]_i_1__1 
       (.I0(p_4_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[30]),
        .O(\mesg_reg[30]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[31]_i_1__1 
       (.I0(m_axi_arready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[31]_i_2__1 
       (.I0(p_3_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[31]),
        .O(\mesg_reg[31]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[32]_i_1__1 
       (.I0(p_2_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[32]),
        .O(\mesg_reg[32]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[33]_i_1__1 
       (.I0(p_1_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[33]),
        .O(\mesg_reg[33]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[34]_i_1__1 
       (.I0(p_0_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[34]),
        .O(\mesg_reg[34]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1__1 
       (.I0(p_31_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1__1 
       (.I0(p_30_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1__1 
       (.I0(p_29_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1__1 
       (.I0(p_28_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1__1 
       (.I0(p_27_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1__1 
       (.I0(p_26_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1__1 
       (.I0(p_25_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1__1_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[28] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[28]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \mesg_reg_reg[29] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[29]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [29]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[30] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[30]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [30]),
        .R(1'b0));
  FDRE \mesg_reg_reg[31] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[31]_i_2__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [31]),
        .R(1'b0));
  FDRE \mesg_reg_reg[32] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[32]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [32]),
        .R(1'b0));
  FDRE \mesg_reg_reg[33] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[33]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [33]),
        .R(1'b0));
  FDRE \mesg_reg_reg[34] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[34]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [34]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[34]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__2 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(p_34_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__12 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(p_24_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__13 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(p_23_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__14 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(p_22_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__15 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(p_21_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__16 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(p_20_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__17 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(p_19_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__18 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(p_18_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__19 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(p_17_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__20 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(p_16_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__21 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(p_15_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__3 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(p_33_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__22 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(p_14_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__23 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(p_13_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__24 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(p_12_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__25 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(p_11_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__26 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(p_10_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__27 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(p_9_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__28 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(p_8_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__29 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(p_7_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__30 \srl[28].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[28]),
        .q(p_6_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__31 \srl[29].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[29]),
        .q(p_5_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__4 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(p_32_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__32 \srl[30].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[30]),
        .q(p_4_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__33 \srl[31].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[31]),
        .q(p_3_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__34 \srl[32].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[32]),
        .q(p_2_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__35 \srl[33].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[33]),
        .q(p_1_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__36 \srl[34].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[34]),
        .q(p_0_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__5 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(p_31_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__6 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(p_30_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__7 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(p_29_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__8 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(p_28_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__9 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(p_27_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__10 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(p_26_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__11 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(p_25_out));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_reg_srl_fifo" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo__parameterized0
   (asyncclear_mvalid_inst_0,
    m_axi_wready_0,
    \mesg_reg_reg[35]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    m_axi_wready,
    out);
  output asyncclear_mvalid_inst_0;
  output m_axi_wready_0;
  output [35:0]\mesg_reg_reg[35]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [35:0]Q;
  input m_axi_wready;
  input out;

  wire [35:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__0_n_0;
  wire asyncclear_state1_inst_i_1__0_n_0;
  wire asyncclear_state1_inst_i_3__0_n_0;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__0_n_0 ;
  wire \fifoaddr[1]_i_1__0_n_0 ;
  wire \fifoaddr[2]_i_1__0_n_0 ;
  wire \fifoaddr[3]_i_1__0_n_0 ;
  wire \fifoaddr[3]_i_2__0_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_axi_wready;
  wire m_axi_wready_0;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__1_n_0 ;
  wire \mesg_reg[10]_i_1__0_n_0 ;
  wire \mesg_reg[11]_i_1__0_n_0 ;
  wire \mesg_reg[12]_i_1__0_n_0 ;
  wire \mesg_reg[13]_i_1__0_n_0 ;
  wire \mesg_reg[14]_i_1__0_n_0 ;
  wire \mesg_reg[15]_i_1__0_n_0 ;
  wire \mesg_reg[16]_i_1__0_n_0 ;
  wire \mesg_reg[17]_i_1__0_n_0 ;
  wire \mesg_reg[18]_i_1__0_n_0 ;
  wire \mesg_reg[19]_i_1__0_n_0 ;
  wire \mesg_reg[1]_i_1__1_n_0 ;
  wire \mesg_reg[20]_i_1__0_n_0 ;
  wire \mesg_reg[21]_i_1__0_n_0 ;
  wire \mesg_reg[22]_i_1__0_n_0 ;
  wire \mesg_reg[23]_i_1__0_n_0 ;
  wire \mesg_reg[24]_i_1__0_n_0 ;
  wire \mesg_reg[25]_i_1__0_n_0 ;
  wire \mesg_reg[26]_i_1__0_n_0 ;
  wire \mesg_reg[27]_i_1__0_n_0 ;
  wire \mesg_reg[28]_i_1__0_n_0 ;
  wire \mesg_reg[29]_i_1__0_n_0 ;
  wire \mesg_reg[2]_i_1__0_n_0 ;
  wire \mesg_reg[30]_i_1__0_n_0 ;
  wire \mesg_reg[31]_i_2__0_n_0 ;
  wire \mesg_reg[32]_i_1__0_n_0 ;
  wire \mesg_reg[33]_i_1__0_n_0 ;
  wire \mesg_reg[34]_i_1__0_n_0 ;
  wire \mesg_reg[35]_i_1_n_0 ;
  wire \mesg_reg[3]_i_1__0_n_0 ;
  wire \mesg_reg[4]_i_1__0_n_0 ;
  wire \mesg_reg[5]_i_1__0_n_0 ;
  wire \mesg_reg[6]_i_1__0_n_0 ;
  wire \mesg_reg[7]_i_1__0_n_0 ;
  wire \mesg_reg[8]_i_1__0_n_0 ;
  wire \mesg_reg[9]_i_1__0_n_0 ;
  wire [35:0]\mesg_reg_reg[35]_0 ;
  wire out;
  wire p_0_out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_out;
  wire p_20_out;
  wire p_21_out;
  wire p_22_out;
  wire p_23_out;
  wire p_24_out;
  wire p_25_out;
  wire p_26_out;
  wire p_27_out;
  wire p_28_out;
  wire p_29_out;
  wire p_2_out;
  wire p_30_out;
  wire p_31_out;
  wire p_32_out;
  wire p_33_out;
  wire p_34_out;
  wire p_35_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__0
       (.I0(m_axi_wready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state0_inst_i_1__0_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__0
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(m_axi_wready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__0_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state1_inst_i_1__0_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__0
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__0_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__0
       (.I0(m_axi_wready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__0
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__0 
       (.I0(m_axi_wready),
        .I1(asyncclear_mvalid_inst_0),
        .O(m_axi_wready_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__0 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__0 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__0 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_wready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__0 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__0 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_wready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[2]_i_1__0_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[3]_i_2__0_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__1 
       (.I0(p_35_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1__0 
       (.I0(p_25_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1__0 
       (.I0(p_24_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1__0 
       (.I0(p_23_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1__0 
       (.I0(p_22_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1__0 
       (.I0(p_21_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1__0 
       (.I0(p_20_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1__0 
       (.I0(p_19_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1__0 
       (.I0(p_18_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1__0 
       (.I0(p_17_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1__0 
       (.I0(p_16_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__1 
       (.I0(p_34_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1__0 
       (.I0(p_15_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1__0 
       (.I0(p_14_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1__0 
       (.I0(p_13_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1__0 
       (.I0(p_12_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_1__0 
       (.I0(p_11_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1__0 
       (.I0(p_10_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1__0 
       (.I0(p_9_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1__0 
       (.I0(p_8_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[28]_i_1__0 
       (.I0(p_7_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[28]),
        .O(\mesg_reg[28]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[29]_i_1__0 
       (.I0(p_6_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[29]),
        .O(\mesg_reg[29]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1__0 
       (.I0(p_33_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[30]_i_1__0 
       (.I0(p_5_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[30]),
        .O(\mesg_reg[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[31]_i_1__0 
       (.I0(m_axi_wready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[31]_i_2__0 
       (.I0(p_4_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[31]),
        .O(\mesg_reg[31]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[32]_i_1__0 
       (.I0(p_3_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[32]),
        .O(\mesg_reg[32]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[33]_i_1__0 
       (.I0(p_2_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[33]),
        .O(\mesg_reg[33]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[34]_i_1__0 
       (.I0(p_1_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[34]),
        .O(\mesg_reg[34]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[35]_i_1 
       (.I0(p_0_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[35]),
        .O(\mesg_reg[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1__0 
       (.I0(p_32_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1__0 
       (.I0(p_31_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1__0 
       (.I0(p_30_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1__0 
       (.I0(p_29_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1__0 
       (.I0(p_28_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1__0 
       (.I0(p_27_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1__0 
       (.I0(p_26_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1__0_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[28] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[28]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [28]),
        .R(1'b0));
  FDRE \mesg_reg_reg[29] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[29]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [29]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[30] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[30]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [30]),
        .R(1'b0));
  FDRE \mesg_reg_reg[31] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[31]_i_2__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [31]),
        .R(1'b0));
  FDRE \mesg_reg_reg[32] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[32]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [32]),
        .R(1'b0));
  FDRE \mesg_reg_reg[33] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[33]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [33]),
        .R(1'b0));
  FDRE \mesg_reg_reg[34] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[34]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [34]),
        .R(1'b0));
  FDRE \mesg_reg_reg[35] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[35]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [35]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__37 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(p_35_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__47 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(p_25_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__48 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(p_24_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__49 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(p_23_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__50 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(p_22_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__51 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(p_21_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__52 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(p_20_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__53 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(p_19_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__54 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(p_18_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__55 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(p_17_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__56 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(p_16_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__38 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(p_34_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__57 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(p_15_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__58 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(p_14_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__59 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(p_13_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__60 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(p_12_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__61 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(p_11_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__62 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(p_10_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__63 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(p_9_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__64 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(p_8_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__65 \srl[28].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[28]),
        .q(p_7_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__66 \srl[29].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[29]),
        .q(p_6_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__39 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(p_33_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__67 \srl[30].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[30]),
        .q(p_5_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__68 \srl[31].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[31]),
        .q(p_4_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__69 \srl[32].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[32]),
        .q(p_3_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__70 \srl[33].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[33]),
        .q(p_2_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__71 \srl[34].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[34]),
        .q(p_1_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__72 \srl[35].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[35]),
        .q(p_0_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__40 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(p_32_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__41 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(p_31_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__42 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(p_30_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__43 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(p_29_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__44 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(p_28_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__45 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(p_27_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__46 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(p_26_out));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_reg_srl_fifo" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo__parameterized1
   (asyncclear_mvalid_inst_0,
    s_axi_bready_0,
    s_axi_bresp,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    s_axi_bready,
    out);
  output asyncclear_mvalid_inst_0;
  output s_axi_bready_0;
  output [1:0]s_axi_bresp;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [1:0]Q;
  input s_axi_bready;
  input out;

  wire [1:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__1_n_0;
  wire asyncclear_state1_inst_i_1__1_n_0;
  wire asyncclear_state1_inst_i_3__1_n_0;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__1_n_0 ;
  wire \fifoaddr[1]_i_1__1_n_0 ;
  wire \fifoaddr[2]_i_1__1_n_0 ;
  wire \fifoaddr[3]_i_1__1_n_0 ;
  wire \fifoaddr[3]_i_2__1_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1_n_0 ;
  wire \mesg_reg[1]_i_2_n_0 ;
  wire out;
  wire p_0_out;
  wire p_1_out;
  wire s_axi_bready;
  wire s_axi_bready_0;
  wire [1:0]s_axi_bresp;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__1
       (.I0(s_axi_bready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state0_inst_i_1__1_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__1
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(s_axi_bready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state1_inst_i_1__1_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__1
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__1_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__1
       (.I0(s_axi_bready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__1
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__1 
       (.I0(s_axi_bready),
        .I1(asyncclear_mvalid_inst_0),
        .O(s_axi_bready_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__1 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__1 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__1 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_bready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__1 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__1 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_bready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[0]_i_1__1_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[1]_i_1__1_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[2]_i_1__1_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[3]_i_2__1_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1 
       (.I0(p_1_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[1]_i_1 
       (.I0(s_axi_bready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_2 
       (.I0(p_0_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_2_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1_n_0 ),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_2_n_0 ),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__73 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(p_1_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__74 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(p_0_out));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_reg_srl_fifo" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo__parameterized2
   (asyncclear_mvalid_inst_0,
    s_axi_rready_0,
    \mesg_reg_reg[33]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    s_axi_rready,
    out);
  output asyncclear_mvalid_inst_0;
  output s_axi_rready_0;
  output [33:0]\mesg_reg_reg[33]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [33:0]Q;
  input s_axi_rready;
  input out;

  wire [33:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__3_n_0;
  wire asyncclear_state1_inst_i_1__3_n_0;
  wire asyncclear_state1_inst_i_3__3_n_0;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__3_n_0 ;
  wire \fifoaddr[1]_i_1__3_n_0 ;
  wire \fifoaddr[2]_i_1__3_n_0 ;
  wire \fifoaddr[3]_i_1__3_n_0 ;
  wire \fifoaddr[3]_i_2__3_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__3_n_0 ;
  wire \mesg_reg[10]_i_1__2_n_0 ;
  wire \mesg_reg[11]_i_1__2_n_0 ;
  wire \mesg_reg[12]_i_1__2_n_0 ;
  wire \mesg_reg[13]_i_1__2_n_0 ;
  wire \mesg_reg[14]_i_1__2_n_0 ;
  wire \mesg_reg[15]_i_1__2_n_0 ;
  wire \mesg_reg[16]_i_1__2_n_0 ;
  wire \mesg_reg[17]_i_1__2_n_0 ;
  wire \mesg_reg[18]_i_1__2_n_0 ;
  wire \mesg_reg[19]_i_1__2_n_0 ;
  wire \mesg_reg[1]_i_1__3_n_0 ;
  wire \mesg_reg[20]_i_1__2_n_0 ;
  wire \mesg_reg[21]_i_1__2_n_0 ;
  wire \mesg_reg[22]_i_1__2_n_0 ;
  wire \mesg_reg[23]_i_1__2_n_0 ;
  wire \mesg_reg[24]_i_1__2_n_0 ;
  wire \mesg_reg[25]_i_1__2_n_0 ;
  wire \mesg_reg[26]_i_1__2_n_0 ;
  wire \mesg_reg[27]_i_1__2_n_0 ;
  wire \mesg_reg[28]_i_1__2_n_0 ;
  wire \mesg_reg[29]_i_1__2_n_0 ;
  wire \mesg_reg[2]_i_1__2_n_0 ;
  wire \mesg_reg[30]_i_1__2_n_0 ;
  wire \mesg_reg[31]_i_2__2_n_0 ;
  wire \mesg_reg[32]_i_1__2_n_0 ;
  wire \mesg_reg[33]_i_1__2_n_0 ;
  wire \mesg_reg[3]_i_1__2_n_0 ;
  wire \mesg_reg[4]_i_1__2_n_0 ;
  wire \mesg_reg[5]_i_1__2_n_0 ;
  wire \mesg_reg[6]_i_1__2_n_0 ;
  wire \mesg_reg[7]_i_1__2_n_0 ;
  wire \mesg_reg[8]_i_1__2_n_0 ;
  wire \mesg_reg[9]_i_1__2_n_0 ;
  wire [33:0]\mesg_reg_reg[33]_0 ;
  wire out;
  wire p_0_out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_out;
  wire p_20_out;
  wire p_21_out;
  wire p_22_out;
  wire p_23_out;
  wire p_24_out;
  wire p_25_out;
  wire p_26_out;
  wire p_27_out;
  wire p_28_out;
  wire p_29_out;
  wire p_2_out;
  wire p_30_out;
  wire p_31_out;
  wire p_32_out;
  wire p_33_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__3
       (.I0(s_axi_rready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state0_inst_i_1__3_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__3
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(s_axi_rready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyncclear_state1_inst_i_1__3_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__3
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__3_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__3
       (.I0(s_axi_rready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__3
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__3 
       (.I0(s_axi_rready),
        .I1(asyncclear_mvalid_inst_0),
        .O(s_axi_rready_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__3 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__3 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__3 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_rready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__3 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__3 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_rready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[0]_i_1__3_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[1]_i_1__3_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[2]_i_1__3_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[3]_i_2__3_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__3 
       (.I0(p_33_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1__2 
       (.I0(p_23_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1__2 
       (.I0(p_22_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1__2 
       (.I0(p_21_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1__2 
       (.I0(p_20_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1__2 
       (.I0(p_19_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1__2 
       (.I0(p_18_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1__2 
       (.I0(p_17_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1__2 
       (.I0(p_16_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1__2 
       (.I0(p_15_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1__2 
       (.I0(p_14_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__3 
       (.I0(p_32_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1__2 
       (.I0(p_13_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1__2 
       (.I0(p_12_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1__2 
       (.I0(p_11_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1__2 
       (.I0(p_10_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_1__2 
       (.I0(p_9_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1__2 
       (.I0(p_8_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1__2 
       (.I0(p_7_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1__2 
       (.I0(p_6_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[28]_i_1__2 
       (.I0(p_5_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[28]),
        .O(\mesg_reg[28]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[29]_i_1__2 
       (.I0(p_4_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[29]),
        .O(\mesg_reg[29]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1__2 
       (.I0(p_31_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[30]_i_1__2 
       (.I0(p_3_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[30]),
        .O(\mesg_reg[30]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[31]_i_1__2 
       (.I0(s_axi_rready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[31]_i_2__2 
       (.I0(p_2_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[31]),
        .O(\mesg_reg[31]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[32]_i_1__2 
       (.I0(p_1_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[32]),
        .O(\mesg_reg[32]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[33]_i_1__2 
       (.I0(p_0_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[33]),
        .O(\mesg_reg[33]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1__2 
       (.I0(p_30_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1__2 
       (.I0(p_29_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1__2 
       (.I0(p_28_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1__2 
       (.I0(p_27_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1__2 
       (.I0(p_26_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1__2 
       (.I0(p_25_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1__2 
       (.I0(p_24_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1__2_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__3_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__3_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[28] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[28]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [28]),
        .R(1'b0));
  FDRE \mesg_reg_reg[29] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[29]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [29]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[30] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[30]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [30]),
        .R(1'b0));
  FDRE \mesg_reg_reg[31] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[31]_i_2__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [31]),
        .R(1'b0));
  FDRE \mesg_reg_reg[32] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[32]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [32]),
        .R(1'b0));
  FDRE \mesg_reg_reg[33] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[33]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [33]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__75 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(p_33_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__85 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(p_23_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__86 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(p_22_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__87 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(p_21_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__88 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(p_20_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__89 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(p_19_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__90 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(p_18_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__91 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(p_17_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__92 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(p_16_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__93 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(p_15_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__94 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(p_14_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__76 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(p_32_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__95 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(p_13_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__96 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(p_12_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__97 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(p_11_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__98 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(p_10_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__99 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(p_9_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__100 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(p_8_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__101 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(p_7_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__102 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(p_6_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__103 \srl[28].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[28]),
        .q(p_5_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__104 \srl[29].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[29]),
        .q(p_4_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__77 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(p_31_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__105 \srl[30].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[30]),
        .q(p_3_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__106 \srl[31].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[31]),
        .q(p_2_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__107 \srl[32].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[32]),
        .q(p_1_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl \srl[33].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[33]),
        .q(p_0_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__78 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(p_30_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__79 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(p_29_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__80 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(p_28_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__81 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(p_27_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__82 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(p_26_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__83 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(p_25_out));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__84 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(p_24_out));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_dest_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr
   (asyncclear_mvalid_inst,
    out,
    Q,
    aclk,
    \ar12.slr_arhandshake ,
    \common.areset_d_reg_0 ,
    m_axi_arready,
    D);
  output asyncclear_mvalid_inst;
  output out;
  output [34:0]Q;
  input aclk;
  input \ar12.slr_arhandshake ;
  input \common.areset_d_reg_0 ;
  input m_axi_arready;
  input [34:0]D;

  wire [34:0]D;
  wire [34:0]Q;
  wire aclk;
  wire \ar12.slr_arhandshake ;
  wire asyncclear_mvalid_inst;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [34:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire m_axi_arready;

  assign out = \common.laguna_s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\ar12.slr_arhandshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\common.laguna_s_payload_d [28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\common.laguna_s_payload_d [29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\common.laguna_s_payload_d [30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\common.laguna_s_payload_d [31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(\common.laguna_s_payload_d [32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(\common.laguna_s_payload_d [33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(\common.laguna_s_payload_d [34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo_2 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(\common.srl_fifo_0_n_1 ),
        .\mesg_reg_reg[34]_0 (Q),
        .out(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_dest_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr_1
   (asyncclear_mvalid_inst,
    out,
    Q,
    aclk,
    \aw12.slr_awhandshake ,
    \common.areset_d_reg_0 ,
    m_axi_awready,
    D);
  output asyncclear_mvalid_inst;
  output out;
  output [34:0]Q;
  input aclk;
  input \aw12.slr_awhandshake ;
  input \common.areset_d_reg_0 ;
  input m_axi_awready;
  input [34:0]D;

  wire [34:0]D;
  wire [34:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst;
  wire \aw12.slr_awhandshake ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [34:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire m_axi_awready;

  assign out = \common.laguna_s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\aw12.slr_awhandshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\common.laguna_s_payload_d [28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\common.laguna_s_payload_d [29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\common.laguna_s_payload_d [30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\common.laguna_s_payload_d [31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(\common.laguna_s_payload_d [32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(\common.laguna_s_payload_d [33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(\common.laguna_s_payload_d [34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0(\common.srl_fifo_0_n_1 ),
        .\mesg_reg_reg[34]_0 (Q),
        .out(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_dest_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr__parameterized0
   (asyncclear_mvalid_inst,
    out,
    Q,
    aclk,
    \w12.slr_whandshake ,
    \common.areset_d_reg_0 ,
    m_axi_wready,
    D);
  output asyncclear_mvalid_inst;
  output out;
  output [35:0]Q;
  input aclk;
  input \w12.slr_whandshake ;
  input \common.areset_d_reg_0 ;
  input m_axi_wready;
  input [35:0]D;

  wire [35:0]D;
  wire [35:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [35:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire m_axi_wready;
  wire \w12.slr_whandshake ;

  assign out = \common.laguna_s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\w12.slr_whandshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\common.laguna_s_payload_d [28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\common.laguna_s_payload_d [29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\common.laguna_s_payload_d [30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\common.laguna_s_payload_d [31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(\common.laguna_s_payload_d [32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(\common.laguna_s_payload_d [33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(\common.laguna_s_payload_d [34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[35]),
        .Q(\common.laguna_s_payload_d [35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo__parameterized0 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0(\common.srl_fifo_0_n_1 ),
        .\mesg_reg_reg[35]_0 (Q),
        .out(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_dest_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr__parameterized1
   (asyncclear_mvalid_inst,
    out,
    s_axi_bresp,
    aclk,
    \b12.slr_bhandshake ,
    \common.areset_d_reg_0 ,
    aresetn,
    s_axi_bready,
    Q);
  output asyncclear_mvalid_inst;
  output out;
  output [1:0]s_axi_bresp;
  input aclk;
  input \b12.slr_bhandshake ;
  input \common.areset_d_reg_0 ;
  input aresetn;
  input s_axi_bready;
  input [1:0]Q;

  wire [1:0]Q;
  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \b12.slr_bhandshake ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [1:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;

  assign out = \common.laguna_s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\b12.slr_bhandshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo__parameterized1 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .out(\common.areset_d ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bready_0(\common.srl_fifo_0_n_1 ),
        .s_axi_bresp(s_axi_bresp));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_dest_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_dest_region_slr__parameterized2
   (asyncclear_mvalid_inst,
    out,
    aresetn_0,
    \mesg_reg_reg[33] ,
    aclk,
    \r12.slr_rhandshake ,
    aresetn,
    s_axi_rready,
    Q);
  output asyncclear_mvalid_inst;
  output out;
  output aresetn_0;
  output [33:0]\mesg_reg_reg[33] ;
  input aclk;
  input \r12.slr_rhandshake ;
  input aresetn;
  input s_axi_rready;
  input [33:0]Q;

  wire [33:0]Q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire asyncclear_mvalid_inst;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [33:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire [33:0]\mesg_reg_reg[33] ;
  wire \r12.slr_rhandshake ;
  wire s_axi_rready;

  assign out = \common.laguna_s_ready_i ;
  LUT1 #(
    .INIT(2'h1)) 
    \common.areset_d_i_1 
       (.I0(aresetn),
        .O(aresetn_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn_0),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\r12.slr_rhandshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(\common.laguna_s_payload_d [28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(\common.laguna_s_payload_d [29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(\common.laguna_s_payload_d [30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(\common.laguna_s_payload_d [31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[32]),
        .Q(\common.laguna_s_payload_d [32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[33]),
        .Q(\common.laguna_s_payload_d [33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_axic_reg_srl_fifo__parameterized2 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .\mesg_reg_reg[33]_0 (\mesg_reg_reg[33] ),
        .out(\common.areset_d ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(\common.srl_fifo_0_n_1 ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_source_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr
   (\ar12.slr_arhandshake ,
    s_axi_arready,
    Q,
    aclk,
    \common.areset_d_reg_0 ,
    out,
    aresetn,
    s_axi_arvalid,
    D);
  output \ar12.slr_arhandshake ;
  output s_axi_arready;
  output [34:0]Q;
  input aclk;
  input \common.areset_d_reg_0 ;
  input out;
  input aresetn;
  input s_axi_arvalid;
  input [34:0]D;

  wire [34:0]D;
  wire [34:0]Q;
  wire aclk;
  wire \ar12.slr_arhandshake ;
  wire aresetn;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.m_handshake_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire out;
  wire s_axi_arvalid;

  assign s_axi_arready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\common.m_handshake_d ),
        .Q(\ar12.slr_arhandshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__2 
       (.I0(s_axi_arvalid),
        .I1(\common.s_ready_i ),
        .O(\common.m_handshake_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(out),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_source_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr_0
   (\aw12.slr_awhandshake ,
    s_axi_awready,
    Q,
    aclk,
    \common.areset_d_reg_0 ,
    out,
    aresetn,
    s_axi_awvalid,
    D);
  output \aw12.slr_awhandshake ;
  output s_axi_awready;
  output [34:0]Q;
  input aclk;
  input \common.areset_d_reg_0 ;
  input out;
  input aresetn;
  input s_axi_awvalid;
  input [34:0]D;

  wire [34:0]D;
  wire [34:0]Q;
  wire aclk;
  wire aresetn;
  wire \aw12.slr_awhandshake ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.m_handshake_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire out;
  wire s_axi_awvalid;

  assign s_axi_awready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\common.m_handshake_d ),
        .Q(\aw12.slr_awhandshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1 
       (.I0(s_axi_awvalid),
        .I1(\common.s_ready_i ),
        .O(\common.m_handshake_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(out),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_source_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr__parameterized0
   (\w12.slr_whandshake ,
    s_axi_wready,
    Q,
    aclk,
    \common.areset_d_reg_0 ,
    out,
    aresetn,
    s_axi_wvalid,
    D);
  output \w12.slr_whandshake ;
  output s_axi_wready;
  output [35:0]Q;
  input aclk;
  input \common.areset_d_reg_0 ;
  input out;
  input aresetn;
  input s_axi_wvalid;
  input [35:0]D;

  wire [35:0]D;
  wire [35:0]Q;
  wire aclk;
  wire aresetn;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.m_handshake_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire out;
  wire s_axi_wvalid;
  wire \w12.slr_whandshake ;

  assign s_axi_wready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\common.m_handshake_d ),
        .Q(\w12.slr_whandshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__0 
       (.I0(s_axi_wvalid),
        .I1(\common.s_ready_i ),
        .O(\common.m_handshake_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(out),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_source_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr__parameterized1
   (\b12.slr_bhandshake ,
    m_axi_bready,
    Q,
    aclk,
    \common.areset_d_reg_0 ,
    out,
    m_axi_bvalid,
    m_axi_bresp);
  output \b12.slr_bhandshake ;
  output m_axi_bready;
  output [1:0]Q;
  input aclk;
  input \common.areset_d_reg_0 ;
  input out;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;

  wire [1:0]Q;
  wire aclk;
  wire \b12.slr_bhandshake ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.m_handshake_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire out;

  assign m_axi_bready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\common.m_handshake_d ),
        .Q(\b12.slr_bhandshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__1 
       (.I0(m_axi_bvalid),
        .I1(\common.s_ready_i ),
        .O(\common.m_handshake_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_bresp[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_bresp[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(out),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_source_region_slr" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_source_region_slr__parameterized2
   (\r12.slr_rhandshake ,
    m_axi_rready,
    Q,
    aclk,
    \common.areset_d_reg_0 ,
    out,
    m_axi_rvalid,
    D);
  output \r12.slr_rhandshake ;
  output m_axi_rready;
  output [33:0]Q;
  input aclk;
  input \common.areset_d_reg_0 ;
  input out;
  input m_axi_rvalid;
  input [33:0]D;

  wire [33:0]D;
  wire [33:0]Q;
  wire aclk;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire \common.areset_d_reg_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.m_handshake_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire m_axi_rvalid;
  wire out;
  wire \r12.slr_rhandshake ;

  assign m_axi_rready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d_reg_0 ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(\common.m_handshake_d ),
        .Q(\r12.slr_rhandshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__3 
       (.I0(m_axi_rvalid),
        .I1(\common.s_ready_i ),
        .O(\common.m_handshake_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(out),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__1
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__10
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__100
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__101
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__102
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__103
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__104
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__105
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__106
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__107
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__108
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__109
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__11
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__110
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__111
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__112
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__113
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__114
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__115
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__116
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__117
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__118
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__119
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__12
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__120
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__121
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__122
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__123
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__124
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__125
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__126
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__127
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__128
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__129
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__13
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__130
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__131
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__132
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__133
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__134
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__135
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__136
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__137
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__138
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__139
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__14
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__140
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__141
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw12.slr_slave_aw/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__15
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__16
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__17
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__18
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__19
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__2
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__20
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__21
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__22
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__23
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__24
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__25
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__26
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__27
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__28
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__29
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__3
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__30
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__31
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__32
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__33
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__34
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__35
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__36
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__37
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__38
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__39
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__4
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__40
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__41
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__42
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__43
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__44
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__45
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__46
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__47
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__48
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__49
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__5
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__50
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__51
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__52
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__53
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__54
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__55
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__56
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__57
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__58
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__59
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__6
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__60
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__61
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__62
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__63
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__64
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__65
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__66
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__67
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__68
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__69
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__7
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__70
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__71
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__72
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[35].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w12.slr_slave_w/common.srl_fifo_0/srl[35].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__73
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\b12.slr_master_b/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\b12.slr_master_b/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__74
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\b12.slr_master_b/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\b12.slr_master_b/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__75
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__76
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__77
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__78
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__79
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__8
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__80
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__81
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__82
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__83
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__84
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__85
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__86
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__87
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__88
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__89
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__9
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar12.slr_slave_ar/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__90
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__91
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__92
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__93
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__94
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__95
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__96
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__97
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__98
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_21_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module axi4lite_slr_reg_slice_axi_register_slice_v2_1_21_srl_rtl__99
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r12.slr_master_r/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
