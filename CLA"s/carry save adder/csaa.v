module csaa_8bit (input [7:0]x,y,z,input cin,output [7:0]s,output cout);
assign cin=0;
wire w1,w2,w3;
csaa c1(x[3:0],y[3:0],z[3:0],cin,s[4:0],w1);
assign w2=s[4];assign s[4]=0;
csaa c2(x[7:4],y[7:4],z[7:4],w1,s[7:4],cout);
assign w3=s[4];assign s[4]=w2^w3;
endmodule

module csaa (input [3:0]x,y,z,input cin,output [4:0]s,output cout);
assign cin=0;
wire c1,c2,c3,c4,c5,c6,c7,s2,s3,s4,y3;
assign y3=0;
fa f0(x[0],y[0],z[0],s[0],c1);
fa f1(x[1],y[1],z[1],s2,c2);
fa f2(x[2],y[2],z[2],s3,c3);
fa f3(x[3],y[3],z[3],s4,c4);

fa f4(c1,s2,cin,s[1],c5);
fa f5(c2,s3,c5,s[2],c6);
fa f6(c3,s4,c6,s[3],c7);
fa f7(c4,y3,c7,s[4],cout);
endmodule

module fa(input x,y,cin,output s,cout);
assign s=x^y^cin;
assign cout=(x&y)|(x&cin)|(cin&y);
endmodule



/*
csaa c1(x[],y[],z[],cin,s[],w1);
csaa c1(x[],y[],z[],cin,s[],w1);*/
