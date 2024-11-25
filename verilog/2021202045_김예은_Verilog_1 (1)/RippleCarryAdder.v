module RippleCarryAdder(a,b,c_out,sum); //4-bit rca module using 4 full-adders
	input [3:0] a,b; //4-bit
	output c_out;
	output [3:0] sum; //4-bit 
	wire [2:0] c; //3-bit
	
	FullAdder U0_fa(.a(a[0]), .b(b[0]), .c_in(1'b0), .sum(sum[0]), .c_out(c[0])); //instance of full-adder
	FullAdder U1_fa(.a(a[1]), .b(b[1]), .c_in(c[0]), .sum(sum[1]), .c_out(c[1])); //instance of full-adder
	FullAdder U2_fa(.a(a[2]), .b(b[2]),.c_in(c[1]),. sum(sum[2]), .c_out(c[2])); //instance of full-adder
	FullAdder U3_fa(.a(a[3]), .b(b[3]), .c_in(c[2]), .sum(sum[3]), .c_out(c_out)); //instance of full-adder
endmodule

module FullAdder(a,b,c_in, c_out, sum);
	input a;
	input b;
	input c_in;
	output c_out;
	output sum;

	assign {c_out, sum} = a + b + c_in;
endmodule