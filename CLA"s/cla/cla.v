/*module cla(input [31:0]x,y,input cin,output [31:0]s,output cout);
wire [31:0]c;
integer i;
assign c[0]=cin;
always@(x,y);
initial begin

for(i=0;i<32;i=i+1)
begin
cla_mod cla0(x[i],y[i],c[i],s[i],c[i+1]);
end

end
assign cout=c[31];
endmodule

module cla_mod(input x,y,cin,output s,cout);
wire g,p;
assign s=x^y^cin;
assign g=x&y;
assign p=x|y;
assign cout= g|(p&cin);
endmodule*/

//source 32bit code
module cla(input [31:0]x,y,input cin,output [31:0]s,output cout);
wire c1;
cla_mod4 cl0(x[15:0],y[15:0],cin,s[15:0],c1);
cla_mod4 cl1(x[31:16],y[31:16],c1,s[31:16],cout);
endmodule


//16bit
module cla_mod4(input [15:0]x,y,input cin,output [15:0]s,output cout);
wire c1;
cla_mod3 cl0(x[7:0],y[7:0],cin,s[7:0],c1);
cla_mod3 cl1(x[15:8],y[15:8],c1,s[15:8],cout);
endmodule


//8bit
module cla_mod3(input [7:0]x,y,input cin,output [7:0]s,output cout);
wire c1,c2,c3,c4,c5,c6,c7;
cla_mod2 cl0(x[3:0],y[3:0],cin,s[3:0],c1);
cla_mod2 cl1(x[7:4],y[7:4],c1,s[7:4],cout);
endmodule

//4bit
module cla_mod2(input [3:0]x,y,input cin,output [3:0]s,output cout);
wire c1,c2,c3;
cla_mod1 cl0(x[0],y[0],cin,s[0],c1);
cla_mod1 cl1(x[1],y[1],c1,s[1],c2);
cla_mod1 cl2(x[2],y[2],c2,s[2],c3);
cla_mod1 cl3(x[3],y[3],c3,s[3],cout);
endmodule



//sum and carry genration
module cla_mod1(input x,y,cin,output s,cout);
wire g,p;
assign s=x^y^cin;
assign g=x&y;
assign p=x|y;
assign cout= g|(p&cin);
endmodule
