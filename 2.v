module even
(
    input [7:0] number,
    output even
);

assign even = (number[0] == 1'b0);

endmodule
