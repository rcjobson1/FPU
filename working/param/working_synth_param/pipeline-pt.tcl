set search_path "."
set link_path "* ./lib/NangateOpenCellLibrary_typical_conditional_nldm.db"
read_verilog gate/Pipeline_flat.v
link_design -keep_sub_designs Pipeline

read_sdf arm-pipeline.sdf

create_clock -period 1.0 clk
report_timing -group clk -max_paths 100
report_timing -true

#create_clock -period 1.0 clk
#check_timing

#report_timing -group clk -max_paths 1000
#set timing_input_port_default_clock false
#report_timing -true
#write_sdf -version 2.1 -context Verilog Pipeline.sdf
#write_sdf -version 2.1 -no_edge -no_timing_checks -context Verilog Pipeline.sdf

exit
