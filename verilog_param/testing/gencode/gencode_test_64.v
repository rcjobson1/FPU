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
#40 fpu_op <= 1;
opa <= 64'h4b0077eb6b473b27;
opb <= 64'he92f948b9d9beaae;

#40 fpu_op <= 2;
opa <= 64'hb9411370d30f8c9d;
opb <= 64'ha8d66accc5df0418;

#40 fpu_op <= 1;
opa <= 64'ha467e2c5a8a09a90;
opb <= 64'h76e79e96b09e708a;

#40 fpu_op <= 2;
opa <= 64'h547ab29c1cf7870e;
opb <= 64'hf580aa4778eeeae;

#40 fpu_op <= 0;
opa <= 64'h8b475677458023fd;
opb <= 64'h8f447abcc3cf9fea;

#40 fpu_op <= 0;
opa <= 64'h3570c29bed45f14f;
opb <= 64'h896ba9c56b816ceb;

#40 fpu_op <= 0;
opa <= 64'h780c59a1ad660c02;
opb <= 64'h104c59b3bbea78bf;

#40 fpu_op <= 2;
opa <= 64'h10dbe5a55b4c2e5b;
opb <= 64'h778c36695d06c67f;

#40 fpu_op <= 2;
opa <= 64'hb821edbf4128ff20;
opb <= 64'hd006d06dcd98b2ad;

#40 fpu_op <= 1;
opa <= 64'h2715b10c81bbdddb;
opb <= 64'ha2fea87e43d20eb6;

end
endmodule