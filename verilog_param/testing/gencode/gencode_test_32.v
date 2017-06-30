`timescale 1ns / 100ps
    module test;

    ////////////////////////////////////////////////////////////////////////
    // Parameters
    // 64 bit = 0
    // 32 bit = 1
    // 16 bit = 2
    parameter
      FPU_TYPE = 1,
      BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
      EXP_SIZE = 11 - (3*FPU_TYPE) - 1,
      MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
      BIAS = 2**(10-(3*FPU_TYPE)) - 1;

    ////////////////////////////////////////////////////////////////////////

    initial begin
      $dumpfile("CPU_32.vcd");
      $dumpvars(0,test);
    end
    event		error_event;
    reg clk = 0;
    always #10 clk = !clk;
    reg [1:0] fpu_rmode = 0; //round to nearest even
    reg [31:0] opa, opb;
    reg [2:0] fpu_op;
    wire [31:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu #(.BIT_SIZE(BIT_SIZE), .EXP_SIZE(EXP_SIZE), .MANT_SIZE(MANT_SIZE), .BIAS(BIAS) ) u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

    always #1800 $finish;
initial begin
#40 fpu_op <= 3;
opa <= 32'h39225e6c;
opb <= 32'hd40992a0;

#40 fpu_op <= 0;
opa <= 32'h120c562d;
opb <= 32'hedf5f0ed;

#40 fpu_op <= 2;
opa <= 32'hf67d4e70;
opb <= 32'h70835725;

#40 fpu_op <= 3;
opa <= 32'h22f61250;
opb <= 32'ha602ae63;

#40 fpu_op <= 3;
opa <= 32'hb26ca99b;
opb <= 32'h6c301216;

#40 fpu_op <= 3;
opa <= 32'h2e8e263a;
opb <= 32'hb9e2a195;

#40 fpu_op <= 2;
opa <= 32'h3e5d9c;
opb <= 32'hba2b0ef4;

#40 fpu_op <= 3;
opa <= 32'hd102d46d;
opb <= 32'h445141e4;

#40 fpu_op <= 2;
opa <= 32'hde283ae;
opb <= 32'h2eaeb52;

#40 fpu_op <= 2;
opa <= 32'h4b905b6f;
opb <= 32'hceae7974;

end
endmodule