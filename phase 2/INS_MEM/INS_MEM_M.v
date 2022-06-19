`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:49:59 06/19/2022 
// Design Name: 
// Module Name:    INS_MEM_M 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module INS_MEM_M(clk,ext,ins,zero,branch
    );
		input clk;
		input zero;
		input branch;
		input [19:0] ext;
		output reg [19:0] ins;
		reg branch_taken;
		reg [199:0] arr [19:0];
		assign inpc=0;
		reg [19:0] outpc;
		
		always @*
			begin
				branch_taken=zero && branch;
				if(branch_taken==0)
					begin
						outpc=inpc;
						outpc=outpc+4;
						ins=arr[outpc];
					end
				else
					begin
						outpc=inpc;
						outpc=outpc+4+(ext*4);
						ins=arr[outpc];
					end
			end


endmodule
