set timing_enable_multiple_clocks_per_reg  true
set clk_margin 1.0
#set max_fanout 10
set clk_period 10
create_clock -period $clk_period -waveform {0 $clk_period/2} [get_ports {ap_clk}]
#create_clock -period 1302 -waveform {0 651} [get_ports {Dclk}]
set_input_transition 0.2 [get_ports ap_clk]
#set_max_area 2000
