`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 12:19:06
// Design Name: 
// Module Name: code
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


module code(
    input clk,
    
    input rst,
    output reg Rh,
    output reg  Rb,
    output reg Gb,
    output reg Gh,
    output reg Yb,
    output reg Yh
    );
    parameter  s0=3'd0,
                s1=3'd1,
                s2=3'd2, 
                s3=3'd3;
    reg [2:0] state,next_state;
    reg [7:0]count;
    parameter tg=50;
    parameter ty=5;
    parameter tr=25;
     always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 0;
    else if (
        (state==s0 && count==tg) ||
        (state==s1 && count==ty) ||
        (state==s2 && count==tr) ||
        (state==s3 && count==ty) 
       
    )
        count <= 0;
    else
        count <= count + 1;
end
    
    always @(posedge clk or posedge rst) begin
   if(rst)state<=s0;
   else 
    state<=next_state;
    
    end
   
    always @(*) begin
    case(state)
        s0:next_state<=(count==tg)?s1:s0;
        s1:begin
        next_state<=(count==ty)?s2:s1;
        
        end
         s2:begin
        next_state<=(count==tr)?s3:s2;
        
        end
        s3:next_state<=(count==ty)?s0:s3;
        
       
        default:
         next_state<=s0;
    endcase
    end
    always @(*)begin
     Yh=1'b0;
    Yb=1'b0;
    Rh=1'b0;
    Gb=1'b0;
     Gh=1'b0;
    Rb=1'b0;
    case(state)
    s0:begin
    Gh=1'b1;
    Rb=1'b1;
   
    end
     s1:begin
   
    Yh=1'b1;
    Yb=1'b1;
   
    end
     s2:begin
   
    Rh=1'b1;
    Gb=1'b1;
    end
     s3:begin
   
    Yh=1'b1;
    Yb=1'b1;
  
    end
    default begin
     Gh=1'b1;
    Rb=1'b1;
    end
    
    endcase
    end
    
    
endmodule
