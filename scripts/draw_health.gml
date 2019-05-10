///draw_health()

var IMAGE_SIZE = 3 * sprite_get_width(spr_heart);
var X_LOC_START = 5// + view_xview[0];
var Y_LOC = 5// + view_yview[0];
var X_LOC_OFFSET = IMAGE_SIZE + 6;

var x_location = X_LOC_START;

for (var i = 0; i < floor(health); i++) {
    draw_sprite_stretched(spr_heart, 0, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}

if (health % 1 >= .5) {
    draw_sprite_stretched(spr_heart, 1, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}

for (var i = ceil(health); i < MAX_HEALTH; i++) {
    draw_sprite_stretched(spr_heart, 2, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}
