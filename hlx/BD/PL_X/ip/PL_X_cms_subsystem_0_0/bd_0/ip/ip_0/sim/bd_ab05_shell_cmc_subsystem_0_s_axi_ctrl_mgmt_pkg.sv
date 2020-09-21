///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_PROTOCOL           = 2;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_INTERFACE_MODE     = 1;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ADDR_WIDTH         = 18;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH         = 32;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH           = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_AWUSER_WIDTH       = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ARUSER_WIDTH       = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_RUSER_WIDTH        = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_WUSER_WIDTH        = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_BUSER_WIDTH        = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_SUPPORTS_NARROW    = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_BURST          = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_LOCK           = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_CACHE          = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_REGION         = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_QOS            = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_PROT           = 1;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_WSTRB          = 1;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_BRESP          = 1;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_RRESP          = 1;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_ACLKEN         = 0;
      parameter bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////

typedef axi_passthrough_agent #(bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_PROTOCOL, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ADDR_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_AWUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_WUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_BUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ARUSER_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_RUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_SUPPORTS_NARROW, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_BURST,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_LOCK,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_CACHE,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_REGION,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_PROT,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_QOS,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_WSTRB,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_BRESP,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_RRESP,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_ARESETN) bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough_t;

typedef axi_passthrough_mem_agent #(bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_PROTOCOL, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ADDR_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_AWUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_WUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_BUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_ARUSER_WIDTH,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_RUSER_WIDTH, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_SUPPORTS_NARROW, 
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_BURST,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_LOCK,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_CACHE,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_REGION,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_PROT,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_QOS,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_WSTRB,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_BRESP,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_RRESP,
                                bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_VIP_HAS_ARESETN) bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough_mem_t;

///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough_t  bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough;
//      initial begin : START_bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_SLAVE
//        bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough = new("bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough", `bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_PATH_TO_INTERFACE);
//        bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough.start_master(); //passthrough in run time master mode
//        bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_passthrough.start_slave(); //passthrough in run time slave mode
//      end


endpackage : bd_ab05_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_pkg