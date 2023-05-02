module dft_testbench();
   reg clk, reset, next;
   wire next_out;
   integer i, j, k, l, m;
   reg [15:0] counter;
   reg [63:0] in [31:0];
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

   initial clk = 0;

   always #10000 clk = ~clk;

   initial begin 
      $dumpfile("fft_fx64_it_rdx8_w16.vcd");
      $dumpvars(4);
   end

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
    .X31(X31), .Y31(Y31));

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

      // The 512 complex data points enter the system over 32 cycles
      for (j=0; j < 31; j = j+1) begin
          // Input: 16 complex words per cycle
         for (k=0; k < 32; k = k+1) begin
            in[k] <= j*32 + k;
         end
         @(posedge clk);
      end
      j = 31;
      for (k=0; k < 32; k = k+1) begin
         in[k] <= j*32 + k;
      end


      @(posedge clk);
      // Wait until the next data vector can be entered
      while (counter < 188)
        @(posedge clk);

      // On the next cycle, we will start the next data vector
      next <= 1;
      clrCnt <= 1;
      @(posedge clk);
      clrCnt <= 0;
      next <= 0;

      // Start entering next input vector
      for (j=0; j < 31; j = j+1) begin
         // Input 32 words per cycle
         for (k=0; k < 32; k = k+1) begin
            in[k] <= 1024 + j*32 + k;
          end
          @(posedge clk);
       end
       j = 31;
       for (k=0; k < 32; k = k+1) begin
          in[k] <= 1024 + j*32 + k;
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

      for (m=0; m < 31; m=m+1) begin
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
      // Wait until next_out goes high, then wait one clock cycle and begin receiving data
      @(posedge next_out);
      @(posedge clk); #1;
      $display("--- begin output 2---");

      for (m=0; m < 31; m=m+1) begin
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
      $finish;
   end
endmodule