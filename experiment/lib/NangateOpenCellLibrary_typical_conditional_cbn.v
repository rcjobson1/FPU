// 
// ******************************************************************************
// *                                                                            *
// *                   Copyright (C) 2004-2009, Nangate Inc.                    *
// *                           All rights reserved.                             *
// *                                                                            *
// * Nangate and the Nangate logo are trademarks of Nangate Inc.                *
// *                                                                            *
// * All trademarks, logos, software marks, and trade names (collectively the   *
// * "Marks") in this program are proprietary to Nangate or other respective    *
// * owners that have granted Nangate the right and license to use such Marks.  *
// * You are not permitted to use the Marks without the prior written consent   *
// * of Nangate or such third party that may own the Marks.                     *
// *                                                                            *
// * This file has been provided pursuant to a License Agreement containing     *
// * restrictions on its use. This file contains valuable trade secrets and     *
// * proprietary information of Nangate Inc., and is protected by U.S. and      *
// * international laws and/or treaties.                                        *
// *                                                                            *
// * The copyright notice(s) in this file does not indicate actual or intended  *
// * publication of this file.                                                  *
// *                                                                            *
// *   NGLibraryCharacterizer, v2009.07-HR28-2009-07-08 - build 200907162109    *
// *                                                                            *
// ******************************************************************************
`timescale 1ns/100ps

module AND2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  and(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  and(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND2_X4 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  and(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  and(ZN, i_66, A3);
  and(i_66, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND3_X2 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  and(ZN, i_66, A3);
  and(i_66, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND3_X4 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  and(ZN, i_46, A3);
  and(i_46, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  and(ZN, i_12, A4);
  and(i_12, i_13, A3);
  and(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND4_X2 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  and(ZN, i_12, A4);
  and(i_12, i_13, A3);
  and(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND4_X4 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  and(ZN, i_12, A4);
  and(i_12, i_13, A3);
  and(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module ANTENNA_X1 (A);

  input A;

endmodule

module AOI211_X1 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A);
  or(i_19, i_20, B);
  and(i_20, C1, C2);

  specify
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI211_X2 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A);
  or(i_19, i_20, B);
  and(i_20, C1, C2);

  specify
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI211_X4 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A);
  or(i_19, i_20, B);
  and(i_20, C1, C2);

  specify
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI21_X1 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  or(i_12, A, i_13);
  and(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI21_X2 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_52);
  or(i_52, A, i_53);
  and(i_53, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI21_X4 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_52);
  or(i_52, A, i_53);
  and(i_53, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI221_X1 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  or(i_24, i_25, i_27);
  or(i_25, i_26, A);
  and(i_26, C1, C2);
  and(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI221_X2 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  or(i_24, i_25, i_27);
  or(i_25, i_26, A);
  and(i_26, C1, C2);
  and(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI221_X4 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  or(i_24, i_25, i_27);
  or(i_25, i_26, A);
  and(i_26, C1, C2);
  and(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI222_X1 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  or(i_30, i_31, i_34);
  or(i_31, i_32, i_33);
  and(i_32, A1, A2);
  and(i_33, B1, B2);
  and(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI222_X2 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  or(i_30, i_31, i_34);
  or(i_31, i_32, i_33);
  and(i_32, A1, A2);
  and(i_33, B1, B2);
  and(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI222_X4 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  or(i_30, i_31, i_34);
  or(i_31, i_32, i_33);
  and(i_32, A1, A2);
  and(i_33, B1, B2);
  and(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI22_X1 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, i_20);
  and(i_19, A1, A2);
  and(i_20, B1, B2);

  specify
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI22_X2 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, i_20);
  and(i_19, A1, A2);
  and(i_20, B1, B2);

  specify
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI22_X4 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, i_20);
  and(i_19, A1, A2);
  and(i_20, B1, B2);

  specify
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X1 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X16 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X2 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X32 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X4 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X8 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module CLKBUF_X1 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module CLKBUF_X2 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module CLKBUF_X3 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module FA_X1 (A, B, CI, CO, S);

  input A;
  input B;
  input CI;
  output CO;
  output S;

  or(CO, i_24, i_25);
  and(i_24, A, B);
  and(i_25, CI, i_26);
  or(i_26, A, B);
  xor(S, CI, i_30);
  xor(i_30, A, B);

  specify
    if((B == 1'b0) && (CI == 1'b1)) (A => CO) = (0.1, 0.1);
    if((B == 1'b1) && (CI == 1'b0)) (A => CO) = (0.1, 0.1);
    if((A == 1'b1) && (CI == 1'b0)) (B => CO) = (0.1, 0.1);
    if((A == 1'b0) && (CI == 1'b1)) (B => CO) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b0)) (CI => CO) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b1)) (CI => CO) = (0.1, 0.1);
    if((B == 1'b0) && (CI == 1'b1)) (A => S) = (0.1, 0.1);
    if((B == 1'b0) && (CI == 1'b0)) (A => S) = (0.1, 0.1);
    if((B == 1'b1) && (CI == 1'b1)) (A => S) = (0.1, 0.1);
    if((B == 1'b1) && (CI == 1'b0)) (A => S) = (0.1, 0.1);
    if((A == 1'b0) && (CI == 1'b0)) (B => S) = (0.1, 0.1);
    if((A == 1'b1) && (CI == 1'b0)) (B => S) = (0.1, 0.1);
    if((A == 1'b1) && (CI == 1'b1)) (B => S) = (0.1, 0.1);
    if((A == 1'b0) && (CI == 1'b1)) (B => S) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b1)) (CI => S) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b0)) (CI => S) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b1)) (CI => S) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b0)) (CI => S) = (0.1, 0.1);
  endspecify

endmodule

module FILLCELL_X1 ();


endmodule

module FILLCELL_X16 ();


endmodule

module FILLCELL_X2 ();


endmodule

module FILLCELL_X32 ();


endmodule

module FILLCELL_X4 ();


endmodule

module FILLCELL_X8 ();


endmodule

module HA_X1 (A, B, CO, S);

  input A;
  input B;
  output CO;
  output S;

  and(CO, A, B);
  xor(S, A, B);

  specify
    (A => CO) = (0.1, 0.1);
    (B => CO) = (0.1, 0.1);
    if((B == 1'b0)) (A => S) = (0.1, 0.1);
    if((B == 1'b1)) (A => S) = (0.1, 0.1);
    if((A == 1'b1)) (B => S) = (0.1, 0.1);
    if((A == 1'b0)) (B => S) = (0.1, 0.1);
  endspecify

endmodule

module INV_X1 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module INV_X16 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module INV_X2 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module INV_X32 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module INV_X4 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module INV_X8 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module LOGIC0_X1 (Z);

  output Z;

  buf(Z, 0);
endmodule

module LOGIC1_X1 (Z);

  output Z;

  buf(Z, 1);
endmodule

module MUX2_X1 (A, B, S, Z);

  input A;
  input B;
  input S;
  output Z;

  or(Z, i_38, i_39);
  and(i_38, S, B);
  and(i_39, A, i_40);
  not(i_40, S);

  specify
    if((B == 1'b1) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b0) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((A == 1'b1) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b0)) (S => Z) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b1)) (S => Z) = (0.1, 0.1);
  endspecify

endmodule

module MUX2_X2 (A, B, S, Z);

  input A;
  input B;
  input S;
  output Z;

  or(Z, i_58, i_59);
  and(i_58, S, B);
  and(i_59, A, i_60);
  not(i_60, S);

  specify
    if((B == 1'b1) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b0) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((A == 1'b1) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b0)) (S => Z) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b1)) (S => Z) = (0.1, 0.1);
  endspecify

endmodule

module NAND2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_6);
  and(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_6);
  and(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND2_X4 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_6);
  and(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_32);
  and(i_32, i_33, A3);
  and(i_33, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND3_X2 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_32);
  and(i_32, i_33, A3);
  and(i_33, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND3_X4 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_12);
  and(i_12, i_13, A3);
  and(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, A4);
  and(i_19, i_20, A3);
  and(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND4_X2 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, A4);
  and(i_19, i_20, A3);
  and(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND4_X4 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, A4);
  and(i_19, i_20, A3);
  and(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_66);
  or(i_66, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_46);
  or(i_46, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR2_X4 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_66);
  or(i_66, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_12);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR3_X2 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_12);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR3_X4 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_12);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A4);
  or(i_19, i_20, A3);
  or(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR4_X2 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A4);
  or(i_19, i_20, A3);
  or(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR4_X4 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A4);
  or(i_19, i_20, A3);
  or(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI211_X1 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, B);
  and(i_19, i_20, A);
  or(i_20, C1, C2);

  specify
    if((B == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI211_X2 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, B);
  and(i_19, i_20, A);
  or(i_20, C1, C2);

  specify
    if((B == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI211_X4 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, B);
  and(i_19, i_20, A);
  or(i_20, C1, C2);

  specify
    if((B == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI21_X1 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  and(i_12, A, i_13);
  or(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI21_X2 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  and(i_12, A, i_13);
  or(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI21_X4 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  and(i_12, A, i_13);
  or(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI221_X1 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  and(i_24, i_25, i_27);
  and(i_25, i_26, A);
  or(i_26, C1, C2);
  or(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI221_X2 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  and(i_24, i_25, i_27);
  and(i_25, i_26, A);
  or(i_26, C1, C2);
  or(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI221_X4 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  and(i_24, i_25, i_27);
  and(i_25, i_26, A);
  or(i_26, C1, C2);
  or(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI222_X1 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  and(i_30, i_31, i_34);
  and(i_31, i_32, i_33);
  or(i_32, A1, A2);
  or(i_33, B1, B2);
  or(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI222_X2 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  and(i_30, i_31, i_34);
  and(i_31, i_32, i_33);
  or(i_32, A1, A2);
  or(i_33, B1, B2);
  or(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI222_X4 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  and(i_30, i_31, i_34);
  and(i_31, i_32, i_33);
  or(i_32, A1, A2);
  or(i_33, B1, B2);
  or(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI22_X1 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, i_20);
  or(i_19, A1, A2);
  or(i_20, B1, B2);

  specify
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI22_X2 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, i_20);
  or(i_19, A1, A2);
  or(i_20, B1, B2);

  specify
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI22_X4 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, i_20);
  or(i_19, A1, A2);
  or(i_20, B1, B2);

  specify
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI33_X1 (A1, A2, A3, B1, B2, B3, ZN);

  input A1;
  input A2;
  input A3;
  input B1;
  input B2;
  input B3;
  output ZN;

  not(ZN, i_30);
  and(i_30, i_31, i_33);
  or(i_31, i_32, A3);
  or(i_32, A1, A2);
  or(i_33, i_34, B3);
  or(i_34, B1, B2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b0) || (A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) || (A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B3 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b0) || (A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) || (A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B3 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b1)) (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (B3 == 1'b1)) (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b1)) (A3 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (A3 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b1) && (B1 == 1'b0) && (B3 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B3 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b0) && (B1 == 1'b0) && (B3 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (A3 == 1'b1) && (B1 == 1'b0) && (B3 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    (B3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (B3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (A3 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (B3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (B3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  or(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  or(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR2_X4 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  or(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  or(ZN, i_6, A3);
  or(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR3_X2 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  or(ZN, i_6, A3);
  or(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR3_X4 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  or(ZN, i_6, A3);
  or(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  or(ZN, i_12, A4);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR4_X2 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  or(ZN, i_12, A4);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR4_X4 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  or(ZN, i_12, A4);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module XNOR2_X1 (A, B, ZN);

  input A;
  input B;
  output ZN;

  not(ZN, i_46);
  xor(i_46, A, B);

  specify
    if((B == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0)) (B => ZN) = (0.1, 0.1);
  endspecify

endmodule

module XNOR2_X2 (A, B, ZN);

  input A;
  input B;
  output ZN;

  not(ZN, i_46);
  xor(i_46, A, B);

  specify
    if((B == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0)) (B => ZN) = (0.1, 0.1);
  endspecify

endmodule

module XOR2_X1 (A, B, Z);

  input A;
  input B;
  output Z;

  xor(Z, A, B);

  specify
    if((B == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b1)) (A => Z) = (0.1, 0.1);
    if((A == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0)) (B => Z) = (0.1, 0.1);
  endspecify

endmodule

module XOR2_X2 (A, B, Z);

  input A;
  input B;
  output Z;

  xor(Z, A, B);

  specify
    if((B == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b1)) (A => Z) = (0.1, 0.1);
    if((A == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0)) (B => Z) = (0.1, 0.1);
  endspecify

endmodule

//
// End of file
//
