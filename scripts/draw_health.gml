///draw_hp()

var IMAGE_SIZE = 3 * sprite_get_width(spr_heart);
var X_LOC_START = 5// + view_xview[0];
var Y_LOC = 5// + view_yview[0];
var X_LOC_OFFSET = IMAGE_SIZE + 6;

var x_location = X_LOC_START;

for (var i = 0; i < floor(hp); i++) {
    draw_sprite_stretched(spr_heart, 0, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}

var partialHP = hp % 1;
if (partialHP > .25) {
    if (partialHP >= .75) {
        draw_sprite_stretched(spr_heart, 1, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    } else if (partialHP >= .5) {
        draw_sprite_stretched(spr_heart, 2, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    } else {
        draw_sprite_stretched(spr_heart, 3, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    }
    x_location += X_LOC_OFFSET;
}

for (var i = ceil(hp - .25); i < MAX_HEALTH; i++) {
    draw_sprite_stretched(spr_heart, 4, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}
