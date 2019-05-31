/// draw_health_bar(x, y, hp, max_hp, xSize, ySize, alpha, draw_if_full)

var viewX = view_xview[0];
var viewY = view_yview[0];

var xPos = argument0;// - viewX;
var yPos = argument1;// - viewY;
var hp = argument2;
var max_hp = argument3;
var x_size = argument4;
var y_size = argument5;
var alpha = argument6;
var draw_if_full = argument7;

xPos -= (x_size / 2);

if (!draw_if_full && hp == max_hp) {
    exit;
}

if (hp < 0) hp = 0;
var hp_perc = hp / max_hp;
var barXSize = x_size * hp_perc;

if (hp_perc > .5) {
    var c = c_green;
} else if (hp_perc > .25) {
    var c = c_yellow;
} else {
    var c = c_red;
}

draw_set_alpha(alpha);
draw_rectangle_colour(xPos, yPos, xPos + barXSize, yPos + y_size, c, c, c, c, false);
draw_rectangle_colour(xPos + barXSize, yPos, xPos + x_size - 1, yPos + y_size,
                        c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

