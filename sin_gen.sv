module sin_gen (
input logic clk,
input logic resetb,
input logic en,
input logic [7:0] period_sel,
output logic [8:0] sin_out
);


typedef enum logic [2:0]{
    IDL = b'3000 ;
    Q_1 = b'3001 ;
    Q_2 = b'3010 ;
    Q_3 = b'3011 ;
    Q_4 = b'3100 ;
}state;

state cs,ns;

logic [7:0] clk_count;
logic clk_flag;
logic new_clk;

// counter - antil period_sel
always_ff @ (posedge clk or negedge resetb)
    if(~resetb)
        clk_count <= 8'b0;

    else begin
        if(clk_count < period_sel)
        begin
            clk_count <= clk_count + 8'd1;
            clk_flag <= 1'b0;
        end//if
        else if(clk_count == period_sel)
        begin
                clk_count <= 8'b0;
                clk_flag <= 1'b1;
        end //else if
    end //else

// generat new clock
always_ff @ (posedge clk_flag or negedge resetb)
    if(~resetb)
        new_clk <= 1'b0;
    else
        new_clk <= ~new_clk;


// fsm
always_comb
    case(cs)begin
    IDL : ns = en ? Q_1 :IDL ;
    Q_1 : ns = (en && flag) ? Q_2  : Q_1 ;
    Q_2 : ns = (en && flag) ? Q_3  : Q_2 ;
    Q_3 : ns = (en && flag) ? Q_4  : Q_3 ;
    Q_4 : ns = (en && flag) ? Q_1  : Q_4 ;
    default ns = IDL;
    end 
    endcase



//counter
logic [7:0] counter_255;
always_ff @ (posedge new_clk or negedge resetb)
    if(~resetb)
        counter_255 <= 8'b0;
    else 
    begin
        if(en)
            begin
            case(cs)
                Q_1:begin
                if(counter < 8'd254)
                    counter_255 <= counter_255 + 8'd1;
                    flag <= 1'b0;
                if(counter == 8'd254)
                    counter_255 <= counter_255 + 8'd1;
                    flag <= 1'b1;
                end //Q1

                Q_2:begin
                if(counter > 8'd1)
                    counter_255 <= counter_255 - 8'd1;
                    flag <= 1'b0;
                if(counter == 8'd1)
                    counter_255 <= counter_255 - 8'd1;
                    flag <= 1'b1;
                end //Q2

                Q_3:begin
                if(counter < 8'd254)
                    counter_255 <= counter_255 + 8'd1;
                    flag <= 1'b0;
                if(counter == 8'd254)
                    counter_255 <= counter_255 + 8'd1;
                    flag <= 1'b1;
                end //Q3

                Q_4:begin
                if(counter > 8'd1)
                    counter_255 <= counter_255 - 8'd1;
                    flag <= 1'b0;
                if(counter == 8'd1)
                    counter_255 <= counter_255 - 8'd1;
                    flag <= 1'b1;
                end //Q4

            endcase
            end
        
        else// not en
        begin
            counter_255 <= 8'b0;
        end
    end

    always
    case(cs)
    IDL :   out = en ? Q_1 :IDL ;
    Q_1 :   out =  { 1'b0, counter_255 };
    Q_2 :   out =  { 1'b0, counter_255 };
    Q_3 :   out =  { 1'b1, counter_255 };
    Q_4 :   out =  { 1'b1, counter_255 };
    default out =  { 1'b0, counter_255 };
    end 
    endcase