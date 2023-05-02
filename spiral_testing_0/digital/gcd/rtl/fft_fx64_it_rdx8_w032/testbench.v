module dft_testbench();
initial begin 
	$dumpfile("fft_fx64_it_rdx8_w32.vcd");
	$dumpvars(4);
end
   reg clk, reset, next;
   wire next_out;
   integer i, j, k, l, m;
   reg [15:0] counter;
   reg [63:0] in [63:0];
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
    .X63(X63), .Y63(Y63));

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

      // The 512 complex data points enter the system over 16 cycles
      for (j=0; j < 15; j = j+1) begin
          // Input: 32 complex words per cycle
         for (k=0; k < 64; k = k+1) begin
            in[k] <= j*64 + k;
         end
         @(posedge clk);
      end
      j = 15;
      for (k=0; k < 64; k = k+1) begin
         in[k] <= j*64 + k;
      end


      @(posedge clk);
      // Wait until the next data vector can be entered
      while (counter < 146)
        @(posedge clk);

      // On the next cycle, we will start the next data vector
      next <= 1;
      clrCnt <= 1;
      @(posedge clk);
      clrCnt <= 0;
      next <= 0;

      // Start entering next input vector
      for (j=0; j < 15; j = j+1) begin
         // Input 64 words per cycle
         for (k=0; k < 64; k = k+1) begin
            in[k] <= 1024 + j*64 + k;
          end
          @(posedge clk);
       end
       j = 15;
       for (k=0; k < 64; k = k+1) begin
          in[k] <= 1024 + j*64 + k;
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

      for (m=0; m < 15; m=m+1) begin
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
      // Wait until next_out goes high, then wait one clock cycle and begin receiving data
      @(posedge next_out);
      @(posedge clk); #1;
      $display("--- begin output 2---");

      for (m=0; m < 15; m=m+1) begin
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
      $finish;
   end
endmodule