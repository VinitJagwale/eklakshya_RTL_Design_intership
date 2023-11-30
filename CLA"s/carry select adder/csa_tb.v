module tb;
reg [31:0]x,y;
reg cin;
wire [31:0]s;
wire cout;

csa c1(x,y,cin,s,cout);
initial begin
$display("\n\n\t\t\t\t<<  Start Simulation  >>");
$display("\t\t      Cin  \t   X   \t   Y        Sum         Carry ");
$monitor($time,"  %b     %d    %d      %d      %b",cin,x,y,s,cout);
#10 x=32'd11;y=32'd15;cin=1'b0;
#10 x=32'd56;y=32'd66;cin=1'b1;
#10 x=32'd6;y=32'd16;cin=1'b0;
end
endmodule
