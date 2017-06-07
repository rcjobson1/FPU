`timescale 1ns / 100ps

module test;


initial begin
  $dumpfile("TESTWAV.vcd");
  $dumpvars(0,test);
end

event		error_event;

reg clk = 0;
always #10 clk = !clk;

reg [1:0] fpu_rmode = 2; //round to nearest even

reg [2:0] fpu_op = 0; // add


reg [31:0] opa = 32'b01000001110000000000000000000000; //24
reg [31:0] opb = 32'b01000000100000000000000000000000; //4

// Should get 28

wire [31:0] out;
wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

fpu u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);


initial begin
  #1000 $finish;
end

initial begin
  $display("time\topa\topb\tout");
  $monitor("%d,\t%h,\t%h,\t%h,", $time, opa,opb,out);
end


endmodule // test
