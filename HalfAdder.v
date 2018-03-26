/*Half Adder Structural Description - Alex Santilli*/

/*module HalfAdder(Carry, Sum, a, b);

	input a, b;
	output Carry, Sum;
	
	wire an, bn, abn, anb;
	
	not(an, a);
	not(bn, b);
	and(abn, a, bn);
	and(anb, an, b);
	or(Sum, abn, anb);
	and(Carry, a, b);


endmodule*/

/*Half Adder Behavioural Description (continuous assignment) - Alex Santilli*/

/*module HalfAdder(Carry, Sum, a, b);

	input a, b;
	output Sum, Carry;
	
	assign Sum = (~a & b) | (~b & a);
	assign Carry = (a & b);
	
endmodule*/

/*Half Adder Behavioural Description (Procedural assignment) - Alex Santilli*/

module HalfAdder(Carry, Sum, SumWire, a, b);

	input a, b;
	output SumWire;
	output reg Sum, Carry;
	wire CarryWire;
	
	always@(a, b) begin
	
		if(a == b)
			Sum = 0;
		else
			Sum = 1;
		
		Carry = (a & b);
		
	end 

	assign CarryWire = (a & b);
	assign SumWire = Sum;

endmodule
