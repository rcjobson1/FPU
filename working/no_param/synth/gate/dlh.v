
`timescale 1ns/1ps
module DLH_X2(G, D, Q);
input G, D;
output Q;


assign Q = G ? D : 1'bx;
endmodule
