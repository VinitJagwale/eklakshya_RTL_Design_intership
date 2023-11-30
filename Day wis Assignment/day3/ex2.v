//full adder using NAND gate
module ex2(input a,b,c ,output s,cout);
wire w1,w2,w3,w4,w5,w6,w7;

//sum
nand(w1,a,b);
nand(w2,a,w1);
nand(w3,b,w1);
nand(w4,w2,w3);
nand(w5,w4,c);
nand(w6,w4,w5);
nand(w7,w5,c);
nand(s,w6,w7);

//carry
nand(cout,w5,w1);

endmodule


module tb;
reg a,b,c;
wire s,cout;
ex2 i1(a,b,c,s,cout);
initial begin
$display(" \t\t      abc  sum  carry ");
$monitor($time,"  %b%b%b   %b    %b",a,b,c,s,cout);
#0 a=0;b=0;c=0; 
#10 a=0;b=0;c=1; 
#10 a=0;b=1;c=0; 
#10 a=0;b=1;c=1; 
#10 a=1;b=0;c=0; 
#10 a=1;b=0;c=1; 
#10 a=1;b=1;c=0; 
#10 a=1;b=1;c=1; 
end
endmodule
