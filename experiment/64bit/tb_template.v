`timescale 1ns/1ps
`define EOF 32'hFFFF_FFFF

//`include `NETLIST_FILE

`define TEST_FILE "vectors/BIT_64.testvector"
`define OUTPUT_FILE "results.txt"
`define SDF_FILE "fpu.sdf" 


module top;
   wire [63:0] out;
   reg [63:0]  a, b;
   reg [2:0] fpu_op;
   reg 	       cin, sel, clk;
   wire	inf, snan, qnan, ine, overflow, underflow, zero, div_by_zero;
   


fpu u0(clk, 2'b0, fpu_op, a, b, out, inf, snan, qnan, ine, overflow, underflow, zero, div_by_zero);
//insert adder design here!

	integer inFile, status, outFile;
	initial begin
		$dumpfile("CPU_64.vcd");
		$dumpvars(0,top);
	end
	initial 
	begin
		//insert sdf_annotate here!
                $sdf_annotate(`SDF_FILE, u0,,"fpu.log"); 
		inFile = $fopen(`TEST_FILE, "r");
		outFile = $fopen(`OUTPUT_FILE, "w");
		//$read_lib_saif("lib/NangateOpenCellLibrary_typical_conditional_ecsm.saif");
		$set_gate_level_monitoring("on");
		//insert toggle_region here!
		$set_toggle_region(u0);
		$toggle_start();
		clk = 1;	
	end
	
	always #2 clk = ~clk;

	always @ (negedge clk)
	begin
		status = $fscanf(inFile, "%d %d %d\n", a, b, fpu_op);
		if (status == `EOF)
		begin
			$fclose(inFile);
			$fclose(outFile);
			$toggle_stop();
		//	insert toggle_report here!
			$toggle_report("backward_saif.txt", 1e-9, u0);
			#14 $finish;
		end
	end

	always @ (negedge clk)
		$print_max_delay();

endmodule // top


