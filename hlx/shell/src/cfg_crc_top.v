//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2012 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
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
//
//////////////////////////////////////////////////////////////////////////////

module cfg_crc_top (reset, icap_clk, icap_csi_b, icap_rdwr_b, icap_di, bcc);

    input                       reset;          // Reset CRC before PR loading
    input                       icap_clk;       // ICAP clock
    input                       icap_csi_b;     // ICAP select, low true
    input                       icap_rdwr_b;    // ICAP read/write. 0=write, 1=read
    input [31:0]                icap_di;        // ICAP Data Input (directly connect to ICAP DI)

    output [31:0]               bcc;            // Readback value of CRC32

    reg  [31:0]  bcc;
    wire [31:0]  bcc_next;
    wire [31:0]  icap_di_bitswap;


    assign icap_di_bitswap = {icap_di[24], icap_di[25], icap_di[26], icap_di[27], icap_di[28], icap_di[29], icap_di[30], icap_di[31],
                              icap_di[16], icap_di[17], icap_di[18], icap_di[19], icap_di[20], icap_di[21], icap_di[22], icap_di[23],
                              icap_di[08], icap_di[09], icap_di[10], icap_di[11], icap_di[12], icap_di[13], icap_di[14], icap_di[15],
                              icap_di[00], icap_di[01], icap_di[02], icap_di[03], icap_di[04], icap_di[05], icap_di[06], icap_di[07]};

    always @ (posedge icap_clk or posedge reset) begin
        if (reset) begin
           bcc <= 32'b0;
        end else if (!icap_csi_b && !icap_rdwr_b) begin   // ICAP write
           bcc <= bcc_next;
        end
    end

    cfg_crc32_37 Icrc32_37 ( .crc_address(5'b0), .data(icap_di_bitswap), .bcc(bcc), .bcc_next(bcc_next) );

endmodule 
