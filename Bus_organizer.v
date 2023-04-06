`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 08:13:32 AM
// Design Name: 
// Module Name: Bus_organizer
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


module Bus_organizer(
    input [31:0] DB,
    input [1:0] Ctrl,
    output reg [31:0] Data_Bus_Out
    );
    
    wire [31:0]S1;
    wire [31:0]S2;
    wire [31:0]S3;
    
    assign S1 = { DB[31:16],DB[15:0]};
    assign S2 = { DB[15:8],DB[7:0],DB[31:16]};
    assign S3 = { DB[31:16],DB[15:8],DB[7:0]};
    always @(*)begin
    case (Ctrl)
     2'b00 : Data_Bus_Out = DB;
     2'b01 : Data_Bus_Out = S1;
     2'b10 : Data_Bus_Out = S2;
     2'b11 : Data_Bus_Out = S3;
    endcase
    end
    
endmodule
