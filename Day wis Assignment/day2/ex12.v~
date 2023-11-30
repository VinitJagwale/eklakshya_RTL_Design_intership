//1:8 demux
module ex11(input i,input[2:0]s,output[7:0] y);
assign y[0]=i & ~s[2] & ~s[1] & ~s[0];
assign y[1]=i & ~s[2] & ~s[1] & s[0];
assign y[2]=i & ~s[2] & s[1] & ~s[0];
assign y[3]=i & ~s[2] & s[1] & s[0];
assign y[4]=i & s[2] & ~s[1] & ~s[0];
assign y[5]=i & s[2] & ~s[1] & s[0];
assign y[6]=i & s[2] & s[1] & ~s[0];
assign y[7]=i & s[2] & s[1] & s[0];
endmodule




module tb;
reg i;
reg [2:0]s;
wire [7:0]y;
ex11 i1(i,s,y);
initial begin
i=1;
$monitor($time,"  y[%d]=%b s=%b  y=%b",s,i,s,y);
s=3'b000;
#10 s=3'b001;
#10 s=3'b010;
#10 s=3'b011;
#10 s=3'b100;
#10 s=3'b101;
#10 s=3'b110;
#10 s=3'b111;
end
endmodule

