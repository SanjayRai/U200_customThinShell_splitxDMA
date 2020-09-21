create_clock -period 3.332 -name c1_sys_clk_p [get_ports c1_sys_clk_p]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets THIN_SHELL_TOP_inst/c1_sys_clk]
create_clock -period 3.332 -name c1_sys_clk_p [get_ports c1_sys_clk_p]

set_property PACKAGE_PIN AW20       [get_ports c1_sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports c1_sys_clk_p]
set_property PACKAGE_PIN AW19       [get_ports c1_sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports c1_sys_clk_n]

create_clock -name sys_clk -period 10 [get_ports sys_clk_p]
set_property PACKAGE_PIN AM11 [get_ports sys_clk_p]

set_false_path -from [get_ports sys_rst_n]

set_max_delay -datapath_only -from [get_pins "U_CL_top/U_shell_top/PL_X_i/PL_x/CL_RST/rst_250M_MIG*/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C"] 4
set_max_delay -datapath_only -from [get_pins "U_CL_top/U_shell_top/PL_X_i/PL_x/axi_gpio_C*_SREF/U0/gpio_core_*/Dual.gpio_Data_Out_reg[*]/C"] 4
set_max_delay -datapath_only -from [get_pins "U_CL_top/U_shell_top/PL_X_i/PL_x/DDR4_SH/axi_gpio_C1_SREF/U0/gpio_core_1/Dual.gpio_Data_Out_reg[*]/C"] 4

# perst_n
set_property LOC BD21  [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS12 [get_ports sys_rst_n]

create_pblock pblock_CL
add_cells_to_pblock [get_pblocks pblock_CL] [get_cells U_CL_top]
resize_pblock [get_pblocks pblock_CL]  -add {CLOCKREGION_X0Y0:CLOCKREGION_X5Y4 CLOCKREGION_X0Y10:CLOCKREGION_X5Y14 CLOCKREGION_X0Y5:CLOCKREGION_X3Y5 CLOCKREGION_X5Y9:CLOCKREGION_X5Y9 CLOCKREGION_X0Y6:CLOCKREGION_X4Y9}
resize_pblock [get_pblocks pblock_CL] -add {SLICE_X113Y300:SLICE_X141Y359}
resize_pblock [get_pblocks pblock_CL] -add {DSP48E2_X14Y120:DSP48E2_X16Y143}
resize_pblock [get_pblocks pblock_CL] -add {LAGUNA_X16Y240:LAGUNA_X19Y359}
resize_pblock [get_pblocks pblock_CL] -add {RAMB18_X8Y120:RAMB18_X9Y143}
resize_pblock [get_pblocks pblock_CL] -add {RAMB36_X8Y60:RAMB36_X9Y71}
resize_pblock [get_pblocks pblock_CL] -add {URAM288_X3Y80:URAM288_X3Y95}


set_property HD.RECONFIGURABLE true [get_cells U_CL_top]


create_pblock pblock_THIN_SHELL_x_inst
add_cells_to_pblock pblock_THIN_SHELL_x_inst [get_cells THIN_SHELL_TOP_inst]
#resize_pblock pblock_THIN_SHELL_x_inst -add {CLOCKREGION_X5Y5:CLOCKREGION_X5Y9}
resize_pblock pblock_THIN_SHELL_x_inst -add {CLOCKREGION_X5Y5:CLOCKREGION_X5Y8}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {SLICE_X112Y300:SLICE_X112Y359}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BITSLICE_CONTROL_X1Y40:BITSLICE_CONTROL_X1Y47}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BITSLICE_RX_TX_X1Y260:BITSLICE_RX_TX_X1Y311}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BITSLICE_TX_X1Y40:BITSLICE_TX_X1Y47}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BUFCE_ROW_X1Y120:BUFCE_ROW_X1Y143}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BUFGCE_X1Y120:BUFGCE_X1Y143}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BUFGCE_DIV_X1Y20:BUFGCE_DIV_X1Y23}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {BUFGCTRL_X1Y40:BUFGCTRL_X1Y47}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {IOB_X1Y260:IOB_X1Y311}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {MMCM_X1Y5:MMCM_X1Y5}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {PLL_X1Y10:PLL_X1Y11}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {PLL_SELECT_SITE_X1Y40:PLL_SELECT_SITE_X1Y47}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {RIU_OR_X1Y20:RIU_OR_X1Y23}
resize_pblock [get_pblocks pblock_THIN_SHELL_x_inst] -add {XIPHY_FEEDTHROUGH_X1Y20:XIPHY_FEEDTHROUGH_X1Y23}


set_clock_groups -name TIG_001 -asynchronous -group [get_clocks -of_objects [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
set_clock_groups -name TIG_002 -asynchronous -group [get_clocks -of_objects [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks -of_objects [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]]



set_max_delay -datapath_only -from [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/pcie4_uscale_plus_0/inst/user_lnk_up_reg/C ] -to [get_pins U_CL_top/U_shell_top/PL_X_i/PL_x/rst_50M/U0/EXT_LPF/lpf_int_reg/D] 10.0


# Configuration
# ------------------------------------------------------------------------------
set_property CONFIG_VOLTAGE 1.8                      [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable  [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE         [current_design]
set_property CONFIG_MODE SPIx8                       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8         [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES      [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup       [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes     [current_design]

# These constraints were originally from the VCU1525 DSA

# RESET_GATE (for DDR4 Self Refresh)
set_property PACKAGE_PIN AU21 [get_ports RESET_GATE]
set_property PULLTYPE NONE [get_ports [list RESET_GATE]]
set_property IOSTANDARD LVCMOS12 [get_ports RESET_GATE]
set_property DRIVE 4 [get_ports RESET_GATE]
set_property SLEW SLOW [get_ports RESET_GATE]


set_property DRIVE 4 [get_ports BMC_GPIO[*]]
set_property IOSTANDARD LVCMOS12 [get_ports BMC_GPIO[*]]
set_property SLEW SLOW [get_ports BMC_GPIO[*]]
set_property PACKAGE_PIN AN21 [get_ports BMC_GPIO[3]]
set_property PACKAGE_PIN AM21 [get_ports BMC_GPIO[2]]
set_property PACKAGE_PIN AM20 [get_ports BMC_GPIO[1]]
set_property PACKAGE_PIN AR20 [get_ports BMC_GPIO[0]]

set_property DRIVE 4 [get_ports BMC_UART_txd]
set_property IOSTANDARD LVCMOS12 [get_ports BMC_UART_txd]
set_property SLEW SLOW [get_ports BMC_UART_txd]
set_property PACKAGE_PIN BB19 [get_ports BMC_UART_txd]

set_property IOSTANDARD LVCMOS12 [get_ports BMC_UART_rxd]
set_property PACKAGE_PIN BA19 [get_ports BMC_UART_rxd]





# AXI IIC controller
set_property DRIVE 8 [get_ports iic_scl_io]
set_property IOSTANDARD LVCMOS12 [get_ports iic_scl_io]
set_property SLEW SLOW [get_ports iic_scl_io]
set_property PACKAGE_PIN BF20 [get_ports iic_scl_io]
set_property DRIVE 8 [get_ports iic_sda_io]
set_property IOSTANDARD LVCMOS12 [get_ports iic_sda_io]
set_property SLEW SLOW [get_ports iic_sda_io]
set_property PACKAGE_PIN BF17 [get_ports iic_sda_io]

set_max_delay -datapath_only -from  [get_pins THIN_SHELL_TOP_inst/THIN_SHELL_x_inst/axi_gpio_SHELL_TO_CL_OUT/U0/gpio_core_1/Dual.gpio_Data_Out_reg[*]/C] 4.0

# AXI QSPI constraints
set tdata_trace_delay_max 0.47
set tdata_trace_delay_min 0.35
set tclk_trace_delay_max 0.37
set tclk_trace_delay_min 0.31
set tco_max 7.7
set tco_min 0.25
set tsu 1.75
set th 2.5
create_generated_clock -name clk_sck -source [get_pins -hierarchical *flash_programmer/ext_spi_clk] [get_pins -hierarchical *inst/CCLK] -edges {1 3 5}
set_input_delay -clock clk_sck -max [expr $tco_max + $tdata_trace_delay_max + $tclk_trace_delay_max] [get_pins -hierarchical *STARTUP*/DATA_IN[*]] -clock_fall;
set_input_delay -clock clk_sck -min [expr $tco_min + $tdata_trace_delay_min + $tclk_trace_delay_min] [get_pins -hierarchical *STARTUP*/DATA_IN[*]] -clock_fall;
set_multicycle_path 2 -setup -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical *flash_programmer/ext_spi_clk]]
set_multicycle_path 1 -hold -end -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical *flash_programmer/ext_spi_clk]]
set_output_delay -clock clk_sck -max [expr $tsu + $tdata_trace_delay_max - $tclk_trace_delay_min] [get_pins -hierarchical *STARTUP*/DATA_OUT[*]];
set_output_delay -clock clk_sck -min [expr $tdata_trace_delay_min -$th - $tclk_trace_delay_max] [get_pins -hierarchical *STARTUP*/DATA_OUT[*]];
set_multicycle_path 1 -hold -from [get_clocks -of_objects [get_pins -hierarchical *flash_programmer/ext_spi_clk]] -to clk_sck
# The above constraints were originally from the VCU1525 DSA
############################################################################################################################

