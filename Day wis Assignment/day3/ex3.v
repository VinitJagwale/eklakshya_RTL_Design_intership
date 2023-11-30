//half adder using nor gate
module ex3(input a,b,output s,cout);
wire w1,w2,w3,w4;

//carry
nor(w1,a,b);
nor(w2,a,a);
nor(w3,b,b);
nor(cout,w2,w3);

//sum
nor(s,w1,cout);
endmodule

module tb;
reg a,b;
wire s,cout;
ex3 i1(a,b,s,cout);
initial begin
$display(" \t\t      ab  sum  carry ");
$monitor($time,"  %b%b   %b    %b",a,b,s,cout);
 #0 a=0;b=0; 
#10 a=0;b=1; 
#10 a=1;b=0; 
#10 a=1;b=1;

end
endmodule
