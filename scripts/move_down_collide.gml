///move_down_collide(distance, collide_with)

var distance = argument0;
var collide_with = argument1;

var newY = y + distance;
if (collide_with == noone) {
    if (!place_free(x, y)) {
        y += sign(distance);
    } else if (!place_free(x, newY)) {
        y = newY;
        return false;
    } else {
        newY = y;
        while (!place_free(x, newY)) {
            newY += sign(distance);
        }
        y = newY - sign(distance);
        return true;
    }
} else {
    if (instance_place(x, y, collide_with)) {
        y += sign(distance);
    } else if (instance_place(x, newY, collide_with) == noone) {
        y = newY;
        return false;
    } else {
        newY = y;
        while (instance_place(x, newY, collide_with) == noone) {
            newY += sign(distance);
        }
        y = newY - sign(distance);
        return true;
    }
}
