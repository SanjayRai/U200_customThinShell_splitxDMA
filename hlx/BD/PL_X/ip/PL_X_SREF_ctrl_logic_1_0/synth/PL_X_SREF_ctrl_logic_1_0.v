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


// IP VLNV: xilinx.com:module_ref:SREF_ctrl_logic:1.0
// IP Revision: 1

(* X_CORE_INFO = "SREF_ctrl_logic,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "PL_X_SREF_ctrl_logic_1_0,SREF_ctrl_logic,{}" *)
(* CORE_GENERATION_INFO = "PL_X_SREF_ctrl_logic_1_0,SREF_ctrl_logic,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SREF_ctrl_logic,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module PL_X_SREF_ctrl_logic_1_0 (
  ddr4_app_sref_ack,
  ddr4_app_xsdb_select,
  ddr4_app_mem_init_skip,
  ddr4_app_restore_complete,
  ddr4_app_sref_req,
  DDR_SREF_CTRL_IN,
  DDR_SREF_CTRL_OUT
);

input wire ddr4_app_sref_ack;
output wire ddr4_app_xsdb_select;
output wire ddr4_app_mem_init_skip;
output wire ddr4_app_restore_complete;
output wire ddr4_app_sref_req;
input wire [7 : 0] DDR_SREF_CTRL_IN;
output wire [7 : 0] DDR_SREF_CTRL_OUT;

  SREF_ctrl_logic inst (
    .ddr4_app_sref_ack(ddr4_app_sref_ack),
    .ddr4_app_xsdb_select(ddr4_app_xsdb_select),
    .ddr4_app_mem_init_skip(ddr4_app_mem_init_skip),
    .ddr4_app_restore_complete(ddr4_app_restore_complete),
    .ddr4_app_sref_req(ddr4_app_sref_req),
    .DDR_SREF_CTRL_IN(DDR_SREF_CTRL_IN),
    .DDR_SREF_CTRL_OUT(DDR_SREF_CTRL_OUT)
  );
endmodule
