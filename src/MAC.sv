module mac_u #(
    parameter DATA_WIDTH = 13,
    parameter TAPS = 8
) (
input logic CLK,
input logic RST_n
input logic signed [DATA_WIDTH-1:0] tp_w[0:TAPS+1],
input logic signed [DATA_WIDTH-1:0] H[0:TAPS+1],
output logic signed [DATA_WIDTH-1:0] DOUT,
output logic VOUT
);
local parameter ACC_WIDTH = DATA_WIDTH*2 + $clog2(TAPS);
logic signed [ACC_WIDTH-1:0] Y_acc;
logic signed [DATA_WIDTH-1:0] Y_trunc;

always_comb@() begin

    for(i=0; i<TAPS; i++) begin
        Y_acc = Y_acc + tp_w[i] * H[i];
        Y_trunc = Y_acc[DATA_WIDTH-1:ACC_WIDTH-DATA_WIDTH];
    end    
end
always_ff@(posedge CLK or negedge RST_n) begin
    if(!RST_n) begin
        DOUT <- '0;
        VOUT <= 1'b0;
     end else begin
        DOUT <= Y_trunc;
        VOUT <= 1'b1;
     end
end
endmodule 