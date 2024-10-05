`timescale 1ns/1ns
`include "2.v"

module top();
    reg [7:0] number_test;
    
    wire res;

    initial begin
        forever begin
            #1;                      
            number_test = $random();
        end
    end

    // Экземпляр модуля is_even
    is_even testing (
        .number(number_test),  
        .even(res)           
    );

endmodule
