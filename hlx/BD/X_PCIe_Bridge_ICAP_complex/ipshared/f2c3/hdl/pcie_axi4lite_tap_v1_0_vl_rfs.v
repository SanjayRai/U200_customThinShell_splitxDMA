//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_axi_read_controller # (
  parameter integer C_ADDR_WIDTH         = 32,
  parameter [63:0]  BAR2AXI              = 64'h0000000000000000,
  parameter integer BAR_SIZE             = 7
  
//  parameter OUTSTANDING_READS          = 5,
//  parameter  BAR0AXI                   = 64'h00000000,
//  parameter  BAR1AXI                   = 64'h00000000,
//  parameter  BAR2AXI                   = 64'h00000000,
//  parameter  BAR3AXI                   = 64'h00000000,
//  parameter  BAR4AXI                   = 64'h00000000,
//  parameter  BAR5AXI                   = 64'h00000000, 
//  parameter  BAR0SIZE                  = 12,
//  parameter  BAR1SIZE                  = 12,
//  parameter  BAR2SIZE                  = 12,
//  parameter  BAR3SIZE                  = 12,
//  parameter  BAR4SIZE                  = 12,
//  parameter  BAR5SIZE                  = 12
  
) (

  input                                 aclk,
  input                                 aresetn,
  
  output [C_ADDR_WIDTH-1 : 0]           m_axi_araddr,
  output [2 : 0]                        m_axi_arprot,
  output                                m_axi_arvalid,
  input                                 m_axi_arready,
 
  input  [32-1 : 0]                     m_axi_rdata,
  input  [1 : 0]                        m_axi_rresp,
  input                                 m_axi_rvalid,
  output                                m_axi_rready,
  
  //Memory Request TLP Info
  input                                 mem_req_valid,
  output                                mem_req_ready,
  input [2:0]                           mem_req_bar_hit,
  input [63:0]                          mem_req_pcie_address,
  input                                 mem_req_write_readn,
  input [1:0]                           mem_req_word_en,
  
  //Completion Data Coming back
  output                                axi_cpld_valid,
  input                                 axi_cpld_ready,
  output [63:0]                         axi_cpld_data 
    );
    
  reg [63:0] m_axi_addr_c;   
  reg [63:0] m_axi_araddr_r;   
  reg        m_axi_arvalid_r = 1'b0;   
  reg        mem_req_ready_r = 1'b0;    
  reg [63:0] axi_cpld_data_r;
  reg        axi_cpld_valid_r = 1'b0;
  reg [1:0]  mem_req_word_en_r;
    
  localparam integer TCQ    = 1;
  localparam IDLE     =       3'h0;
  localparam READ_REQ =       3'h1;
  localparam READ_DATA =      3'h2;
  localparam READ_REQ2 =      3'h3;
  localparam READ_DATA2 =     3'h4;
  localparam WAIT_CPLD = 3'h5;
 
  reg [2:0] aximm_ar_sm = IDLE;
 
  always @(posedge aclk) begin
     if ( !aresetn ) begin
        aximm_ar_sm <= IDLE;
        m_axi_arvalid_r   <= #TCQ 1'b0;
        mem_req_ready_r   <= #TCQ 1'b0;
        axi_cpld_valid_r  <= #TCQ 1'b0;
     end else begin
        case (aximm_ar_sm)
           IDLE : begin
              if ( mem_req_valid & !mem_req_write_readn ) begin
                aximm_ar_sm     <= #TCQ READ_REQ;
                m_axi_araddr_r    <= #TCQ (mem_req_word_en == 2'b10) ? {m_axi_addr_c[63:12], (m_axi_addr_c[11:0] + 12'h4)} : m_axi_addr_c;
                m_axi_arvalid_r <= #TCQ 1'b1;
                mem_req_ready_r <= #TCQ 1'b0;
                mem_req_word_en_r <= #TCQ mem_req_word_en;
              end else begin
                m_axi_arvalid_r <= #TCQ 1'b0;
                mem_req_ready_r <= #TCQ 1'b1;
              end
           end
           READ_REQ : begin
              if (m_axi_arready) begin
                m_axi_arvalid_r <= #TCQ 1'b0;
                aximm_ar_sm   <= #TCQ READ_DATA;
              end 
           end
           READ_DATA : begin
              if (m_axi_rvalid) begin
                case (mem_req_word_en_r)
                  2'b01: begin
                    aximm_ar_sm   <= #TCQ WAIT_CPLD;
                    axi_cpld_data_r <= #TCQ m_axi_rdata;
                    axi_cpld_valid_r <= #TCQ 1'b1;
                  end
                  2'b10: begin
                    aximm_ar_sm   <= #TCQ WAIT_CPLD;
                    axi_cpld_data_r <= #TCQ {m_axi_rdata, 32'h0};
                    axi_cpld_valid_r <= #TCQ 1'b1;
                  end
                  2'b11: begin
                    aximm_ar_sm   <= #TCQ READ_REQ2;
                    axi_cpld_data_r <= #TCQ m_axi_rdata;
                    m_axi_arvalid_r <= #TCQ 1'b1;
                    m_axi_araddr_r    <= #TCQ {m_axi_araddr_r[63:12], (m_axi_araddr_r[11:0] + 12'h4)};
                  end
                endcase
              end 
           end
           READ_REQ2 : begin
              if (m_axi_arready) begin
                m_axi_arvalid_r <= #TCQ 1'b0;
                aximm_ar_sm   <= #TCQ READ_DATA2;
              end 
           end
           READ_DATA2 : begin
              if (m_axi_rvalid) begin
                aximm_ar_sm   <= #TCQ WAIT_CPLD;
                axi_cpld_data_r <= #TCQ {m_axi_rdata, axi_cpld_data_r[31:0]};
                axi_cpld_valid_r <= #TCQ 1'b1;
              end
           end
           WAIT_CPLD: begin
              if (axi_cpld_ready) begin
                aximm_ar_sm   <= #TCQ IDLE;
                axi_cpld_valid_r <= #TCQ 1'b0;
              end
           end
           default : begin  // Fault Recovery
              aximm_ar_sm <= #TCQ IDLE;
           end   
        endcase
     end
  end
 
  assign m_axi_arvalid  = m_axi_arvalid_r;
  assign m_axi_arprot   = 0;
  assign m_axi_araddr   = m_axi_araddr_r;
  assign mem_req_ready  = mem_req_ready_r;
  
  assign axi_cpld_valid  = axi_cpld_valid_r;
  assign axi_cpld_data   = axi_cpld_data_r;
  assign m_axi_rready    = aresetn;
    							
  always @(mem_req_pcie_address)    
    m_axi_addr_c <= { BAR2AXI[C_ADDR_WIDTH-1:BAR_SIZE], mem_req_pcie_address[BAR_SIZE-1:2],2'b00};
    
//  assign  mem_req_pcie_address         = (mem_req_word_en_r == 2'b10) ? {s_axis_pcie_cq_tdata_wide_r[31:12], (s_axis_pcie_cq_tdata_wide_r[11:0] + 12'h4)} : s_axis_pcie_cq_tdata_wide_r[31:0];
//  always @(mem_req_bar_hit, mem_req_pcie_address)    
//     case (mem_req_bar_hit)
//        3'b000: m_axi_addr_c <= { BAR0AXI[C_ADDR_WIDTH-1:BAR0SIZE], mem_req_pcie_address[BAR0SIZE-1:2],2'b00};
//        3'b001: m_axi_addr_c <= { BAR1AXI[C_ADDR_WIDTH-1:BAR1SIZE], mem_req_pcie_address[BAR1SIZE-1:2],2'b00};
//        3'b010: m_axi_addr_c <= { BAR2AXI[C_ADDR_WIDTH-1:BAR2SIZE], mem_req_pcie_address[BAR2SIZE-1:2],2'b00};
//        3'b011: m_axi_addr_c <= { BAR3AXI[C_ADDR_WIDTH-1:BAR3SIZE], mem_req_pcie_address[BAR3SIZE-1:2],2'b00};
//        3'b100: m_axi_addr_c <= { BAR4AXI[C_ADDR_WIDTH-1:BAR4SIZE], mem_req_pcie_address[BAR4SIZE-1:2],2'b00};
//        3'b101: m_axi_addr_c <= { BAR5AXI[C_ADDR_WIDTH-1:BAR5SIZE], mem_req_pcie_address[BAR5SIZE-1:2],2'b00};
//        3'b110: m_axi_addr_c <= 32'd0;
//        3'b111: m_axi_addr_c <= 32'd0;
//     endcase

endmodule


//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps


(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_axis_cc_controller # (
  parameter integer C_TDATA_WIDTH          = 512,
  parameter	integer C_TUSER_WIDTH          = 81,
  parameter [2:0]   C_TARGET_FUNCTION      = 3'b0
 ) (
 
  input                                 aclk,
  input                                 aresetn,
  
  output  [C_TDATA_WIDTH-1:0]           m_axis_pcie_cc_tdata,
  output  [C_TUSER_WIDTH-1:0]           m_axis_pcie_cc_tuser,
  output                                m_axis_pcie_cc_tlast,
  output  [C_TDATA_WIDTH/32-1:0]        m_axis_pcie_cc_tkeep,
  output                                m_axis_pcie_cc_tvalid,
  input                                 m_axis_pcie_cc_tready,

  input  [C_TDATA_WIDTH-1:0]            s_axis_bypass_cc_tdata,
  input  [C_TUSER_WIDTH-1:0]            s_axis_bypass_cc_tuser,
  input                                 s_axis_bypass_cc_tlast,
  input  [C_TDATA_WIDTH/32-1:0]         s_axis_bypass_cc_tkeep,
  input                                 s_axis_bypass_cc_tvalid,
  output                                s_axis_bypass_cc_tready,

  input                                 axi_cpld_valid,
  output                                axi_cpld_ready,
  input [63:0]                          axi_cpld_data, 
                             
  output                                tag_mang_read_en,         
  input [2:0]                           tag_mang_tc_rd,  
  input [2:0]                           tag_mang_attr_rd,  
  input [15:0]                          tag_mang_requester_id_rd,  
  input [6:0]                           tag_mang_lower_addr_rd,    
  input                                 tag_mang_completer_func_rd, 
  input [7:0]                           tag_mang_tag_rd,            
  input                                 tag_mang_2dw_rd, 
  input [1:0]                           tag_mang_word_en_rd, 
  input [3:0]                           tag_mang_first_be_rd,
  input [3:0]                           tag_mang_last_be_rd,
  
  input                                 completion_ur_req,
  input [7:0]                           completion_ur_tag,
  input [6:0]                           completion_ur_lower_addr,
  input [15:0]                          completion_ur_requester_id,
  input [2:0]                           completion_ur_tc,
  input [2:0]                           completion_ur_attr,
  output                                completion_ur_done
  );
  
  localparam integer TCQ       = 1;
  localparam integer DATA_WID  = (C_TDATA_WIDTH > 256) ? 288 : C_TDATA_WIDTH;
  localparam OUTSTANDING_READS = 1;
  localparam IDLE             = 3'h0;
  localparam TLP_BEAT1_128    = 3'h1;
  localparam TLP_BEAT2A_128   = 3'h2;
  localparam TLP_BEAT2B_128   = 3'h3;
  localparam TLP_BEAT3_128    = 3'h4;
  localparam TLP_BEAT1_UR_128 = 3'h5; 
  localparam TLP_BEAT1_256    = 3'h1;
  localparam TLP_BEAT2A_256   = 3'h2;
  localparam TLP_BEAT2B_256   = 3'h3;
  localparam TLP_BEAT3_256    = 3'h4;
  localparam TLP_BEAT1_UR_256 = 3'h5; 
  localparam TLP_BEAT1_512    = 3'h1;
  localparam TLP_BEAT1_UR_512 = 3'h5;
  localparam BYPASS_TX        = 3'h6;
  localparam BYPASS_RX        = 3'h7;
  
  reg [2:0] maxis_sm = IDLE;
  
  reg [3:0]                      tag_mang_byte_count;
  reg                            axi_cpld_ready_r = 1'b0;
  reg                            completion_ur_done_r = 1'b0;
  reg                            s_axis_bypass_cc_tready_r = 1'b0;

  reg [DATA_WID-1:0]             m_axis_pcie_cc_tdata_r;
  reg [C_TUSER_WIDTH-1:0]        m_axis_pcie_cc_tuser_r ;
  reg [C_TDATA_WIDTH/32-1:0]     m_axis_pcie_cc_tkeep_r;
  reg                            m_axis_pcie_cc_tlast_r = 1'b0;
  reg                            m_axis_pcie_cc_tvalid_r = 1'b0;
  
  wire [31:0] dw1_header_32;
  wire [31:0] dw2_header_32;
  wire [31:0] dw3_header_32;
  wire [31:0] dw1_header_32_ur;
  wire [31:0] dw2_header_32_ur;
  wire [31:0] dw3_header_32_ur;
  
  generate
  
  if (C_TDATA_WIDTH == 128) begin: C_TDATA_WIDTH_128
    
    always @(posedge aclk)
       if (!aresetn) begin
          maxis_sm            <= #TCQ IDLE; 
          axi_cpld_ready_r    <= #TCQ 1'b0;        
          m_axis_pcie_cc_tvalid_r  <= #TCQ 1'b0;        
          m_axis_pcie_cc_tlast_r   <= #TCQ 1'b0; 
          m_axis_pcie_cc_tkeep_r   <= #TCQ 4'hF;    
          completion_ur_done_r <= #TCQ 1'b0;   
          s_axis_bypass_cc_tready_r <= #TCQ 1'b0; 
       end
       else
          case (maxis_sm)
            IDLE : begin
              if ( axi_cpld_valid  ) begin
                maxis_sm         <= #TCQ TLP_BEAT1_128;   
                m_axis_pcie_cc_tlast_r    <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b0;
              end else if ( completion_ur_req & ~completion_ur_done_r ) begin
                maxis_sm         <= #TCQ TLP_BEAT1_UR_128;
                m_axis_pcie_cc_tlast_r    <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b0;
              end else if (s_axis_bypass_cc_tvalid) begin
                maxis_sm         <= #TCQ BYPASS_TX;  
                s_axis_bypass_cc_tready_r <= #TCQ 1'b1;
                m_axis_pcie_cc_tdata_r    <= #TCQ s_axis_bypass_cc_tdata ;
                m_axis_pcie_cc_tuser_r    <= #TCQ s_axis_bypass_cc_tuser ;
                m_axis_pcie_cc_tlast_r    <= #TCQ s_axis_bypass_cc_tlast ;
                m_axis_pcie_cc_tkeep_r    <= #TCQ s_axis_bypass_cc_tkeep ;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b1;
              end else begin
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
              end            
              axi_cpld_ready_r   <= #TCQ 1'b0;
              completion_ur_done_r  <= #TCQ 1'b0;
            end
            TLP_BEAT1_128 : begin
              if (m_axis_pcie_cc_tvalid_r) begin
                if (m_axis_pcie_cc_tready) begin
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                  if (tag_mang_2dw_rd & (tag_mang_lower_addr_rd[3:2]==2'b11)) begin  // 2-beat read payload
                    maxis_sm           <= #TCQ TLP_BEAT2B_128;
                  end else begin
                    maxis_sm           <= #TCQ TLP_BEAT2A_128;
                  end
                end
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ { 32'd0, dw3_header_32, dw2_header_32, dw1_header_32 };                       
                m_axis_pcie_cc_tkeep_r  <= #TCQ 4'hF;           
                m_axis_pcie_cc_tuser_r  <= 0 ;
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end               
              axi_cpld_ready_r   <= #TCQ 1'b0;
            end
            TLP_BEAT2A_128 : begin
              if (m_axis_pcie_cc_tvalid_r) begin 
                if (m_axis_pcie_cc_tready & completion_ur_req ) begin 
                  maxis_sm           <= #TCQ TLP_BEAT1_UR_128;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0;  
                end else if (m_axis_pcie_cc_tready) begin
                  maxis_sm           <= #TCQ IDLE;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
                axi_cpld_ready_r   <= #TCQ 1'b0;
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ axi_cpld_data << (32 * tag_mang_lower_addr_rd[3:2]);
                m_axis_pcie_cc_tkeep_r   <= #TCQ 5'h1F >> (4 - tag_mang_2dw_rd - tag_mang_lower_addr_rd[3:2]); 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
                axi_cpld_ready_r   <= #TCQ 1'b1;
              end
            end
            TLP_BEAT2B_128 : begin
              if (m_axis_pcie_cc_tvalid_r) begin
                if (m_axis_pcie_cc_tready) begin
                  maxis_sm           <= #TCQ TLP_BEAT3_128;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ axi_cpld_data << (32 * tag_mang_lower_addr_rd[3:2]);
                m_axis_pcie_cc_tkeep_r   <= #TCQ 4'hF; 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end
              axi_cpld_ready_r   <= #TCQ 1'b0;
            end
            TLP_BEAT3_128 : begin
              if (m_axis_pcie_cc_tvalid_r) begin
                if (m_axis_pcie_cc_tready & completion_ur_req ) begin 
                  maxis_sm           <= #TCQ TLP_BEAT1_UR_128;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0;  
                end else if (m_axis_pcie_cc_tready) begin
                  maxis_sm           <= #TCQ IDLE;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
                axi_cpld_ready_r   <= #TCQ 1'b0;
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ axi_cpld_data[63:32];                       
                m_axis_pcie_cc_tkeep_r   <= #TCQ 4'h1; 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
                axi_cpld_ready_r   <= #TCQ 1'b1;
              end               
            end
            TLP_BEAT1_UR_128 : begin
              if (m_axis_pcie_cc_tready & m_axis_pcie_cc_tvalid_r ) begin
                maxis_sm           <= #TCQ IDLE;                
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                completion_ur_done_r <=  #TCQ 1'b1;
              end else begin 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end               
              m_axis_pcie_cc_tdata_r  <= #TCQ { 32'd0, dw3_header_32_ur, dw2_header_32_ur, dw1_header_32_ur };                       
              m_axis_pcie_cc_tkeep_r  <= #TCQ 4'h7; //no payload for UR Completion              
              m_axis_pcie_cc_tuser_r  <= 0 ;
              axi_cpld_ready_r   <= #TCQ 1'b0;
            end
            BYPASS_TX: begin
              s_axis_bypass_cc_tready_r   <= #TCQ 1'b0;
              if (m_axis_pcie_cc_tready) begin
                m_axis_pcie_cc_tvalid_r     <= #TCQ 1'b0;
                if (m_axis_pcie_cc_tlast_r) begin
                  maxis_sm <= #TCQ IDLE;
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                end else begin
                  maxis_sm <= #TCQ BYPASS_RX;
                end
              end
            end
            BYPASS_RX: begin
              if (s_axis_bypass_cc_tvalid) begin
                s_axis_bypass_cc_tready_r <= #TCQ 1'b1;
                m_axis_pcie_cc_tdata_r    <= #TCQ s_axis_bypass_cc_tdata ;
                m_axis_pcie_cc_tuser_r    <= #TCQ s_axis_bypass_cc_tuser ;
                m_axis_pcie_cc_tlast_r    <= #TCQ s_axis_bypass_cc_tlast ;
                m_axis_pcie_cc_tkeep_r    <= #TCQ s_axis_bypass_cc_tkeep ;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b1;
                maxis_sm <= #TCQ BYPASS_TX;
              end
            end
            default: begin  // Fault Recovery
               maxis_sm <= #TCQ IDLE;
            end
          endcase
      
  end else if (C_TDATA_WIDTH == 256) begin: C_TDATA_WIDTH_256
     
    always @(posedge aclk)
       if (!aresetn) begin
          maxis_sm            <= #TCQ IDLE; 
          axi_cpld_ready_r    <= #TCQ 1'b0;        
          m_axis_pcie_cc_tvalid_r  <= #TCQ 1'b0;        
          m_axis_pcie_cc_tlast_r   <= #TCQ 1'b0; 
          m_axis_pcie_cc_tkeep_r   <= #TCQ 8'hFF;    
          completion_ur_done_r <= #TCQ 1'b0;   
          s_axis_bypass_cc_tready_r <= #TCQ 1'b0; 
       end
       else
          case (maxis_sm)
            IDLE : begin
              if ( axi_cpld_valid  ) begin
                maxis_sm         <= #TCQ TLP_BEAT1_256;   
                m_axis_pcie_cc_tlast_r    <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b0;
              end else if ( completion_ur_req & ~completion_ur_done_r ) begin
                maxis_sm         <= #TCQ TLP_BEAT1_UR_256;
                m_axis_pcie_cc_tlast_r    <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b0;
              end else if (s_axis_bypass_cc_tvalid) begin
                maxis_sm         <= #TCQ BYPASS_TX;  
                s_axis_bypass_cc_tready_r <= #TCQ 1'b1;
                m_axis_pcie_cc_tdata_r    <= #TCQ s_axis_bypass_cc_tdata ;
                m_axis_pcie_cc_tuser_r    <= #TCQ s_axis_bypass_cc_tuser ;
                m_axis_pcie_cc_tlast_r    <= #TCQ s_axis_bypass_cc_tlast ;
                m_axis_pcie_cc_tkeep_r    <= #TCQ s_axis_bypass_cc_tkeep ;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b1;
              end else begin
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
              end            
              axi_cpld_ready_r   <= #TCQ 1'b0;
              completion_ur_done_r  <= #TCQ 1'b0;
            end
            TLP_BEAT1_256 : begin
              if (m_axis_pcie_cc_tvalid_r) begin
                if (m_axis_pcie_cc_tready) begin
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                  if (tag_mang_2dw_rd & (tag_mang_lower_addr_rd[4:2]==3'b111)) begin  // 2-beat read payload
                    maxis_sm           <= #TCQ TLP_BEAT2B_256;
                  end else begin
                    maxis_sm           <= #TCQ TLP_BEAT2A_256;
                  end
                end
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ { 32'd0, dw3_header_32, dw2_header_32, dw1_header_32 };                       
                m_axis_pcie_cc_tkeep_r  <= #TCQ 8'hFF;           
                m_axis_pcie_cc_tuser_r  <= 0 ;
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end               
              axi_cpld_ready_r   <= #TCQ 1'b0;
            end
            TLP_BEAT2A_256 : begin
              if (m_axis_pcie_cc_tvalid_r) begin 
                if (m_axis_pcie_cc_tready & completion_ur_req ) begin 
                  maxis_sm           <= #TCQ TLP_BEAT1_UR_256;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0;  
                end else if (m_axis_pcie_cc_tready) begin
                  maxis_sm           <= #TCQ IDLE;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
                axi_cpld_ready_r   <= #TCQ 1'b0;
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ axi_cpld_data << (32 * tag_mang_lower_addr_rd[4:2]);
                m_axis_pcie_cc_tkeep_r   <= #TCQ 8'hFF >> (7 - tag_mang_2dw_rd - tag_mang_lower_addr_rd[4:2]); 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
                axi_cpld_ready_r   <= #TCQ 1'b1;
              end
            end
            TLP_BEAT2B_256 : begin
              if (m_axis_pcie_cc_tvalid_r) begin
                if (m_axis_pcie_cc_tready) begin
                  maxis_sm           <= #TCQ TLP_BEAT3_256;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ axi_cpld_data << (32 * tag_mang_lower_addr_rd[4:2]);
                m_axis_pcie_cc_tkeep_r   <= #TCQ 8'hFF; 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end
              axi_cpld_ready_r   <= #TCQ 1'b0;
            end
            TLP_BEAT3_128 : begin
              if (m_axis_pcie_cc_tvalid_r) begin
                if (m_axis_pcie_cc_tready & completion_ur_req ) begin 
                  maxis_sm           <= #TCQ TLP_BEAT1_UR_128;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0;  
                end else if (m_axis_pcie_cc_tready) begin
                  maxis_sm           <= #TCQ IDLE;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
                axi_cpld_ready_r   <= #TCQ 1'b0;
              end else begin 
                m_axis_pcie_cc_tdata_r  <= #TCQ axi_cpld_data[63:32];                       
                m_axis_pcie_cc_tkeep_r   <= #TCQ 8'h1; 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
                axi_cpld_ready_r   <= #TCQ 1'b1;
              end               
            end
            TLP_BEAT1_UR_256 : begin
              if (m_axis_pcie_cc_tready & m_axis_pcie_cc_tvalid_r ) begin
                maxis_sm           <= #TCQ IDLE;                
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                completion_ur_done_r <=  #TCQ 1'b1;
              end else begin 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end               
              m_axis_pcie_cc_tdata_r  <= #TCQ { 32'd0, dw3_header_32_ur, dw2_header_32_ur, dw1_header_32_ur };                       
              m_axis_pcie_cc_tkeep_r  <= #TCQ 8'h07; //no payload for UR Completion              
              m_axis_pcie_cc_tuser_r  <= 0 ;
              axi_cpld_ready_r   <= #TCQ 1'b0;
            end
            BYPASS_TX: begin
              s_axis_bypass_cc_tready_r   <= #TCQ 1'b0;
              if (m_axis_pcie_cc_tready) begin
                m_axis_pcie_cc_tvalid_r     <= #TCQ 1'b0;
                if (m_axis_pcie_cc_tlast_r) begin
                  maxis_sm <= #TCQ IDLE;
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                end else begin
                  maxis_sm <= #TCQ BYPASS_RX;
                end
              end
            end
            BYPASS_RX: begin
              if (s_axis_bypass_cc_tvalid) begin
                s_axis_bypass_cc_tready_r <= #TCQ 1'b1;
                m_axis_pcie_cc_tdata_r    <= #TCQ s_axis_bypass_cc_tdata ;
                m_axis_pcie_cc_tuser_r    <= #TCQ s_axis_bypass_cc_tuser ;
                m_axis_pcie_cc_tlast_r    <= #TCQ s_axis_bypass_cc_tlast ;
                m_axis_pcie_cc_tkeep_r    <= #TCQ s_axis_bypass_cc_tkeep ;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b1;
                maxis_sm <= #TCQ BYPASS_TX;
              end
            end
            default: begin  // Fault Recovery
               maxis_sm <= #TCQ IDLE;
            end
          endcase
      
  end else if (C_TDATA_WIDTH == 512) begin: C_TDATA_WIDTH_512
     
    always @(posedge aclk)
       if (!aresetn) begin
          maxis_sm                <= #TCQ IDLE; 
          axi_cpld_ready_r        <= #TCQ 1'b0;        
          m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0;        
          m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;        
          completion_ur_done_r    <= #TCQ 1'b0;      
          s_axis_bypass_cc_tready_r <= #TCQ 1'b0; 
       end
       else
          case (maxis_sm)
            IDLE : begin
              if ( axi_cpld_valid ) begin
                maxis_sm         <= #TCQ TLP_BEAT1_512;  
                m_axis_pcie_cc_tkeep_r   <= #TCQ 16'h1FF >> (4 - tag_mang_2dw_rd - tag_mang_lower_addr_rd[3:2]); 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
              end else if ( completion_ur_req & ~completion_ur_done_r ) begin
                maxis_sm         <= #TCQ TLP_BEAT1_UR_512;  
                m_axis_pcie_cc_tkeep_r   <= #TCQ 16'h07; 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
              end else if (s_axis_bypass_cc_tvalid) begin
                maxis_sm         <= #TCQ BYPASS_TX;  
                s_axis_bypass_cc_tready_r <= #TCQ 1'b1;
                m_axis_pcie_cc_tdata_r    <= #TCQ s_axis_bypass_cc_tdata ;
                m_axis_pcie_cc_tuser_r    <= #TCQ s_axis_bypass_cc_tuser ;
                m_axis_pcie_cc_tkeep_r    <= #TCQ s_axis_bypass_cc_tkeep ;
                m_axis_pcie_cc_tlast_r    <= #TCQ s_axis_bypass_cc_tlast ;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b1;
              end else begin
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
              end            
              axi_cpld_ready_r <= #TCQ 1'b0; 
              completion_ur_done_r  <= #TCQ 1'b0;
            end
            TLP_BEAT1_512 : begin
              if ( m_axis_pcie_cc_tvalid_r ) begin
                if ( m_axis_pcie_cc_tready & completion_ur_req ) begin
                  maxis_sm           <= #TCQ TLP_BEAT1_UR_512;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                  m_axis_pcie_cc_tkeep_r   <= #TCQ 16'h07;               
                end else if ( m_axis_pcie_cc_tready ) begin
                  maxis_sm           <= #TCQ IDLE;                
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                  m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                end
                axi_cpld_ready_r <= #TCQ 1'b0; 
              end else begin 
                m_axis_pcie_cc_tdata_r[127:0]   <= #TCQ { 32'h0, dw3_header_32, dw2_header_32, dw1_header_32 };                       
                m_axis_pcie_cc_tdata_r[DATA_WID-1:128] <= #TCQ axi_cpld_data << (32 * tag_mang_lower_addr_rd[3:2]);                       
                m_axis_pcie_cc_tuser_r  <= 0 ;
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
                axi_cpld_ready_r <= #TCQ 1'b1; 
              end
            end
            TLP_BEAT1_UR_512 : begin
              if ( m_axis_pcie_cc_tready & m_axis_pcie_cc_tvalid_r ) begin
                maxis_sm           <= #TCQ IDLE;                
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b0; 
                completion_ur_done_r <=  #TCQ 1'b1;
              end else begin 
                m_axis_pcie_cc_tlast_r  <= #TCQ 1'b1;
                m_axis_pcie_cc_tvalid_r <= #TCQ 1'b1;   
              end               
              m_axis_pcie_cc_tdata_r  <= #TCQ { 32'd0, dw3_header_32_ur, dw2_header_32_ur, dw1_header_32_ur };                       
              m_axis_pcie_cc_tuser_r  <= 0 ;
              axi_cpld_ready_r <= #TCQ 1'b0; 
            end
            BYPASS_TX: begin
              s_axis_bypass_cc_tready_r   <= #TCQ 1'b0;
              if (m_axis_pcie_cc_tready) begin
                m_axis_pcie_cc_tvalid_r     <= #TCQ 1'b0;
                if (m_axis_pcie_cc_tlast_r) begin
                  maxis_sm <= #TCQ IDLE;
                  m_axis_pcie_cc_tlast_r  <= #TCQ 1'b0;
                end else begin
                  maxis_sm <= #TCQ BYPASS_RX;
                end
              end
            end
            BYPASS_RX: begin
              if (s_axis_bypass_cc_tvalid) begin
                s_axis_bypass_cc_tready_r <= #TCQ 1'b1;
                m_axis_pcie_cc_tdata_r    <= #TCQ s_axis_bypass_cc_tdata ;
                m_axis_pcie_cc_tuser_r    <= #TCQ s_axis_bypass_cc_tuser ;
                m_axis_pcie_cc_tlast_r    <= #TCQ s_axis_bypass_cc_tlast ;
                m_axis_pcie_cc_tkeep_r    <= #TCQ s_axis_bypass_cc_tkeep ;
                m_axis_pcie_cc_tvalid_r   <= #TCQ 1'b1;
                maxis_sm <= #TCQ BYPASS_TX;
              end
            end
            default: begin  // Fault Recovery
              maxis_sm <= #TCQ IDLE;
            end
          endcase        
          
 end

  endgenerate  

  assign tag_mang_read_en = (axi_cpld_valid & axi_cpld_ready_r) ? 1'b1 : 1'b0;
  
  always @( tag_mang_first_be_rd, tag_mang_last_be_rd, tag_mang_word_en_rd, tag_mang_byte_count) begin   
    if (tag_mang_word_en_rd == 2'b01) 
      casex ( tag_mang_first_be_rd )
        4'b1xx1: tag_mang_byte_count = 4'b0100;
        4'b01x1: tag_mang_byte_count = 4'b0011;
        4'b1x10: tag_mang_byte_count = 4'b0011;
        4'b0011: tag_mang_byte_count = 4'b0010;
        4'b0110: tag_mang_byte_count = 4'b0010;
        4'b1100: tag_mang_byte_count = 4'b0010;
        4'b0001: tag_mang_byte_count = 4'b0001;
        4'b0010: tag_mang_byte_count = 4'b0001;
        4'b0100: tag_mang_byte_count = 4'b0001;
        4'b1000: tag_mang_byte_count = 4'b0001;
        4'b0000: tag_mang_byte_count = 4'b0001;
        default: tag_mang_byte_count = 4'b0000;
      endcase   
    else if (tag_mang_word_en_rd == 2'b10) 
      casex ( tag_mang_last_be_rd )
        4'b1xx1: tag_mang_byte_count = 4'b0100;
        4'b01x1: tag_mang_byte_count = 4'b0011;
        4'b1x10: tag_mang_byte_count = 4'b0011;
        4'b0011: tag_mang_byte_count = 4'b0010;
        4'b0110: tag_mang_byte_count = 4'b0010;
        4'b1100: tag_mang_byte_count = 4'b0010;
        4'b0001: tag_mang_byte_count = 4'b0001;
        4'b0010: tag_mang_byte_count = 4'b0001;
        4'b0100: tag_mang_byte_count = 4'b0001;
        4'b1000: tag_mang_byte_count = 4'b0001;
        4'b0000: tag_mang_byte_count = 4'b0001;
        default: tag_mang_byte_count = 4'b0000;
      endcase   
    else if (tag_mang_word_en_rd == 2'b11) 
      casex ( {tag_mang_last_be_rd, tag_mang_first_be_rd} )
        8'b1xxxxxx1: tag_mang_byte_count = 4'b1000;
        8'b01xxxxx1: tag_mang_byte_count = 4'b0111;
        8'b1xxxxx10: tag_mang_byte_count = 4'b0111;
        8'b001xxxx1: tag_mang_byte_count = 4'b0110;
        8'b01xxxx10: tag_mang_byte_count = 4'b0110;
        8'b1xxxx100: tag_mang_byte_count = 4'b0110;
        8'b0001xxx1: tag_mang_byte_count = 4'b0101;
        8'b001xxx10: tag_mang_byte_count = 4'b0101;
        8'b01xxx100: tag_mang_byte_count = 4'b0101;
        8'b1xxx1000: tag_mang_byte_count = 4'b0101;
        8'b00001xx1: tag_mang_byte_count = 4'b0100;
        8'b0001xx10: tag_mang_byte_count = 4'b0100;
        8'b001xx100: tag_mang_byte_count = 4'b0100;
        8'b01xx1000: tag_mang_byte_count = 4'b0100;
        8'b1xx10000: tag_mang_byte_count = 4'b0100;
        8'b000001x1: tag_mang_byte_count = 4'b0011;
        8'b00001x10: tag_mang_byte_count = 4'b0011;
        8'b0001x100: tag_mang_byte_count = 4'b0011;
        8'b001x1000: tag_mang_byte_count = 4'b0011;
        8'b01x10000: tag_mang_byte_count = 4'b0011;
        8'b1x100000: tag_mang_byte_count = 4'b0011;
        8'b00000011: tag_mang_byte_count = 4'b0010;
        8'b00000110: tag_mang_byte_count = 4'b0010;
        8'b00001100: tag_mang_byte_count = 4'b0010;
        8'b00011000: tag_mang_byte_count = 4'b0010;
        8'b00110000: tag_mang_byte_count = 4'b0010;
        8'b01100000: tag_mang_byte_count = 4'b0010;
        8'b11000000: tag_mang_byte_count = 4'b0010;
        8'b00000001: tag_mang_byte_count = 4'b0001;
        8'b00000010: tag_mang_byte_count = 4'b0001;
        8'b00000100: tag_mang_byte_count = 4'b0001;
        8'b00001000: tag_mang_byte_count = 4'b0001;
        8'b00010000: tag_mang_byte_count = 4'b0001;
        8'b00100000: tag_mang_byte_count = 4'b0001;
        8'b01000000: tag_mang_byte_count = 4'b0001;
        8'b10000000: tag_mang_byte_count = 4'b0001;
        8'b00000000: tag_mang_byte_count = 4'b0001;
        default: tag_mang_byte_count = 4'b0000;
      endcase   
    else
      tag_mang_byte_count = 4'b0000;
  end

  assign axi_cpld_ready          = axi_cpld_ready_r;
  assign completion_ur_done      = completion_ur_done_r;
  assign s_axis_bypass_cc_tready = s_axis_bypass_cc_tready_r;

  assign dw1_header_32           = { 12'd0 ,tag_mang_byte_count, 9'd0, tag_mang_lower_addr_rd };
  assign dw2_header_32           = { tag_mang_requester_id_rd, ((tag_mang_2dw_rd) ? 16'd2 : 16'd1) };
  assign dw3_header_32           = { 1'b0, tag_mang_attr_rd, tag_mang_tc_rd, 1'd0, 13'd0, C_TARGET_FUNCTION, tag_mang_tag_rd };

  assign dw1_header_32_ur           = { 16'd1, 9'd0, completion_ur_lower_addr };
  assign dw2_header_32_ur           = { completion_ur_requester_id, 5'd1 ,11'd0 }; //Sets the UR bit
  assign dw3_header_32_ur           = { 1'b0, completion_ur_attr, completion_ur_tc, 1'd0, 13'd0, C_TARGET_FUNCTION, completion_ur_tag };
  
  assign m_axis_pcie_cc_tdata         = m_axis_pcie_cc_tdata_r;
  assign m_axis_pcie_cc_tuser         = m_axis_pcie_cc_tuser_r;
  assign m_axis_pcie_cc_tlast         = m_axis_pcie_cc_tlast_r;
  assign m_axis_pcie_cc_tkeep         = m_axis_pcie_cc_tkeep_r;
  assign m_axis_pcie_cc_tvalid        = m_axis_pcie_cc_tvalid_r;
  
endmodule



//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_axis_cq_controller # (
  parameter integer C_TDATA_WIDTH          = 512,
  parameter	integer C_TUSER_WIDTH          = 183,
  parameter [2:0]   C_BAR_ID               = 3'b0,
  parameter [2:0]   C_TARGET_FUNCTION      = 3'b0
  ) (                                                                   
  input                                 aclk,
  input                                 aresetn,
  
  input  [C_TDATA_WIDTH-1:0]            s_axis_pcie_cq_tdata,
  input  [C_TUSER_WIDTH-1:0]            s_axis_pcie_cq_tuser,
  input                                 s_axis_pcie_cq_tlast,
  input  [C_TDATA_WIDTH/32-1:0]         s_axis_pcie_cq_tkeep,
  input                                 s_axis_pcie_cq_tvalid,
  output                                s_axis_pcie_cq_tready,

  output [C_TDATA_WIDTH-1:0]            m_axis_bypass_cq_tdata,
  output [C_TUSER_WIDTH-1:0]            m_axis_bypass_cq_tuser,
  output                                m_axis_bypass_cq_tlast,
  output [C_TDATA_WIDTH/32-1:0]         m_axis_bypass_cq_tkeep,
  output                                m_axis_bypass_cq_tvalid,
  input                                 m_axis_bypass_cq_tready,

  //TLP Information to AXI 
  output                               mem_req_valid,
  input                                mem_req_ready,
  output [2:0]                         mem_req_bar_hit,
  output [63:0]                        mem_req_pcie_address,
  output [3:0]                         mem_req_byte_enable,
  output                               mem_req_write_readn,
  output                               mem_req_phys_func,
  output [3:0]                         mem_req_last_be,
  output [1:0]                         mem_req_word_en,
  output [63:0]                        mem_req_write_data,
    
  //Memory Reads Records
  output                               tag_mang_write_en,     
  output [2:0]                         tag_mang_tc_wr,
  output [2:0]                         tag_mang_attr_wr,
  output [15:0]                        tag_mang_requester_id_wr,
  output [6:0]                         tag_mang_lower_addr_wr,   
  output                               tag_mang_completer_func_wr, 
  output [1:0]                         tag_mang_word_en_wr, 
  output                               tag_mang_2dw_wr, 
  output [7:0]                         tag_mang_tag_wr,           
  output [3:0]                         tag_mang_first_be_wr, 
  output [3:0]                         tag_mang_last_be_wr, 

  output                               completion_ur_req,
  output [7:0]                         completion_ur_tag,
  output [6:0]                         completion_ur_lower_addr,
  output [15:0]                        completion_ur_requester_id,
  output [2:0]                         completion_ur_tc,
  output [2:0]                         completion_ur_attr,
  input                                completion_ur_done      
  
  );

   localparam integer TCQ         = 1;
   localparam [3:0] IDLE                = 4'h0;
   localparam [3:0] READ_PROCESS_128    = 4'h1;
   localparam [3:0] WRITE_DATA_128      = 4'h2;
   localparam [3:0] WRITE_BEAT2_128     = 4'h8;
   localparam [3:0] WRITE_BEAT2_256     = 4'h8;
   localparam [3:0] READ_PROCESS_256    = 4'h1;
   localparam [3:0] WRITE_DATA_256      = 4'h2;
   localparam [3:0] HOLD_VALID          = 4'h3;
   localparam [3:0] COMPLETION_UR       = 4'h4;
   localparam [3:0] WAIT_FOR_LAST       = 4'h5;
   localparam [3:0] READ_PROCESS_512    = 4'h1;
   localparam [3:0] WRITE_DATA_512      = 4'h2;
   localparam [3:0] BYPASS_RX           = 4'h6;
   localparam [3:0] BYPASS_TX           = 4'h7;
   
   reg [3:0] saxis_sm = IDLE;
   
   reg [127:0]               s_axis_pcie_cq_tdata_wide_r;
   reg [63:0]                mem_req_write_data_r;
   reg [3:0]                 first_be_r; 
   reg [3:0]                 last_be_r; 
   reg [1:0]                 first_byte_addr;
   reg                       mem_req_write_readn_r; 
   reg                       mem_read_pulse = 1'b0;
   reg                       s_axis_pcie_cq_tready_r = 1'b0;
   reg                       mem_req_valid_r = 1'b0;
   reg                       mem_req_2dw_r;
   reg [1:0]                 mem_req_word_en_r;
   reg                       completion_ur_req_r = 1'b0;
   
   reg [C_TDATA_WIDTH-1:0]            m_axis_bypass_cq_tdata_r ;
   reg [C_TUSER_WIDTH-1:0]            m_axis_bypass_cq_tuser_r ;
   reg                                m_axis_bypass_cq_tlast_r ;
   reg [C_TDATA_WIDTH/32-1:0]         m_axis_bypass_cq_tkeep_r ;
   reg                                m_axis_bypass_cq_tvalid_r = 1'b0;

   generate
      if (C_TDATA_WIDTH == 128) begin: C_TDATA_WIDTH_128
       
       always @(posedge aclk)
          if (!aresetn) begin
             saxis_sm                  <= #TCQ IDLE;
             mem_read_pulse            <= #TCQ 1'b0;
             s_axis_pcie_cq_tready_r   <= #TCQ 1'b0; 
             mem_req_valid_r           <= #TCQ 1'b0;
             completion_ur_req_r       <= #TCQ 1'b0;
             m_axis_bypass_cq_tvalid_r <= #TCQ 1'b0;
          end
          else
             case ( saxis_sm )
                IDLE : begin
                  mem_req_valid_r               <= #TCQ 1'b0;
                  if ( s_axis_pcie_cq_tvalid ) begin
                    if ( s_axis_pcie_cq_tready_r ) begin
                      if ((s_axis_pcie_cq_tdata[106:104] == C_TARGET_FUNCTION) && (s_axis_pcie_cq_tdata[114:112] == C_BAR_ID)) begin
                        if (s_axis_pcie_cq_tdata[78:75] == 4'h0) begin // If Memory Read
                          if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd1 ) begin       // 1DW Read
                            saxis_sm                      <= #TCQ READ_PROCESS_128; 
                            mem_req_write_readn_r         <= #TCQ 1'b0;
                            mem_read_pulse                <= #TCQ 1'b1;
                            mem_req_2dw_r                 <= #TCQ 1'b0;
                            mem_req_word_en_r             <= #TCQ 2'b01;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                          end else if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd2 ) begin       // 2DW Read                  
                            saxis_sm                      <= #TCQ READ_PROCESS_128; 
                            mem_req_write_readn_r         <= #TCQ 1'b0;
                            mem_read_pulse                <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            mem_req_2dw_r                 <= #TCQ 1'b1;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r            <= #TCQ 1'b0;
                            if (s_axis_pcie_cq_tuser[7:4] == 4'b0000) begin  // Low word only
                              mem_req_word_en_r             <= #TCQ 2'b01;
                            end else if (s_axis_pcie_cq_tuser[3:0] == 4'b0000) begin  // High word only
                              mem_req_word_en_r             <= #TCQ 2'b10;
                            end else begin  // 2-word read
                              mem_req_word_en_r             <= #TCQ 2'b11;
                            end
                          end else begin  // >2DW Read
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            saxis_sm                      <= #TCQ COMPLETION_UR;
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                          end
                        end else if (s_axis_pcie_cq_tdata[78:75] == 4'h1) begin // If Memory Write
                          if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd1 ) begin       // 1DW Write
                            saxis_sm                      <= #TCQ WRITE_DATA_128;
                            mem_req_write_readn_r         <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b0; 
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            mem_req_2dw_r                 <= #TCQ 1'b0;
                            mem_req_word_en_r             <= #TCQ 2'b01;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0]; 
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;  
                          end else if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd2 ) begin       // 2DW Write                  
                            saxis_sm                      <= #TCQ WRITE_DATA_128; 
                            mem_req_write_readn_r         <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b0;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata[127:0]; 
                            mem_req_2dw_r                 <= #TCQ 1'b1;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                            if (s_axis_pcie_cq_tuser[7:4] == 4'b0000) begin  // Low word only
                              mem_req_word_en_r             <= #TCQ 2'b01;
                            end else if (s_axis_pcie_cq_tuser[3:0] == 4'b0000) begin  // High word only
                              mem_req_word_en_r             <= #TCQ 2'b10;
                            end else begin  // 2-word read
                              mem_req_word_en_r             <= #TCQ 2'b11;
                            end
                          end else begin  // >2DW Write
                            if (s_axis_pcie_cq_tlast) begin
                              s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                              saxis_sm <= #TCQ IDLE;
                            end else begin
                              s_axis_pcie_cq_tready_r       <= #TCQ 1'b1;
                              saxis_sm <= #TCQ WAIT_FOR_LAST;
                            end                     
                          end         
                        end     
                      end else begin  // Bypass
                        saxis_sm <= #TCQ BYPASS_TX;
                        s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                        m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b1;
                      end
                    end else begin
                      s_axis_pcie_cq_tready_r            <= #TCQ 1'b1;
                    end
                  end
                end
                READ_PROCESS_128 : begin
                  mem_read_pulse <= #TCQ 1'b0;   
                  if (mem_req_ready) begin
                    mem_req_valid_r <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end
                end
                WRITE_DATA_128: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    mem_req_write_data_r <= #TCQ s_axis_pcie_cq_tdata >> (32 * s_axis_pcie_cq_tdata_wide_r[3:2]); 
                    if (s_axis_pcie_cq_tready_r) begin
                      s_axis_pcie_cq_tready_r <= #TCQ 1'b0; 
                      if ( s_axis_pcie_cq_tlast ) begin
                        mem_req_valid_r    <= #TCQ 1'b0;
                        saxis_sm <= #TCQ IDLE;
                      end else begin 
                        saxis_sm <= #TCQ WRITE_BEAT2_128;
                      end
                    end else begin
                      if ( s_axis_pcie_cq_tlast ) begin
                        if (mem_req_ready) begin
                          mem_req_valid_r    <= #TCQ 1'b1;
                          s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                        end
                      end else begin
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                      end
                    end
                  end
                end
                WRITE_BEAT2_128: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    if ((s_axis_pcie_cq_tdata_wide_r[3:2] == 2'b11) & (mem_req_word_en_r[1])) begin  // High word
                      mem_req_write_data_r[63:32] <= #TCQ s_axis_pcie_cq_tdata[31:0]; 
                    end
                    if (s_axis_pcie_cq_tready_r) begin
                      if ( s_axis_pcie_cq_tlast ) begin
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b0; 
                        mem_req_valid_r    <= #TCQ 1'b0;
                        saxis_sm <= #TCQ IDLE;
                      end else begin 
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                        saxis_sm <= #TCQ WAIT_FOR_LAST;
                      end
                    end else begin
                      if (mem_req_ready) begin
                        mem_req_valid_r    <= #TCQ 1'b1;
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                      end
                    end
                  end
                end
                WAIT_FOR_LAST: begin
                  if ( s_axis_pcie_cq_tvalid & s_axis_pcie_cq_tlast ) begin
                    s_axis_pcie_cq_tready_r <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end else begin
                    s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                  end 
                end 
                COMPLETION_UR: begin
                  if ( completion_ur_done ) begin
                    saxis_sm <= #TCQ IDLE;
                    completion_ur_req_r <= 1'b0;
                  end else begin
                    completion_ur_req_r <= 1'b1;
                  end
                end 
                BYPASS_TX: begin
                  if (m_axis_bypass_cq_tready) begin
                    m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b0;
                    if (m_axis_bypass_cq_tlast_r) begin
                      s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                      saxis_sm <= #TCQ IDLE;
                    end else begin
                      s_axis_pcie_cq_tready_r       <= #TCQ 1'b1;
                      saxis_sm <= #TCQ BYPASS_RX;
                    end
                  end
                end
                BYPASS_RX: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                    m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b1;
                    saxis_sm <= #TCQ BYPASS_TX;
                  end
                end
                default: begin  // Fault Recovery
                   saxis_sm <= #TCQ IDLE;
                 end
              endcase    
                  
      end else if (C_TDATA_WIDTH == 256) begin: C_TDATA_WIDTH_256
       
       always @(posedge aclk)
          if (!aresetn) begin
             saxis_sm                  <= #TCQ IDLE;
             mem_read_pulse            <= #TCQ 1'b0;
             s_axis_pcie_cq_tready_r   <= #TCQ 1'b0; 
             mem_req_valid_r           <= #TCQ 1'b0;
             completion_ur_req_r       <= #TCQ 1'b0;
             m_axis_bypass_cq_tvalid_r <= #TCQ 1'b0;
          end
          else
             case ( saxis_sm )
                IDLE : begin
                  mem_req_valid_r               <= #TCQ 1'b0;
                  if ( s_axis_pcie_cq_tvalid ) begin
                    if ( s_axis_pcie_cq_tready_r ) begin
                      if ((s_axis_pcie_cq_tdata[106:104] == C_TARGET_FUNCTION) && (s_axis_pcie_cq_tdata[114:112] == C_BAR_ID)) begin
                        if (s_axis_pcie_cq_tdata[78:75] == 4'h0) begin // If Memory Read
                          if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd1 ) begin       // 1DW Read
                            saxis_sm                      <= #TCQ READ_PROCESS_256; 
                            mem_req_write_readn_r         <= #TCQ 1'b0;
                            mem_read_pulse                <= #TCQ 1'b1;
                            mem_req_2dw_r                 <= #TCQ 1'b0;
                            mem_req_word_en_r             <= #TCQ 2'b01;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                          end else if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd2 ) begin       // 2DW Read                  
                            saxis_sm                      <= #TCQ READ_PROCESS_256; 
                            mem_req_write_readn_r         <= #TCQ 1'b0;
                            mem_read_pulse                <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            mem_req_2dw_r                 <= #TCQ 1'b1;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r            <= #TCQ 1'b0;
                            if (s_axis_pcie_cq_tuser[7:4] == 4'b0000) begin  // Low word only
                              mem_req_word_en_r             <= #TCQ 2'b01;
                            end else if (s_axis_pcie_cq_tuser[3:0] == 4'b0000) begin  // High word only
                              mem_req_word_en_r             <= #TCQ 2'b10;
                            end else begin  // 2-word read
                              mem_req_word_en_r             <= #TCQ 2'b11;
                            end
                          end else begin  // >2DW Read
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            saxis_sm                      <= #TCQ COMPLETION_UR;
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                          end
                        end else if (s_axis_pcie_cq_tdata[78:75] == 4'h1) begin // If Memory Write
                          if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd1 ) begin       // 1DW Write
                            saxis_sm                      <= #TCQ WRITE_DATA_256;
                            mem_req_write_readn_r         <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b0; 
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            mem_req_2dw_r                 <= #TCQ 1'b0;
                            mem_req_word_en_r             <= #TCQ 2'b01;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0]; 
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;  
                          end else if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd2 ) begin       // 2DW Write                  
                            saxis_sm                      <= #TCQ WRITE_DATA_256; 
                            mem_req_write_readn_r         <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b0;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata[127:0]; 
                            mem_req_2dw_r                 <= #TCQ 1'b1;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[7:4];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                            if (s_axis_pcie_cq_tuser[7:4] == 4'b0000) begin  // Low word only
                              mem_req_word_en_r             <= #TCQ 2'b01;
                            end else if (s_axis_pcie_cq_tuser[3:0] == 4'b0000) begin  // High word only
                              mem_req_word_en_r             <= #TCQ 2'b10;
                            end else begin  // 2-word read
                              mem_req_word_en_r             <= #TCQ 2'b11;
                            end
                          end else begin  // >2DW Write
                            if (s_axis_pcie_cq_tlast) begin
                              s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                              saxis_sm <= #TCQ IDLE;
                            end else begin
                              s_axis_pcie_cq_tready_r       <= #TCQ 1'b1;
                              saxis_sm <= #TCQ WAIT_FOR_LAST;
                            end                     
                          end         
                        end     
                      end else begin  // Bypass
                        saxis_sm <= #TCQ BYPASS_TX;
                        s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                        m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b1;
                      end
                    end else begin
                      s_axis_pcie_cq_tready_r            <= #TCQ 1'b1;
                    end
                  end
                end
                READ_PROCESS_256 : begin
                  mem_read_pulse <= #TCQ 1'b0;   
                  if (mem_req_ready) begin
                    mem_req_valid_r <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end
                end
                WRITE_DATA_256: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    mem_req_write_data_r <= #TCQ s_axis_pcie_cq_tdata >> (32 * s_axis_pcie_cq_tdata_wide_r[4:2]); 
                    if (s_axis_pcie_cq_tready_r) begin
                      s_axis_pcie_cq_tready_r <= #TCQ 1'b0; 
                      if ( s_axis_pcie_cq_tlast ) begin
                        mem_req_valid_r    <= #TCQ 1'b0;
                        saxis_sm <= #TCQ IDLE;
                      end else begin 
                        saxis_sm <= #TCQ WRITE_BEAT2_256;
                      end
                    end else begin
                      if ( s_axis_pcie_cq_tlast ) begin
                        if (mem_req_ready) begin
                          mem_req_valid_r    <= #TCQ 1'b1;
                          s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                        end
                      end else begin
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                      end
                    end
                  end
                end
                WRITE_BEAT2_256: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    if ((s_axis_pcie_cq_tdata_wide_r[4:2] == 3'b111) & (mem_req_word_en_r[1])) begin  // High word
                      mem_req_write_data_r[63:32] <= #TCQ s_axis_pcie_cq_tdata[31:0]; 
                    end
                    if (s_axis_pcie_cq_tready_r) begin
                      if ( s_axis_pcie_cq_tlast ) begin
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b0; 
                        mem_req_valid_r    <= #TCQ 1'b0;
                        saxis_sm <= #TCQ IDLE;
                      end else begin 
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                        saxis_sm <= #TCQ WAIT_FOR_LAST;
                      end
                    end else begin
                      if (mem_req_ready) begin
                        mem_req_valid_r    <= #TCQ 1'b1;
                        s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                      end
                    end
                  end
                end
                WAIT_FOR_LAST: begin
                  if ( s_axis_pcie_cq_tvalid & s_axis_pcie_cq_tlast ) begin
                    s_axis_pcie_cq_tready_r <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end else begin
                    s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                  end 
                end 
                COMPLETION_UR: begin
                  if ( completion_ur_done ) begin
                    saxis_sm <= #TCQ IDLE;
                    completion_ur_req_r <= 1'b0;
                  end else begin
                    completion_ur_req_r <= 1'b1;
                  end
                end 
                BYPASS_TX: begin
                  if (m_axis_bypass_cq_tready) begin
                    m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b0;
                    if (m_axis_bypass_cq_tlast_r) begin
                      s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                      saxis_sm <= #TCQ IDLE;
                    end else begin
                      s_axis_pcie_cq_tready_r       <= #TCQ 1'b1;
                      saxis_sm <= #TCQ BYPASS_RX;
                    end
                  end
                end
                BYPASS_RX: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                    m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b1;
                    saxis_sm <= #TCQ BYPASS_TX;
                  end
                end
                default: begin  // Fault Recovery
                   saxis_sm <= #TCQ IDLE;
                 end
              endcase    
                  
      end  else if (C_TDATA_WIDTH == 512) begin: C_TDATA_WIDTH_512
       
       always @(posedge aclk)
          if (!aresetn) begin
             saxis_sm                  <= #TCQ IDLE;
             mem_read_pulse            <= #TCQ 1'b0;
             s_axis_pcie_cq_tready_r   <= #TCQ 1'b0; 
             mem_req_valid_r           <= #TCQ 1'b0;
             completion_ur_req_r       <= #TCQ 1'b0;
             m_axis_bypass_cq_tvalid_r <= #TCQ 1'b0;
          end
          else
             case ( saxis_sm )
                IDLE : begin
                  if ( s_axis_pcie_cq_tvalid ) begin
                    if ( s_axis_pcie_cq_tready_r ) begin
                      if ((s_axis_pcie_cq_tdata[106:104] == C_TARGET_FUNCTION) && (s_axis_pcie_cq_tdata[114:112] == C_BAR_ID)) begin
                        if (s_axis_pcie_cq_tdata[78:75] == 4'h0) begin // If Memory Read
                          if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd1 ) begin       // 1DW Read                  
                            saxis_sm                      <= #TCQ READ_PROCESS_512; 
                            mem_req_write_readn_r         <= #TCQ 1'b0;
                            mem_read_pulse                <= #TCQ 1'b1;
                            mem_req_2dw_r                 <= #TCQ 1'b0;
                            mem_req_word_en_r             <= #TCQ 2'b01;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[11:8];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                          end else if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd2 ) begin       // 2DW Read                  
                            saxis_sm                      <= #TCQ READ_PROCESS_512; 
                            mem_req_write_readn_r         <= #TCQ 1'b0;
                            mem_read_pulse                <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            mem_req_2dw_r                 <= #TCQ 1'b1;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[11:8];
                            s_axis_pcie_cq_tready_r            <= #TCQ 1'b0;
                            if (s_axis_pcie_cq_tuser[11:8] == 4'b0000) begin  // Low word only
                              mem_req_word_en_r             <= #TCQ 2'b01;
                              s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            end else if (s_axis_pcie_cq_tuser[3:0] == 4'b0000) begin  // High word only
                              mem_req_word_en_r             <= #TCQ 2'b10;
                              s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            end else begin  // 2-word read
                              mem_req_word_en_r             <= #TCQ 2'b11;
                              s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata; 
                            end
                          end else begin  // >2DW Read
                            s_axis_pcie_cq_tdata_wide_r     <= #TCQ s_axis_pcie_cq_tdata; 
                            first_be_r                      <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            saxis_sm                        <= #TCQ COMPLETION_UR;
                            s_axis_pcie_cq_tready_r         <= #TCQ 1'b0;
                          end
                        end else if (s_axis_pcie_cq_tdata[78:75] == 4'h1) begin // If Memory Write
                          if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd1 ) begin       // 1DW Write
                            saxis_sm                      <= #TCQ WRITE_DATA_512;
                            mem_req_write_readn_r         <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b1; 
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata[127:0]; 
                            mem_req_write_data_r          <= #TCQ s_axis_pcie_cq_tdata[287:128] >> (32 * s_axis_pcie_cq_tdata[3:2]); 
                            mem_req_2dw_r                 <= #TCQ 1'b0;
                            mem_req_word_en_r             <= #TCQ 2'b01;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0]; 
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[11:8];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;   
                          end else if ( s_axis_pcie_cq_tdata[10+64:0+64] == 11'd2 ) begin       // 2DW Write                  
                            saxis_sm                      <= #TCQ WRITE_DATA_512; 
                            mem_req_write_readn_r         <= #TCQ 1'b1;
                            mem_req_valid_r               <= #TCQ 1'b1;
                            s_axis_pcie_cq_tdata_wide_r   <= #TCQ s_axis_pcie_cq_tdata[127:0]; 
                            mem_req_2dw_r                 <= #TCQ 1'b1;
                            first_be_r                    <= #TCQ s_axis_pcie_cq_tuser[3:0];
                            last_be_r                     <= #TCQ s_axis_pcie_cq_tuser[11:8];
                            s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                            if (s_axis_pcie_cq_tuser[11:8] == 4'b0000) begin  // Low word only
                              mem_req_word_en_r             <= #TCQ 2'b01;
                              mem_req_write_data_r          <= #TCQ s_axis_pcie_cq_tdata[287:128] >> (32 * s_axis_pcie_cq_tdata[3:2]); 
                            end else if (s_axis_pcie_cq_tuser[3:0] == 4'b0000) begin  // High word only
                              mem_req_word_en_r             <= #TCQ 2'b10;
                              mem_req_write_data_r          <= #TCQ s_axis_pcie_cq_tdata[287:128] >> (32 * s_axis_pcie_cq_tdata[3:2]); 
                            end else begin  // 2-word read
                              mem_req_word_en_r             <= #TCQ 2'b11;
                              mem_req_write_data_r          <= #TCQ s_axis_pcie_cq_tdata[287:128] >> (32 * s_axis_pcie_cq_tdata[3:2]); 
                            end
                          end else begin  // >2DW Write
                            if (s_axis_pcie_cq_tlast) begin
                              s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                              saxis_sm <= #TCQ IDLE;
                            end else begin
                              s_axis_pcie_cq_tready_r       <= #TCQ 1'b1;
                              saxis_sm <= #TCQ WAIT_FOR_LAST;
                            end                    
                          end             
                        end
                      end else begin  // Bypass
                        saxis_sm <= #TCQ BYPASS_TX;
                        s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                        m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b1;
                      end
                    end else begin
                      s_axis_pcie_cq_tready_r            <= #TCQ 1'b1;
                    end
                  end
                end
                READ_PROCESS_512 : begin
                  mem_read_pulse <= #TCQ 1'b0;   
                  if (mem_req_ready) begin
                    mem_req_valid_r <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end
                end
                WRITE_DATA_512: begin
                  if (mem_req_ready) begin
                    mem_req_valid_r    <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end else begin 
                    mem_req_valid_r    <= #TCQ 1'b1;
                  end
                end
                WAIT_FOR_LAST: begin
                  if ( s_axis_pcie_cq_tvalid & s_axis_pcie_cq_tlast ) begin
                    s_axis_pcie_cq_tready_r <= #TCQ 1'b0;
                    saxis_sm <= #TCQ IDLE;
                  end else begin
                    s_axis_pcie_cq_tready_r <= #TCQ 1'b1; 
                  end 
                end 
                COMPLETION_UR: begin
                  if ( completion_ur_done ) begin
                    saxis_sm <= #TCQ IDLE;
                    completion_ur_req_r <= 1'b0;
                  end else begin
                    completion_ur_req_r <= 1'b1;
                  end
                end 
                BYPASS_TX: begin
                  if (m_axis_bypass_cq_tready) begin
                    m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b0;
                    if (m_axis_bypass_cq_tlast_r) begin
                      s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                      saxis_sm <= #TCQ IDLE;
                    end else begin
                      s_axis_pcie_cq_tready_r       <= #TCQ 1'b1;
                      saxis_sm <= #TCQ BYPASS_RX;
                    end
                  end
                end
                BYPASS_RX: begin
                  if (s_axis_pcie_cq_tvalid) begin
                    s_axis_pcie_cq_tready_r       <= #TCQ 1'b0;
                    m_axis_bypass_cq_tvalid_r     <= #TCQ 1'b1;
                    saxis_sm <= #TCQ BYPASS_TX;
                  end
                end
                default: begin  // Fault Recovery
                   saxis_sm <= #TCQ IDLE;
                end
             endcase         
                 
      end
    endgenerate         
         
  always @(posedge aclk) begin
    if (m_axis_bypass_cq_tready | ~m_axis_bypass_cq_tvalid_r) begin
      m_axis_bypass_cq_tdata_r       <= s_axis_pcie_cq_tdata ;
      m_axis_bypass_cq_tuser_r       <= s_axis_pcie_cq_tuser ;
      m_axis_bypass_cq_tlast_r       <= s_axis_pcie_cq_tlast ;
      m_axis_bypass_cq_tkeep_r       <= s_axis_pcie_cq_tkeep ;
    end
  end
  
  always @( first_be_r ) begin
    casex ( first_be_r )
      4'bxx10: first_byte_addr = 2'b01;
      4'bx100: first_byte_addr = 2'b10;
      4'b1000: first_byte_addr = 2'b11;
      default: first_byte_addr = 2'b00;
    endcase
  end

  assign m_axis_bypass_cq_tdata  = m_axis_bypass_cq_tdata_r ;
  assign m_axis_bypass_cq_tuser  = m_axis_bypass_cq_tuser_r ;
  assign m_axis_bypass_cq_tlast  = m_axis_bypass_cq_tlast_r ;
  assign m_axis_bypass_cq_tkeep  = m_axis_bypass_cq_tkeep_r ;
  assign m_axis_bypass_cq_tvalid = m_axis_bypass_cq_tvalid_r;

  assign  mem_req_valid                = mem_req_valid_r;
  assign  mem_req_bar_hit              = s_axis_pcie_cq_tdata_wide_r[114:112];
  assign  mem_req_pcie_address         = {s_axis_pcie_cq_tdata_wide_r[63:2], 2'b00};
  assign  mem_req_word_en              = mem_req_word_en_r;
  assign  mem_req_byte_enable          = first_be_r;
  assign  mem_req_last_be              = last_be_r;
  assign  mem_req_write_readn          = mem_req_write_readn_r;
  assign  mem_req_phys_func            = s_axis_pcie_cq_tdata_wide_r[64];
  assign  mem_req_write_data           = mem_req_write_data_r;
    
  //Memory Reads Records
  assign   tag_mang_write_en            = mem_read_pulse;    
  assign   tag_mang_tc_wr               = s_axis_pcie_cq_tdata_wide_r[123:121];
  assign   tag_mang_attr_wr             = s_axis_pcie_cq_tdata_wide_r[126:124];
  assign   tag_mang_requester_id_wr     = s_axis_pcie_cq_tdata_wide_r[95:80];
  assign   tag_mang_lower_addr_wr       = {s_axis_pcie_cq_tdata_wide_r[6:2], first_byte_addr[1:0]};  
  assign   tag_mang_completer_func_wr   = s_axis_pcie_cq_tdata_wide_r[104];
  assign   tag_mang_tag_wr              = s_axis_pcie_cq_tdata_wide_r[103:96];
  assign   tag_mang_2dw_wr              = mem_req_2dw_r;
  assign   tag_mang_word_en_wr          = mem_req_word_en_r;
  assign   tag_mang_first_be_wr         = first_be_r;
  assign   tag_mang_last_be_wr          = last_be_r;

  assign   completion_ur_tag            = s_axis_pcie_cq_tdata_wide_r[103:96];
  assign   completion_ur_lower_addr     = {s_axis_pcie_cq_tdata_wide_r[6:2], first_byte_addr[1:0]};  
  assign   completion_ur_requester_id   = s_axis_pcie_cq_tdata_wide_r[95:80];
  assign   completion_ur_tc             = s_axis_pcie_cq_tdata_wide_r[123:121];
  assign   completion_ur_attr           = s_axis_pcie_cq_tdata_wide_r[126:124];
  assign   completion_ur_req            = completion_ur_req_r;
  
  assign   s_axis_pcie_cq_tready        = s_axis_pcie_cq_tready_r;
  
endmodule



//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_axi_write_controller# (
  parameter integer C_ADDR_WIDTH         = 32,
  parameter [63:0]  BAR2AXI              = 64'h0000000000000000,
  parameter integer BAR_SIZE             = 7
  
//  parameter M_AXI_IDWIDTH              = 5,
//  parameter  BAR0AXI                   = 64'h00000000,
//  parameter  BAR1AXI                   = 64'h00000000,
//  parameter  BAR2AXI                   = 64'h00000000,
//  parameter  BAR3AXI                   = 64'h00000000,
//  parameter  BAR4AXI                   = 64'h00000000,
//  parameter  BAR5AXI                   = 64'h00000000, 
//  parameter  BAR0SIZE                  = 12,
//  parameter  BAR1SIZE                  = 12,
//  parameter  BAR2SIZE                  = 12,
//  parameter  BAR3SIZE                  = 12,
//  parameter  BAR4SIZE                  = 12,
//  parameter  BAR5SIZE                  = 12
 ) (

  input                                 aclk,
  input                                 aresetn,
 
  
  output [C_ADDR_WIDTH-1 : 0]           m_axi_awaddr,
  output [2 : 0]                        m_axi_awprot,
  output                                m_axi_awvalid,
  input                                 m_axi_awready,
    
  output [32-1 : 0]                     m_axi_wdata,
  output [32/8-1 : 0]                   m_axi_wstrb,
  output                                m_axi_wvalid,
  input                                 m_axi_wready,
    
  input  [1 : 0]                        m_axi_bresp,
  input                                 m_axi_bvalid,
  output                                m_axi_bready,
  
  //Memory Request TLP Info
  input                                 mem_req_valid,
  output                                mem_req_ready,
  input [2:0]                           mem_req_bar_hit,
  input [63:0]                          mem_req_pcie_address,
  input [3:0]                           mem_req_byte_enable,
  input                                 mem_req_write_readn,
  input [3:0]                           mem_req_last_be,
  input [1:0]                           mem_req_word_en,
  input [63:0]                          mem_req_write_data
  
  );
  
  localparam integer TCQ       = 1;
  localparam IDLE        = 3'h0;
  localparam WRITE_REQ   = 3'h1;
  localparam WRITE_DATA  = 3'h2;
  localparam WAIT_ACK    = 3'h3;
  localparam WRITE_REQ2  = 3'h4;
  localparam WRITE_DATA2 = 3'h5;
  localparam WAIT_ACK2   = 3'h6;
 
  reg [2:0] aximm_wr_sm = IDLE;
  
  reg                 mem_req_ready_r = 1'b0;
  reg                 m_axi_awvalid_r = 1'b0;
  reg                 m_axi_wvalid_r = 1'b0;
  reg [63:0]          m_axi_addr_c;
  reg [63:0]          m_axi_addr_r;
  
  reg [3:0]           mem_req_byte_enable_r;
  reg [3:0]           mem_req_last_be_r;
  reg [2:0]           mem_req_bar_hit_r;
  reg [2:0]           mem_req_word_en_r;
  reg [63:0]          mem_req_write_data_r;
  reg [32-1 : 0]      m_axi_wdata_r;
  reg [32/8-1 : 0]    m_axi_wstrb_r;
  reg                 aw_done = 1'b0;
  reg                 w_done = 1'b0;
  
 
  always @(posedge aclk)
     if ( !aresetn ) begin
        aximm_wr_sm     <= #TCQ IDLE;
        mem_req_ready_r <= #TCQ 1'b0;
        m_axi_awvalid_r <= #TCQ 1'b0;
        m_axi_wvalid_r  <= #TCQ 1'b0;
        aw_done         <= #TCQ 1'b0;
        w_done          <= #TCQ 1'b0;
     end else
        case (aximm_wr_sm)
           IDLE : begin
              if ( mem_req_valid & mem_req_write_readn ) begin
                aximm_wr_sm     <= #TCQ WRITE_DATA;
                m_axi_awvalid_r <= #TCQ 1'b1;
                m_axi_wvalid_r  <= #TCQ 1'b1;
                case (mem_req_word_en)
                  2'b01: begin  // Low word only
                    m_axi_addr_r    <= #TCQ m_axi_addr_c;
                    m_axi_wdata_r   <= #TCQ mem_req_write_data[31:0];
                    m_axi_wstrb_r   <= #TCQ mem_req_byte_enable;
                  end
                  
                  2'b10: begin  // High word only
                    m_axi_addr_r    <= #TCQ {m_axi_addr_c[63:12], (m_axi_addr_c[11:0] + 12'h4)};
                    m_axi_wdata_r   <= #TCQ mem_req_write_data[63:32];
                    m_axi_wstrb_r   <= #TCQ mem_req_last_be;
                  end
                  
                  2'b11: begin  // First of 2 Word Write
                    m_axi_addr_r    <= #TCQ m_axi_addr_c;
                    m_axi_wdata_r   <= #TCQ mem_req_write_data[31:0];
                    m_axi_wstrb_r   <= #TCQ mem_req_byte_enable;
                  end
                endcase
                mem_req_ready_r <= #TCQ 1'b0;
              end else begin
                m_axi_awvalid_r <= #TCQ 1'b0;
                m_axi_wvalid_r  <= #TCQ 1'b0;
                aw_done         <= #TCQ 1'b0;
                w_done          <= #TCQ 1'b0;
                mem_req_ready_r <= #TCQ 1'b1;
              end
           end
           WRITE_DATA : begin
              if ((m_axi_awready | aw_done) & (m_axi_wready | w_done)) begin
                aximm_wr_sm     <= #TCQ WAIT_ACK;
                m_axi_awvalid_r <= #TCQ 1'b0;
                m_axi_wvalid_r  <= #TCQ 1'b0;
                aw_done         <= #TCQ 1'b0;
                w_done          <= #TCQ 1'b0;
              end else begin
                if (m_axi_awready) begin
                  m_axi_awvalid_r <= 1'b0;
                  aw_done <= 1'b1;
                end
                if (m_axi_wready) begin
                  m_axi_wvalid_r <= #TCQ 1'b0;
                  w_done <= #TCQ 1'b1;
                end
              end 
           end
	         WAIT_ACK : begin
	           if (m_axi_bvalid) begin
                case (mem_req_word_en_r)
                  2'b01: begin  // Low word only
                    aximm_wr_sm   <= #TCQ IDLE;
                    mem_req_ready_r <= #TCQ 1'b1; 
                  end
                  
                  2'b10: begin  // High word only
                    aximm_wr_sm   <= #TCQ IDLE;
                    mem_req_ready_r <= #TCQ 1'b1; 
                  end
                  
                  2'b11: begin  // First of 2 Word Write
                    aximm_wr_sm   <= #TCQ WRITE_DATA2;
                    mem_req_ready_r <= #TCQ 1'b0; 
                    m_axi_awvalid_r <= #TCQ 1'b1;
                    m_axi_wvalid_r  <= #TCQ 1'b1;
                    m_axi_addr_r    <= #TCQ {m_axi_addr_r[63:12], (m_axi_addr_r[11:0] + 12'h4)};
                    m_axi_wdata_r   <= #TCQ mem_req_write_data_r[63:32];
                    m_axi_wstrb_r   <= #TCQ mem_req_last_be_r;
                  end
                endcase
             end 
           end 
	      
           WRITE_DATA2 : begin
              if ((m_axi_awready | aw_done) & (m_axi_wready | w_done)) begin
                aximm_wr_sm    <= #TCQ WAIT_ACK2;
                m_axi_awvalid_r <= #TCQ 1'b0;
                m_axi_wvalid_r  <= #TCQ 1'b0;
                aw_done         <= #TCQ 1'b0;
                w_done          <= #TCQ 1'b0;
              end else begin
                if (m_axi_awready) begin
                  m_axi_awvalid_r <= 1'b0;
                  aw_done <= 1'b1;
                end
                if (m_axi_wready) begin
                  m_axi_wvalid_r <= #TCQ 1'b0;
                  w_done <= #TCQ 1'b1;
                end
              end 
           end
	         WAIT_ACK2 : begin
	           if (m_axi_bvalid) begin
                aximm_wr_sm   <= #TCQ IDLE;
                mem_req_ready_r <= #TCQ 1'b1;
             end 
            end 
	      
           default : begin  // Fault Recovery
              aximm_wr_sm <= #TCQ IDLE;
           end   
        endcase  
        
  assign mem_req_ready = mem_req_ready_r;      
  
  assign m_axi_awaddr  = m_axi_addr_r;
  assign m_axi_awprot  = 0;
  assign m_axi_awvalid = m_axi_awvalid_r;
        
  assign m_axi_wdata  = m_axi_wdata_r;
  assign m_axi_wstrb  = m_axi_wstrb_r;
  assign m_axi_wvalid = m_axi_wvalid_r;
        
  assign m_axi_bready = 1'b1; 
  
  always @(posedge aclk) begin
    if ( mem_req_valid & mem_req_ready & mem_req_write_readn ) begin
      mem_req_byte_enable_r   <= mem_req_byte_enable;
      mem_req_last_be_r       <= mem_req_last_be;
      mem_req_bar_hit_r       <= mem_req_bar_hit;
      mem_req_write_data_r    <= mem_req_write_data;
      mem_req_word_en_r       <= mem_req_word_en;
      
    end
  end
  
  always @(mem_req_pcie_address)    
    m_axi_addr_c <= { BAR2AXI[C_ADDR_WIDTH-1:BAR_SIZE], mem_req_pcie_address[BAR_SIZE-1:2],2'b00};
//  assign  mem_req_pcie_address         = (mem_req_word_en_r == 2'b10) ? {s_axis_pcie_cq_tdata_wide_r[31:12], (s_axis_pcie_cq_tdata_wide_r[11:0] + 12'h4)} : s_axis_pcie_cq_tdata_wide_r[31:0];

//  always @( mem_req_bar_hit_r, mem_req_pcie_address_r )    
//     case ( mem_req_bar_hit_r )
//        3'b000: m_axi_addr_c <= { BAR0AXI[C_ADDR_WIDTH-1:BAR0SIZE], mem_req_pcie_address_r[BAR0SIZE-1:2],2'b00};
//        3'b001: m_axi_addr_c <= { BAR1AXI[C_ADDR_WIDTH-1:BAR1SIZE], mem_req_pcie_address_r[BAR1SIZE-1:2],2'b00};
//        3'b010: m_axi_addr_c <= { BAR2AXI[C_ADDR_WIDTH-1:BAR2SIZE], mem_req_pcie_address_r[BAR2SIZE-1:2],2'b00};
//        3'b011: m_axi_addr_c <= { BAR3AXI[C_ADDR_WIDTH-1:BAR3SIZE], mem_req_pcie_address_r[BAR3SIZE-1:2],2'b00};
//        3'b100: m_axi_addr_c <= { BAR4AXI[C_ADDR_WIDTH-1:BAR4SIZE], mem_req_pcie_address_r[BAR4SIZE-1:2],2'b00};
//        3'b101: m_axi_addr_c <= { BAR5AXI[C_ADDR_WIDTH-1:BAR5SIZE], mem_req_pcie_address_r[BAR5SIZE-1:2],2'b00};
//        3'b110: m_axi_addr_c <= 32'd0;
//        3'b111: m_axi_addr_c <= 32'd0;
//     endcase  
  
  
endmodule



//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------


`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_maxi_controller # (   
  parameter integer C_ADDR_WIDTH         = 32,
  parameter [63:0]  BAR2AXI              = 64'h0000000000000000,
  parameter integer BAR_SIZE             = 7
  
//  parameter  BAR0AXI                   = 64'h00000000,
//  parameter  BAR1AXI                   = 64'h00000000,
//  parameter  BAR2AXI                   = 64'h00000000,
//  parameter  BAR3AXI                   = 64'h00000000,
//  parameter  BAR4AXI                   = 64'h00000000,
//  parameter  BAR5AXI                   = 64'h00000000,
//  parameter  BAR0SIZE                  = 12,
//  parameter  BAR1SIZE                  = 12,
//  parameter  BAR2SIZE                  = 12,
//  parameter  BAR3SIZE                  = 12,
//  parameter  BAR4SIZE                  = 12,
//  parameter  BAR5SIZE                  = 12 
 ) (

  input                                 aclk,
  input                                 aresetn,

  output [C_ADDR_WIDTH-1 : 0]           m_axi_awaddr,
  output [2 : 0]                        m_axi_awprot,
  output                                m_axi_awvalid,
  input                                 m_axi_awready,
  
  output [32-1 : 0]                     m_axi_wdata,
  output [32/8-1 : 0]                   m_axi_wstrb,
  output                                m_axi_wvalid,
  input                                 m_axi_wready,
  
  input  [1 : 0]                        m_axi_bresp,
  input                                 m_axi_bvalid,
  output                                m_axi_bready,
  
  output [C_ADDR_WIDTH-1 : 0]           m_axi_araddr,
  output [2 : 0]                        m_axi_arprot,
  output                                m_axi_arvalid,
  input                                 m_axi_arready,
 
  input  [32-1 : 0]                     m_axi_rdata,
  input  [1 : 0]                        m_axi_rresp,
  input                                 m_axi_rvalid,
  output                                m_axi_rready,
  
  //Memory Request TLP Info
  input                                 mem_req_valid,
  output                                mem_req_ready,
  input [2:0]                           mem_req_bar_hit,
  input [63:0]                          mem_req_pcie_address,
  input [3:0]                           mem_req_byte_enable,
  input                                 mem_req_write_readn,
  input                                 mem_req_phys_func,
  input [63:0]                          mem_req_write_data,
  input [3:0]                           mem_req_last_be,
  input [1:0]                           mem_req_word_en,
  
  //Completion Data Coming back
  output                                 axi_cpld_valid,
  input                                  axi_cpld_ready,
  output [63:0]                          axi_cpld_data 
  );
  
  localparam OUTSTANDING_READS = 1;
  localparam RELAXED_ORDERING  = 1'b0;

  wire mem_req_ready_r;
  wire mem_req_ready_w;
  wire mem_req_valid_wr;
    
  generate
     if ( RELAXED_ORDERING == 1'b1 ) begin: RELAXED_ORDERING_ENABLED
        assign mem_req_ready = mem_req_write_readn ? mem_req_ready_w : mem_req_ready_r;
        assign mem_req_valid_wr = mem_req_valid ;
     end else begin: RELAXED_ORDERING_DISABLED
        assign mem_req_ready = mem_req_ready_w & mem_req_ready_r;
        assign mem_req_valid_wr = (mem_req_ready_w & mem_req_ready_r) ? mem_req_valid: 1'b0 ;         
     end       
  endgenerate  

  pcie_axi4lite_tap_v1_0_1_axi_read_controller # (
   	.C_ADDR_WIDTH      ( C_ADDR_WIDTH ),
    .BAR2AXI            ( BAR2AXI ),
    .BAR_SIZE           ( BAR_SIZE )
//    .OUTSTANDING_READS ( OUTSTANDING_READS ),
//    .BAR0AXI           ( BAR0AXI ),
//    .BAR1AXI           ( BAR1AXI ),  
//    .BAR2AXI           ( BAR2AXI ),                
//    .BAR3AXI           ( BAR3AXI ),      
//    .BAR4AXI           ( BAR4AXI ),                   
//    .BAR5AXI           ( BAR5AXI ),
//    .BAR0SIZE          ( BAR0SIZE ),
//    .BAR1SIZE          ( BAR1SIZE ),
//    .BAR2SIZE          ( BAR2SIZE ),
//    .BAR3SIZE          ( BAR3SIZE ),
//    .BAR4SIZE          ( BAR4SIZE ),
//    .BAR5SIZE          ( BAR5SIZE ) 
  ) axi_read_controller (
    .aclk              (aclk),   
    .aresetn           (aresetn),
  
    .m_axi_araddr            (m_axi_araddr),
    .m_axi_arprot            (m_axi_arprot),
    .m_axi_arvalid           (m_axi_arvalid),
    .m_axi_arready           (m_axi_arready),
            
    .m_axi_rdata             (m_axi_rdata),
    .m_axi_rresp             (m_axi_rresp), 
    .m_axi_rvalid            (m_axi_rvalid),
    .m_axi_rready            (m_axi_rready),
    
    //Memory Request TLP Info
    .mem_req_valid        ( mem_req_valid_wr ),
    .mem_req_ready        ( mem_req_ready_r ),
    .mem_req_bar_hit      ( mem_req_bar_hit ),
    .mem_req_pcie_address ( mem_req_pcie_address ),
    .mem_req_word_en      ( mem_req_word_en ),
    .mem_req_write_readn  ( mem_req_write_readn ),
    
    //Completion TLP Info
    .axi_cpld_valid       ( axi_cpld_valid ),
    .axi_cpld_ready       ( axi_cpld_ready ),
    .axi_cpld_data        ( axi_cpld_data )  
  );


  pcie_axi4lite_tap_v1_0_1_axi_write_controller #(
    .C_ADDR_WIDTH       ( C_ADDR_WIDTH ),
    .BAR2AXI            ( BAR2AXI ),
    .BAR_SIZE           ( BAR_SIZE )
//  .BAR0AXI           ( BAR0AXI ),
//  .BAR1AXI           ( BAR1AXI ),  
//  .BAR2AXI           ( BAR2AXI ),                
//  .BAR3AXI           ( BAR3AXI ),      
//  .BAR4AXI           ( BAR4AXI ),                   
//  .BAR5AXI           ( BAR5AXI ),
//  .BAR0SIZE          ( BAR0SIZE ),
//  .BAR1SIZE          ( BAR1SIZE ),
//  .BAR2SIZE          ( BAR2SIZE ),
//  .BAR3SIZE          ( BAR3SIZE ),
//  .BAR4SIZE          ( BAR4SIZE ),
//  .BAR5SIZE          ( BAR5SIZE )  
  ) axi_write_controller (
    .aclk     ( aclk ),
    .aresetn  ( aresetn ),
    
    .m_axi_awaddr   ( m_axi_awaddr ),
    .m_axi_awprot   ( m_axi_awprot ),
    .m_axi_awvalid  ( m_axi_awvalid ),
    .m_axi_awready  ( m_axi_awready ),
    
    .m_axi_wdata    ( m_axi_wdata ),
    .m_axi_wstrb    ( m_axi_wstrb ),
    .m_axi_wvalid   ( m_axi_wvalid ),
    .m_axi_wready   ( m_axi_wready ),
    
    .m_axi_bresp    ( m_axi_bresp ),
    .m_axi_bvalid   ( m_axi_bvalid ),
    .m_axi_bready   ( m_axi_bready ),

    //Memory Request TLP Info
    .mem_req_valid        ( mem_req_valid_wr ),
    .mem_req_ready        ( mem_req_ready_w ),
    .mem_req_bar_hit      ( mem_req_bar_hit ),
    .mem_req_pcie_address ( mem_req_pcie_address ),
    .mem_req_byte_enable  ( mem_req_byte_enable ),
    .mem_req_last_be      ( mem_req_last_be ),
    .mem_req_word_en      ( mem_req_word_en ),
    .mem_req_write_readn  ( mem_req_write_readn ),
    .mem_req_write_data   ( mem_req_write_data )

);

  
endmodule



//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------


`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_tag_manager # (
  parameter RAM_ADDR_BITS = 5
)(
  input                     aclk,
  input                     aresetn,
  
  input                     tag_mang_write_en,
  input [2:0]               tag_mang_tc_wr,             //[15:0]
  input [2:0]               tag_mang_attr_wr,           //[15:0]
  input [15:0]              tag_mang_requester_id_wr,   //[15:0]
  input [6:0]               tag_mang_lower_addr_wr,     //[6:0]
  input                     tag_mang_completer_func_wr, //[0:0]
  input [7:0]               tag_mang_tag_wr,            //[7:0]
  input [3:0]               tag_mang_first_be_wr,       //[2:0]
  input [3:0]               tag_mang_last_be_wr, 
  input [1:0]               tag_mang_word_en_wr, 
  input                     tag_mang_2dw_wr, 
       
  input                     tag_mang_read_en,         
  output [2:0]              tag_mang_tc_rd,   //[15:0]
  output [2:0]              tag_mang_attr_rd,   //[15:0]
  output [15:0]             tag_mang_requester_id_rd,   //[15:0]
  output [6:0]              tag_mang_lower_addr_rd,     //[6:0]
  output                    tag_mang_completer_func_rd, //[0:0]
  output [7:0]              tag_mang_tag_rd,            //[7:0]
  output [3:0]              tag_mang_last_be_rd, 
  output [1:0]              tag_mang_word_en_rd, 
  output                    tag_mang_2dw_rd, 
  output [3:0]              tag_mang_first_be_rd      //[2:0]
    );

  localparam integer TCQ         = 1;
    
  reg [RAM_ADDR_BITS-1:0] tag_mang_write_id = 1;      
  reg [RAM_ADDR_BITS-1:0] tag_mang_read_id = 0;        

  always @( posedge aclk )
    if  ( !aresetn ) 
      tag_mang_write_id <= #TCQ 0;
    else if ( tag_mang_write_en ) 
      tag_mang_write_id <= #TCQ tag_mang_write_id + 1;   
      
  always @( posedge aclk )
    if  ( !aresetn ) 
      tag_mang_read_id <= #TCQ 0;
    else if ( tag_mang_read_en ) 
      tag_mang_read_id <= #TCQ tag_mang_read_id + 1;
            
            
   localparam RAM_WIDTH = 49;

   (* RAM_STYLE="distributed" *)
   reg [RAM_WIDTH-1:0] tag_storage [(2**RAM_ADDR_BITS)-1:0];

   wire [RAM_WIDTH-1:0] completion_data;

   always @(posedge aclk)
      if (tag_mang_write_en)
         tag_storage[tag_mang_write_id] <= #TCQ { tag_mang_last_be_wr, tag_mang_word_en_wr, tag_mang_2dw_wr, tag_mang_attr_wr, tag_mang_tc_wr, tag_mang_requester_id_wr, tag_mang_lower_addr_wr, tag_mang_completer_func_wr, tag_mang_tag_wr, tag_mang_first_be_wr};

   assign completion_data = tag_storage[tag_mang_read_id];
   
   assign tag_mang_last_be_rd        = completion_data[48:45];
   assign tag_mang_word_en_rd        = completion_data[44:43];
   assign tag_mang_2dw_rd            = completion_data[42];
   assign tag_mang_attr_rd           = completion_data[41:39];
   assign tag_mang_tc_rd             = completion_data[38:36];
   assign tag_mang_requester_id_rd   = completion_data[35:20];     //[15:0]
   assign tag_mang_lower_addr_rd     = completion_data[19:13];     //[6:0]
   assign tag_mang_completer_func_rd = completion_data[12];        //[0:0]
   assign tag_mang_tag_rd            = completion_data[11:4];      //[7:0]
   assign tag_mang_first_be_rd       = completion_data[3:0];       //[2:0]        



    
endmodule



//-----------------------------------------------------------------------------
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module pcie_axi4lite_tap_v1_0_1_top # (

 parameter [2:0]   C_TARGET_FUNCTION = 3'b0,
 parameter [2:0]   C_BAR_ID          = 3'b0,
 parameter integer C_TDATA_WIDTH     = 512,
 parameter integer C_TUSER_WIDTH_CQ  = 183,
 parameter integer C_TUSER_WIDTH_CC  = 81,
 parameter integer C_ADDR_WIDTH      = 32,
 parameter [63:0]  C_BAR2AXI         = 64'h0000000000000000,
 parameter [63:0]  C_BAR_SIZE        = 64'hFFFFFFFFFE000000
 
 ) (

  input                            aclk,
  input                            aresetn,

  input  [C_TDATA_WIDTH-1:0]       s_axis_pcie_cq_tdata,
  input  [C_TUSER_WIDTH_CQ-1:0]    s_axis_pcie_cq_tuser,
  input                            s_axis_pcie_cq_tlast,
  input  [C_TDATA_WIDTH/32-1:0]    s_axis_pcie_cq_tkeep,
  input                            s_axis_pcie_cq_tvalid,
  output                           s_axis_pcie_cq_tready,

  output  [C_TDATA_WIDTH-1:0]      m_axis_pcie_cc_tdata,
  output  [C_TUSER_WIDTH_CC-1:0]   m_axis_pcie_cc_tuser,
  output                           m_axis_pcie_cc_tlast,
  output  [C_TDATA_WIDTH/32-1:0]   m_axis_pcie_cc_tkeep,
  output                           m_axis_pcie_cc_tvalid,
  input                            m_axis_pcie_cc_tready,
 
  output  [C_TDATA_WIDTH-1:0]      m_axis_bypass_cq_tdata,
  output  [C_TUSER_WIDTH_CQ-1:0]   m_axis_bypass_cq_tuser,
  output                           m_axis_bypass_cq_tlast,
  output  [C_TDATA_WIDTH/32-1:0]   m_axis_bypass_cq_tkeep,
  output                           m_axis_bypass_cq_tvalid,
  input                            m_axis_bypass_cq_tready,

  input  [C_TDATA_WIDTH-1:0]       s_axis_bypass_cc_tdata,
  input  [C_TUSER_WIDTH_CC-1:0]    s_axis_bypass_cc_tuser,
  input                            s_axis_bypass_cc_tlast,
  input  [C_TDATA_WIDTH/32-1:0]    s_axis_bypass_cc_tkeep,
  input                            s_axis_bypass_cc_tvalid,
  output                           s_axis_bypass_cc_tready,
 
  output [C_ADDR_WIDTH-1 : 0]      m_axi_awaddr,
  output [2 : 0]                   m_axi_awprot,
  output                           m_axi_awvalid,
  input                            m_axi_awready,
  
  output [32-1 : 0]                m_axi_wdata,
  output [32/8-1 : 0]              m_axi_wstrb,
  output                           m_axi_wvalid,
  input                            m_axi_wready,
  
  input  [1 : 0]                   m_axi_bresp,
  input                            m_axi_bvalid,
  output                           m_axi_bready,
  
  output [C_ADDR_WIDTH-1 : 0]      m_axi_araddr,
  output [2 : 0]                   m_axi_arprot,
  output                           m_axi_arvalid,
  input                            m_axi_arready,
 
  input  [32-1 : 0]                m_axi_rdata,
  input  [1 : 0]                   m_axi_rresp,
  input                            m_axi_rvalid,
  output                           m_axi_rready

  );
 
  localparam BAR_SIZE_INT                 = get_size( C_BAR_SIZE );
  
  //TLP Information to AXI 
  wire        mem_req_valid;
  wire        mem_req_ready;
  wire [2:0]  mem_req_bar_hit;
  wire [63:0] mem_req_pcie_address;
  wire [3:0]  mem_req_byte_enable;
  wire        mem_req_write_readn;
  wire        mem_req_phys_func;
  wire [63:0] mem_req_write_data;
  wire [3:0]  mem_req_last_be;
  wire [1:0]  mem_req_word_en;
   
  wire        tag_mang_write_en;              
  wire [2:0]  tag_mang_tc_wr;   
  wire [2:0]  tag_mang_attr_wr;   
  wire [15:0] tag_mang_requester_id_wr;   
  wire [6:0]  tag_mang_lower_addr_wr;     
  wire        tag_mang_completer_func_wr; 
  wire [7:0]  tag_mang_tag_wr;            
  wire [3:0]  tag_mang_first_be_wr; 
  wire [3:0]  tag_mang_last_be_wr; 
  wire [1:0]  tag_mang_word_en_wr;
  wire        tag_mang_2dw_wr;

  wire        tag_mang_read_en;
  wire [2:0]  tag_mang_tc_rd;   
  wire [2:0]  tag_mang_attr_rd;   
  wire [15:0] tag_mang_requester_id_rd;   
  wire [6:0]  tag_mang_lower_addr_rd;     
  wire        tag_mang_completer_func_rd; 
  wire [7:0]  tag_mang_tag_rd;            
  wire [3:0]  tag_mang_first_be_rd; 
  wire [3:0]  tag_mang_last_be_rd; 
  wire [1:0]  tag_mang_word_en_rd;
  wire        tag_mang_2dw_rd;

  wire        axi_cpld_valid;
  wire        axi_cpld_ready;
  wire [63:0] axi_cpld_data;

  wire               completion_ur_req;
  wire [7:0]         completion_ur_tag;
  wire [6:0]         completion_ur_lower_addr;
  wire [3:0]         completion_ur_first_be;
  wire [15:0]        completion_ur_requester_id;
  wire [2:0]         completion_ur_tc;
  wire [2:0]         completion_ur_attr;
  wire               completion_ur_done; 
  
  pcie_axi4lite_tap_v1_0_1_axis_cq_controller # ( 
  	.C_TDATA_WIDTH     ( C_TDATA_WIDTH ),
  	.C_TUSER_WIDTH     ( C_TUSER_WIDTH_CQ ),
  	.C_BAR_ID          (C_BAR_ID),
  	.C_TARGET_FUNCTION (C_TARGET_FUNCTION)
  ) axis_cq_controller ( 
    
    .aclk                            ( aclk ),
    .aresetn                        ( aresetn ),
   
    .s_axis_pcie_cq_tdata                     ( s_axis_pcie_cq_tdata ),
    .s_axis_pcie_cq_tuser                     ( s_axis_pcie_cq_tuser ),
    .s_axis_pcie_cq_tlast                     ( s_axis_pcie_cq_tlast ),
    .s_axis_pcie_cq_tkeep                     ( s_axis_pcie_cq_tkeep ),
    .s_axis_pcie_cq_tvalid                    ( s_axis_pcie_cq_tvalid ),
    .s_axis_pcie_cq_tready                    ( s_axis_pcie_cq_tready ),
    
    .m_axis_bypass_cq_tdata                     ( m_axis_bypass_cq_tdata ),
    .m_axis_bypass_cq_tuser                     ( m_axis_bypass_cq_tuser ),
    .m_axis_bypass_cq_tlast                     ( m_axis_bypass_cq_tlast ),
    .m_axis_bypass_cq_tkeep                     ( m_axis_bypass_cq_tkeep ),
    .m_axis_bypass_cq_tvalid                    ( m_axis_bypass_cq_tvalid ),
    .m_axis_bypass_cq_tready                    ( m_axis_bypass_cq_tready ),
    
    //TLP Information to AXI 
    .mem_req_valid                       ( mem_req_valid ),
    .mem_req_ready                       ( mem_req_ready ),
    .mem_req_bar_hit                     ( mem_req_bar_hit ),
    .mem_req_pcie_address                ( mem_req_pcie_address ),
    .mem_req_byte_enable                 ( mem_req_byte_enable ),
    .mem_req_last_be                     ( mem_req_last_be ),
    .mem_req_word_en                     ( mem_req_word_en ),
    .mem_req_write_readn                 ( mem_req_write_readn ),
    .mem_req_phys_func                   ( mem_req_phys_func ),
    .mem_req_write_data                  ( mem_req_write_data ),
    
    //Memory Reads Records
    .tag_mang_write_en                   ( tag_mang_write_en ),                  
    .tag_mang_tc_wr                      ( tag_mang_tc_wr ),   //[15:0]
    .tag_mang_attr_wr                    ( tag_mang_attr_wr ),   //[15:0]
    .tag_mang_requester_id_wr            ( tag_mang_requester_id_wr ),   //[15:0]
    .tag_mang_lower_addr_wr              ( tag_mang_lower_addr_wr ),     //[6:0]
    .tag_mang_completer_func_wr          ( tag_mang_completer_func_wr ), //[0:0]
    .tag_mang_tag_wr                     ( tag_mang_tag_wr ),            //[7:0]
    .tag_mang_first_be_wr                ( tag_mang_first_be_wr ),      //[2:0]
    .tag_mang_last_be_wr                 ( tag_mang_last_be_wr ),
    .tag_mang_word_en_wr                 ( tag_mang_word_en_wr ),
    .tag_mang_2dw_wr                     ( tag_mang_2dw_wr ),
    
    .completion_ur_req                   ( completion_ur_req),
    .completion_ur_tag                   ( completion_ur_tag),
    .completion_ur_lower_addr            ( completion_ur_lower_addr),
    .completion_ur_requester_id          ( completion_ur_requester_id),
    .completion_ur_tc                    ( completion_ur_tc),
    .completion_ur_attr                  ( completion_ur_attr),
    .completion_ur_done                  ( completion_ur_done) 
            
);

  pcie_axi4lite_tap_v1_0_1_axis_cc_controller # ( 
  	.C_TDATA_WIDTH ( C_TDATA_WIDTH ),
  	.C_TUSER_WIDTH ( C_TUSER_WIDTH_CC ),
  	.C_TARGET_FUNCTION (C_TARGET_FUNCTION)
  	)  axis_cc_controller ( 
    
    .aclk                      ( aclk ),
    .aresetn                  ( aresetn ),
      
    .m_axis_pcie_cc_tdata               ( m_axis_pcie_cc_tdata ),
    .m_axis_pcie_cc_tuser               ( m_axis_pcie_cc_tuser ),
    .m_axis_pcie_cc_tlast               ( m_axis_pcie_cc_tlast ),
    .m_axis_pcie_cc_tkeep               ( m_axis_pcie_cc_tkeep ),
    .m_axis_pcie_cc_tvalid              ( m_axis_pcie_cc_tvalid ),
    .m_axis_pcie_cc_tready              ( m_axis_pcie_cc_tready ),
       
    .s_axis_bypass_cc_tdata               ( s_axis_bypass_cc_tdata ),
    .s_axis_bypass_cc_tuser               ( s_axis_bypass_cc_tuser ),
    .s_axis_bypass_cc_tlast               ( s_axis_bypass_cc_tlast ),
    .s_axis_bypass_cc_tkeep               ( s_axis_bypass_cc_tkeep ),
    .s_axis_bypass_cc_tvalid              ( s_axis_bypass_cc_tvalid ),
    .s_axis_bypass_cc_tready              ( s_axis_bypass_cc_tready ),
       
    .axi_cpld_valid                ( axi_cpld_valid ),
    .axi_cpld_ready                ( axi_cpld_ready ),
    .axi_cpld_data                 ( axi_cpld_data ),
    
    .tag_mang_read_en              ( tag_mang_read_en ),          
    .tag_mang_tc_rd                ( tag_mang_tc_rd ),   
    .tag_mang_attr_rd              ( tag_mang_attr_rd ),  
    .tag_mang_requester_id_rd      ( tag_mang_requester_id_rd ),  
    .tag_mang_lower_addr_rd        ( tag_mang_lower_addr_rd ),    
    .tag_mang_completer_func_rd    ( tag_mang_completer_func_rd ), 
    .tag_mang_tag_rd               ( tag_mang_tag_rd ),           
    .tag_mang_first_be_rd          ( tag_mang_first_be_rd ),
    .tag_mang_last_be_rd           ( tag_mang_last_be_rd ),
    .tag_mang_word_en_rd           ( tag_mang_word_en_rd ),
    .tag_mang_2dw_rd               ( tag_mang_2dw_rd ),
    
    .completion_ur_req             ( completion_ur_req),
    .completion_ur_tag             ( completion_ur_tag),
    .completion_ur_lower_addr      ( completion_ur_lower_addr),
    .completion_ur_requester_id    ( completion_ur_requester_id),
    .completion_ur_tc              ( completion_ur_tc),
    .completion_ur_attr            ( completion_ur_attr),
    .completion_ur_done            ( completion_ur_done)    
        
    
    );

  pcie_axi4lite_tap_v1_0_1_maxi_controller # (   
    .C_ADDR_WIDTH   ( C_ADDR_WIDTH ),
    .BAR2AXI            ( C_BAR2AXI ),
    .BAR_SIZE           ( BAR_SIZE_INT )
  	)  maxi_controller ( 
                    
    .aclk     ( aclk ),
    .aresetn  ( aresetn ),
                    
    .m_axi_awaddr   ( m_axi_awaddr ),
    .m_axi_awprot   ( m_axi_awprot ),
    .m_axi_awvalid  ( m_axi_awvalid ),
    .m_axi_awready  ( m_axi_awready ),
                    
    .m_axi_wdata    ( m_axi_wdata ),
    .m_axi_wstrb    ( m_axi_wstrb ),
    .m_axi_wvalid   ( m_axi_wvalid ),
    .m_axi_wready   ( m_axi_wready ),
                    
    .m_axi_bresp    ( m_axi_bresp ),
    .m_axi_bvalid   ( m_axi_bvalid ),
    .m_axi_bready   ( m_axi_bready ),
                    
    .m_axi_araddr   ( m_axi_araddr ),
    .m_axi_arprot   ( m_axi_arprot ),
    .m_axi_arvalid  ( m_axi_arvalid ),
    .m_axi_arready  ( m_axi_arready ),
                    
    .m_axi_rdata    ( m_axi_rdata ),
    .m_axi_rresp    ( m_axi_rresp ),
    .m_axi_rvalid   ( m_axi_rvalid ),
    .m_axi_rready   ( m_axi_rready ),
    
    //Memory Request TLP Info
    .mem_req_valid        ( mem_req_valid ),
    .mem_req_ready        ( mem_req_ready ),
    .mem_req_bar_hit      ( mem_req_bar_hit ),
    .mem_req_pcie_address ( mem_req_pcie_address ),
    .mem_req_byte_enable  ( mem_req_byte_enable ),
    .mem_req_last_be      ( mem_req_last_be ),
    .mem_req_word_en      ( mem_req_word_en ),
    .mem_req_write_readn  ( mem_req_write_readn ),
    .mem_req_phys_func    ( mem_req_phys_func ),
    .mem_req_write_data   ( mem_req_write_data ),
    
    //Completion TLP Info
    .axi_cpld_valid       ( axi_cpld_valid ),
    .axi_cpld_ready       ( axi_cpld_ready ),
    .axi_cpld_data        ( axi_cpld_data ) 
    
    );


// Manages Outstanding Read Transactions    
  pcie_axi4lite_tap_v1_0_1_tag_manager tag_manager (
  
    .aclk                           ( aclk ),
    .aresetn                       ( aresetn ),
    
    .tag_mang_write_en             ( tag_mang_write_en ),
    .tag_mang_tc_wr                ( tag_mang_tc_wr ),  
    .tag_mang_attr_wr              ( tag_mang_attr_wr ),   
    .tag_mang_requester_id_wr      ( tag_mang_requester_id_wr ),   //[15:0]
    .tag_mang_lower_addr_wr        ( tag_mang_lower_addr_wr ),     //[6:0]
    .tag_mang_completer_func_wr    ( tag_mang_completer_func_wr ), //[0:0]
    .tag_mang_tag_wr               ( tag_mang_tag_wr ),            //[7:0]
    .tag_mang_first_be_wr          ( tag_mang_first_be_wr ),     //[2:0]
    .tag_mang_last_be_wr           ( tag_mang_last_be_wr ),
    .tag_mang_word_en_wr           ( tag_mang_word_en_wr ),
    .tag_mang_2dw_wr               ( tag_mang_2dw_wr ),
       
    .tag_mang_read_en              ( tag_mang_read_en ),          //[?:0]  
    .tag_mang_tc_rd                ( tag_mang_tc_rd ),            
    .tag_mang_attr_rd              ( tag_mang_attr_rd ),         
    .tag_mang_requester_id_rd      ( tag_mang_requester_id_rd ),   //[15:0]
    .tag_mang_lower_addr_rd        ( tag_mang_lower_addr_rd ),     //[6:0]
    .tag_mang_completer_func_rd    ( tag_mang_completer_func_rd ), //[0:0]
    .tag_mang_tag_rd               ( tag_mang_tag_rd ),            //[7:0]
    .tag_mang_first_be_rd          ( tag_mang_first_be_rd ),      //[2:0]
    .tag_mang_last_be_rd           ( tag_mang_last_be_rd ),
    .tag_mang_word_en_rd           ( tag_mang_word_en_rd ),
    .tag_mang_2dw_rd               ( tag_mang_2dw_rd )
  );    

  function integer get_size ( input [63:0] size );
    integer ii; 
    for ( ii = 5; ii <= 63; ii= ii + 1) begin
       if ( (size[ii] == 1'b1) & (size[ii-1] == 1'b0)) begin 
         get_size = ii; 
       end
    end      
  endfunction		
endmodule



