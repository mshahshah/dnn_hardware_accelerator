#!/bin/bash

clock_period=$2 #operation clock period
files=$1 #verilog file name
sed -i -e "s/\({vfile} \).*/\1$1/" design_vision.tcl
sed -i -e "s/\(set clk_period \).*/\1$2/" cons.tcl
. /proj/cad/startup/profile.synopsys_2016
cp .synopsys_dc.setup ./ #Standard cell Library
echo "Synopsys Library loaded";
mkdir -p reports
command dc_shell -f design_vision.tcl
#exit
