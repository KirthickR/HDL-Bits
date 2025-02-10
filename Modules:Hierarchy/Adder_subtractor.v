module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] w1;
    wire [15:0] w2;
    wire [15:0] w3;  
    wire w4;
    
    assign w1 = {32{sub}} ^ b;  
    
    add16 insta1(.a(a[15:0]), .b(w1[15:0]), .cin(sub), .sum(w2), .cout(w4));
    add16 insta2(.a(a[31:16]), .b(w1[31:16]), .cin(w4), .sum(w3), .cout());
    
    assign sum = {w3, w2};  
    
endmodule
