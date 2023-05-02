module dft_testbench();
initial begin 
	$dumpfile("fft_fx64_it_rdx8_w64.vcd");
	$dumpvars(4);
end
   reg clk, reset, next;
   wire next_out;
   integer i, j, k, l, m;
   reg [15:0] counter;
   reg [63:0] in [127:0];
   wire [63:0] X0;
   wire [63:0] Y0;
   wire [63:0] X1;
   wire [63:0] Y1;
   wire [63:0] X2;
   wire [63:0] Y2;
   wire [63:0] X3;
   wire [63:0] Y3;
   wire [63:0] X4;
   wire [63:0] Y4;
   wire [63:0] X5;
   wire [63:0] Y5;
   wire [63:0] X6;
   wire [63:0] Y6;
   wire [63:0] X7;
   wire [63:0] Y7;
   wire [63:0] X8;
   wire [63:0] Y8;
   wire [63:0] X9;
   wire [63:0] Y9;
   wire [63:0] X10;
   wire [63:0] Y10;
   wire [63:0] X11;
   wire [63:0] Y11;
   wire [63:0] X12;
   wire [63:0] Y12;
   wire [63:0] X13;
   wire [63:0] Y13;
   wire [63:0] X14;
   wire [63:0] Y14;
   wire [63:0] X15;
   wire [63:0] Y15;
   wire [63:0] X16;
   wire [63:0] Y16;
   wire [63:0] X17;
   wire [63:0] Y17;
   wire [63:0] X18;
   wire [63:0] Y18;
   wire [63:0] X19;
   wire [63:0] Y19;
   wire [63:0] X20;
   wire [63:0] Y20;
   wire [63:0] X21;
   wire [63:0] Y21;
   wire [63:0] X22;
   wire [63:0] Y22;
   wire [63:0] X23;
   wire [63:0] Y23;
   wire [63:0] X24;
   wire [63:0] Y24;
   wire [63:0] X25;
   wire [63:0] Y25;
   wire [63:0] X26;
   wire [63:0] Y26;
   wire [63:0] X27;
   wire [63:0] Y27;
   wire [63:0] X28;
   wire [63:0] Y28;
   wire [63:0] X29;
   wire [63:0] Y29;
   wire [63:0] X30;
   wire [63:0] Y30;
   wire [63:0] X31;
   wire [63:0] Y31;
   wire [63:0] X32;
   wire [63:0] Y32;
   wire [63:0] X33;
   wire [63:0] Y33;
   wire [63:0] X34;
   wire [63:0] Y34;
   wire [63:0] X35;
   wire [63:0] Y35;
   wire [63:0] X36;
   wire [63:0] Y36;
   wire [63:0] X37;
   wire [63:0] Y37;
   wire [63:0] X38;
   wire [63:0] Y38;
   wire [63:0] X39;
   wire [63:0] Y39;
   wire [63:0] X40;
   wire [63:0] Y40;
   wire [63:0] X41;
   wire [63:0] Y41;
   wire [63:0] X42;
   wire [63:0] Y42;
   wire [63:0] X43;
   wire [63:0] Y43;
   wire [63:0] X44;
   wire [63:0] Y44;
   wire [63:0] X45;
   wire [63:0] Y45;
   wire [63:0] X46;
   wire [63:0] Y46;
   wire [63:0] X47;
   wire [63:0] Y47;
   wire [63:0] X48;
   wire [63:0] Y48;
   wire [63:0] X49;
   wire [63:0] Y49;
   wire [63:0] X50;
   wire [63:0] Y50;
   wire [63:0] X51;
   wire [63:0] Y51;
   wire [63:0] X52;
   wire [63:0] Y52;
   wire [63:0] X53;
   wire [63:0] Y53;
   wire [63:0] X54;
   wire [63:0] Y54;
   wire [63:0] X55;
   wire [63:0] Y55;
   wire [63:0] X56;
   wire [63:0] Y56;
   wire [63:0] X57;
   wire [63:0] Y57;
   wire [63:0] X58;
   wire [63:0] Y58;
   wire [63:0] X59;
   wire [63:0] Y59;
   wire [63:0] X60;
   wire [63:0] Y60;
   wire [63:0] X61;
   wire [63:0] Y61;
   wire [63:0] X62;
   wire [63:0] Y62;
   wire [63:0] X63;
   wire [63:0] Y63;
   wire [63:0] X64;
   wire [63:0] Y64;
   wire [63:0] X65;
   wire [63:0] Y65;
   wire [63:0] X66;
   wire [63:0] Y66;
   wire [63:0] X67;
   wire [63:0] Y67;
   wire [63:0] X68;
   wire [63:0] Y68;
   wire [63:0] X69;
   wire [63:0] Y69;
   wire [63:0] X70;
   wire [63:0] Y70;
   wire [63:0] X71;
   wire [63:0] Y71;
   wire [63:0] X72;
   wire [63:0] Y72;
   wire [63:0] X73;
   wire [63:0] Y73;
   wire [63:0] X74;
   wire [63:0] Y74;
   wire [63:0] X75;
   wire [63:0] Y75;
   wire [63:0] X76;
   wire [63:0] Y76;
   wire [63:0] X77;
   wire [63:0] Y77;
   wire [63:0] X78;
   wire [63:0] Y78;
   wire [63:0] X79;
   wire [63:0] Y79;
   wire [63:0] X80;
   wire [63:0] Y80;
   wire [63:0] X81;
   wire [63:0] Y81;
   wire [63:0] X82;
   wire [63:0] Y82;
   wire [63:0] X83;
   wire [63:0] Y83;
   wire [63:0] X84;
   wire [63:0] Y84;
   wire [63:0] X85;
   wire [63:0] Y85;
   wire [63:0] X86;
   wire [63:0] Y86;
   wire [63:0] X87;
   wire [63:0] Y87;
   wire [63:0] X88;
   wire [63:0] Y88;
   wire [63:0] X89;
   wire [63:0] Y89;
   wire [63:0] X90;
   wire [63:0] Y90;
   wire [63:0] X91;
   wire [63:0] Y91;
   wire [63:0] X92;
   wire [63:0] Y92;
   wire [63:0] X93;
   wire [63:0] Y93;
   wire [63:0] X94;
   wire [63:0] Y94;
   wire [63:0] X95;
   wire [63:0] Y95;
   wire [63:0] X96;
   wire [63:0] Y96;
   wire [63:0] X97;
   wire [63:0] Y97;
   wire [63:0] X98;
   wire [63:0] Y98;
   wire [63:0] X99;
   wire [63:0] Y99;
   wire [63:0] X100;
   wire [63:0] Y100;
   wire [63:0] X101;
   wire [63:0] Y101;
   wire [63:0] X102;
   wire [63:0] Y102;
   wire [63:0] X103;
   wire [63:0] Y103;
   wire [63:0] X104;
   wire [63:0] Y104;
   wire [63:0] X105;
   wire [63:0] Y105;
   wire [63:0] X106;
   wire [63:0] Y106;
   wire [63:0] X107;
   wire [63:0] Y107;
   wire [63:0] X108;
   wire [63:0] Y108;
   wire [63:0] X109;
   wire [63:0] Y109;
   wire [63:0] X110;
   wire [63:0] Y110;
   wire [63:0] X111;
   wire [63:0] Y111;
   wire [63:0] X112;
   wire [63:0] Y112;
   wire [63:0] X113;
   wire [63:0] Y113;
   wire [63:0] X114;
   wire [63:0] Y114;
   wire [63:0] X115;
   wire [63:0] Y115;
   wire [63:0] X116;
   wire [63:0] Y116;
   wire [63:0] X117;
   wire [63:0] Y117;
   wire [63:0] X118;
   wire [63:0] Y118;
   wire [63:0] X119;
   wire [63:0] Y119;
   wire [63:0] X120;
   wire [63:0] Y120;
   wire [63:0] X121;
   wire [63:0] Y121;
   wire [63:0] X122;
   wire [63:0] Y122;
   wire [63:0] X123;
   wire [63:0] Y123;
   wire [63:0] X124;
   wire [63:0] Y124;
   wire [63:0] X125;
   wire [63:0] Y125;
   wire [63:0] X126;
   wire [63:0] Y126;
   wire [63:0] X127;
   wire [63:0] Y127;
   reg clrCnt;
   assign X0 = in[0];
   assign X1 = in[1];
   assign X2 = in[2];
   assign X3 = in[3];
   assign X4 = in[4];
   assign X5 = in[5];
   assign X6 = in[6];
   assign X7 = in[7];
   assign X8 = in[8];
   assign X9 = in[9];
   assign X10 = in[10];
   assign X11 = in[11];
   assign X12 = in[12];
   assign X13 = in[13];
   assign X14 = in[14];
   assign X15 = in[15];
   assign X16 = in[16];
   assign X17 = in[17];
   assign X18 = in[18];
   assign X19 = in[19];
   assign X20 = in[20];
   assign X21 = in[21];
   assign X22 = in[22];
   assign X23 = in[23];
   assign X24 = in[24];
   assign X25 = in[25];
   assign X26 = in[26];
   assign X27 = in[27];
   assign X28 = in[28];
   assign X29 = in[29];
   assign X30 = in[30];
   assign X31 = in[31];
   assign X32 = in[32];
   assign X33 = in[33];
   assign X34 = in[34];
   assign X35 = in[35];
   assign X36 = in[36];
   assign X37 = in[37];
   assign X38 = in[38];
   assign X39 = in[39];
   assign X40 = in[40];
   assign X41 = in[41];
   assign X42 = in[42];
   assign X43 = in[43];
   assign X44 = in[44];
   assign X45 = in[45];
   assign X46 = in[46];
   assign X47 = in[47];
   assign X48 = in[48];
   assign X49 = in[49];
   assign X50 = in[50];
   assign X51 = in[51];
   assign X52 = in[52];
   assign X53 = in[53];
   assign X54 = in[54];
   assign X55 = in[55];
   assign X56 = in[56];
   assign X57 = in[57];
   assign X58 = in[58];
   assign X59 = in[59];
   assign X60 = in[60];
   assign X61 = in[61];
   assign X62 = in[62];
   assign X63 = in[63];
   assign X64 = in[64];
   assign X65 = in[65];
   assign X66 = in[66];
   assign X67 = in[67];
   assign X68 = in[68];
   assign X69 = in[69];
   assign X70 = in[70];
   assign X71 = in[71];
   assign X72 = in[72];
   assign X73 = in[73];
   assign X74 = in[74];
   assign X75 = in[75];
   assign X76 = in[76];
   assign X77 = in[77];
   assign X78 = in[78];
   assign X79 = in[79];
   assign X80 = in[80];
   assign X81 = in[81];
   assign X82 = in[82];
   assign X83 = in[83];
   assign X84 = in[84];
   assign X85 = in[85];
   assign X86 = in[86];
   assign X87 = in[87];
   assign X88 = in[88];
   assign X89 = in[89];
   assign X90 = in[90];
   assign X91 = in[91];
   assign X92 = in[92];
   assign X93 = in[93];
   assign X94 = in[94];
   assign X95 = in[95];
   assign X96 = in[96];
   assign X97 = in[97];
   assign X98 = in[98];
   assign X99 = in[99];
   assign X100 = in[100];
   assign X101 = in[101];
   assign X102 = in[102];
   assign X103 = in[103];
   assign X104 = in[104];
   assign X105 = in[105];
   assign X106 = in[106];
   assign X107 = in[107];
   assign X108 = in[108];
   assign X109 = in[109];
   assign X110 = in[110];
   assign X111 = in[111];
   assign X112 = in[112];
   assign X113 = in[113];
   assign X114 = in[114];
   assign X115 = in[115];
   assign X116 = in[116];
   assign X117 = in[117];
   assign X118 = in[118];
   assign X119 = in[119];
   assign X120 = in[120];
   assign X121 = in[121];
   assign X122 = in[122];
   assign X123 = in[123];
   assign X124 = in[124];
   assign X125 = in[125];
   assign X126 = in[126];
   assign X127 = in[127];

   initial clk = 0;

   always #10000 clk = ~clk;


   // Instantiate top-level module of core 'X' signals are system inputs
   // and 'Y' signals are system outputs
   dft_top dft_top_instance (.clk(clk), .reset(reset), .next(next), .next_out(next_out),
    .X0(X0), .Y0(Y0),
    .X1(X1), .Y1(Y1),
    .X2(X2), .Y2(Y2),
    .X3(X3), .Y3(Y3),
    .X4(X4), .Y4(Y4),
    .X5(X5), .Y5(Y5),
    .X6(X6), .Y6(Y6),
    .X7(X7), .Y7(Y7),
    .X8(X8), .Y8(Y8),
    .X9(X9), .Y9(Y9),
    .X10(X10), .Y10(Y10),
    .X11(X11), .Y11(Y11),
    .X12(X12), .Y12(Y12),
    .X13(X13), .Y13(Y13),
    .X14(X14), .Y14(Y14),
    .X15(X15), .Y15(Y15),
    .X16(X16), .Y16(Y16),
    .X17(X17), .Y17(Y17),
    .X18(X18), .Y18(Y18),
    .X19(X19), .Y19(Y19),
    .X20(X20), .Y20(Y20),
    .X21(X21), .Y21(Y21),
    .X22(X22), .Y22(Y22),
    .X23(X23), .Y23(Y23),
    .X24(X24), .Y24(Y24),
    .X25(X25), .Y25(Y25),
    .X26(X26), .Y26(Y26),
    .X27(X27), .Y27(Y27),
    .X28(X28), .Y28(Y28),
    .X29(X29), .Y29(Y29),
    .X30(X30), .Y30(Y30),
    .X31(X31), .Y31(Y31),
    .X32(X32), .Y32(Y32),
    .X33(X33), .Y33(Y33),
    .X34(X34), .Y34(Y34),
    .X35(X35), .Y35(Y35),
    .X36(X36), .Y36(Y36),
    .X37(X37), .Y37(Y37),
    .X38(X38), .Y38(Y38),
    .X39(X39), .Y39(Y39),
    .X40(X40), .Y40(Y40),
    .X41(X41), .Y41(Y41),
    .X42(X42), .Y42(Y42),
    .X43(X43), .Y43(Y43),
    .X44(X44), .Y44(Y44),
    .X45(X45), .Y45(Y45),
    .X46(X46), .Y46(Y46),
    .X47(X47), .Y47(Y47),
    .X48(X48), .Y48(Y48),
    .X49(X49), .Y49(Y49),
    .X50(X50), .Y50(Y50),
    .X51(X51), .Y51(Y51),
    .X52(X52), .Y52(Y52),
    .X53(X53), .Y53(Y53),
    .X54(X54), .Y54(Y54),
    .X55(X55), .Y55(Y55),
    .X56(X56), .Y56(Y56),
    .X57(X57), .Y57(Y57),
    .X58(X58), .Y58(Y58),
    .X59(X59), .Y59(Y59),
    .X60(X60), .Y60(Y60),
    .X61(X61), .Y61(Y61),
    .X62(X62), .Y62(Y62),
    .X63(X63), .Y63(Y63),
    .X64(X64), .Y64(Y64),
    .X65(X65), .Y65(Y65),
    .X66(X66), .Y66(Y66),
    .X67(X67), .Y67(Y67),
    .X68(X68), .Y68(Y68),
    .X69(X69), .Y69(Y69),
    .X70(X70), .Y70(Y70),
    .X71(X71), .Y71(Y71),
    .X72(X72), .Y72(Y72),
    .X73(X73), .Y73(Y73),
    .X74(X74), .Y74(Y74),
    .X75(X75), .Y75(Y75),
    .X76(X76), .Y76(Y76),
    .X77(X77), .Y77(Y77),
    .X78(X78), .Y78(Y78),
    .X79(X79), .Y79(Y79),
    .X80(X80), .Y80(Y80),
    .X81(X81), .Y81(Y81),
    .X82(X82), .Y82(Y82),
    .X83(X83), .Y83(Y83),
    .X84(X84), .Y84(Y84),
    .X85(X85), .Y85(Y85),
    .X86(X86), .Y86(Y86),
    .X87(X87), .Y87(Y87),
    .X88(X88), .Y88(Y88),
    .X89(X89), .Y89(Y89),
    .X90(X90), .Y90(Y90),
    .X91(X91), .Y91(Y91),
    .X92(X92), .Y92(Y92),
    .X93(X93), .Y93(Y93),
    .X94(X94), .Y94(Y94),
    .X95(X95), .Y95(Y95),
    .X96(X96), .Y96(Y96),
    .X97(X97), .Y97(Y97),
    .X98(X98), .Y98(Y98),
    .X99(X99), .Y99(Y99),
    .X100(X100), .Y100(Y100),
    .X101(X101), .Y101(Y101),
    .X102(X102), .Y102(Y102),
    .X103(X103), .Y103(Y103),
    .X104(X104), .Y104(Y104),
    .X105(X105), .Y105(Y105),
    .X106(X106), .Y106(Y106),
    .X107(X107), .Y107(Y107),
    .X108(X108), .Y108(Y108),
    .X109(X109), .Y109(Y109),
    .X110(X110), .Y110(Y110),
    .X111(X111), .Y111(Y111),
    .X112(X112), .Y112(Y112),
    .X113(X113), .Y113(Y113),
    .X114(X114), .Y114(Y114),
    .X115(X115), .Y115(Y115),
    .X116(X116), .Y116(Y116),
    .X117(X117), .Y117(Y117),
    .X118(X118), .Y118(Y118),
    .X119(X119), .Y119(Y119),
    .X120(X120), .Y120(Y120),
    .X121(X121), .Y121(Y121),
    .X122(X122), .Y122(Y122),
    .X123(X123), .Y123(Y123),
    .X124(X124), .Y124(Y124),
    .X125(X125), .Y125(Y125),
    .X126(X126), .Y126(Y126),
    .X127(X127), .Y127(Y127));

   // You can use this counter to verify that the gap and latency are as expected.
   always @(posedge clk) begin
      if (clrCnt) counter <= 0;
      else counter <= counter+1;
   end


   initial begin
      @(posedge clk);
      @(posedge clk);

      // On the next cycle, begin loading input vector.
      next <= 1;
      clrCnt <= 1;
      @(posedge clk);
      clrCnt <= 0;
      next <= 0;

      // The 512 complex data points enter the system over 8 cycles
      for (j=0; j < 7; j = j+1) begin
          // Input: 64 complex words per cycle
         for (k=0; k < 128; k = k+1) begin
            in[k] <= j*128 + k;
         end
         @(posedge clk);
      end
      j = 7;
      for (k=0; k < 128; k = k+1) begin
         in[k] <= j*128 + k;
      end


      @(posedge clk);
      // Wait until the next data vector can be entered
      while (counter < 125)
        @(posedge clk);

      // On the next cycle, we will start the next data vector
      next <= 1;
      clrCnt <= 1;
      @(posedge clk);
      clrCnt <= 0;
      next <= 0;

      // Start entering next input vector
      for (j=0; j < 7; j = j+1) begin
         // Input 128 words per cycle
         for (k=0; k < 128; k = k+1) begin
            in[k] <= 1024 + j*128 + k;
          end
          @(posedge clk);
       end
       j = 7;
       for (k=0; k < 128; k = k+1) begin
          in[k] <= 1024 + j*128 + k;
       end
   end


   initial begin
      // set initial values
      in[0] <= 0;
      in[1] <= 0;
      in[2] <= 0;
      in[3] <= 0;
      in[4] <= 0;
      in[5] <= 0;
      in[6] <= 0;
      in[7] <= 0;
      in[8] <= 0;
      in[9] <= 0;
      in[10] <= 0;
      in[11] <= 0;
      in[12] <= 0;
      in[13] <= 0;
      in[14] <= 0;
      in[15] <= 0;
      in[16] <= 0;
      in[17] <= 0;
      in[18] <= 0;
      in[19] <= 0;
      in[20] <= 0;
      in[21] <= 0;
      in[22] <= 0;
      in[23] <= 0;
      in[24] <= 0;
      in[25] <= 0;
      in[26] <= 0;
      in[27] <= 0;
      in[28] <= 0;
      in[29] <= 0;
      in[30] <= 0;
      in[31] <= 0;
      in[32] <= 0;
      in[33] <= 0;
      in[34] <= 0;
      in[35] <= 0;
      in[36] <= 0;
      in[37] <= 0;
      in[38] <= 0;
      in[39] <= 0;
      in[40] <= 0;
      in[41] <= 0;
      in[42] <= 0;
      in[43] <= 0;
      in[44] <= 0;
      in[45] <= 0;
      in[46] <= 0;
      in[47] <= 0;
      in[48] <= 0;
      in[49] <= 0;
      in[50] <= 0;
      in[51] <= 0;
      in[52] <= 0;
      in[53] <= 0;
      in[54] <= 0;
      in[55] <= 0;
      in[56] <= 0;
      in[57] <= 0;
      in[58] <= 0;
      in[59] <= 0;
      in[60] <= 0;
      in[61] <= 0;
      in[62] <= 0;
      in[63] <= 0;
      in[64] <= 0;
      in[65] <= 0;
      in[66] <= 0;
      in[67] <= 0;
      in[68] <= 0;
      in[69] <= 0;
      in[70] <= 0;
      in[71] <= 0;
      in[72] <= 0;
      in[73] <= 0;
      in[74] <= 0;
      in[75] <= 0;
      in[76] <= 0;
      in[77] <= 0;
      in[78] <= 0;
      in[79] <= 0;
      in[80] <= 0;
      in[81] <= 0;
      in[82] <= 0;
      in[83] <= 0;
      in[84] <= 0;
      in[85] <= 0;
      in[86] <= 0;
      in[87] <= 0;
      in[88] <= 0;
      in[89] <= 0;
      in[90] <= 0;
      in[91] <= 0;
      in[92] <= 0;
      in[93] <= 0;
      in[94] <= 0;
      in[95] <= 0;
      in[96] <= 0;
      in[97] <= 0;
      in[98] <= 0;
      in[99] <= 0;
      in[100] <= 0;
      in[101] <= 0;
      in[102] <= 0;
      in[103] <= 0;
      in[104] <= 0;
      in[105] <= 0;
      in[106] <= 0;
      in[107] <= 0;
      in[108] <= 0;
      in[109] <= 0;
      in[110] <= 0;
      in[111] <= 0;
      in[112] <= 0;
      in[113] <= 0;
      in[114] <= 0;
      in[115] <= 0;
      in[116] <= 0;
      in[117] <= 0;
      in[118] <= 0;
      in[119] <= 0;
      in[120] <= 0;
      in[121] <= 0;
      in[122] <= 0;
      in[123] <= 0;
      in[124] <= 0;
      in[125] <= 0;
      in[126] <= 0;
      in[127] <= 0;
      next <= 0;
      reset <= 0;

      @(posedge clk);
      reset <= 1;
      @(posedge clk);
      reset <= 0;
      @(posedge clk);
      @(posedge clk);
      // Wait until next_out goes high, then wait one clock cycle and begin receiving data
      @(posedge next_out);
      @(posedge clk); #1;
      $display("--- begin output 1---");

      for (m=0; m < 7; m=m+1) begin
         $display("%x", Y0);
         $display("%x", Y1);
         $display("%x", Y2);
         $display("%x", Y3);
         $display("%x", Y4);
         $display("%x", Y5);
         $display("%x", Y6);
         $display("%x", Y7);
         $display("%x", Y8);
         $display("%x", Y9);
         $display("%x", Y10);
         $display("%x", Y11);
         $display("%x", Y12);
         $display("%x", Y13);
         $display("%x", Y14);
         $display("%x", Y15);
         $display("%x", Y16);
         $display("%x", Y17);
         $display("%x", Y18);
         $display("%x", Y19);
         $display("%x", Y20);
         $display("%x", Y21);
         $display("%x", Y22);
         $display("%x", Y23);
         $display("%x", Y24);
         $display("%x", Y25);
         $display("%x", Y26);
         $display("%x", Y27);
         $display("%x", Y28);
         $display("%x", Y29);
         $display("%x", Y30);
         $display("%x", Y31);
         $display("%x", Y32);
         $display("%x", Y33);
         $display("%x", Y34);
         $display("%x", Y35);
         $display("%x", Y36);
         $display("%x", Y37);
         $display("%x", Y38);
         $display("%x", Y39);
         $display("%x", Y40);
         $display("%x", Y41);
         $display("%x", Y42);
         $display("%x", Y43);
         $display("%x", Y44);
         $display("%x", Y45);
         $display("%x", Y46);
         $display("%x", Y47);
         $display("%x", Y48);
         $display("%x", Y49);
         $display("%x", Y50);
         $display("%x", Y51);
         $display("%x", Y52);
         $display("%x", Y53);
         $display("%x", Y54);
         $display("%x", Y55);
         $display("%x", Y56);
         $display("%x", Y57);
         $display("%x", Y58);
         $display("%x", Y59);
         $display("%x", Y60);
         $display("%x", Y61);
         $display("%x", Y62);
         $display("%x", Y63);
         $display("%x", Y64);
         $display("%x", Y65);
         $display("%x", Y66);
         $display("%x", Y67);
         $display("%x", Y68);
         $display("%x", Y69);
         $display("%x", Y70);
         $display("%x", Y71);
         $display("%x", Y72);
         $display("%x", Y73);
         $display("%x", Y74);
         $display("%x", Y75);
         $display("%x", Y76);
         $display("%x", Y77);
         $display("%x", Y78);
         $display("%x", Y79);
         $display("%x", Y80);
         $display("%x", Y81);
         $display("%x", Y82);
         $display("%x", Y83);
         $display("%x", Y84);
         $display("%x", Y85);
         $display("%x", Y86);
         $display("%x", Y87);
         $display("%x", Y88);
         $display("%x", Y89);
         $display("%x", Y90);
         $display("%x", Y91);
         $display("%x", Y92);
         $display("%x", Y93);
         $display("%x", Y94);
         $display("%x", Y95);
         $display("%x", Y96);
         $display("%x", Y97);
         $display("%x", Y98);
         $display("%x", Y99);
         $display("%x", Y100);
         $display("%x", Y101);
         $display("%x", Y102);
         $display("%x", Y103);
         $display("%x", Y104);
         $display("%x", Y105);
         $display("%x", Y106);
         $display("%x", Y107);
         $display("%x", Y108);
         $display("%x", Y109);
         $display("%x", Y110);
         $display("%x", Y111);
         $display("%x", Y112);
         $display("%x", Y113);
         $display("%x", Y114);
         $display("%x", Y115);
         $display("%x", Y116);
         $display("%x", Y117);
         $display("%x", Y118);
         $display("%x", Y119);
         $display("%x", Y120);
         $display("%x", Y121);
         $display("%x", Y122);
         $display("%x", Y123);
         $display("%x", Y124);
         $display("%x", Y125);
         $display("%x", Y126);
         $display("%x", Y127);
         @(posedge clk); #1;
      end
      $display("%x", Y0);
      $display("%x", Y1);
      $display("%x", Y2);
      $display("%x", Y3);
      $display("%x", Y4);
      $display("%x", Y5);
      $display("%x", Y6);
      $display("%x", Y7);
      $display("%x", Y8);
      $display("%x", Y9);
      $display("%x", Y10);
      $display("%x", Y11);
      $display("%x", Y12);
      $display("%x", Y13);
      $display("%x", Y14);
      $display("%x", Y15);
      $display("%x", Y16);
      $display("%x", Y17);
      $display("%x", Y18);
      $display("%x", Y19);
      $display("%x", Y20);
      $display("%x", Y21);
      $display("%x", Y22);
      $display("%x", Y23);
      $display("%x", Y24);
      $display("%x", Y25);
      $display("%x", Y26);
      $display("%x", Y27);
      $display("%x", Y28);
      $display("%x", Y29);
      $display("%x", Y30);
      $display("%x", Y31);
      $display("%x", Y32);
      $display("%x", Y33);
      $display("%x", Y34);
      $display("%x", Y35);
      $display("%x", Y36);
      $display("%x", Y37);
      $display("%x", Y38);
      $display("%x", Y39);
      $display("%x", Y40);
      $display("%x", Y41);
      $display("%x", Y42);
      $display("%x", Y43);
      $display("%x", Y44);
      $display("%x", Y45);
      $display("%x", Y46);
      $display("%x", Y47);
      $display("%x", Y48);
      $display("%x", Y49);
      $display("%x", Y50);
      $display("%x", Y51);
      $display("%x", Y52);
      $display("%x", Y53);
      $display("%x", Y54);
      $display("%x", Y55);
      $display("%x", Y56);
      $display("%x", Y57);
      $display("%x", Y58);
      $display("%x", Y59);
      $display("%x", Y60);
      $display("%x", Y61);
      $display("%x", Y62);
      $display("%x", Y63);
      $display("%x", Y64);
      $display("%x", Y65);
      $display("%x", Y66);
      $display("%x", Y67);
      $display("%x", Y68);
      $display("%x", Y69);
      $display("%x", Y70);
      $display("%x", Y71);
      $display("%x", Y72);
      $display("%x", Y73);
      $display("%x", Y74);
      $display("%x", Y75);
      $display("%x", Y76);
      $display("%x", Y77);
      $display("%x", Y78);
      $display("%x", Y79);
      $display("%x", Y80);
      $display("%x", Y81);
      $display("%x", Y82);
      $display("%x", Y83);
      $display("%x", Y84);
      $display("%x", Y85);
      $display("%x", Y86);
      $display("%x", Y87);
      $display("%x", Y88);
      $display("%x", Y89);
      $display("%x", Y90);
      $display("%x", Y91);
      $display("%x", Y92);
      $display("%x", Y93);
      $display("%x", Y94);
      $display("%x", Y95);
      $display("%x", Y96);
      $display("%x", Y97);
      $display("%x", Y98);
      $display("%x", Y99);
      $display("%x", Y100);
      $display("%x", Y101);
      $display("%x", Y102);
      $display("%x", Y103);
      $display("%x", Y104);
      $display("%x", Y105);
      $display("%x", Y106);
      $display("%x", Y107);
      $display("%x", Y108);
      $display("%x", Y109);
      $display("%x", Y110);
      $display("%x", Y111);
      $display("%x", Y112);
      $display("%x", Y113);
      $display("%x", Y114);
      $display("%x", Y115);
      $display("%x", Y116);
      $display("%x", Y117);
      $display("%x", Y118);
      $display("%x", Y119);
      $display("%x", Y120);
      $display("%x", Y121);
      $display("%x", Y122);
      $display("%x", Y123);
      $display("%x", Y124);
      $display("%x", Y125);
      $display("%x", Y126);
      $display("%x", Y127);
      // Wait until next_out goes high, then wait one clock cycle and begin receiving data
      @(posedge next_out);
      @(posedge clk); #1;
      $display("--- begin output 2---");

      for (m=0; m < 7; m=m+1) begin
         $display("%x", Y0);
         $display("%x", Y1);
         $display("%x", Y2);
         $display("%x", Y3);
         $display("%x", Y4);
         $display("%x", Y5);
         $display("%x", Y6);
         $display("%x", Y7);
         $display("%x", Y8);
         $display("%x", Y9);
         $display("%x", Y10);
         $display("%x", Y11);
         $display("%x", Y12);
         $display("%x", Y13);
         $display("%x", Y14);
         $display("%x", Y15);
         $display("%x", Y16);
         $display("%x", Y17);
         $display("%x", Y18);
         $display("%x", Y19);
         $display("%x", Y20);
         $display("%x", Y21);
         $display("%x", Y22);
         $display("%x", Y23);
         $display("%x", Y24);
         $display("%x", Y25);
         $display("%x", Y26);
         $display("%x", Y27);
         $display("%x", Y28);
         $display("%x", Y29);
         $display("%x", Y30);
         $display("%x", Y31);
         $display("%x", Y32);
         $display("%x", Y33);
         $display("%x", Y34);
         $display("%x", Y35);
         $display("%x", Y36);
         $display("%x", Y37);
         $display("%x", Y38);
         $display("%x", Y39);
         $display("%x", Y40);
         $display("%x", Y41);
         $display("%x", Y42);
         $display("%x", Y43);
         $display("%x", Y44);
         $display("%x", Y45);
         $display("%x", Y46);
         $display("%x", Y47);
         $display("%x", Y48);
         $display("%x", Y49);
         $display("%x", Y50);
         $display("%x", Y51);
         $display("%x", Y52);
         $display("%x", Y53);
         $display("%x", Y54);
         $display("%x", Y55);
         $display("%x", Y56);
         $display("%x", Y57);
         $display("%x", Y58);
         $display("%x", Y59);
         $display("%x", Y60);
         $display("%x", Y61);
         $display("%x", Y62);
         $display("%x", Y63);
         $display("%x", Y64);
         $display("%x", Y65);
         $display("%x", Y66);
         $display("%x", Y67);
         $display("%x", Y68);
         $display("%x", Y69);
         $display("%x", Y70);
         $display("%x", Y71);
         $display("%x", Y72);
         $display("%x", Y73);
         $display("%x", Y74);
         $display("%x", Y75);
         $display("%x", Y76);
         $display("%x", Y77);
         $display("%x", Y78);
         $display("%x", Y79);
         $display("%x", Y80);
         $display("%x", Y81);
         $display("%x", Y82);
         $display("%x", Y83);
         $display("%x", Y84);
         $display("%x", Y85);
         $display("%x", Y86);
         $display("%x", Y87);
         $display("%x", Y88);
         $display("%x", Y89);
         $display("%x", Y90);
         $display("%x", Y91);
         $display("%x", Y92);
         $display("%x", Y93);
         $display("%x", Y94);
         $display("%x", Y95);
         $display("%x", Y96);
         $display("%x", Y97);
         $display("%x", Y98);
         $display("%x", Y99);
         $display("%x", Y100);
         $display("%x", Y101);
         $display("%x", Y102);
         $display("%x", Y103);
         $display("%x", Y104);
         $display("%x", Y105);
         $display("%x", Y106);
         $display("%x", Y107);
         $display("%x", Y108);
         $display("%x", Y109);
         $display("%x", Y110);
         $display("%x", Y111);
         $display("%x", Y112);
         $display("%x", Y113);
         $display("%x", Y114);
         $display("%x", Y115);
         $display("%x", Y116);
         $display("%x", Y117);
         $display("%x", Y118);
         $display("%x", Y119);
         $display("%x", Y120);
         $display("%x", Y121);
         $display("%x", Y122);
         $display("%x", Y123);
         $display("%x", Y124);
         $display("%x", Y125);
         $display("%x", Y126);
         $display("%x", Y127);
         @(posedge clk); #1;
      end
      $display("%x", Y0);
      $display("%x", Y1);
      $display("%x", Y2);
      $display("%x", Y3);
      $display("%x", Y4);
      $display("%x", Y5);
      $display("%x", Y6);
      $display("%x", Y7);
      $display("%x", Y8);
      $display("%x", Y9);
      $display("%x", Y10);
      $display("%x", Y11);
      $display("%x", Y12);
      $display("%x", Y13);
      $display("%x", Y14);
      $display("%x", Y15);
      $display("%x", Y16);
      $display("%x", Y17);
      $display("%x", Y18);
      $display("%x", Y19);
      $display("%x", Y20);
      $display("%x", Y21);
      $display("%x", Y22);
      $display("%x", Y23);
      $display("%x", Y24);
      $display("%x", Y25);
      $display("%x", Y26);
      $display("%x", Y27);
      $display("%x", Y28);
      $display("%x", Y29);
      $display("%x", Y30);
      $display("%x", Y31);
      $display("%x", Y32);
      $display("%x", Y33);
      $display("%x", Y34);
      $display("%x", Y35);
      $display("%x", Y36);
      $display("%x", Y37);
      $display("%x", Y38);
      $display("%x", Y39);
      $display("%x", Y40);
      $display("%x", Y41);
      $display("%x", Y42);
      $display("%x", Y43);
      $display("%x", Y44);
      $display("%x", Y45);
      $display("%x", Y46);
      $display("%x", Y47);
      $display("%x", Y48);
      $display("%x", Y49);
      $display("%x", Y50);
      $display("%x", Y51);
      $display("%x", Y52);
      $display("%x", Y53);
      $display("%x", Y54);
      $display("%x", Y55);
      $display("%x", Y56);
      $display("%x", Y57);
      $display("%x", Y58);
      $display("%x", Y59);
      $display("%x", Y60);
      $display("%x", Y61);
      $display("%x", Y62);
      $display("%x", Y63);
      $display("%x", Y64);
      $display("%x", Y65);
      $display("%x", Y66);
      $display("%x", Y67);
      $display("%x", Y68);
      $display("%x", Y69);
      $display("%x", Y70);
      $display("%x", Y71);
      $display("%x", Y72);
      $display("%x", Y73);
      $display("%x", Y74);
      $display("%x", Y75);
      $display("%x", Y76);
      $display("%x", Y77);
      $display("%x", Y78);
      $display("%x", Y79);
      $display("%x", Y80);
      $display("%x", Y81);
      $display("%x", Y82);
      $display("%x", Y83);
      $display("%x", Y84);
      $display("%x", Y85);
      $display("%x", Y86);
      $display("%x", Y87);
      $display("%x", Y88);
      $display("%x", Y89);
      $display("%x", Y90);
      $display("%x", Y91);
      $display("%x", Y92);
      $display("%x", Y93);
      $display("%x", Y94);
      $display("%x", Y95);
      $display("%x", Y96);
      $display("%x", Y97);
      $display("%x", Y98);
      $display("%x", Y99);
      $display("%x", Y100);
      $display("%x", Y101);
      $display("%x", Y102);
      $display("%x", Y103);
      $display("%x", Y104);
      $display("%x", Y105);
      $display("%x", Y106);
      $display("%x", Y107);
      $display("%x", Y108);
      $display("%x", Y109);
      $display("%x", Y110);
      $display("%x", Y111);
      $display("%x", Y112);
      $display("%x", Y113);
      $display("%x", Y114);
      $display("%x", Y115);
      $display("%x", Y116);
      $display("%x", Y117);
      $display("%x", Y118);
      $display("%x", Y119);
      $display("%x", Y120);
      $display("%x", Y121);
      $display("%x", Y122);
      $display("%x", Y123);
      $display("%x", Y124);
      $display("%x", Y125);
      $display("%x", Y126);
      $display("%x", Y127);
      $finish;
   end
endmodule
