module top_module (input x, input y, output z);
    wire w1,w2,w3,w4,w5,w6;
    
    a ia1(.x(x),.y(y),.z(w1));
    b ib1(.x(x),.y(y),.z(w2));
    assign w5=w1|w2;
    a ia2(.x(x),.y(y),.z(w3));
    b ib2(.x(x),.y(y),.z(w4));
    assign w6=w3&w4;
    assign z=w5^w6;
endmodule
module a (input x, input y, output z);
    assign z =( x ^ y) & x;
	endmodule
	module b ( input x, input y, output z );
    assign z = (x ~^ y);
	endmodule
