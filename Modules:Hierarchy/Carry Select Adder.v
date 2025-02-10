module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1,w2,w4;
    wire w3;
    wire [31:16]w5;
    
    
    
     add16 instan3(.a(a [15:0]),.b(b[15:0]),.cin(1'b0),.sum(w4),.cout(w3));
    add16 instan1(.a(a [31:16]),.b(b[31:16]),.cin(1'b0),.sum(w1));
    add16 instan2(.a(a [31:16]),.b(b[31:16]),.cin(1'b1),.sum(w2[15:0]));
   
    always @(*)
    begin
        case(w3)
            1'b0: w5=w1;
            1'b1: w5=w2;
        endcase
    end
    assign sum={w5,w4};
endmodule
