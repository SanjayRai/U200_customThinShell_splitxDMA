# aclk {FREQ_HZ 250000000 CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk PHASE 0.000} aclk1 {FREQ_HZ 62500000 CLK_DOMAIN X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk PHASE 0.000}
# Clock Domain: X_PCIe_Bridge_ICAP_complex_pcie4_uscale_plus_0_0_user_clk
create_clock -name aclk -period 4.000 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -divide_by 4 [get_ports aclk1]
