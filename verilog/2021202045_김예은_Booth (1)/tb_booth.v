`timescale 1ns/1ps
`include "booth.v"
module tb_booth;
	reg[3:0] input1, input2;
	reg clk, start, reset;
	wire[7:0] result;
	wire[1:0] count;

	booth uut(.input1(input1), .input2(input2), .clk(clk), .start(start), .reset(reset), .result(result), .count(count));

	always #5 clk = ~clk;

	initial begin
		$dumpfile("tb_booth.vcd");
		$dumpvars(0, tb_booth);
		
		reset = 1;
		start = 1;
		clk = 0;
		reset = 0;
		#10;

		start = 0;
		clk = 0;
		reset = 1;
		input1 = -7;
		input2 = 3;

		#5; start = 1;
		#250;

		start = 0;
		clk = 0;
		reset = 1;
		input1 = 5;
		input2 = 4;
		
		#5; start = 1;
		#250;

		start = 0;
		clk = 0;
		reset = 1;
		input1 = 5;
		input2 = -5;

		#5; start = 1;
		#250;

		 $finish;
	end
endmodule