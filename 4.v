module priority_deshiphrator (
    input [7:0] num,
    output [2:0] ub
);

wire [2:0] index_values [7:0];
wire [2:0] max_pairs [3:0];
wire [2:0] max_c0, max_c1;

genvar idx;
generate 
    for (idx = 0; idx < 8; idx = idx + 1) begin : index_assignment
        assign index_values[idx] = (num[idx]) ? idx : 3'b000;
    end
endgenerate

genvar pair_idx;
generate 
    for (pair_idx = 0; pair_idx < 4; pair_idx = pair_idx + 1) begin : pair_comparison
        assign max_pairs[pair_idx] = (index_values[2 * pair_idx + 1] > index_values[2 * pair_idx]) ? 
                                      index_values[2 * pair_idx + 1] : index_values[2 * pair_idx];
    end
endgenerate

assign max_c1 = (max_pairs[3] > max_pairs[2]) ? max_pairs[3] : max_pairs[2];
assign max_c0 = (max_pairs[1] > max_pairs[0]) ? max_pairs[1] : max_pairs[0];

assign ub = (max_c1 > max_c0) ? max_c1 : max_c0;

endmodule
