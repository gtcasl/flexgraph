create_clock -name {clk}        -period "50 MHz" -waveform { 0.0 1.0 } [get_ports {clk}]
