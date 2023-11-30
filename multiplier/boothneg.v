module boothmul(ac,m,q);
output reg signed[7:0]ac;
input signed[3:0]m,q;
integer n;
reg q1;
reg[3:0]m1;
reg [1:0]temp;

always@(m,q)
begin
 ac=8'd0;
 q1=1'b0;
 m1=-m;
 for(n=0;n<4;n=n+1)
 begin
  temp={q[n],q1};
  case(temp)
  2'b10 : ac[7:4]=ac[7:4]+m;
  2'b01 : ac[7:4]=ac[7:4]+m1;
  endcase
  ac=ac>>1;
  ac[7]=ac[6];
  q1=q[n];
 end
end
endmodule

