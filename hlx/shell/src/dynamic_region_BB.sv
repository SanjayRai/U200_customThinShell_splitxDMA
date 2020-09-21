// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

(*dont_touch = "true"*)module dynamic_region (
  input AXI_RESET_N,
  input rst_main_n,
  input CLK_IN_125M,
  input CLK_IN_250M,
  input CLK_IN_300M,
  input CLK_IN_400M,
  input CLK_IN_PROG,
  input c1_init_calib_complete,
  output start_devDNA_read,
  input ser_devDNA_out,
  input ser_devDNA_out_valid,
  input c0_sys_clk_n,
  input c0_sys_clk_p,
  input c2_sys_clk_n,
  input c2_sys_clk_p,
  input c3_sys_clk_n,
  input c3_sys_clk_p,
  output c0_ddr4_act_n,
  output [16:0]c0_ddr4_adr,
  output [1:0]c0_ddr4_ba,
  output [1:0]c0_ddr4_bg,
  output [0:0]c0_ddr4_ck_c,
  output [0:0]c0_ddr4_ck_t,
  output [0:0]c0_ddr4_cke,
  output [0:0]c0_ddr4_cs_n,
  inout [71:0]c0_ddr4_dq,
  inout [17:0]c0_ddr4_dqs_c,
  inout [17:0]c0_ddr4_dqs_t,
  output [0:0]c0_ddr4_odt,
  output c0_ddr4_par,
  output c0_ddr4_reset_n,
  output c0_init_calib_complete,
  input c0_ddr4_app_mem_init_skip,
  input c0_ddr4_app_restore_complete,
  output c0_ddr4_app_sref_ack,
  input c0_ddr4_app_sref_req,
  input c0_ddr4_app_xsdb_select,
  output c2_ddr4_act_n,
  output [16:0]c2_ddr4_adr,
  output [1:0]c2_ddr4_ba,
  output [1:0]c2_ddr4_bg,
  output [0:0]c2_ddr4_ck_c,
  output [0:0]c2_ddr4_ck_t,
  output [0:0]c2_ddr4_cke,
  output [0:0]c2_ddr4_cs_n,
  inout [71:0]c2_ddr4_dq,
  inout [17:0]c2_ddr4_dqs_c,
  inout [17:0]c2_ddr4_dqs_t,
  output [0:0]c2_ddr4_odt,
  output c2_ddr4_par,
  output c2_ddr4_reset_n,
  output c2_init_calib_complete,
  input c2_ddr4_app_mem_init_skip,
  input c2_ddr4_app_restore_complete,
  output c2_ddr4_app_sref_ack,
  input c2_ddr4_app_sref_req,
  input c2_ddr4_app_xsdb_select,
  output c3_ddr4_act_n,
  output [16:0]c3_ddr4_adr,
  output [1:0]c3_ddr4_ba,
  output [1:0]c3_ddr4_bg,
  output [0:0]c3_ddr4_ck_c,
  output [0:0]c3_ddr4_ck_t,
  output [0:0]c3_ddr4_cke,
  output [0:0]c3_ddr4_cs_n,
  inout [71:0]c3_ddr4_dq,
  inout [17:0]c3_ddr4_dqs_c,
  inout [17:0]c3_ddr4_dqs_t,
  output [0:0]c3_ddr4_odt,
  output c3_ddr4_par,
  output c3_ddr4_reset_n,
  output c3_init_calib_complete,
  input c3_ddr4_app_mem_init_skip,
  input c3_ddr4_app_restore_complete,
  output c3_ddr4_app_sref_ack,
  input c3_ddr4_app_sref_req,
  input c3_ddr4_app_xsdb_select,
  input sys_rst_ddr_0,
  input sys_rst_ddr_2,
  input sys_rst_ddr_3,
  hlx_AXI_MM_intfc.master M_AXI_NORTH_TO_STATIC,
  hlx_AXI_MM_intfc.master M_AXI_MM_PCIM,
  hlx_AXI_LITE_intfc.slave S_AXI_LITE_FROM_STATIC
  );

endmodule
