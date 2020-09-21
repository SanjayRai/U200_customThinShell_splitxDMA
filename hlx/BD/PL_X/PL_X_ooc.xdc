################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_250M -period 4 [get_ports clk_250M]
create_clock -name C1_SYS_CLK -period 3.333 [get_ports C1_SYS_CLK]

################################################################################