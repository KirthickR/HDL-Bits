module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    // assign { ... } = { ... };
    assign {w,x,y,z}={a,b,c,d,e,f,1'b1,1'b1};
   /* assign {(a,b,c,d,e,f),1'b1,1'b1}={w,x[7:4],y,z[3:0]};
    assign a,b,c,d,e,f,1'b1,1'b1={w,x[7:4],y,z[3;0]};*/

endmodule
