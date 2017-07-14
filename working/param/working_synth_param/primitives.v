/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Primitives                                                 ////
////  FPU Primitives                                             ////
////                                                             ////
////  Author: Rudolf Usselmann                                   ////
////          rudi@asics.ws                                      ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000 Rudolf Usselmann                         ////
////                    rudi@asics.ws                            ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////


`timescale 1ns / 100ps

`define BIT_SIZE 15 
`define EXP_SIZE 4
`define MANT_SIZE 9 
`define BIAS 15
`define EXP_SHIFT 3

///////////////////////////////////////////////////////////////////////
//
// Add/Sub
//

module add_sub27(add, opa, opb, sum, co);
////////////////////////////////////////////////////////////////////////


input		add;
input	[`MANT_SIZE + 4:0]	opa, opb;
output	[`MANT_SIZE + 4:0]	sum;
output		co;


assign {co, sum} = add ? (opa + opb) : (opa - opb);

endmodule

////////////////////////////////////////////////////////////////////////
//
// Multiply
//

module mul_r2(clk, opa, opb, prod);
////////////////////////////////////////////////////////////////////////


input		clk;
input	[`MANT_SIZE + 1:0]	opa, opb;
output	[(`MANT_SIZE + 1) * 2 + 1 : 0]	prod;
reg	[(`MANT_SIZE + 1) * 2 + 1:0]	prod1, prod;

always @(posedge clk)
	prod1 <= #1 opa * opb;

always @(posedge clk)
	prod <= #1 prod1;

endmodule

////////////////////////////////////////////////////////////////////////
//
// Divide
//

module div_r2(clk, opa, opb, quo, rem);



input		clk;
input	[(`MANT_SIZE + 1) * 2 + 3 :0]	opa;
input	[`MANT_SIZE + 1:0]	opb;
output	[(`MANT_SIZE + 1) * 2 + 3:0]	quo, rem;

reg	[(`MANT_SIZE + 1) * 2 + 3 :0]	quo, rem, quo1, remainder;

always @(posedge clk)
	quo1 <= #1 opa + opb;

always @(posedge clk)
	quo <= #1 quo1;

always @(posedge clk)
	remainder <= #1 opa + opb;

always @(posedge clk)
	rem <= #1 remainder;

endmodule
