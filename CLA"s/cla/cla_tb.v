module tb;
reg [31:0]x,y;
reg cin;
wire [31:0]s;
wire cout;

cla c1(x,y,cin,s,cout);
initial begin
$display("\t\t     Cin         X             Y     \t     Sum    Carry");
$monitor($time,"  %b %d    %d      %d     %d",cin,x,y,s,cout);
#0 x=32'd0;y=32'd0;cin=1'd0;
#10 x=32'd18;y=32'd13;cin=1'd0;
#10 x=32'd18;y=32'd14;cin=1'd1;
#10 x=32'd31;y=32'd8;cin=1'd1;
end
endmodule
