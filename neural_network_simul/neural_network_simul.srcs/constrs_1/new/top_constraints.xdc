create_clock -period 6.500 -name clk [get_ports clk]
create_clock -period 7.250 -name VecOut_mux[*] [get_ports VecOut_mux[*]]
create_clock -period 6.250 -name pixel[*] [get_ports pixel[*]]
create_clock -period 6.250 -name weight[*] [get_ports weight[*]]


set_clock_latency -rise -min 22.0 [get_clocks *clk*]


#create_generated_clock -name {Concurrent_loop_for_pixels[0].U1/flag} -source [get_ports clk] -divide_by 10 -invert [get_pins {Concurrent_loop_for_pixels[0].U1/flag_t_reg[0]/Q}]
#create_generated_clock -name {U2/flag} -source [get_ports clk] -divide_by 10 -invert [get_pins {U2/flag_t_reg[0]/Q}]


#set_input_delay -clock [get_clocks clk] -min -add_delay 6.2500 [get_ports {pixel[*]}]
#set_input_delay -clock [get_clocks clk] -max -add_delay 7.000 [get_ports {pixel[*]}]
#set_input_delay -clock [get_clocks clk] -min -add_delay 6.250 [get_ports {weight[*]}]
#set_input_delay -clock [get_clocks clk] -max -add_delay 7.000 [get_ports {weight[*]}]
#create_clock -period 6.500 -name {VIRTUAL_Concurrent_loop_for_pixels[0].U1/flag} -waveform {0.000 6.250}
#set_output_delay -clock [get_clocks {VIRTUAL_Concurrent_loop_for_pixels[0].U1/flag}] -min -add_delay 5.500 [get_ports {VecOut_mux[*]}]
#set_output_delay -clock [get_clocks {VIRTUAL_Concurrent_loop_for_pixels[0].U1/flag}] -max -add_delay 6.000 [get_ports {VecOut_mux[*]}]

#create_clock -period 6.500 -name {U2/flag} -waveform {0.000 6.250}
#set_output_delay -clock [get_clocks {U21/flag}] -min -add_delay 5.500 [get_ports {VecOut_mux[*]}]
#set_output_delay -clock [get_clocks {U2/flag}] -max -add_delay 6.000 [get_ports {VecOut_mux[*]}]

#set_input_delay -clock [get_clocks clk] -min -add_delay 5.000 [get_ports reset]
#set_input_delay -clock [get_clocks clk] -max -add_delay 6.000 [get_ports reset]
