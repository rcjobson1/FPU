VCS = vcs +v2k +vc -Mupdate -line -full64 +define+TOP=top +neg_tchk +sdfverbose +incdir+./verilog

#LIB = \
#	  ./lib/NangateLibrary_combinational.v \
#	  ./lib/NangateLibrary_sequential.v 
LIB = \
	  ./lib/NangateOpenCellLibrary_typical_conditional_cbn.v \
	  ./lib/NangateOpenCellLibrary_typical_conditional_sqt.v

V_SRC = \
	verilog/pipeline.v \
	verilog/adder.v \
	verilog/operand.v \
	verilog/execute.v \
	verilog/popcount.v \
	verilog/uop_decode.v \
	verilog/forward.v \
	verilog/alu.v \
	verilog/clz.v \
	verilog/shift.v \
	verilog/interlock.v \
	verilog/condition_logic.v \
	verilog/mux.v \
	verilog/reg.v \
	verilog/mult32x32_both.v \
	verilog/mult32x32_signed.v \
	verilog/mult32x32_unsigned.v

SYNFILES = gate/Pipeline_flat.v

TESTBENCH = \
	verilog/top.v \
	verilog/dcache.v \
	verilog/sram/regfile.v \
	verilog/sram/memory.v \
	verilog/icache.v \
	verilog/util.v \
	verilog/stats.v 

C_SRC = \
		./reg_acc.c -P ./reg_acc.tab

iverilog:
	iverilog -o pipeline -I./verilog -fhierarchy.lst -Wall

syn:
	dc_shell -f run.tcl | tee syn.out

pt:
	pt_shell -f pipeline-pt.tcl | tee pt.out

vcs_gate: $(SYNFILES) $(TESTBENCH)
	$(VCS) +define+VCS_GATE_LEVEL=1 $(TESTBENCH) $(SYNFILES) $(LIB) $(C_SRC) -o pipeline_gate

vcs_arch:
	$(VCS) $(TESTBENCH) $(V_SRC) -o pipeline_arch
	
simv: vcs
	./pipeline

.PHONY: syn pt vcs simv clean
clean:
	rm -rf syn.out default.svf command.log pipeline pipeline.daidir csrc log gate
