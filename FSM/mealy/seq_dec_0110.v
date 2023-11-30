module seq_detector_0110(input clk,rst,x,output reg y);
parameter s0=2'd0;parameter s1=2'd1;
parameter s2=2'd2;parameter s3=2'd3;
reg[1:0]ps,ns;
always@(posedge clk)
 begin
  if(rst)
    ps<=0;
  else 
    ps<=ns;
 end
always@(ps,x)
  begin 
  case(ps)
   s0:begin ns=x?s0:s1;y=x?0:0; end
   s1:begin ns=x?s2:s1;y=x?0:0; end
   s2:begin ns=x?s3:s1;y=x?0:0; end
   s3:begin ns=x?s0:s1;y=x?0:1; end
  endcase
 end
endmodule


module tb;
reg clk,rst,x;
wire y;
always #1 clk=~clk;
seq_detector_0110 se1(clk,rst,x,y);
initial begin
 $monitor($time," x=%b  ,y=%b",x,y);
 #0clk=0;rst=1;x=0;
 #2 rst=0 ;

  #2x=0;#2 x=1;#2 x=1;#2 x=0;#2 x=1;

end
initial begin
#50 $finish;
end
endmodule
