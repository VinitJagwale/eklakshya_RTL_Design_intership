module tb;
reg [7:0]x,y,z;
reg cin;
wire [7:0]s;
wire cout;

csaa_8bit dut(x,y,z,cin,s,cout);
initial begin
$display("\t\t\t x       y        z         s          cout");
$monitor($time," %b      %b       %b       %b      %b",x,y,z,s,cout);
#0 x=8'b00100011;y=8'b01011101;z=8'b00101011;cin=1'b0;
#10 x=8'b00100011;y=8'b01011101;z=8'b00101011;cin=1'b0;
end
endmodule
