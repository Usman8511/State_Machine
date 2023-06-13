`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 06:18:10 AM
// Design Name: 
// Module Name: lift_operation
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


module lift_operation(input in,
                      input reset,
                      input clk,
                      output reg out,
                      output reg curr_state,
                      output reg next_state
    );
    


//defining  states...
parameter S0=0, S1 = 1;

always_ff @(posedge clk or posedge reset)begin
    if(reset)begin
        curr_state <= S0;end
    else begin
        curr_state <= next_state;end
end
// Next_State Logic...
always_comb begin
case(curr_state)
S0 : if(in) next_state = S1;
     else  next_state = S0;
     
S1 : if(!in) next_state = S0;
     else next_state = S1;
//default : next_state = S0; 
endcase
end


always_comb begin
case(curr_state)
S0 : if(in) out = 0;
     else out = 1;
     
S1 : if(!in) out = 0;
     else out = 1;
     
//default : out = 0;

endcase

end
endmodule
