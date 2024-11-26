###############################################################################
# Created by write_sdc
###############################################################################
current_design vsdbabysoc
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 9.4500 [get_pins {pll/CLK}]
set_clock_uncertainty -setup 0.4725 clk
set_clock_uncertainty -hold 0.7560 clk
set_clock_latency 1.0000 [get_clocks {clk}]
set_clock_latency -source 2.0000 [get_clocks {clk}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {ENb_CP}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {ENb_CP}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {ENb_VCO}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {ENb_VCO}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {VCO_IN}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {VCO_IN}]
set_max_delay\
    -from [get_pins {dac/OUT}]\
    -to [get_ports {OUT}] 9.4500
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.5000 [get_ports {OUT}]
set_input_transition -min 0.7560 [get_ports {ENb_CP}]
set_input_transition -max 0.4725 [get_ports {ENb_CP}]
set_input_transition -min 0.7560 [get_ports {ENb_VCO}]
set_input_transition -max 0.4725 [get_ports {ENb_VCO}]
set_input_transition -min 0.7560 [get_ports {VCO_IN}]
set_input_transition -max 0.4725 [get_ports {VCO_IN}]
###############################################################################
# Design Rules
###############################################################################
