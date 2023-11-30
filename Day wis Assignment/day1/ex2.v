module conv;
reg [3:0]a,b;
initial begin
assign a=4'b1110;
assign b=4'b1100;
$display("\n A in Hexadecimal is %h",a); 
$display("\n B in Hexadecimal is %h",b);
$display("\n A in Octal is %o",a); 
$display("\n B in Octal is %o",b);
$display("\n A in Decimal is %d",a);
$display("\n B in Decimal is %d",b);
$display("\n A in Binary is %b",a);
$display("\n B in Binary is %b",b);  
$finish;
end
endmodule
