module calculate_power (
    input [7:0] input_num,
    output [2:0] power
);

wire [2:0] values [7:0];

genvar index;
generate 
    for (index = 0; index < 8; index = index + 1) begin : value_assignment
        assign values[index] = (input_num[index]) ? index : 3'b000;
    end
endgenerate

assign power = values[0] | values[1] | values[2] | values[3] | 
                values[4] | values[5] | values[6] | values[7];

endmodule
