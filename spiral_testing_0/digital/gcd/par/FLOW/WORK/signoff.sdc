###############################################################
#  Generated by:      Cadence Innovus 19.10-p002_1
#  OS:                Linux x86_64(Host ID ece029.ece.local.cmu.edu)
#  Generated on:      Fri Feb 10 17:54:53 2023
#  Design:            chip
###############################################################
current_design chip
set_clock_gating_check -rise -setup 0 
set_clock_gating_check -fall -setup 0 
create_clock [get_ports {clk}]  -name clk -period 10.000000 -waveform {0.000000 5.000000}
set_clock_transition  -rise -min 0.15 [get_clocks {clk}]
set_clock_transition  -rise -max 0.15 [get_clocks {clk}]
set_clock_transition  -fall -min 0.15 [get_clocks {clk}]
set_clock_transition  -fall -max 0.15 [get_clocks {clk}]
set_propagated_clock  [get_ports {clk}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {ops_val}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[2]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res_rdy}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[0]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[7]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[5]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {rst_b}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[3]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[1]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[7]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[5]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[3]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[1]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[6]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[4]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[2]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_a[0]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[6]}]
set_input_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {op_b[4]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[6]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[4]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res_val}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[2]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[0]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[7]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[5]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[3]}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {ops_rdy}]
set_output_delay -add_delay 2 -clock [get_clocks {clk}] [get_ports {res[1]}]
set_clock_uncertainty 0.1 [get_clocks {clk}]
set_clock_latency -source -early -min -rise  -0.0781077 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -min -fall  -0.0817733 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -rise  -0.0781077 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -0.0817733 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -rise  -0.0781077 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -fall  -0.0817733 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -0.0781077 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -0.0817733 [get_ports {clk}] -clock clk 
