module addition(clk, add_sub, opa, opb, sum);
  input clk, add_sub;
  input [BIT_SIZE:0] opa, opb;
  output [BIT_SIZE:0] sum;



  wire [BIT_SIZE:0] opa_normal, opb_normal, sum_normal;

  normalize_addition m1(clk, opa, opb, opa_normal, opb_normal);

  assign sum_normal = add_sub ? (opa_normal + opb_normal) : (opa_normal - opb_normal);

  end_normalize_addition m2(clk, sum_normal, sum);


endmodule // n - bit addition

module normalize_addition(clk, opa, opb, n_opa, n_opb); //Normalizes the two numbers
input clk;
input [BIT_SIZE:0] opa, opb;
output [BIT_SIZE:0] sum;


endmodule // normalize_addition

module end_normalize_addition(clk, sum, out); // Takes a number and normalizes it
input clk;
input [BIT_SIZE:0] sum
output [BIT_SIZE:0] out



endmodule
