module js(input clk, rst, output reg [5:0] y);
always@(posedge clk)
 begin 
  if(rst) y<=6'b100000;
  else begin
    y[5]<=y[0];
    y[4]<=y[5];
    y[3]<=y[4];
    y[2]<=y[3];
    y[1]<=y[2];
    y[0]<=y[1];
  end
 end
endmodule



module tb;
reg clk,rst;
wire[5:0]y;
always #1 clk=~clk;
js s1(clk,rst,y);
initial begin
$monitor($time,"   count=%b ",y);
#0 clk=1;rst=1;
#1 rst=0;
end
initial begin
#34 $finish;
end
endmodule 
