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


// IP VLNV: xilinx.com:module_ref:sref_init_restore_sync:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dynamic_region_ddr4_sref_init_restore_sy_0_0 (
  c0_mig_ui_clk,
  shell_sys_rst_in,
  shell_sref_req,
  shell_restore_complete,
  shell_mem_init_skip,
  c0_ddr4_ui_clk_sync_rst,
  c0_init_calib_complete,
  c0_ddr4_sys_rst_out,
  c0_ddr4_app_sref_req,
  c0_ddr4_app_restore_en,
  c0_ddr4_app_restore_complete,
  c0_ddr4_app_mem_init_skip
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_mig_ui_clk, FREQ_HZ 300000000, PHASE 0.00, CLK_DOMAIN dynamic_region_ddr4_ddr4_2_1_c0_ddr4_ui_clk, INSERT_VIP 0, FREQ_TOLERANCE_HZ 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 c0_mig_ui_clk CLK" *)
input wire c0_mig_ui_clk;
input wire shell_sys_rst_in;
input wire shell_sref_req;
input wire shell_restore_complete;
input wire shell_mem_init_skip;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_ddr4_ui_clk_sync_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 c0_ddr4_ui_clk_sync_rst RST" *)
input wire c0_ddr4_ui_clk_sync_rst;
input wire c0_init_calib_complete;
output wire c0_ddr4_sys_rst_out;
output wire c0_ddr4_app_sref_req;
output wire c0_ddr4_app_restore_en;
output wire c0_ddr4_app_restore_complete;
output wire c0_ddr4_app_mem_init_skip;

  sref_init_restore_sync inst (
    .c0_mig_ui_clk(c0_mig_ui_clk),
    .shell_sys_rst_in(shell_sys_rst_in),
    .shell_sref_req(shell_sref_req),
    .shell_restore_complete(shell_restore_complete),
    .shell_mem_init_skip(shell_mem_init_skip),
    .c0_ddr4_ui_clk_sync_rst(c0_ddr4_ui_clk_sync_rst),
    .c0_init_calib_complete(c0_init_calib_complete),
    .c0_ddr4_sys_rst_out(c0_ddr4_sys_rst_out),
    .c0_ddr4_app_sref_req(c0_ddr4_app_sref_req),
    .c0_ddr4_app_restore_en(c0_ddr4_app_restore_en),
    .c0_ddr4_app_restore_complete(c0_ddr4_app_restore_complete),
    .c0_ddr4_app_mem_init_skip(c0_ddr4_app_mem_init_skip)
  );
endmodule
