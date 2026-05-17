module tb;

logic clk;
logic rst;
logic d;
logic q;

dff dut(
.clk(clk),
.rst(rst),
.d(d),
.q(q)
);

initial
begin
clk = 0;

forever #5 clk = ~clk;
end


initial
begin

rst = 1;
d = 0;

#20;

rst = 0;

d = 1;
#10;

d = 0;
#10;

d = 1;
#10;

d = 0;
#10;

$finish;

end

initial
begin
$monitor("TIME=%0t clk=%0b rst=%0b d=%0b q=%0b",
$time,clk,rst,d,q);
end

endmodule
