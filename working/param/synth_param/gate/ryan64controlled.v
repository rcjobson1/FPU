`timescale 1ns / 100ps
    module test;

    ////////////////////////////////////////////////////////////////////////
    // Parameters
    // 64 bit = 0
    // 32 bit = 1
    // 16 bit = 2
    parameter
      FPU_TYPE = 0,
      BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
      EXP_SIZE = 11 - (3*FPU_TYPE) - 1,
      MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
      BIAS = 2**(10-(3*FPU_TYPE)) - 1;

    ////////////////////////////////////////////////////////////////////////

    initial begin
      $dumpfile("CPU_64.vcd");
      $dumpvars(0,test);
    end
    event		error_event;
    reg clk = 0;
    always #10 clk = !clk;
    reg [1:0] fpu_rmode = 0; //round to nearest even
    reg [63:0] opa, opb;
    reg [2:0] fpu_op;
    wire [63:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu #(.BIT_SIZE(BIT_SIZE), .EXP_SIZE(EXP_SIZE), .MANT_SIZE(MANT_SIZE), .BIAS(BIAS) ) u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

    always #1800 $finish;
initial begin

#40 fpu_op <= 0;
opa <= 64'h191536e3e743a545;
opb <= 64'hf5ceb434501dc11c;

end


initial begin
  $display("time\topa\topb\tout");
  $monitor("%0d,\t%h,\t%h,\t%h, UNDERFLOW: %d", $time, opa,opb,out, underflow);
end
endmodule
