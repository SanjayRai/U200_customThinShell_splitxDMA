source_ipfile xgui/ifx_common_xgui2_util.tcl

proc init_gui { IPINST} {
  set Page0 [ ipgui::add_page $IPINST  -name "Settings" -layout vertical]
  set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
  set widgets_init {
    TARGET_FUNCTION       textEdit {PCIe Function value to divert to AXI4-Lite interface}
    BAR_ID                textEdit {PCIe BAR ID value to divert to AXI4-Lite interface}
    TDATA_WIDTH           comboBox {Width of TDATA on all streaming interfaces}
    TUSER_WIDTH_CQ        textEdit {Width of TUSER signal on s_axis_pcie_cq and m_axis_bypass_cq interfaces} 
    TUSER_WIDTH_CC        textEdit {Width of TUSER signal on m_axis_pcie_cc and s_axis_bypass_cc interfaces} 
    ADDR_WIDTH            textEdit {Width of m_axi_a*addr signals}
    BAR2AXI               textEdit {Base address for AXI-Lite conversion}
    BAR_SIZE              textEdit {Address mask defining BAR size}
  }
  add_widgets $IPINST $Page0 $widgets_init
}

generate_direct_model_procs { \
  TARGET_FUNCTION C_TARGET_FUNCTION \
  BAR_ID          C_BAR_ID          \
  TDATA_WIDTH     C_TDATA_WIDTH     \
  TUSER_WIDTH_CQ  C_TUSER_WIDTH_CQ  \
  TUSER_WIDTH_CC  C_TUSER_WIDTH_CC  \
  ADDR_WIDTH      C_ADDR_WIDTH      \
  BAR2AXI         C_BAR2AXI         \
  BAR_SIZE        C_BAR_SIZE        \
}

proc update_PARAM_VALUE.TARGET_FUNCTION {PARAM_VALUE.TARGET_FUNCTION} { }
proc update_PARAM_VALUE.BAR_ID          {PARAM_VALUE.BAR_ID         } { }
proc update_PARAM_VALUE.TDATA_WIDTH     {PARAM_VALUE.TDATA_WIDTH    } { }
proc update_PARAM_VALUE.TUSER_WIDTH_CQ  {PARAM_VALUE.TUSER_WIDTH_CQ } { }
proc update_PARAM_VALUE.TUSER_WIDTH_CC  {PARAM_VALUE.TUSER_WIDTH_CC } { }
proc update_PARAM_VALUE.ADDR_WIDTH      {PARAM_VALUE.ADDR_WIDTH     } { }
proc update_PARAM_VALUE.BAR2AXI         {PARAM_VALUE.BAR2AXI        } { }
proc update_PARAM_VALUE.BAR_SIZE        {PARAM_VALUE.BAR_SIZE       } { }
