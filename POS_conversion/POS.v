//???_E94084016
//(~A ~B ~C) + (~A B ~C) + (~A B C) + (A ~B C) + (A B C)
module POS (out, a, b, c);

	input a, b, c;
	output out;

	assign out = ((~a) | c) & (a | b | (~c));
	//turn to (~A + C) ( A + b + ~C )

endmodule