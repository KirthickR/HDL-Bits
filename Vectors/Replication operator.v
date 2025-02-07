module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
   //assign in=8'b00000101;
    assign out ={{24{in[7]}},in};

endmodule
