//sr latch nor gates
/*module ex9(input s,r, inout q,qb);
not(q,qb);
xor(q,r,qb);
xor(qb,s,q);
endmodule


module tb;
reg s,r;
wire q,qb;
ex9 i1(s,r,q,qb);
initial begin
q=0;
$display("\t\t      SR    Q  Qb");
$monitor($time,"  %b%b    %b  %b",s,r,q,qb);
#0 s=0;r=0;
#2 s=0;r=1;
#2 s=1;r=0;
#2 s=1;r=1;
end
endmodule*/
