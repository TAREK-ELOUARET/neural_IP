create_clock -period 6.250 -name clk [get_ports clk]
create_clock -period 6.250 -name VecOut_mux[*] [get_ports VecOut_mux[*]]

#set_clock_latency -rise -min 10.0 [get_clocks *clk*]


#create_generated_clock -name {Concurrent_loop_for_pixels[0].U1/E[0]} -source [get_ports clk] -divide_by 2 [get_pins {Concurrent_loop_for_pixels[0].U1/flag_t_reg[0]/Q}]
#set_input_delay -clock [get_clocks clk] -clock_fall -min -add_delay 0.000 [get_ports {pixel[*]}]
#set_input_delay -clock [get_clocks clk] -clock_fall -max -add_delay 0.000 [get_ports {pixel[*]}]
#set_input_delay -clock [get_clocks clk] -clock_fall -min -add_delay 0.000 [get_ports {weight[*]}]
#set_input_delay -clock [get_clocks clk] -clock_fall -max -add_delay 0.000 [get_ports {weight[*]}]
#set_input_delay -clock [get_clocks clk] -clock_fall -min -add_delay 0.000 [get_ports reset]
#set_input_delay -clock [get_clocks clk] -clock_fall -max -add_delay 0.000 [get_ports reset]
#create_clock -period 10.000 -name {VIRTUAL_Concurrent_loop_for_pixels[0].U1/E[0]} -waveform {0.000 5.000}
#set_output_delay -clock [get_clocks {VIRTUAL_Concurrent_loop_for_pixels[0].U1/E[0]}] -min -add_delay 5.000 [get_ports {VecOut_mux[*]}]
#set_output_delay -clock [get_clocks {VIRTUAL_Concurrent_loop_for_pixels[0].U1/E[0]}] -max -add_delay 5.000 [get_ports {VecOut_mux[*]}]


create_generated_clock -name {Concurrent_loop_for_pixels[0].U1/flag} -source [get_ports clk] -divide_by 4 -invert [get_pins {Concurrent_loop_for_pixels[0].U1/flag_t_reg[0]/Q}]
set_input_delay -clock [get_clocks clk] -min -add_delay 6.2500 [get_ports {pixel[*]}]
set_input_delay -clock [get_clocks clk] -max -add_delay 7.000 [get_ports {pixel[*]}]
set_input_delay -clock [get_clocks clk] -min -add_delay 6.250 [get_ports {weight[*]}]
set_input_delay -clock [get_clocks clk] -max -add_delay 7.000 [get_ports {weight[*]}]
create_clock -period 12.500 -name {VIRTUAL_Concurrent_loop_for_pixels[0].U1/flag} -waveform {0.000 6.250}
set_output_delay -clock [get_clocks {VIRTUAL_Concurrent_loop_for_pixels[0].U1/flag}] -min -add_delay 5.500 [get_ports {VecOut_mux[*]}]
set_output_delay -clock [get_clocks {VIRTUAL_Concurrent_loop_for_pixels[0].U1/flag}] -max -add_delay 6.000 [get_ports {VecOut_mux[*]}]
#set_property PACKAGE_PIN AE20 [get_ports reset]

set_input_delay -clock [get_clocks clk] -min -add_delay 5.000 [get_ports reset]
set_input_delay -clock [get_clocks clk] -max -add_delay 6.000 [get_ports reset]
