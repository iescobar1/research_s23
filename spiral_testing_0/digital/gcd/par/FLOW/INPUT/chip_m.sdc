# ####################################################################

#  Created by Genus(TM) Synthesis Solution 18.14-s037_1 on Fri Feb 10 16:36:37 EST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design chip

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.15 [get_clocks clk]
group_path -weight 1.000000 -name C2C -from [list \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[6]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[0]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[6]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[6]}] ] -to [list \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[6]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[0]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[6]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[6]}] ]
group_path -weight 1.000000 -name C2O -from [list \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[6]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[0]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[6]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[6]}] ] -to [list \
  [get_ports {res[7]}]  \
  [get_ports {res[6]}]  \
  [get_ports {res[5]}]  \
  [get_ports {res[4]}]  \
  [get_ports {res[3]}]  \
  [get_ports {res[2]}]  \
  [get_ports {res[1]}]  \
  [get_ports {res[0]}]  \
  [get_ports ops_rdy]  \
  [get_ports res_val] ]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports clk]  \
  [get_ports rst_b]  \
  [get_ports {op_a[7]}]  \
  [get_ports {op_a[6]}]  \
  [get_ports {op_a[5]}]  \
  [get_ports {op_a[4]}]  \
  [get_ports {op_a[3]}]  \
  [get_ports {op_a[2]}]  \
  [get_ports {op_a[1]}]  \
  [get_ports {op_a[0]}]  \
  [get_ports {op_b[7]}]  \
  [get_ports {op_b[6]}]  \
  [get_ports {op_b[5]}]  \
  [get_ports {op_b[4]}]  \
  [get_ports {op_b[3]}]  \
  [get_ports {op_b[2]}]  \
  [get_ports {op_b[1]}]  \
  [get_ports {op_b[0]}]  \
  [get_ports ops_val]  \
  [get_ports res_rdy] ] -to [list \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[6]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[0]}]  \
  [get_cells {inst_control/inst_reg_state/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpb/q_reg[6]}]  \
  [get_cells {inst_datapath/inst_reg_dpd/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[1]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[2]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[5]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[7]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[0]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[4]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[3]}]  \
  [get_cells {inst_datapath/inst_reg_dpa/q_reg[6]}] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports clk]  \
  [get_ports rst_b]  \
  [get_ports {op_a[7]}]  \
  [get_ports {op_a[6]}]  \
  [get_ports {op_a[5]}]  \
  [get_ports {op_a[4]}]  \
  [get_ports {op_a[3]}]  \
  [get_ports {op_a[2]}]  \
  [get_ports {op_a[1]}]  \
  [get_ports {op_a[0]}]  \
  [get_ports {op_b[7]}]  \
  [get_ports {op_b[6]}]  \
  [get_ports {op_b[5]}]  \
  [get_ports {op_b[4]}]  \
  [get_ports {op_b[3]}]  \
  [get_ports {op_b[2]}]  \
  [get_ports {op_b[1]}]  \
  [get_ports {op_b[0]}]  \
  [get_ports ops_val]  \
  [get_ports res_rdy] ] -to [list \
  [get_ports {res[7]}]  \
  [get_ports {res[6]}]  \
  [get_ports {res[5]}]  \
  [get_ports {res[4]}]  \
  [get_ports {res[3]}]  \
  [get_ports {res[2]}]  \
  [get_ports {res[1]}]  \
  [get_ports {res[0]}]  \
  [get_ports ops_rdy]  \
  [get_ports res_val] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports rst_b]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {op_b[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports ops_val]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports res_rdy]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {res[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports ops_rdy]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports res_val]
set_dont_use [get_lib_cells slow_vdd1v0/HOLDX1]
set_clock_uncertainty -setup 0.1 [get_clocks clk]
set_clock_uncertainty -hold 0.1 [get_clocks clk]
