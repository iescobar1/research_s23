
// Generated by Cadence Genus(TM) Synthesis Solution 18.14-s037_1
// Generated on: Feb 10 2023 16:36:37 EST (Feb 10 2023 21:36:37 UTC)

// Verification Directory fv/chip 

module register_WL2(clk, rst_b, d, q, wen);
  input clk, rst_b, wen;
  input [1:0] d;
  output [1:0] q;
  wire clk, rst_b, wen;
  wire [1:0] d;
  wire [1:0] q;
  DFFRHQX1 \q_reg[0] (.RN (rst_b), .CK (clk), .D (d[0]), .Q (q[0]));
  DFFRHQX1 \q_reg[1] (.RN (rst_b), .CK (clk), .D (d[1]), .Q (q[1]));
endmodule

module control_WL8(clk, rst_b, ops_val, ops_rdy, res_rdy, res_val,
     cl2dp_ld, cl2dp_en, dp2cl_a_eq_b);
  input clk, rst_b, ops_val, res_rdy, dp2cl_a_eq_b;
  output ops_rdy, res_val, cl2dp_ld, cl2dp_en;
  wire clk, rst_b, ops_val, res_rdy, dp2cl_a_eq_b;
  wire ops_rdy, res_val, cl2dp_ld, cl2dp_en;
  wire [1:0] state_nxt;
  wire [1:0] state;
  wire UNCONNECTED_HIER_Z, n_0, n_2, n_3;
  register_WL2 inst_reg_state(.clk (clk), .rst_b (rst_b), .d
       (state_nxt), .q (state), .wen (UNCONNECTED_HIER_Z));
  NOR2X1 g323__8780(.A (n_3), .B (cl2dp_en), .Y (state_nxt[0]));
  MXI2XL g324__4296(.A (n_0), .B (res_rdy), .S0 (res_val), .Y
       (state_nxt[1]));
  OAI31X1 g325__3772(.A0 (state[0]), .A1 (state[1]), .A2 (rst_b), .B0
       (n_2), .Y (n_3));
  INVX1 g326(.A (cl2dp_ld), .Y (n_2));
  AND2X4 g327__1474(.A (ops_rdy), .B (ops_val), .Y (cl2dp_ld));
  AOI21X1 g328__4547(.A0 (state[0]), .A1 (ops_val), .B0 (state[1]), .Y
       (n_0));
  NOR3BX1 g329__9682(.AN (state[1]), .B (state[0]), .C (dp2cl_a_eq_b),
       .Y (cl2dp_en));
  AND2X1 g330__2683(.A (state[0]), .B (state[1]), .Y (res_val));
  NOR2BX1 g331__1309(.AN (state[0]), .B (state[1]), .Y (ops_rdy));
endmodule

module register_WL8(clk, rst_b, d, q, wen);
  input clk, rst_b, wen;
  input [7:0] d;
  output [7:0] q;
  wire clk, rst_b, wen;
  wire [7:0] d;
  wire [7:0] q;
  DFFRHQX1 \q_reg[1] (.RN (rst_b), .CK (clk), .D (d[1]), .Q (q[1]));
  DFFRHQX1 \q_reg[2] (.RN (rst_b), .CK (clk), .D (d[2]), .Q (q[2]));
  DFFRHQX1 \q_reg[5] (.RN (rst_b), .CK (clk), .D (d[5]), .Q (q[5]));
  DFFRHQX1 \q_reg[7] (.RN (rst_b), .CK (clk), .D (d[7]), .Q (q[7]));
  DFFRHQX1 \q_reg[0] (.RN (rst_b), .CK (clk), .D (d[0]), .Q (q[0]));
  DFFRHQX1 \q_reg[4] (.RN (rst_b), .CK (clk), .D (d[4]), .Q (q[4]));
  DFFRHQX1 \q_reg[3] (.RN (rst_b), .CK (clk), .D (d[3]), .Q (q[3]));
  DFFRHQX1 \q_reg[6] (.RN (rst_b), .CK (clk), .D (d[6]), .Q (q[6]));
endmodule

module register_WL8_181(clk, rst_b, d, q, wen);
  input clk, rst_b, wen;
  input [7:0] d;
  output [7:0] q;
  wire clk, rst_b, wen;
  wire [7:0] d;
  wire [7:0] q;
  DFFRHQX1 \q_reg[1] (.RN (rst_b), .CK (clk), .D (d[1]), .Q (q[1]));
  DFFRHQX1 \q_reg[7] (.RN (rst_b), .CK (clk), .D (d[7]), .Q (q[7]));
  DFFRHQX1 \q_reg[0] (.RN (rst_b), .CK (clk), .D (d[0]), .Q (q[0]));
  DFFRHQX1 \q_reg[2] (.RN (rst_b), .CK (clk), .D (d[2]), .Q (q[2]));
  DFFRHQX1 \q_reg[5] (.RN (rst_b), .CK (clk), .D (d[5]), .Q (q[5]));
  DFFRHQX1 \q_reg[4] (.RN (rst_b), .CK (clk), .D (d[4]), .Q (q[4]));
  DFFRHQX1 \q_reg[3] (.RN (rst_b), .CK (clk), .D (d[3]), .Q (q[3]));
  DFFRHQX1 \q_reg[6] (.RN (rst_b), .CK (clk), .D (d[6]), .Q (q[6]));
endmodule

module register_WL8_180(clk, rst_b, d, q, wen);
  input clk, rst_b, wen;
  input [7:0] d;
  output [7:0] q;
  wire clk, rst_b, wen;
  wire [7:0] d;
  wire [7:0] q;
  DFFRHQX1 \q_reg[1] (.RN (rst_b), .CK (clk), .D (d[1]), .Q (q[1]));
  DFFRHQX1 \q_reg[7] (.RN (rst_b), .CK (clk), .D (d[7]), .Q (q[7]));
  DFFRHQX1 \q_reg[0] (.RN (rst_b), .CK (clk), .D (d[0]), .Q (q[0]));
  DFFRHQX1 \q_reg[5] (.RN (rst_b), .CK (clk), .D (d[5]), .Q (q[5]));
  DFFRHQX1 \q_reg[4] (.RN (rst_b), .CK (clk), .D (d[4]), .Q (q[4]));
  DFFRHQX1 \q_reg[3] (.RN (rst_b), .CK (clk), .D (d[3]), .Q (q[3]));
  DFFRHQX1 \q_reg[6] (.RN (rst_b), .CK (clk), .D (d[6]), .Q (q[6]));
  DFFRHQX1 \q_reg[2] (.RN (rst_b), .CK (clk), .D (d[2]), .Q (q[2]));
endmodule

module datapath_WL8(clk, rst_b, op_a, op_b, res, cl2dp_ld, cl2dp_en,
     dp2cl_a_eq_b);
  input clk, rst_b, cl2dp_ld, cl2dp_en;
  input [7:0] op_a, op_b;
  output [7:0] res;
  output dp2cl_a_eq_b;
  wire clk, rst_b, cl2dp_ld, cl2dp_en;
  wire [7:0] op_a, op_b;
  wire [7:0] res;
  wire dp2cl_a_eq_b;
  wire [7:0] a_nxt;
  wire [7:0] a;
  wire [7:0] b_nxt;
  wire [7:0] b;
  wire [7:0] d_nxt;
  wire [7:0] d;
  wire UNCONNECTED_HIER_Z0, UNCONNECTED_HIER_Z1, UNCONNECTED_HIER_Z2,
       n_0, n_1, n_2, n_3, n_4;
  wire n_5, n_6, n_7, n_8, n_9, n_10, n_11, n_12;
  wire n_13, n_14, n_15, n_17, n_18, n_19, n_20, n_21;
  wire n_22, n_23, n_24, n_25, n_26, n_27, n_28, n_29;
  wire n_30, n_31, n_32, n_33, n_34, n_35, n_36, n_37;
  wire n_38, n_39, n_40, n_41, n_42, n_43, n_44, n_45;
  wire n_46, n_48, n_49, n_50, n_51, n_52, n_53, n_54;
  wire n_55, n_56, n_57, n_58, n_59, n_60, n_61, n_62;
  wire n_63, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_112;
  wire n_113, n_114, n_115, n_117, n_118, n_119, n_120, n_121;
  wire n_122, n_123, n_124, n_125, n_126, n_127, n_128, n_129;
  wire n_131, n_132, n_133, n_134, n_135, n_136, n_137, n_138;
  wire n_139, n_169;
  register_WL8 inst_reg_dpa(.clk (clk), .rst_b (rst_b), .d (a_nxt), .q
       (a), .wen (UNCONNECTED_HIER_Z0));
  register_WL8_181 inst_reg_dpb(.clk (clk), .rst_b (rst_b), .d (b_nxt),
       .q (b), .wen (UNCONNECTED_HIER_Z1));
  register_WL8_180 inst_reg_dpd(.clk (clk), .rst_b (rst_b), .d (d_nxt),
       .q (d), .wen (UNCONNECTED_HIER_Z2));
  NOR2BX1 g2880__6877(.AN (n_129), .B (n_128), .Y (dp2cl_a_eq_b));
  AND4X1 g2881__2900(.A (n_138), .B (n_133), .C (n_127), .D (n_139), .Y
       (n_129));
  NAND4X2 g2882__2391(.A (n_137), .B (n_134), .C (n_136), .D (n_135),
       .Y (n_128));
  OAI2BB1X1 g2883__7675(.A0N (b[0]), .A1N (a[0]), .B0 (n_131), .Y
       (n_127));
  XNOR2X1 g2884__7118(.A (a[2]), .B (b[2]), .Y (n_138));
  OAI2BB1X1 g2885__8757(.A0N (b[1]), .A1N (a[1]), .B0 (n_132), .Y
       (n_139));
  XNOR2X1 g2886__1786(.A (a[4]), .B (b[4]), .Y (n_136));
  XNOR2X1 g2887__5953(.A (a[7]), .B (b[7]), .Y (n_133));
  XNOR2X1 g2888__5703(.A (a[3]), .B (b[3]), .Y (n_137));
  XNOR2X1 g2889__7114(.A (a[5]), .B (b[5]), .Y (n_135));
  XNOR2X1 g2890__5266(.A (a[6]), .B (b[6]), .Y (n_134));
  OR2X1 g2891__2250(.A (b[1]), .B (a[1]), .Y (n_132));
  OR2X1 g2892__6083(.A (b[0]), .B (a[0]), .Y (n_131));
  OAI21X1 g4060__2703(.A0 (n_49), .A1 (n_125), .B0 (n_71), .Y
       (a_nxt[6]));
  AO22X1 g4061__5795(.A0 (n_34), .A1 (n_126), .B0 (d[7]), .B1 (n_124),
       .Y (d_nxt[7]));
  OAI2BB1X1 g4062__7344(.A0N (d[6]), .A1N (n_124), .B0 (n_123), .Y
       (d_nxt[6]));
  OAI21X1 g4063__1840(.A0 (n_49), .A1 (n_1), .B0 (n_69), .Y (a_nxt[5]));
  MX2X1 g4064__5019(.A (d[7]), .B (n_122), .S0 (d[6]), .Y (n_126));
  XNOR2X1 g4065__1857(.A (n_133), .B (n_121), .Y (n_125));
  OAI21X1 g4066__9906(.A0 (n_120), .A1 (n_35), .B0 (n_36), .Y (n_124));
  NAND3BX1 g4067__8780(.AN (d[6]), .B (n_120), .C (n_34), .Y (n_123));
  AO22X1 g4068__4296(.A0 (n_119), .A1 (n_34), .B0 (d[5]), .B1 (n_37),
       .Y (d_nxt[5]));
  NOR2BX1 g4069__3772(.AN (n_120), .B (d[7]), .Y (n_122));
  OAI21X1 g4070__1474(.A0 (n_49), .A1 (n_117), .B0 (n_70), .Y
       (a_nxt[4]));
  OAI22X1 g4072__4547(.A0 (n_95), .A1 (n_118), .B0 (n_83), .B1 (n_89),
       .Y (n_121));
  ADDHX1 g4073__9682(.A (d[5]), .B (n_113), .CO (n_120), .S (n_119));
  OAI21X1 g4075__2683(.A0 (n_49), .A1 (n_112), .B0 (n_68), .Y
       (a_nxt[3]));
  AOI22X1 g4076__1309(.A0 (n_96), .A1 (n_115), .B0 (n_87), .B1 (n_88),
       .Y (n_118));
  AO22X1 g4077__6877(.A0 (n_114), .A1 (n_34), .B0 (d[4]), .B1 (n_37),
       .Y (d_nxt[4]));
  XNOR2X1 g4078__2900(.A (n_135), .B (n_115), .Y (n_117));
  OAI211X1 g4079__2391(.A0 (n_49), .A1 (n_109), .B0 (n_17), .C0 (n_67),
       .Y (a_nxt[2]));
  ADDHX1 g4080__7675(.A (d[4]), .B (n_107), .CO (n_113), .S (n_114));
  OAI22X1 g4081__7118(.A0 (n_97), .A1 (n_110), .B0 (n_77), .B1 (n_82),
       .Y (n_115));
  CLKXOR2X1 g4082__8757(.A (n_136), .B (n_110), .Y (n_112));
  OAI211X1 g4083__1786(.A0 (n_49), .A1 (n_0), .B0 (n_23), .C0 (n_66),
       .Y (a_nxt[1]));
  AO22X1 g4084__5953(.A0 (n_108), .A1 (n_34), .B0 (d[3]), .B1 (n_37),
       .Y (d_nxt[3]));
  AOI22X1 g4085__5703(.A0 (n_94), .A1 (n_106), .B0 (n_80), .B1 (n_81),
       .Y (n_110));
  XNOR2X1 g4086__7114(.A (n_137), .B (n_106), .Y (n_109));
  ADDHX1 g4087__5266(.A (d[3]), .B (n_98), .CO (n_107), .S (n_108));
  OAI2BB1X1 g4088__2250(.A0N (b[5]), .A1N (n_92), .B0 (n_104), .Y
       (b_nxt[5]));
  OAI2BB1X1 g4089__6083(.A0N (b[6]), .A1N (n_92), .B0 (n_105), .Y
       (b_nxt[6]));
  OAI2BB1X1 g4090__2703(.A0N (b[0]), .A1N (n_92), .B0 (n_86), .Y
       (b_nxt[0]));
  OAI2BB1X1 g4091__5795(.A0N (b[4]), .A1N (n_92), .B0 (n_103), .Y
       (b_nxt[4]));
  OAI2BB1X1 g4092__7344(.A0N (b[3]), .A1N (n_92), .B0 (n_102), .Y
       (b_nxt[3]));
  OAI2BB1X1 g4093__1840(.A0N (b[2]), .A1N (n_92), .B0 (n_101), .Y
       (b_nxt[2]));
  OAI2BB1X1 g4094__5019(.A0N (b[1]), .A1N (n_92), .B0 (n_100), .Y
       (b_nxt[1]));
  OAI2BB1X1 g4095__1857(.A0N (b[7]), .A1N (n_92), .B0 (n_91), .Y
       (b_nxt[7]));
  AO22X1 g4097__9906(.A0 (n_99), .A1 (n_34), .B0 (d[2]), .B1 (n_37), .Y
       (d_nxt[2]));
  OAI22X1 g4098__8780(.A0 (n_93), .A1 (n_90), .B0 (n_79), .B1 (n_78),
       .Y (n_106));
  AOI222X1 g4099__4296(.A0 (b[7]), .A1 (n_169), .B0 (a[6]), .B1 (n_76),
       .C0 (cl2dp_ld), .C1 (op_b[6]), .Y (n_105));
  AOI222X1 g4100__3772(.A0 (b[6]), .A1 (n_169), .B0 (a[5]), .B1 (n_76),
       .C0 (cl2dp_ld), .C1 (op_b[5]), .Y (n_104));
  AOI222X1 g4101__1474(.A0 (b[5]), .A1 (n_169), .B0 (a[4]), .B1 (n_76),
       .C0 (cl2dp_ld), .C1 (op_b[4]), .Y (n_103));
  AOI222X1 g4102__4547(.A0 (b[4]), .A1 (n_169), .B0 (a[3]), .B1 (n_76),
       .C0 (cl2dp_ld), .C1 (op_b[3]), .Y (n_102));
  AOI222X1 g4103__9682(.A0 (b[3]), .A1 (n_169), .B0 (a[2]), .B1 (n_76),
       .C0 (cl2dp_ld), .C1 (op_b[2]), .Y (n_101));
  AOI222X1 g4104__2683(.A0 (b[2]), .A1 (n_169), .B0 (a[1]), .B1 (n_76),
       .C0 (cl2dp_ld), .C1 (op_b[1]), .Y (n_100));
  ADDHX1 g4105__1309(.A (d[2]), .B (n_72), .CO (n_98), .S (n_99));
  AND2X1 g4106__6877(.A (n_82), .B (n_77), .Y (n_97));
  OR2X1 g4107__2900(.A (n_87), .B (n_88), .Y (n_96));
  AND2X1 g4108__2391(.A (n_89), .B (n_83), .Y (n_95));
  OR2X1 g4109__7675(.A (n_80), .B (n_81), .Y (n_94));
  AOI22X1 g4111__7118(.A0 (a[7]), .A1 (n_76), .B0 (cl2dp_ld), .B1
       (op_b[7]), .Y (n_91));
  AND2X1 g4112__8757(.A (n_78), .B (n_79), .Y (n_90));
  AOI21X1 g4113__1786(.A0 (a[1]), .A1 (n_74), .B0 (n_84), .Y (n_93));
  AND2X1 g4114__5953(.A (n_85), .B (n_9), .Y (n_92));
  AO22X1 g4115__5703(.A0 (n_73), .A1 (n_34), .B0 (d[1]), .B1 (n_37), .Y
       (d_nxt[1]));
  AOI221X1 g4116__7114(.A0 (b[1]), .A1 (n_169), .B0 (cl2dp_ld), .B1
       (op_b[0]), .C0 (n_76), .Y (n_86));
  NOR2X1 g4117__5266(.A (n_169), .B (n_76), .Y (n_85));
  OAI2BB1X1 g4118__2250(.A0N (b[1]), .A1N (n_75), .B0 (n_132), .Y
       (n_84));
  MX2X1 g4119__6083(.A (a[6]), .B (b[6]), .S0 (n_74), .Y (n_89));
  MX2X1 g4120__2703(.A (b[5]), .B (a[5]), .S0 (n_74), .Y (n_88));
  MXI2X1 g4121__5795(.A (a[5]), .B (b[5]), .S0 (n_74), .Y (n_87));
  MXI2X1 g4122__7344(.A (b[6]), .B (a[6]), .S0 (n_74), .Y (n_83));
  MX2X1 g4123__1840(.A (a[4]), .B (b[4]), .S0 (n_74), .Y (n_82));
  MX2X1 g4124__5019(.A (b[3]), .B (a[3]), .S0 (n_74), .Y (n_81));
  MXI2X1 g4125__1857(.A (a[3]), .B (b[3]), .S0 (n_74), .Y (n_80));
  MXI2X1 g4126__9906(.A (b[2]), .B (a[2]), .S0 (n_74), .Y (n_79));
  MX2X1 g4127__8780(.A (b[2]), .B (a[2]), .S0 (n_75), .Y (n_78));
  MXI2X1 g4128__4296(.A (b[4]), .B (a[4]), .S0 (n_74), .Y (n_77));
  AND2X1 g4129__3772(.A (n_65), .B (n_45), .Y (res[5]));
  OAI221X1 g4130__1474(.A0 (n_6), .A1 (n_56), .B0 (n_139), .B1 (n_49),
       .C0 (n_63), .Y (a_nxt[0]));
  AND2X2 g4131__4547(.A (n_75), .B (n_48), .Y (n_76));
  INVX2 g4132(.A (n_75), .Y (n_74));
  ADDHX1 g4133__9682(.A (d[1]), .B (n_15), .CO (n_72), .S (n_73));
  AOI222X1 g4134__2683(.A0 (a[7]), .A1 (n_50), .B0 (cl2dp_ld), .B1
       (op_a[6]), .C0 (a[6]), .C1 (n_57), .Y (n_71));
  AOI222X1 g4135__1309(.A0 (a[5]), .A1 (n_50), .B0 (cl2dp_ld), .B1
       (op_a[4]), .C0 (a[4]), .C1 (n_57), .Y (n_70));
  AOI222X1 g4136__6877(.A0 (a[6]), .A1 (n_50), .B0 (cl2dp_ld), .B1
       (op_a[5]), .C0 (a[5]), .C1 (n_57), .Y (n_69));
  AOI222X1 g4137__2900(.A0 (a[4]), .A1 (n_50), .B0 (cl2dp_ld), .B1
       (op_a[3]), .C0 (a[3]), .C1 (n_57), .Y (n_68));
  OAI22X1 g4138__2391(.A0 (n_51), .A1 (n_58), .B0 (n_60), .B1 (n_59),
       .Y (res[6]));
  AND2X1 g4139__7675(.A (n_62), .B (n_61), .Y (n_75));
  OAI22X1 g4140__7118(.A0 (n_54), .A1 (n_58), .B0 (n_55), .B1 (n_59),
       .Y (res[7]));
  AO22X1 g4141__8757(.A0 (a[7]), .A1 (n_57), .B0 (cl2dp_ld), .B1
       (op_a[7]), .Y (a_nxt[7]));
  AOI22X1 g4142__1786(.A0 (a[2]), .A1 (n_57), .B0 (a[3]), .B1 (n_50),
       .Y (n_67));
  AOI22X1 g4143__5953(.A0 (a[1]), .A1 (n_57), .B0 (a[2]), .B1 (n_50),
       .Y (n_66));
  OAI32X1 g4144__5703(.A0 (d[2]), .A1 (n_10), .A2 (n_28), .B0 (d[1]),
       .B1 (n_52), .Y (n_65));
  OAI22X1 g4145__7114(.A0 (n_53), .A1 (n_58), .B0 (n_39), .B1 (n_59),
       .Y (res[4]));
  NOR2X1 g4146__5266(.A (n_55), .B (n_58), .Y (res[3]));
  NOR2X1 g4147__2250(.A (n_39), .B (n_58), .Y (res[0]));
  NOR2X1 g4148__6083(.A (n_60), .B (n_58), .Y (res[2]));
  NOR3X1 g4149__2703(.A (d[1]), .B (n_38), .C (n_58), .Y (res[1]));
  AOI22X1 g4150__5795(.A0 (a[1]), .A1 (n_50), .B0 (cl2dp_ld), .B1
       (op_a[0]), .Y (n_63));
  OAI211X1 g4151__7344(.A0 (n_20), .A1 (n_46), .B0 (n_40), .C0 (n_44),
       .Y (n_62));
  AOI21X1 g4152__1840(.A0 (n_40), .A1 (n_43), .B0 (n_41), .Y (n_61));
  OAI22X1 g4153__5019(.A0 (n_27), .A1 (n_35), .B0 (n_8), .B1 (n_36), .Y
       (d_nxt[0]));
  INVX1 g4154(.A (n_57), .Y (n_56));
  OA22X1 g4155__1857(.A0 (d[1]), .A1 (n_29), .B0 (d[0]), .B1 (n_21), .Y
       (n_60));
  NAND2X1 g4156__9906(.A (d[2]), .B (n_45), .Y (n_59));
  NAND2X4 g4157__8780(.A (n_5), .B (n_45), .Y (n_58));
  OR2X1 g4158__4296(.A (n_37), .B (n_42), .Y (n_57));
  MX2X1 g4159__3772(.A (n_31), .B (n_26), .S0 (n_10), .Y (n_54));
  MX2X1 g4160__1474(.A (n_29), .B (n_30), .S0 (n_10), .Y (n_53));
  MX2X1 g4161__4547(.A (n_38), .B (n_31), .S0 (n_5), .Y (n_52));
  MX2X1 g4162__9682(.A (n_25), .B (n_30), .S0 (d[1]), .Y (n_51));
  MX2X1 g4163__2683(.A (n_38), .B (n_28), .S0 (n_10), .Y (n_55));
  INVX1 g4164(.A (n_49), .Y (n_48));
  OA21X1 g4165__1309(.A0 (a[2]), .A1 (n_14), .B0 (n_32), .Y (n_46));
  AND2X1 g4166__6877(.A (n_34), .B (n_6), .Y (n_50));
  OR2X1 g4167__2900(.A (n_22), .B (n_35), .Y (n_49));
  AOI221X1 g4169__7675(.A0 (b[3]), .A1 (n_11), .B0 (b[4]), .B1 (n_3),
       .C0 (n_24), .Y (n_44));
  OAI32X1 g4170__7118(.A0 (b[4]), .A1 (n_3), .A2 (n_24), .B0 (b[5]),
       .B1 (n_2), .Y (n_43));
  NOR3BX1 g4171__8757(.AN (n_131), .B (b[0]), .C (n_35), .Y (n_42));
  OAI32X1 g4172__1786(.A0 (b[6]), .A1 (n_12), .A2 (n_18), .B0 (b[7]),
       .B1 (n_7), .Y (n_41));
  NOR3X2 g4173__5953(.A (d[5]), .B (d[3]), .C (n_33), .Y (n_45));
  INVX1 g4174(.A (n_37), .Y (n_36));
  INVX1 g4175(.A (n_35), .Y (n_34));
  OR3X1 g4176__5703(.A (d[6]), .B (d[7]), .C (d[4]), .Y (n_33));
  OAI211X1 g4177__7114(.A0 (b[2]), .A1 (n_4), .B0 (1'b1), .C0 (n_13),
       .Y (n_32));
  AOI21X1 g4178__5266(.A0 (b[6]), .A1 (n_12), .B0 (n_18), .Y (n_40));
  OR3X1 g4179__2250(.A (n_6), .B (d[1]), .C (d[0]), .Y (n_39));
  MXI2X1 g4180__6083(.A (a[0]), .B (a[1]), .S0 (n_8), .Y (n_38));
  AND2X1 g4181__2703(.A (n_19), .B (n_9), .Y (n_37));
  OR2X1 g4182__5795(.A (cl2dp_ld), .B (n_19), .Y (n_35));
  XNOR2X1 g4183__7344(.A (n_8), .B (n_131), .Y (n_27));
  MX2X1 g4184__1840(.A (n_12), .B (n_7), .S0 (n_8), .Y (n_26));
  MX2X1 g4185__5019(.A (n_2), .B (n_12), .S0 (n_8), .Y (n_25));
  MX2X1 g4186__1857(.A (n_2), .B (n_3), .S0 (d[0]), .Y (n_31));
  MX2X1 g4187__9906(.A (n_11), .B (n_3), .S0 (n_8), .Y (n_30));
  MX2X1 g4188__8780(.A (n_13), .B (n_4), .S0 (n_8), .Y (n_29));
  MX2X1 g4189__4296(.A (n_4), .B (n_11), .S0 (n_8), .Y (n_28));
  NAND2X1 g4190__3772(.A (cl2dp_ld), .B (op_a[1]), .Y (n_23));
  NAND2X1 g4191__1474(.A (b[0]), .B (a[0]), .Y (n_22));
  NAND2X1 g4192__4547(.A (a[0]), .B (d[1]), .Y (n_21));
  NOR2X1 g4193__9682(.A (b[3]), .B (n_11), .Y (n_20));
  NOR2BX1 g4194__2683(.AN (b[5]), .B (a[5]), .Y (n_24));
  NAND2X1 g4195__1309(.A (cl2dp_ld), .B (op_a[2]), .Y (n_17));
  NAND2BX1 g4197__6877(.AN (dp2cl_a_eq_b), .B (cl2dp_en), .Y (n_19));
  NOR2BX1 g4198__2900(.AN (b[7]), .B (a[7]), .Y (n_18));
  NOR2X1 g4199__2391(.A (n_8), .B (n_131), .Y (n_15));
  INVX1 g4200(.A (b[2]), .Y (n_14));
  INVX1 g4201(.A (a[1]), .Y (n_13));
  INVX1 g4202(.A (a[6]), .Y (n_12));
  INVX1 g4203(.A (a[3]), .Y (n_11));
  INVX1 g4204(.A (d[1]), .Y (n_10));
  INVX1 g4205(.A (cl2dp_ld), .Y (n_9));
  INVX2 g4206(.A (d[0]), .Y (n_8));
  INVX1 g4207(.A (a[7]), .Y (n_7));
  INVX1 g4208(.A (a[0]), .Y (n_6));
  INVX1 g4209(.A (d[2]), .Y (n_5));
  INVX1 g4210(.A (a[2]), .Y (n_4));
  INVX1 g4211(.A (a[4]), .Y (n_3));
  INVX1 g4212(.A (a[5]), .Y (n_2));
  CLKXOR2X1 g2__7675(.A (n_134), .B (n_118), .Y (n_1));
  CLKXOR2X1 g4220__7118(.A (n_138), .B (n_93), .Y (n_0));
  NOR2BX2 g2(.AN (n_34), .B (b[0]), .Y (n_169));
endmodule

module chip(clk, rst_b, op_a, op_b, res, ops_val, ops_rdy, res_rdy,
     res_val);
  input clk, rst_b, ops_val, res_rdy;
  input [7:0] op_a, op_b;
  output [7:0] res;
  output ops_rdy, res_val;
  wire clk, rst_b, ops_val, res_rdy;
  wire [7:0] op_a, op_b;
  wire [7:0] res;
  wire ops_rdy, res_val;
  wire [7:0] op_a_int;
  wire [7:0] op_b_int;
  wire [7:0] res_int;
  wire cl2dp_en_int, cl2dp_ld_int, clk_int, dp2cl_a_eq_b_int,
       ops_rdy_int, ops_val_int, res_rdy_int, res_val_int;
  wire rst_b_int;
  control_WL8 inst_control(.clk (clk_int), .rst_b (rst_b_int), .ops_val
       (ops_val_int), .ops_rdy (ops_rdy_int), .res_rdy (res_rdy_int),
       .res_val (res_val_int), .cl2dp_ld (cl2dp_ld_int), .cl2dp_en
       (cl2dp_en_int), .dp2cl_a_eq_b (dp2cl_a_eq_b_int));
  datapath_WL8 inst_datapath(.clk (clk_int), .rst_b (rst_b_int), .op_a
       (op_a_int), .op_b (op_b_int), .res (res_int), .cl2dp_ld
       (cl2dp_ld_int), .cl2dp_en (cl2dp_en_int), .dp2cl_a_eq_b
       (dp2cl_a_eq_b_int));
  PADDI ipad_clk(.PAD (clk), .Y (clk_int));
  PADDI \ipad_op_a_0_.gen_inst (.PAD (op_a[0]), .Y (op_a_int[0]));
  PADDI \ipad_op_a_1_.gen_inst (.PAD (op_a[1]), .Y (op_a_int[1]));
  PADDI \ipad_op_a_2_.gen_inst (.PAD (op_a[2]), .Y (op_a_int[2]));
  PADDI \ipad_op_a_3_.gen_inst (.PAD (op_a[3]), .Y (op_a_int[3]));
  PADDI \ipad_op_a_4_.gen_inst (.PAD (op_a[4]), .Y (op_a_int[4]));
  PADDI \ipad_op_a_5_.gen_inst (.PAD (op_a[5]), .Y (op_a_int[5]));
  PADDI \ipad_op_a_6_.gen_inst (.PAD (op_a[6]), .Y (op_a_int[6]));
  PADDI \ipad_op_a_7_.gen_inst (.PAD (op_a[7]), .Y (op_a_int[7]));
  PADDI \ipad_op_b_0_.gen_inst (.PAD (op_b[0]), .Y (op_b_int[0]));
  PADDI \ipad_op_b_1_.gen_inst (.PAD (op_b[1]), .Y (op_b_int[1]));
  PADDI \ipad_op_b_2_.gen_inst (.PAD (op_b[2]), .Y (op_b_int[2]));
  PADDI \ipad_op_b_3_.gen_inst (.PAD (op_b[3]), .Y (op_b_int[3]));
  PADDI \ipad_op_b_4_.gen_inst (.PAD (op_b[4]), .Y (op_b_int[4]));
  PADDI \ipad_op_b_5_.gen_inst (.PAD (op_b[5]), .Y (op_b_int[5]));
  PADDI \ipad_op_b_6_.gen_inst (.PAD (op_b[6]), .Y (op_b_int[6]));
  PADDI \ipad_op_b_7_.gen_inst (.PAD (op_b[7]), .Y (op_b_int[7]));
  PADDI ipad_ops_val(.PAD (ops_val), .Y (ops_val_int));
  PADDI ipad_res_rdy(.PAD (res_rdy), .Y (res_rdy_int));
  PADDI ipad_rst_b(.PAD (rst_b), .Y (rst_b_int));
  PADDO opad_ops_rdy(.A (ops_rdy_int), .PAD (ops_rdy));
  PADDO \opad_res_0_.gen_inst (.A (res_int[0]), .PAD (res[0]));
  PADDO \opad_res_1_.gen_inst (.A (res_int[1]), .PAD (res[1]));
  PADDO \opad_res_2_.gen_inst (.A (res_int[2]), .PAD (res[2]));
  PADDO \opad_res_3_.gen_inst (.A (res_int[3]), .PAD (res[3]));
  PADDO \opad_res_4_.gen_inst (.A (res_int[4]), .PAD (res[4]));
  PADDO \opad_res_5_.gen_inst (.A (res_int[5]), .PAD (res[5]));
  PADDO \opad_res_6_.gen_inst (.A (res_int[6]), .PAD (res[6]));
  PADDO \opad_res_7_.gen_inst (.A (res_int[7]), .PAD (res[7]));
  PADDO opad_res_val(.A (res_val_int), .PAD (res_val));
endmodule

