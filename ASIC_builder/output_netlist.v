/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP3
// Date      : Sat Oct 10 16:10:11 2020
/////////////////////////////////////////////////////////////


module ave8 ( ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, 
        buffer_r_address0, buffer_r_ce0, buffer_r_we0, buffer_r_d0, 
        buffer_r_q0, buffer_r_address1, buffer_r_ce1, buffer_r_we1, 
        buffer_r_d1, buffer_r_q1, ap_return );
  output [2:0] buffer_r_address0;
  output [31:0] buffer_r_d0;
  input [31:0] buffer_r_q0;
  output [2:0] buffer_r_address1;
  output [31:0] buffer_r_d1;
  input [31:0] buffer_r_q1;
  output [31:0] ap_return;
  input ap_clk, ap_rst, ap_start;
  output ap_done, ap_idle, ap_ready, buffer_r_ce0, buffer_r_we0, buffer_r_ce1,
         buffer_r_we1;
  wire   N16, N17, N18, N19, N24, N25, N26, N27, N30, N31, N35, N36, N38,
         \add_ln30_fu_97_p2[2] , n8, n10, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;
  wire   [3:0] ap_CS_fsm;
  wire   [2:0] phi_ln29_reg_85;
  wire   [2:0] add_ln29_fu_114_p2;
  assign ap_return[0] = 1'b0;
  assign ap_return[1] = 1'b0;
  assign ap_return[2] = 1'b0;
  assign ap_return[3] = 1'b0;
  assign ap_return[4] = 1'b0;
  assign ap_return[5] = 1'b0;
  assign ap_return[6] = 1'b0;
  assign ap_return[7] = 1'b0;
  assign ap_return[8] = 1'b0;
  assign ap_return[9] = 1'b0;
  assign ap_return[10] = 1'b0;
  assign ap_return[11] = 1'b0;
  assign ap_return[12] = 1'b0;
  assign ap_return[13] = 1'b0;
  assign ap_return[14] = 1'b0;
  assign ap_return[15] = 1'b0;
  assign ap_return[16] = 1'b0;
  assign ap_return[17] = 1'b0;
  assign ap_return[18] = 1'b0;
  assign ap_return[19] = 1'b0;
  assign ap_return[20] = 1'b0;
  assign ap_return[21] = 1'b0;
  assign ap_return[22] = 1'b0;
  assign ap_return[23] = 1'b0;
  assign ap_return[24] = 1'b0;
  assign ap_return[25] = 1'b0;
  assign ap_return[26] = 1'b0;
  assign ap_return[27] = 1'b0;
  assign ap_return[28] = 1'b0;
  assign ap_return[29] = 1'b0;
  assign ap_return[30] = 1'b0;
  assign ap_return[31] = 1'b0;
  assign buffer_r_d1[31] = buffer_r_q1[31];
  assign buffer_r_d1[30] = buffer_r_q1[30];
  assign buffer_r_d1[29] = buffer_r_q1[29];
  assign buffer_r_d1[28] = buffer_r_q1[28];
  assign buffer_r_d1[27] = buffer_r_q1[27];
  assign buffer_r_d1[26] = buffer_r_q1[26];
  assign buffer_r_d1[25] = buffer_r_q1[25];
  assign buffer_r_d1[24] = buffer_r_q1[24];
  assign buffer_r_d1[23] = buffer_r_q1[23];
  assign buffer_r_d1[22] = buffer_r_q1[22];
  assign buffer_r_d1[21] = buffer_r_q1[21];
  assign buffer_r_d1[20] = buffer_r_q1[20];
  assign buffer_r_d1[19] = buffer_r_q1[19];
  assign buffer_r_d1[18] = buffer_r_q1[18];
  assign buffer_r_d1[17] = buffer_r_q1[17];
  assign buffer_r_d1[16] = buffer_r_q1[16];
  assign buffer_r_d1[15] = buffer_r_q1[15];
  assign buffer_r_d1[14] = buffer_r_q1[14];
  assign buffer_r_d1[13] = buffer_r_q1[13];
  assign buffer_r_d1[12] = buffer_r_q1[12];
  assign buffer_r_d1[11] = buffer_r_q1[11];
  assign buffer_r_d1[10] = buffer_r_q1[10];
  assign buffer_r_d1[9] = buffer_r_q1[9];
  assign buffer_r_d1[8] = buffer_r_q1[8];
  assign buffer_r_d1[7] = buffer_r_q1[7];
  assign buffer_r_d1[6] = buffer_r_q1[6];
  assign buffer_r_d1[5] = buffer_r_q1[5];
  assign buffer_r_d1[4] = buffer_r_q1[4];
  assign buffer_r_d1[3] = buffer_r_q1[3];
  assign buffer_r_d1[2] = buffer_r_q1[2];
  assign buffer_r_d1[1] = buffer_r_q1[1];
  assign buffer_r_d1[0] = buffer_r_q1[0];
  assign ap_ready = ap_CS_fsm[3];
  assign ap_done = ap_CS_fsm[3];
  assign buffer_r_we1 = ap_CS_fsm[2];
  assign ap_idle = N31;
  assign buffer_r_ce0 = N35;
  assign buffer_r_ce1 = N36;
  assign buffer_r_we0 = N38;

  EDFFX1M \icmp_ln29_reg_136_reg[0]  ( .D(n18), .E(ap_CS_fsm[1]), .CK(ap_clk), 
        .QN(n38) );
  EDFFX1M \phi_ln29_reg_85_reg[0]  ( .D(N25), .E(N24), .CK(ap_clk), .Q(
        add_ln29_fu_114_p2[0]), .QN(n10) );
  EDFFX1M \buffer_addr_1_reg_130_reg[0]  ( .D(n10), .E(ap_CS_fsm[1]), .CK(
        ap_clk), .QN(n34) );
  EDFFX1M \add_ln29_reg_140_reg[0]  ( .D(add_ln29_fu_114_p2[0]), .E(N30), .CK(
        ap_clk), .QN(n37) );
  EDFFX1M \add_ln29_reg_140_reg[1]  ( .D(n19), .E(N30), .CK(ap_clk), .QN(n36)
         );
  EDFFX1M \phi_ln29_reg_85_reg[1]  ( .D(N26), .E(N24), .CK(ap_clk), .Q(
        phi_ln29_reg_85[1]), .QN(n19) );
  EDFFX1M \add_ln29_reg_140_reg[2]  ( .D(add_ln29_fu_114_p2[2]), .E(N30), .CK(
        ap_clk), .QN(n35) );
  EDFFX1M \phi_ln29_reg_85_reg[2]  ( .D(N27), .E(N24), .CK(ap_clk), .Q(
        phi_ln29_reg_85[2]) );
  EDFFX1M \buffer_addr_1_reg_130_reg[2]  ( .D(\add_ln30_fu_97_p2[2] ), .E(
        ap_CS_fsm[1]), .CK(ap_clk), .QN(n32) );
  EDFFX1M \buffer_addr_1_reg_130_reg[1]  ( .D(n8), .E(ap_CS_fsm[1]), .CK(
        ap_clk), .QN(n33) );
  DFFQX2M \ap_CS_fsm_reg[0]  ( .D(N16), .CK(ap_clk), .Q(ap_CS_fsm[0]) );
  DFFQX2M \ap_CS_fsm_reg[2]  ( .D(N18), .CK(ap_clk), .Q(ap_CS_fsm[2]) );
  DFFQX2M \ap_CS_fsm_reg[1]  ( .D(N17), .CK(ap_clk), .Q(ap_CS_fsm[1]) );
  DFFQX2M \ap_CS_fsm_reg[3]  ( .D(N19), .CK(ap_clk), .Q(ap_CS_fsm[3]) );
  XOR2X1M U72 ( .A(phi_ln29_reg_85[1]), .B(n10), .Y(n8) );
  NOR2BX1M U73 ( .AN(buffer_r_q0[9]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[9]) );
  NOR2BX1M U74 ( .AN(buffer_r_q0[8]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[8]) );
  NOR2BX1M U75 ( .AN(buffer_r_q0[7]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[7]) );
  NOR2BX1M U76 ( .AN(buffer_r_q0[6]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[6]) );
  NOR2BX1M U77 ( .AN(buffer_r_q0[5]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[5]) );
  NOR2BX1M U78 ( .AN(buffer_r_q0[4]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[4]) );
  NOR2BX1M U79 ( .AN(buffer_r_q0[3]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[3]) );
  NOR2BX1M U80 ( .AN(buffer_r_q0[31]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[31])
         );
  NOR2BX1M U81 ( .AN(buffer_r_q0[30]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[30])
         );
  NOR2BX1M U82 ( .AN(buffer_r_q0[2]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[2]) );
  NOR2BX1M U83 ( .AN(buffer_r_q0[29]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[29])
         );
  NOR2BX1M U84 ( .AN(buffer_r_q0[28]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[28])
         );
  NOR2BX1M U85 ( .AN(buffer_r_q0[27]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[27])
         );
  NOR2BX1M U86 ( .AN(buffer_r_q0[26]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[26])
         );
  NOR2BX1M U87 ( .AN(buffer_r_q0[25]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[25])
         );
  NOR2BX1M U88 ( .AN(buffer_r_q0[24]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[24])
         );
  NOR2BX1M U89 ( .AN(buffer_r_q0[23]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[23])
         );
  NOR2BX1M U90 ( .AN(buffer_r_q0[22]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[22])
         );
  NOR2BX1M U91 ( .AN(buffer_r_q0[21]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[21])
         );
  NOR2BX1M U92 ( .AN(buffer_r_q0[20]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[20])
         );
  NOR2BX1M U93 ( .AN(buffer_r_q0[1]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[1]) );
  NOR2BX1M U94 ( .AN(buffer_r_q0[19]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[19])
         );
  NOR2BX1M U95 ( .AN(buffer_r_q0[18]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[18])
         );
  NOR2BX1M U96 ( .AN(buffer_r_q0[17]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[17])
         );
  NOR2BX1M U97 ( .AN(buffer_r_q0[16]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[16])
         );
  NOR2BX1M U98 ( .AN(buffer_r_q0[15]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[15])
         );
  NOR2BX1M U99 ( .AN(buffer_r_q0[14]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[14])
         );
  NOR2BX1M U100 ( .AN(buffer_r_q0[13]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[13])
         );
  NOR2BX1M U101 ( .AN(buffer_r_q0[12]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[12])
         );
  NOR2BX1M U102 ( .AN(buffer_r_q0[11]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[11])
         );
  NOR2BX1M U103 ( .AN(buffer_r_q0[10]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[10])
         );
  NOR2BX1M U104 ( .AN(buffer_r_q0[0]), .B(ap_CS_fsm[3]), .Y(buffer_r_d0[0]) );
  MX2X1M U105 ( .A(phi_ln29_reg_85[2]), .B(\add_ln30_fu_97_p2[2] ), .S0(n20), 
        .Y(buffer_r_address1[2]) );
  XOR2X1M U106 ( .A(n19), .B(n21), .Y(buffer_r_address1[1]) );
  CLKNAND2X2M U107 ( .A(n10), .B(n20), .Y(n21) );
  XOR2X1M U108 ( .A(n10), .B(ap_CS_fsm[2]), .Y(buffer_r_address1[0]) );
  OAI22X1M U109 ( .A0(n32), .A1(n22), .B0(n23), .B1(n24), .Y(
        buffer_r_address0[2]) );
  OAI22X1M U110 ( .A0(n33), .A1(n22), .B0(phi_ln29_reg_85[1]), .B1(n24), .Y(
        buffer_r_address0[1]) );
  OAI22X1M U111 ( .A0(n34), .A1(n22), .B0(n10), .B1(n24), .Y(
        buffer_r_address0[0]) );
  CLKNAND2X2M U112 ( .A(n20), .B(n25), .Y(n24) );
  CLKNAND2X2M U113 ( .A(ap_CS_fsm[2]), .B(n25), .Y(n22) );
  OAI21X1M U114 ( .A0(add_ln29_fu_114_p2[0]), .A1(n26), .B0(n27), .Y(
        \add_ln30_fu_97_p2[2] ) );
  OAI21X1M U115 ( .A0(phi_ln29_reg_85[1]), .A1(add_ln29_fu_114_p2[0]), .B0(
        phi_ln29_reg_85[2]), .Y(n27) );
  CLKINVX1M U116 ( .A(n23), .Y(add_ln29_fu_114_p2[2]) );
  AOI21X1M U117 ( .A0(phi_ln29_reg_85[1]), .A1(phi_ln29_reg_85[2]), .B0(n28), 
        .Y(n23) );
  CLKNAND2X2M U118 ( .A(n25), .B(n29), .Y(N38) );
  NAND2BX1M U119 ( .AN(N36), .B(n25), .Y(N35) );
  CLKINVX1M U120 ( .A(ap_CS_fsm[3]), .Y(n25) );
  CLKNAND2X2M U121 ( .A(n20), .B(n30), .Y(N36) );
  NOR2X1M U122 ( .A(n18), .B(n30), .Y(N30) );
  NOR2X1M U123 ( .A(n26), .B(n10), .Y(n18) );
  CLKINVX1M U124 ( .A(n28), .Y(n26) );
  NOR2X1M U125 ( .A(phi_ln29_reg_85[1]), .B(phi_ln29_reg_85[2]), .Y(n28) );
  OAI21X1M U126 ( .A0(n35), .A1(n29), .B0(n31), .Y(N27) );
  OAI21X1M U127 ( .A0(n36), .A1(n29), .B0(n31), .Y(N26) );
  OAI21X1M U128 ( .A0(n37), .A1(n29), .B0(n31), .Y(N25) );
  NOR3X1M U129 ( .A(n20), .B(n38), .C(ap_rst), .Y(N19) );
  CLKINVX1M U130 ( .A(ap_CS_fsm[2]), .Y(n20) );
  NOR2X1M U131 ( .A(ap_rst), .B(n30), .Y(N18) );
  CLKINVX1M U132 ( .A(ap_CS_fsm[1]), .Y(n30) );
  NOR2BX1M U133 ( .AN(N24), .B(ap_rst), .Y(N17) );
  CLKNAND2X2M U134 ( .A(n31), .B(n29), .Y(N24) );
  CLKNAND2X2M U135 ( .A(n38), .B(ap_CS_fsm[2]), .Y(n29) );
  CLKNAND2X2M U136 ( .A(ap_start), .B(ap_CS_fsm[0]), .Y(n31) );
  OR3X1M U137 ( .A(N31), .B(ap_CS_fsm[3]), .C(ap_rst), .Y(N16) );
  NOR2BX1M U138 ( .AN(ap_CS_fsm[0]), .B(ap_start), .Y(N31) );
endmodule

