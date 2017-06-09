// This is a configurable FPU that can accomodate 64bit, 32 bit and 16 bit inputs.
// For the most part, the design will be similar to that of the fpu used before.
// However, this will be designed from the ground up so that it can be easily tested
// and easily configurable. Which will allow easier access to data.

// Compononents needed for design

// Adder
// Comparator (Subtractor)
// Shift register

// Some sort of normalization unit

`timescale 1ns / 100ps




module fpu(clk, operation, opa, opb, out, errors);
input clk;
input [1:0] operation;
input [BIT_SIZE:0] opa, opb; // TODO change so it can work with multiple length inputs
output [BIT_SIZE:0] out;
output errors;

parameter BIT_SIZE = 31;

reg clk1 = 0;


always #10 clk1 = !clk1;



always @ (posedge clk1) begin
  $display("%d is the bit size",BIT_SIZE);
end

always #50 $finish;





endmodule
