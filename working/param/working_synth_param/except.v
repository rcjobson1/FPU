/////////////////////////////////////////////////////////////////////
////                                                             ////
////  EXCEPT                                                     ////
////  Floating Point Exception/Special Numbers Unit              ////
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



`define BIT_SIZE 63
`define EXP_SIZE 10
`define MANT_SIZE 51
`define BIAS 1023
`define EXP_SHIFT 5


module except(	clk, opa, opb, inf, ind, qnan, snan, opa_nan, opb_nan,
		opa_00, opb_00, opa_inf, opb_inf, opa_dn, opb_dn);




input		clk;
input	[`BIT_SIZE:0]	opa, opb;
output		inf, ind, qnan, snan, opa_nan, opb_nan;
output		opa_00, opb_00;
output		opa_inf, opb_inf;
output		opa_dn;
output		opb_dn;

////////////////////////////////////////////////////////////////////////
//
// Local Wires and registers
//

wire	[`EXP_SIZE:0]	expa, expb;		// alias to opX exponent
wire	[`MANT_SIZE:0]	fracta, fractb;		// alias to opX fraction
reg		expa_ff, infa_f_r, qnan_r_a, snan_r_a;
reg		expb_ff, infb_f_r, qnan_r_b, snan_r_b;
reg		inf, ind, qnan, snan;	// Output registers
reg		opa_nan, opb_nan;
reg		expa_00, expb_00, fracta_00, fractb_00;
reg		opa_00, opb_00;
reg		opa_inf, opb_inf;
reg		opa_dn, opb_dn;

///////////////////////////////////////////////////////////////////////
//
// Aliases
//

assign   expa = opa[`BIT_SIZE-1:`BIT_SIZE-1 - `EXP_SIZE];
assign   expb = opb[`BIT_SIZE-1:`BIT_SIZE-1 - `EXP_SIZE];
assign fracta = opa[`MANT_SIZE:0];
assign fractb = opb[`MANT_SIZE:0];

////////////////////////////////////////////////////////////////////////
//
// Determine if any of the input operators is a INF or NAN or any other special number
//

always @(posedge clk)
	expa_ff <= #1 &expa;

always @(posedge clk)
	expb_ff <= #1 &expb;

always @(posedge clk)
	infa_f_r <= #1 !(|fracta);

always @(posedge clk)
	infb_f_r <= #1 !(|fractb);

always @(posedge clk)
	qnan_r_a <= #1  fracta[`MANT_SIZE];

always @(posedge clk)
	snan_r_a <= #1 !fracta[`MANT_SIZE] & |fracta[`MANT_SIZE - 1:0];

always @(posedge clk)
	qnan_r_b <= #1  fractb[`MANT_SIZE];

always @(posedge clk)
	snan_r_b <= #1 !fractb[`MANT_SIZE] & |fractb[`MANT_SIZE - 1:0];

always @(posedge clk)
	ind  <= #1 (expa_ff & infa_f_r) & (expb_ff & infb_f_r);

always @(posedge clk)
	inf  <= #1 (expa_ff & infa_f_r) | (expb_ff & infb_f_r);

always @(posedge clk)
	qnan <= #1 (expa_ff & qnan_r_a) | (expb_ff & qnan_r_b);

always @(posedge clk)
	snan <= #1 (expa_ff & snan_r_a) | (expb_ff & snan_r_b);

always @(posedge clk)
	opa_nan <= #1 &expa & (|fracta[`MANT_SIZE:0]);

always @(posedge clk)
	opb_nan <= #1 &expb & (|fractb[`MANT_SIZE:0]);

always @(posedge clk)
	opa_inf <= #1 (expa_ff & infa_f_r);

always @(posedge clk)
	opb_inf <= #1 (expb_ff & infb_f_r);

always @(posedge clk)
	expa_00 <= #1 !(|expa);

always @(posedge clk)
	expb_00 <= #1 !(|expb);

always @(posedge clk)
	fracta_00 <= #1 !(|fracta);

always @(posedge clk)
	fractb_00 <= #1 !(|fractb);

always @(posedge clk)
	opa_00 <= #1 expa_00 & fracta_00;

always @(posedge clk)
	opb_00 <= #1 expb_00 & fractb_00;

always @(posedge clk)
	opa_dn <= #1 expa_00;

always @(posedge clk)
	opb_dn <= #1 expb_00;

endmodule
