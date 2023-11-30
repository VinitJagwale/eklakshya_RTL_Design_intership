//generate clk and print five product company name on posedge clk
module ex14;
reg clk=0;
always #5 clk=!clk;
always@(posedge clk)
begin
//$monitor( $time," a, b, c, d, e");
case($time)
8'd05:$monitor( $time," Intel");
8'd15:$monitor( $time," AMD");
8'd25:$monitor( $time," APPLE");
8'd35:$monitor( $time," LENOVO");
8'd45:$monitor( $time," HP");
endcase
end
initial begin
# 50 $finish;
end
endmodule





