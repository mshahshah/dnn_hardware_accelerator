###################################################################

# Created by write_sdc on Sat Oct 10 16:10:11 2020

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_input_transition -max 0.2  [get_ports ap_clk]
set_input_transition -min 0.2  [get_ports ap_clk]
