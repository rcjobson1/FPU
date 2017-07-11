`timescale 1ns/1ps

primitive DFFR_X1_seq3 (IQ, RN, nextstate, CK, NOTIFIER);
  output IQ;
  input RN;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
       // RN   nextstate          CK    NOTIFIER     : @IQ :          IQ
           ?           0           r           ?       : ? :           0;
           1           1           r           ?       : ? :           1;
           ?           0           *           ?       : 0 :           0; // reduce pessimism
           1           1           *           ?       : 1 :           1; // reduce pessimism
           1           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           1           ?           f           ?       : ? :           -; // Ignore non-triggering clock edge
           0           ?           ?           ?       : ? :           0; // RN activated
           *           ?           ?           ?       : 0 :           0; // Cover all transitions on RN
           ?           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFFR_X1 (CK, D, RN, Q, QN);

  input CK;
  input D;
  input RN;
  output Q;
  output QN;
  reg NOTIFIER;

  DFFR_X1_seq3(IQ, RN, nextstate, CK, NOTIFIER);
  not(IQN, IQ);
  buf(Q, IQ);
  buf(QN, IQN);
  buf(nextstate, D);

  // yf - capture delay
  reg [8*70-1:0] name;
  real startTime;
  real arrivalTime;
  reg start;

  always @ (posedge CK) begin
	  #0 startTime <= $realtime;
	  #0 start <= 1'b1;
  end

  always @ (negedge CK) #0 start <= 1'b0;

/*  always @ (D) begin
	  if (start) begin
		  #0 arrivalTime = $realtime;
		  $sformat(name, "%m");
	  	  $reg_acc(startTime, arrivalTime, name);
	  end
  end
*/

  specify
    (posedge CK => (Q +: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.001, 0.001);
    (posedge CK => (QN -: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.001, 0.001);

    $width(negedge CK &&& ((RN)), 0.001, 0, NOTIFIER);
    $width(posedge CK &&& ((RN)), 0.001, 0, NOTIFIER);
    $setuphold(posedge CK, negedge D, 0.001, 0.001, NOTIFIER);
    $setuphold(posedge CK, posedge D, 0.001, 0.001, NOTIFIER);
    $width(negedge D, 0.001, 0, NOTIFIER);
    $width(posedge D, 0.001, 0, NOTIFIER);
    $recovery(posedge RN, posedge CK, 0.001, NOTIFIER);
    $hold(posedge CK, posedge RN, 0.001, NOTIFIER);
    $width(negedge RN, 0.001, 0, NOTIFIER);
    $width(posedge RN, 0.001, 0, NOTIFIER);
  endspecify

endmodule

primitive DFFR_X2_seq3 (IQ, RN, nextstate, CK, NOTIFIER);
  output IQ;
  input RN;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
       // RN   nextstate          CK    NOTIFIER     : @IQ :          IQ
           ?           0           r           ?       : ? :           0;
           1           1           r           ?       : ? :           1;
           ?           0           *           ?       : 0 :           0; // reduce pessimism
           1           1           *           ?       : 1 :           1; // reduce pessimism
           1           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           1           ?           f           ?       : ? :           -; // Ignore non-triggering clock edge
           0           ?           ?           ?       : ? :           0; // RN activated
           *           ?           ?           ?       : 0 :           0; // Cover all transitions on RN
           ?           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFFR_X2 (CK, D, RN, Q, QN);

  input CK;
  input D;
  input RN;
  output Q;
  output QN;
  reg NOTIFIER;

  DFFR_X2_seq3(IQ, RN, nextstate, CK, NOTIFIER);
  not(IQN, IQ);
  buf(Q, IQ);
  buf(QN, IQN);
  buf(nextstate, D);

  // yf - capture delay
  reg [8*70-1:0] name;
  real startTime;
  real arrivalTime;
  reg start;

  always @ (posedge CK) begin
	  #0 startTime <= $realtime;
	  #0 start <= 1'b1;
  end

  always @ (negedge CK) #0 start <= 1'b0;

  /*always @ (D) begin
	  if (start) begin
		#0 arrivalTime = $realtime;
		$sformat(name, "%m");
	  	$reg_acc(startTime, arrivalTime, name);
	  end
  end
*/


  specify
    (posedge CK => (Q +: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.001, 0.001);
    (posedge CK => (QN -: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.001, 0.001);

    $width(negedge CK &&& ((RN)), 0.001, 0, NOTIFIER);
    $width(posedge CK &&& ((RN)), 0.001, 0, NOTIFIER);
    $setuphold(posedge CK, negedge D, 0.001, 0.001, NOTIFIER);
    $setuphold(posedge CK, posedge D, 0.001, 0.001, NOTIFIER);
    $width(negedge D, 0.001, 0, NOTIFIER);
    $width(posedge D, 0.001, 0, NOTIFIER);
    $recovery(posedge RN, posedge CK, 0.001, NOTIFIER);
    $hold(posedge CK, posedge RN, 0.001, NOTIFIER);
    $width(negedge RN, 0.001, 0, NOTIFIER);
    $width(posedge RN, 0.001, 0, NOTIFIER);
  endspecify

endmodule

primitive DFFS_X1_seq3 (IQ, SN, nextstate, CK, NOTIFIER);
  output IQ;
  input SN;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
       // SN   nextstate          CK    NOTIFIER     : @IQ :          IQ
           1           0           r           ?       : ? :           0;
           ?           1           r           ?       : ? :           1;
           1           0           *           ?       : 0 :           0; // reduce pessimism
           ?           1           *           ?       : 1 :           1; // reduce pessimism
           1           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           1           ?           f           ?       : ? :           -; // Ignore non-triggering clock edge
           0           ?           ?           ?       : ? :           1; // SN activated
           *           ?           ?           ?       : 1 :           1; // Cover all transitions on SN
           ?           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFFS_X1 (CK, D, SN, Q, QN);

  input CK;
  input D;
  input SN;
  output Q;
  output QN;
  reg NOTIFIER;

  DFFS_X1_seq3(IQ, SN, nextstate, CK, NOTIFIER);
  not(IQN, IQ);
  buf(Q, IQ);
  buf(QN, IQN);
  buf(nextstate, D);

  // yf - capture delay
  reg [8*70-1:0] name;
  real startTime;
  real arrivalTime;
  reg start;

  always @ (posedge CK) begin
	  #0 startTime <= $realtime;
	  #0 start <= 1'b1;
  end

  always @ (negedge CK) #0 start <= 1'b0;

  /*always @ (D) begin
	  if (start) begin
		 #0 arrivalTime = $realtime;
		 $sformat(name, "%m");
	 	 $reg_acc(startTime, arrivalTime, name);
	  end
  end
*/

  specify
    (posedge CK => (Q +: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.001, 0.001);
    (posedge CK => (QN -: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.001, 0.001);

    $width(negedge CK &&& ((SN)), 0.001, 0, NOTIFIER);
    $width(posedge CK &&& ((SN)), 0.001, 0, NOTIFIER);
    $setuphold(posedge CK, negedge D, 0.001, 0.001, NOTIFIER);
    $setuphold(posedge CK, posedge D, 0.001, 0.001, NOTIFIER);
    $width(negedge D, 0.001, 0, NOTIFIER);
    $width(posedge D, 0.001, 0, NOTIFIER);
    $recovery(posedge SN, posedge CK, 0.001, NOTIFIER);
    $hold(posedge CK, posedge SN, 0.001, NOTIFIER);
    $width(negedge SN, 0.001, 0, NOTIFIER);
    $width(posedge SN, 0.001, 0, NOTIFIER);
  endspecify

endmodule

primitive DFFS_X2_seq3 (IQ, SN, nextstate, CK, NOTIFIER);
  output IQ;
  input SN;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
       // SN   nextstate          CK    NOTIFIER     : @IQ :          IQ
           1           0           r           ?       : ? :           0;
           ?           1           r           ?       : ? :           1;
           1           0           *           ?       : 0 :           0; // reduce pessimism
           ?           1           *           ?       : 1 :           1; // reduce pessimism
           1           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           1           ?           f           ?       : ? :           -; // Ignore non-triggering clock edge
           0           ?           ?           ?       : ? :           1; // SN activated
           *           ?           ?           ?       : 1 :           1; // Cover all transitions on SN
           ?           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFFS_X2 (CK, D, SN, Q, QN);

  input CK;
  input D;
  input SN;
  output Q;
  output QN;
  reg NOTIFIER;

  DFFS_X2_seq3(IQ, SN, nextstate, CK, NOTIFIER);
  not(IQN, IQ);
  buf(Q, IQ);
  buf(QN, IQN);
  buf(nextstate, D);

  // yf - capture delay
  reg [8*70-1:0] name;
  real startTime;
  real arrivalTime;
  reg start;

  always @ (posedge CK) begin
	  #0 startTime <= $realtime;
	  #0 start <= 1'b1;
  end

  always @ (negedge CK) #0 start <= 1'b0;

  /*always @ (D) begin
	  if (start) begin
	  	#0 arrivalTime = $realtime;
	  	$sformat(name, "%m");
	  	$reg_acc(startTime, arrivalTime, name);
	  end
  end
*/

  specify
    (posedge CK => (Q +: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.001, 0.001);
    (posedge CK => (QN -: D)) = (0.001, 0.001);
    if((CK == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.001, 0.001);
    if((CK == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.001, 0.001);

    $width(negedge CK &&& ((SN)), 0.001, 0, NOTIFIER);
    $width(posedge CK &&& ((SN)), 0.001, 0, NOTIFIER);
    $setuphold(posedge CK, negedge D, 0.001, 0.001, NOTIFIER);
    $setuphold(posedge CK, posedge D, 0.001, 0.001, NOTIFIER);
    $width(negedge D, 0.001, 0, NOTIFIER);
    $width(posedge D, 0.001, 0, NOTIFIER);
    $recovery(posedge SN, posedge CK, 0.001, NOTIFIER);
    $hold(posedge CK, posedge SN, 0.001, NOTIFIER);
    $width(negedge SN, 0.001, 0, NOTIFIER);
    $width(posedge SN, 0.001, 0, NOTIFIER);
  endspecify

endmodule

primitive DFF_X1_seq3 (IQ, nextstate, CK, NOTIFIER);
  output IQ;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
// nextstate          CK    NOTIFIER     : @IQ :          IQ
           0           r           ?       : ? :           0;
           1           r           ?       : ? :           1;
           0           *           ?       : 0 :           0; // reduce pessimism
           1           *           ?       : 1 :           1; // reduce pessimism
           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           ?           f           ?       : ? :           -; // Ignore non-triggering clock edge
           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFF_X1 (CK, D, Q, QN);

  input CK;
  input D;
  output Q;
  output QN;
  reg NOTIFIER;

  DFF_X1_seq3(IQ, nextstate, CK, NOTIFIER);
  not(IQN, IQ);
  buf(Q, IQ);
  buf(QN, IQN);
  buf(nextstate, D);

  // yf - capture delay
  reg [8*70-1:0] name;
  real startTime;
  real arrivalTime;
  reg start;

  always @ (posedge CK) begin
	  #0 startTime <= $realtime;
	  #0 start <= 1'b1;
  end

  always @ (negedge CK) #0 start <= 1'b0;

  /*always @ (D) begin
	  if (start) begin
	  	#0 arrivalTime = $realtime;
	  	$sformat(name, "%m");
	  	$reg_acc(startTime, arrivalTime, name);
	  end
  end
*/

  specify
    (posedge CK => (Q +: D)) = (0.001, 0.001);
    (posedge CK => (QN -: D)) = (0.001, 0.001);

    $width(negedge CK, 0.001, 0, NOTIFIER);
    $width(posedge CK, 0.001, 0, NOTIFIER);
    $setuphold(posedge CK, negedge D, 0.001, 0.001, NOTIFIER);
    $setuphold(posedge CK, posedge D, 0.001, 0.001, NOTIFIER);
    $width(negedge D, 0.001, 0, NOTIFIER);
    $width(posedge D, 0.001, 0, NOTIFIER);
  endspecify

endmodule

primitive DFF_X2_seq3 (IQ, nextstate, CK, NOTIFIER);
  output IQ;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
// nextstate          CK    NOTIFIER     : @IQ :          IQ
           0           r           ?       : ? :           0;
           1           r           ?       : ? :           1;
           0           *           ?       : 0 :           0; // reduce pessimism
           1           *           ?       : 1 :           1; // reduce pessimism
           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           ?           f           ?       : ? :           -; // Ignore non-triggering clock edge
           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive

module DFF_X2 (CK, D, Q, QN);

  input CK;
  input D;
  output Q;
  output QN;
  reg NOTIFIER;

  DFF_X2_seq3(IQ, nextstate, CK, NOTIFIER);
  not(IQN, IQ);
  buf(Q, IQ);
  buf(QN, IQN);
  buf(nextstate, D);

  // yf - capture delay
  reg [8*70-1:0] name;
  real startTime;
  real arrivalTime;
  reg start;

  always @ (posedge CK) begin
	  #0 startTime <= $realtime;
	  #0 start <= 1'b1;
  end

  always @ (negedge CK) #0 start <= 1'b0;

 /* always @ (D) begin
	  if (start) begin
	  	#0 arrivalTime = $realtime;
	  	$sformat(name, "%m");
	  	$reg_acc(startTime, arrivalTime, name);
	  end
  end
*/

  specify
    (posedge CK => (Q +: D)) = (0.001, 0.001);
    (posedge CK => (QN -: D)) = (0.001, 0.001);

    $width(negedge CK, 0.001, 0, NOTIFIER);
    $width(posedge CK, 0.001, 0, NOTIFIER);
    $setuphold(posedge CK, negedge D, 0.001, 0.001, NOTIFIER);
    $setuphold(posedge CK, posedge D, 0.001, 0.001, NOTIFIER);
    $width(negedge D, 0.001, 0, NOTIFIER);
    $width(posedge D, 0.001, 0, NOTIFIER);
  endspecify

endmodule


