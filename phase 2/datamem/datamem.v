`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:21:38 06/19/2022 
// Design Name: 
// Module Name:    datamem 
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
module datamem(address,datawrite,clk,memwrite,memread,readdata,memtoreg
    );
	 input clk;
	 input [15:0]address;
	 input memtoreg;
	 input memwrite;
	 input memread;
	 input [15:0] datawrite;
	 output reg[15:0] readdata;
	 reg [99:0] mem [15:0];
	 always @*
		begin
			mem[0]=0000000000010010;
			mem[1]=0000000000000011;
			mem[2]=0000000000010001;
			mem[3]=0000000000000100;
			mem[4]=0000000000010100;
			mem[5]=0000000000000010;
			mem[6]=0000000000001001;
			mem[7]=0000000000010100;
		if(memwrite==1)
			mem[address]=datawrite;
		if(memread==1)
			readdata=mem[addrass];
		if(memtoreg==0)
			readdata=address;
		else
			readdata=mem[address];
		end


endmodule
