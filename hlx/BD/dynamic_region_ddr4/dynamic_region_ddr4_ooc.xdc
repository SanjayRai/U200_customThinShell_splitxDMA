################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name CLK_IN_250 -period 4 [get_ports CLK_IN_250]
create_clock -name C0_SYS_CLK_clk_p -period 3.333 [get_ports C0_SYS_CLK_clk_p]
create_clock -name C2_SYS_CLK_clk_p -period 3.333 [get_ports C2_SYS_CLK_clk_p]
create_clock -name C3_SYS_CLK_clk_p -period 3.333 [get_ports C3_SYS_CLK_clk_p]

################################################################################