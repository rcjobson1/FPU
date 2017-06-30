`timescale 1ns / 100ps
module test;

////////////////////////////////////////////////////////////////////////
// Parameters
// 64 bit = 0
// 32 bit = 1
// 16 bit = 2
parameter
  FPU_TYPE = 2,
  BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
  EXP_SIZE = 11 - (3*FPU_TYPE) - 1,
  MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
  BIAS = 2**(10-(3*FPU_TYPE)) - 1;

////////////////////////////////////////////////////////////////////////

initial begin
  $dumpfile("CPU_16.vcd");
  $dumpvars(0,test);
end
event		error_event;
reg clk = 0;
always #10 clk = !clk;
reg [1:0] fpu_rmode = 0; //round to nearest even
reg [15:0] opa, opb;
reg [2:0] fpu_op;
wire [15:0] out;
wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

fpu #(.BIT_SIZE(BIT_SIZE), .EXP_SIZE(EXP_SIZE), .MANT_SIZE(MANT_SIZE), .BIAS(BIAS) ) u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

endmodule // test
