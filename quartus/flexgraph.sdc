# create a system clock "sys_clk" of 200MHz and connect it to design port "clk"
create_clock -name "sys_clk" -period 5ns [get_ports {clk}]

# Tell TimeQuest to automatically generate PLLs clocks for your design
derive_pll_clocks

# Tell TimeQuest to calculate clock-to-clock uncertainties within the FPGA.
derive_clock_uncertainty
