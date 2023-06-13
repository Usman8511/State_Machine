`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 07:40:26 AM
// Design Name: 
// Module Name: lift_operation_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lift_operation_tb;
    
    // Inputs
    reg in;
    reg reset;
    reg clk;
    
    // Outputs
    wire out;
    wire curr_state;
    wire next_state;
    
    // Instantiate the module under test
    lift_operation dut (
        .in(in),
        .reset(reset),
        .clk(clk),
        .out(out),.curr_state(curr_state),.next_state(next_state)
    );
    
    // Clock generation
    
//  initial begin
//    clk = 1;
//    repeat(10) begin
//        #5 clk = ~clk; // Toggle the clock every 5 time units
//    end
//    end
initial begin 

clk = 1;reset = 1; in = 1;
#5
clk = 0;reset = 0; in = 1;
#5
clk = 1;reset = 0; in = 1;
#5
$stop; 
end
    
endmodule

