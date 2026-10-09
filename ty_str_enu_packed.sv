module ty_str_enu_packed;

typedef enum bit [1:0] {BLACK , RED , GREEN , BLUE}color_e;
typedef struct packed {color_e color; logic [3:0] brightness;}pixel_t;

pixel_t [3:0] row;
pixel_t [1:0][3:0] img;
logic   [2:0][1:0][3:0] data;

initial begin

    img[0][0].color = BLACK;  img[0][0].brightness = 4'b0000;
    img[0][1].color = RED;    img[0][1].brightness = 4'b0001;
    img[0][2].color = GREEN;  img[0][2].brightness = 4'b0010;
    img[0][3].color = BLUE;   img[0][3].brightness = 4'b0011;

    $display("img[0][0] = %s, brightness = %0d", img[0][0].color.name(), img[0][0].brightness);
    $display("img[0][1] = %s, brightness = %0d", img[0][1].color.name(), img[0][1].brightness);
    $display("img[0][2] = %s, brightness = %0d", img[0][2].color.name(), img[0][2].brightness);
    $display("img[0][3] = %s, brightness = %0d", img[0][3].color.name(), img[0][3].brightness);

    $display("bit in the pixel_t = %0d", $bits(pixel_t));
    $display("bit in the row     = %0d", $bits(row));
    $display("bit in the img     = %0d", $bits(img));
    $display("bit in the data    = %0d", $bits(data));

data = 24'hA1B2C3;

    $display("data[2] = %0h", data[2]);
    $display("data[1][0] = %d", data[1][0]);
    $display("data[0][1] = %0h", data[0][1]);
    $display("data[2][1][3:2] = %0h", data[2][1][3:2]);

end

endmodule
