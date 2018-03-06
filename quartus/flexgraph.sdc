create_clock -name {clk}        -period "200 MHz" -waveform { 0.0 1.0 } [get_ports {clk}]
