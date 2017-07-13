`timescale 1ns / 100ps
    module test;

    ////////////////////////////////////////////////////////////////////////
    // Parameters
    // 64 bit = 0
    // 32 bit = 1
    // 16 bit =

    ////////////////////////////////////////////////////////////////////////

    event		error_event;
    reg clk = 0;
    always #10 clk = !clk;
    reg [1:0] fpu_rmode = 0; //round to nearest even
    reg [63:0] opa, opb;
    reg [2:0] fpu_op;
    wire [63:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

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
