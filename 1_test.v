`timescale 1ns/1ns
`include "1.v"

module top();

  reg [2:0] n_test;
  
  wire [7:0] res;

  initial begin
    forever begin
      #1 n_test = $random();
    end
  end

  reverse_n test_rev (
    .N(n_test), 
    .rev(res) 
  );

endmodule
