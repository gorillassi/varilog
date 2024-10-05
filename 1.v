module rev
(
    input [2:0] N,
    output reg [7:0] rev
);

always @* begin
    rev = 8'b0; 
    rev[N] = 1;
end

endmodule