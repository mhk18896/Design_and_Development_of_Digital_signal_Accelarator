module mac_u #(
    parameter DATA_WIDTH = 13,
    parameter TAPS = 8
) (
input logic CLK,
input logic signed [DATA_WIDTH-1:0] tp_w[0:TAPS-1],
input logic signed [DATA_WIDTH-1:0] H[0:TAPS-1],
output logic signed [DATA_WIDTH-1:0] DOUT,
output logic VOUT

);


always_comb@(posedge ) begin

    
end













endmodule 