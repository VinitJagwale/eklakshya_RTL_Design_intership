module seq_1010(input clk,rst,x,output y);
parameter s0=3'd0;parameter s1=3'd1;
parameter s2=3'd2;parameter s3=3'd3;parameter s4=3'd4;
reg [2:0]ps,ns;
always@(posedge clk)
begin
 if(rst) ps<=0;
 else ps<=ns;
end
always@(ps,x)
begin
 case(ps)
  s0:begin ns=x?s1:s0;end
  s1:begin ns=x?s1:s2;end
  s2:begin ns=x?s3:s0;end
  s3:begin ns=x?s1:s4;end
  s4:begin ns=x?s3:s0;end
  default : begin ns=s0; end
 endcase
end
assign y=(ps==s4)?1:0;
endmodule


module tb;
reg clk,rst,x;
wire y;
always #1 clk=~clk;
seq_1010 s1(clk,rst,x,y);
initial begin
$monitor($time," x=%b  y=%b ",x,y);
#0 clk=1;rst=1;
#2 rst=0;
#2 x=0;
#2 x=1;
#2 x=0;
#2 x=1;
#2 x=0;
#2 x=1;
#2 x=0;
#2 x=1;
#2 x=0;
#2 x=1;
end
initial begin
#100 $finish;
end
endmodule

