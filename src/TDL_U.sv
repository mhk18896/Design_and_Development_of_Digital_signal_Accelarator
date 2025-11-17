module tdl_u (
input logic CLK,
input logic RST_n,
input logic VIN,
input logic signed [12:0] DIN,
output logic signed [12:0] tp[0:7]
);

    localparam DATA_WIDTH = 13;
    localparam TAPS= 8;
    logic signed [DATA_WIDTH-1:0] TDL_reg [0:TAPS-1];


    always_ff@(posedge CLK or negedge RST_n) begin
        if(!RST_n) begin
            for(int i=0; i<TAPS; i++) begin
            TDL_reg[i]= '0; end    
        end else if (VIN) begin
            TDL_reg[0] <= DIN;
            for (int i=1; i<TAPS; i++) begin
            TDL_reg[i] <= TDL_reg[i-1];
            end   
        end
    end
    generate 
        for (int i=0; i<TAPS; i++) begin :TAP_ASSIGN
            assign tp[i] = TDL_reg[i];
        end
    endgenerate



endmodule