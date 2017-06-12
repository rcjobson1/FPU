`timescale 1ns / 100ps
`define BIT_SIZE 31
`define EXP_SIZE 7
`define EXP_BIAS 127

module addition(clk, add_sub, opa, opb, sum);
  input clk, add_sub;
  input [`BIT_SIZE:0] opa, opb;
  output [`BIT_SIZE:0] sum;



  wire [`BIT_SIZE:0] opa_normal, opb_normal, sum_normal;

  normalize_addition m1(clk, opa, opb, opa_normal, opb_normal);

  assign sum_normal = add_sub ? (opa_normal + opb_normal) : (opa_normal - opb_normal); // TODO Change this to only add exponents

  end_normalize_addition m2(clk, sum_normal, sum);


endmodule // n - bit addition

module normalize_addition(clk, opa, opb, n_opa, n_opb); //Normalizes the two numbers
input clk;
input [`BIT_SIZE:0] opa, opb;
output [`BIT_SIZE:0] n_opa, n_opb;

  wire opa_sign, opb_sign; // Declare sign bits for each operand
  wire[`EXP_SIZE:0] opa_exp, opb_exp;
  wire[`BIT_SIZE - `EXP_SIZE:0] opa_mant, opb_mant;

  wire[`EXP_SIZE:0] small_shift;

  wire o pa_larger;
  assign opa_larger = opa_exp >= opb_exp;

  assign opa_sign = opa[`BIT_SIZE];
  assign opb_sign = opb[`BIT_SIZE];

  assign opa_exp = opa[`BIT_SIZE-1: (`BIT_SIZE-1) - `EXP_SIZE];
  assign opb_exp = opb[`BIT_SIZE-1: (`BIT_SIZE-1) - `EXP_SIZE];

  assign opa_mant = opa[(`BIT_SIZE-1) - `EXP_SIZE - 1 : 0];
  assign opb_mant = opb[(`BIT_SIZE-1) - `EXP_SIZE - 1 : 0];

  assign small_shift = opa_larger ? (opa_exp - opb_exp) : (opb_exp - opa_exp);


  //assign n_opa = opa_larger ? opa : opa << small_shift;
  //assign n_opb = opa_larger ? opb << small_shift : opb;

  always @ (clk) begin

    $display ("small shift: %b\t opa_exp : %b\t opb_exp: %b\n\n\n\n",small_shift, opa_exp, opb_exp);
  end



endmodule // normalize_addition

module end_normalize_addition(clk, sum, out); // Takes a number and normalizes it
input clk;
input [`BIT_SIZE:0] sum;
output [`BIT_SIZE:0] out;

  assign out = sum;

endmodule
