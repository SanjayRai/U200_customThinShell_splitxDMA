// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Jun 21 16:34:06 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode synth_stub
//               /home/sanjayr/projects/Illumina/U200_Eclipse/THIN_SHELL/u200_hlx_v16_ASYNC_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2020_1/hlx/IP/debug_bridge_PR/debug_bridge_PR_stub.v
// Design      : debug_bridge_PR
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_8d7d,Vivado 2020.1" *)
module debug_bridge_PR(clk, S_BSCAN_bscanid_en, S_BSCAN_capture, 
  S_BSCAN_drck, S_BSCAN_reset, S_BSCAN_runtest, S_BSCAN_sel, S_BSCAN_shift, S_BSCAN_tck, 
  S_BSCAN_tdi, S_BSCAN_tdo, S_BSCAN_tms, S_BSCAN_update)
/* synthesis syn_black_box black_box_pad_pin="clk,S_BSCAN_bscanid_en,S_BSCAN_capture,S_BSCAN_drck,S_BSCAN_reset,S_BSCAN_runtest,S_BSCAN_sel,S_BSCAN_shift,S_BSCAN_tck,S_BSCAN_tdi,S_BSCAN_tdo,S_BSCAN_tms,S_BSCAN_update" */;
  input clk;
  input S_BSCAN_bscanid_en;
  input S_BSCAN_capture;
  input S_BSCAN_drck;
  input S_BSCAN_reset;
  input S_BSCAN_runtest;
  input S_BSCAN_sel;
  input S_BSCAN_shift;
  input S_BSCAN_tck;
  input S_BSCAN_tdi;
  output S_BSCAN_tdo;
  input S_BSCAN_tms;
  input S_BSCAN_update;
endmodule
