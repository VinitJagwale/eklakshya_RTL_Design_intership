//source
module csa(input [31:0]x,y,input cin,output [31:0]s,output cout);
wire c0,c1,co0,co1;
wire [31:0]s0,s1;
assign c0=0;assign c1=1;
fa_mod4 f0(x[31:0],y[31:0],c0,s0[31:0],co0);
fa_mod4 f1(x[31:0],y[31:0],c1,s1[31:0],co1);
mux m1(s0,s1,cin,s);        //mux for sum
mux m2(co0,co1,cin,cout);   //mux for carry
endmodule

//32bit full adder
module fa_mod4(input [31:0]x,y,input cin,output [31:0]s,output cout);
wire c1;
fa_mod3 f0(x[15:0],y[15:0],cin,s[15:0],c1);
fa_mod3 f1(x[31:16],y[31:16],cin,s[31:16],cout);
endmodule
//16bit full adder 
module fa_mod3(input [15:0]x,y,input cin,output [15:0]s,output cout);
wire c1;
fa_mod2 f0(x[7:0],y[7:0],cin,s[7:0],c1);
fa_mod2 f1(x[15:8],y[15:8],c1,s[15:08],cout);
endmodule
//8bit full adder
module fa_mod2(input [7:0]x,y,input cin,output [7:0]s,output cout);
wire c1;
fa_mod1 f1(x[3:0],y[3:0],cin,s[3:0],c1);
fa_mod1 f2(x[7:4],y[7:4],c1,s[7:4],cout);
endmodule
//4bit full adder
module fa_mod1(input [3:0]x,y,input cin,output [3:0]s,output cout);
wire c1,c2,c3;
fa f0(x[0],y[0],cin,s[0],c1);
fa f1(x[1],y[1],c1,s[1],c2);
fa f2(x[2],y[2],c2,s[2],c3);
fa f3(x[3],y[3],c3,s[3],cout);
endmodule

//full adder
module fa(input x,y,cin,output s,cout);
assign s=x^y^cin;
assign cout=(x&y)|(x&cin)|(cin&y);
endmodule

//mux
module mux(input[31:0] i0,i1,input sl,output [31:0] y);
assign y=((i0&(~sl))|(i1&(sl)));
endmodule

