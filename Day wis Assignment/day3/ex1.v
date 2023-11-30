//design AND OR XOR XNOR using only NAND GATES
module ex1(input a,b,c,output [3:0]y);
wire i,j,k,l,n,m,o,p,q,r,s;

//and
nand(i,a,b,c);
nand(y[0],i,i);

//or
nand(j,a,a);
nand(k,b,b);
nand(l,c,c);
nand(y[1],i,k,l);

//xor
nand(n,a,b);
nand(m,a,n);
nand(o,b,n);
nand(s,o,m);
nand(p,s,c);
nand(q,s,p);
nand(r,p,c);
nand(y[2],r,q);

//xnor
nand(y[3],y[2],y[2]);
endmodule

module tb;
reg a,b,c;
wire [3:0]y;
ex1 i1(a,b,c,y);
initial begin
$monitor($time," A=%b B=%b C=%b \n\tAND=%b OR=%b XOR=%b XNOR=%b ",a,b,c,y[0],y[1],y[2],y[3]);
a=1;b=0;c=1;
#10 a=1;b=1;c=1;
#10 a=1;b=1;c=0;
end
endmodule
