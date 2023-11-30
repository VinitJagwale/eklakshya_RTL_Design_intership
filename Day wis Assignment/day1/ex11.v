module conv;
reg [4:0]a,b,c;
initial begin
assign a=5'b10101;
assign b=5'b10111;
assign c=5'b10011;
$display("\n A in Hexadecimal is %h",a); 
$display("\n B in Hexadecimal is %h",b);
$display("\n C in Hexadecimal is %h",c);
$display("\n A in Octal is %o",a); 
$display("\n B in Octal is %o",b);
$display("\n C in Octal is %o",c);
$display("\n A in Decimal is %d",a);
$display("\n B in Decimal is %d",b); 
$display("\n C in Decimal is %d",c); 
$finish;
end
endmodule
