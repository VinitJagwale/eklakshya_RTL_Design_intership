//3:8 decoder using data flow
module ex9(input [2:0]i,output [7:0]y);
assign y[0]= ~i[0] & ~i[1] & ~i[2];
assign y[1]= ~i[0] & ~i[1] & i[2];
assign y[2]= ~i[0] & i[1] & ~i[2];
assign y[3]= ~i[0] & i[1] & i[2];
assign y[4]= i[0] & ~i[1] & ~i[2];
assign y[5]= i[0] & ~i[1] & i[2];
assign y[6]= i[0] & i[1] & ~i[2];
assign y[7]= i[0] & i[1] & i[2];
endmodule

module tb;
reg [2:0]i;
wire [7:0]y;
ex9 i1(i,y);
initial begin
$monitor("\n I[0]=%b I[1]=%b I[2]=%b \nY[0]=%b \nY[1]=%b \nY[2]=%b \nY[3]=%b \nY[4]=%b \nY[5]=%b \nY[6]=%b \nY[7]=%b",i[0],i[1],i[2],y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]);
i[0]=0;i[1]=0;i[2]=1;
#10i[0]=1;i[1]=0;i[2]=0;
#10i[0]=1;i[1]=0;i[2]=1;
#10i[0]=0;i[1]=1;i[2]=1;
end 
endmodule

