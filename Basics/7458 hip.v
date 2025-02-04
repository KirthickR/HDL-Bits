module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire w1,w2,w4,w5;
    assign w1= p2a & p2b;
    assign w2=p2c&p2d;
    assign p2y=w1|w2;
    assign w4=p1a & p1c & p1b;
    assign w5=p1f & p1e & p1d;
    assign p1y=w4|w5;

endmodule
