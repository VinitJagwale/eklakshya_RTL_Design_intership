module BCD(input clk,rst,output reg[3:0]count);
always@(posedge clk)
begin
 if(rst) count<=0;
 else if(count==4'd9) count<=0;
 else count<=count+1;
end 
endmodule


module tb;
reg clk,rst;
wire[3:0]count;
always #1 clk=~clk;
BCD s1(clk,rst,count);
initial begin
$monitor($time,"   count=%d ",count);
#0 clk=1;rst=1;
#1 rst=0;

end
initial begin
#34 $finish;
end
endmodule 
