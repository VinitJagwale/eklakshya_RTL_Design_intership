module seq_detector_000111(input clk,rst,x,output reg y);
parameter s0=5'd0;parameter s1=5'd1;parameter s2=5'd2;
parameter s3=5'd3;parameter s4=5'd4;parameter s5=5'd5;
reg[2:0]ps,ns;
always@(posedge clk)
 begin
  if(rst) ps<=0;
  else ps<=ns;
 end
always@(ps,x)
 begin
  case(ps)
   s0:begin ns=x?s0:s1;y=x?0:0; end
   s1:begin ns=x?s0:s2;y=x?0:0; end
   s2:begin ns=x?s0:s3;y=x?0:0; end
   s3:begin ns=x?s4:s3;y=x?0:0; end
   s4:begin ns=x?s5:s1;y=x?0:0; end
   s5:begin ns=x?s0:s1;y=x?1:0; end
   default : begin ns=s0;y=0;end
  endcase
 end
endmodule


module tb;
reg clk,rst,x;
wire y;
always #1 clk=~clk;
seq_detector_000111 s1(clk,rst,x,y);
initial begin
$monitor($time," x=%b  y=%b ",x,y);
#0 clk=1;rst=1;
#2 rst=0;
#2 x=0;
#2 x=1;
#2 x=0;
#2 x=0;
#2 x=0;
#2 x=1;
#2 x=1;
#2 x=1;
#2 x=0;
#2 x=0;
#2 x=0;
#2 x=1;
#2 x=1;
#2 x=1;
end
initial begin
#100 $finish;
end
endmodule


