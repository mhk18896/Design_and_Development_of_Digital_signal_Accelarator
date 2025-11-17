module reg_13 (
    input  logic clk,
    input  logic RST_n,
    input  logic [12:0] D,
    output logic [12:0] Q
);

always_ff @(posedge clk or negedge RST_n)begin
    if (!RST_n) begin
        Q<= 13'b0;
    end else begin
        Q<=D;
    end
end