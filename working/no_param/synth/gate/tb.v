`timescale 1ns/1ps

module test;


////////////////////////////////////////////////////////////////////////
// Parameters
// 64 bit = 0
// 32 bit = 1
// 16 bit = 2
parameter
// 64 bit = 0
// 32 bit = 1
// 16 bit = 2

  FPU_TYPE = 1,


  BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
  EXP_SIZE = 11- (3*FPU_TYPE) - 1,
  MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
  BIAS1 = 2**(10-(3*FPU_TYPE)) - 1;

////////////////////////////////////////////////////////////////////////

initial begin
  $dumpfile("wf/TESTWAVr2.vcd");
  $dumpvars(0,test);
end

event		error_event;

reg clk = 0;
always #10 clk = !clk;

reg [1:0] fpu_rmode = 2; //round to nearest even

reg [2:0] fpu_op = 0; // div
reg [31:0] opa = 32'h41111111; //20
reg [31:0] opb = 32'h41111111; // 2

// Should get 28

wire [31:0] out;
wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

fpu u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);


initial begin
  #1000 $finish;
end

initial begin
  $display("time\topa\topb\tout");
  $monitor("%0d,\t%h,\t%h,\t%h, UNDERFLOW: %d", $time, opa,opb,out, underflow);
end


endmodule // test
