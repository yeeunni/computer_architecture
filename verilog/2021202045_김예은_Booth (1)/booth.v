module booth(input1, input2, clk, start, reset, result, count);
	input [3:0] input1, input2;
	input clk, start, reset;
	output [7:0] result;
	output reg [1:0] count;

	reg [3:0] A, Q, M;
	reg Q_1;
	wire [3:0] add, sub;

	always@(posedge clk or negedge reset) begin
		if (~reset)
			begin
			A <= 4'b0;
			M <= 4'b0;
			Q <= 4'b0;
			Q_1 <= 1'b0;
			count <= 2'b0;
			end
		else if (~start)
			begin
			A <= 4'b0;
			M <= input1;
			Q <= input2;
			Q_1 <= 1'b0;
			count <= 2'b0;
			end
		else
		begin
			case({Q[0],Q_1})
			2'b0_1 : {A,Q,Q_1} <= {add[3], add, Q};
			2'b1_0: {A,Q,Q_1} <= {sub[3], sub, Q};
			default: {A, Q, Q_1} <= {A[3], A, Q};
	endcase
		count = count + 1'b1;
		end
		end
		alu adder(A, M, 1'b0, add);
		alu subtracter(A, ~M, 1'b1, sub);

		assign result = { A,Q };
endmodule
module alu(a, b, cin, out);
	input[3:0] a;
	input[3:0] b;
	input cin;
	
	output[3:0] out;

	assign out = a + b + cin;
endmodule
