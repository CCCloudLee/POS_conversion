//???_E94084016
`timescale 1ns/1ns
module test ();

	reg a, b, c;
	wire out;

	POS pos (.out(out), .a(a), .b(b), .c(c));

	initial begin
		#0 a=0; b=0; c=0;
		#1 a=0; b=0; c=1;
		#1 a=0; b=1; c=0;
		#1 a=0; b=1; c=1;
		#1 a=1; b=0; c=0;
		#1 a=1; b=0; c=1;
		#1 a=1; b=1; c=0;
		#1 a=1; b=1; c=1;
		#1 $finish;
	end
endmodule