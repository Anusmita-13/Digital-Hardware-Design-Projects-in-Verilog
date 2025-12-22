`timescale 1ns/1ps

module tb;

  reg a, b;
  wire y;

  and_gate dut (
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    // waveform dump
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    a = 0; b = 0;
    #1 $display("a=%b b=%b y=%b", a, b, y);

    #5 a = 1; b = 0;
    #1 $display("a=%b b=%b y=%b", a, b, y);

    #5 a = 0; b = 1;
    #1 $display("a=%b b=%b y=%b", a, b, y);

    #5 a = 1; b = 1;
    #1 $display("a=%b b=%b y=%b", a, b, y);

    #5 $finish;
  end

endmodule
