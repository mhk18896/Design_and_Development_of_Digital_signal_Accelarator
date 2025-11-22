module tdl_u #(
    parameter ORDER = 8,
    parameter DATA_WIDTH = 13
) (
input logic CLK,
input logic RST_n,
input logic VIN,
input logic signed [DATA_WIDTH-1:0] DIN,
output logic signed [DATA_WIDTH-1:0] tp[0:ORDER]
);
   //logic signed [DATA_WIDTH-1:0] TDL_reg [0:ORDER];
   //logic signed [DATA_WIDTH-1:0] X;
//assign rVIN = VIN;
   logic rVIN;

    always_ff@(posedge CLK or negedge RST_n) begin       
         if(!RST_n) begin
            for(int i=0; i<=ORDER; i++) begin
            tp[i]= '0; end    
            end
        else
            rVIN <= VIN;
            if(rVIN) begin
                tp[0]<= DIN;//input register 
                for (int i=1; i<=ORDER; i++) begin
                tp[i] <= tp[i-1];            
                end
            end
        end
        
endmodule