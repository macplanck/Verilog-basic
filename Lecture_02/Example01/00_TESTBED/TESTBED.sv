
`timescale 1ns/1ps
`include "../00_TESTBED/PATTERN.sv"
`include "../01_RTL/lec02.sv"


module TESTBED();

logic clk, rst_n, in_valid;
logic out_valid;

logic [4:0] out_1, out_2; 
logic [3:0] in_1, in_2;


initial begin
	$dumpfile("../02_REPORT/WAVEFORM.vcd");
	$dumpvars(0,TESTBED);
end



top_module I_design (
  .clk(clk),
  .rst_n(rst_n),
  .in_valid(in_valid),
  .in_1(in_1),
  .in_2(in_2),
  .out_valid(out_valid),
  .out_1(out_1),
  .out_2(out_2)
);


PATTERN I_PATTERN (   
  .clk(clk),
  .rst_n(rst_n),
  .in_valid(in_valid),
  .in_1(in_1),
  .in_2(in_2),
  .out_valid(out_valid),
  .out_1(out_1),
  .out_2(out_2)
);

endmodule
