//8:1 mux
module ex11(input [7:0]i,input[2:0]s,output y);
assign y=i[s];
endmodule

module tb;
reg [7:0]i;
reg [2:0]s;
wire y;

ex11 i1(i,s,y);
initial begin
i=8'b11001011;
$monitor($time," Y= i[%d]=%b s=%b",s,y,s);
s[2]=0;s[1]=0;s[0]=0;
#10 s[2]=0;s[1]=0;s[0]=1;
#10 s[2]=0;s[1]=1;s[0]=0;
#10 s[2]=0;s[1]=1;s[0]=1;
#10 s[2]=1;s[1]=0;s[0]=0;
#10 s[2]=1;s[1]=0;s[0]=1;
#10 s[2]=1;s[1]=1;s[0]=0;
#10 s[2]=1;s[1]=1;s[0]=1;
end
endmodule

