set {vfile} ave8.v
read_file -format verilog $vfile
check_design -multiple_designs
source cons.tcl
compile -exact_map
#compile_ultra
#compile –map_effort $mapEffort1
write -hierarchy -format ddc
report_timing > reports/timing.rpt 
report_area > reports/area.rpt 
report_power > reports/power.rpt 
report_cell > reports/cell.rpt 
report_qor > reports/qor.rpt 
report_resources > reports/resources.rpt
write_sdc ./netlist.sdc #For encounter place and route
write -hierarchy -format verilog -output output_netlist.v
exit
