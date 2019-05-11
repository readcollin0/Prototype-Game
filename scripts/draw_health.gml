///draw_health()

var IMAGE_SIZE = 3 * sprite_get_width(spr_heart);
var X_LOC_START = 5;
var Y_LOC = 5;
var X_LOC_OFFSET = IMAGE_SIZE + 6;

var x_location = X_LOC_START;

if (hp < 0) hp = 0;

for (var i = 1; i <= hp; i++) {
    draw_sprite_stretched(spr_heart, 0, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}

var partialHP = hp % 1;
if (partialHP != 0) {
    if (partialHP > .75) {
        draw_sprite_stretched(spr_heart, 0, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    } else if (partialHP > .5) {
        draw_sprite_stretched(spr_heart, 1, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    } else if (partialHP > .25) {
        draw_sprite_stretched(spr_heart, 2, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    } else {
        draw_sprite_stretched(spr_heart, 3, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    }
    x_location += X_LOC_OFFSET;
}

var heartsDrawn = (x_location - X_LOC_START) / X_LOC_OFFSET;
for (var i = heartsDrawn; i < MAX_HEALTH; i++) {
    draw_sprite_stretched(spr_heart, 4, x_location, Y_LOC, IMAGE_SIZE, IMAGE_SIZE);
    x_location += X_LOC_OFFSET;
}
