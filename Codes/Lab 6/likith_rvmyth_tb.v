`timescale 1ns / 1ps

`include "likith_rvmyth.v"
`include "clk_gate.v"

module likith_rvmyth_tb;

  // Testbench signals
  reg clk_lik; 
  reg reset;
  wire [9:0] out;

  // Instantiate the RV_CPU module
  RV_CPU dut (
    .clk(clk_lik), 
    .reset(reset),
    .out(out)
  );

  // Clock generation
  initial begin
    clk_lik = 0; 
    forever #5 clk_lik = ~clk_lik; 
  end

  // Test sequence
  initial begin
    reset = 0;
    #50 reset = 1;
    #100 reset = 0;

    #1100;
    $finish;
  end

  // Monitor the outputs
  initial begin
    $monitor("Time: %t | OUT: %b", $time, out);
  end

  // Dump waveform data
  initial begin
    $dumpfile("likith_rvmyth.vcd");  // Name of the dump file
    $dumpvars(0, likith_rvmyth_tb);     // Dump all variables in the testbench
  end

endmodule
