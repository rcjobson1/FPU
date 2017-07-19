`timescale 1ns/100ps
`define EOF 32'hFFFF_FFFF

module top;
	parameter BIT_SIZE = 32, CLOCK_RATE = 2;
	parameter TEST_FILE = (BIT_SIZE == 64) ? "vectors/BIT_64.testvector" :
		 (BIT_SIZE == 32) ? "vectors/BIT_32.testvector" :
		 "vectors/BIT_16.testvector";
	
	parameter SDF_FILE = (BIT_SIZE == 64) ? "64bit/fpu64.sdf" : (BIT_SIZE == 32) ? "32bit/fpu32.sdf" : "16bit/fpu16.sdf";
	parameter DUMP_FILE = (BIT_SIZE == 64) ? "CPU_64.vcd" : (BIT_SIZE == 32) ? "CPU_32.vcd" : "CPU_16.vcd"; 

	wire [BIT_SIZE-1:0] out;
	reg [BIT_SIZE-1:0]  a, b;
	reg [2:0] fpu_op;
	reg	cin, sel, clk;
	wire inf, snan, qnan, ine, overflow, underflow, zero, div_by_zero;
   
			 
	fpu u0(clk, 2'b0, fpu_op, a, b, out, inf, snan, qnan, ine, overflow, underflow, zero, div_by_zero);

	integer inFile, status, outFile;
	initial begin
		$dumpfile(DUMP_FILE);
		$dumpvars(0,top);
	end


	initial 
	begin
        $sdf_annotate(SDF_FILE, u0,,"fpu.log"); 
		inFile = $fopen(TEST_FILE, "r");
		$set_gate_level_monitoring("on");
		$set_toggle_region(u0);
		$toggle_start();
		clk = 1;	
	end
	
	always #(CLOCK_RATE) clk = ~clk;

	always @ (negedge clk)
	begin
		status = $fscanf(inFile, "%d %d %d\n", a, b, fpu_op);
		if (status == `EOF)
		begin
			$fclose(inFile);
			$fclose(outFile);
			$toggle_stop();
			$toggle_report("backward_saif.txt", 1e-9, u0);
			#(CLOCK_RATE * 10) $finish;
		end
	end

	always @ (negedge clk)
		$print_max_delay();

endmodule // top


