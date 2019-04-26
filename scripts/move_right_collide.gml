///move_down_collide(distance, collide_with)

var distance = argument0;
var collide_with = argument1;

var newX = x + distance;

if (instance_place(x, y, collide_with)) {
    x += sign(distance);
} else if (instance_place(newX, y, collide_with) == noone) {
    x = newX;
    return false;
} else {
    newX = x;
    while (instance_place(newX, y, collide_with) == noone) {
        newX += sign(distance);
    }
    x = newX - sign(distance);   
    return true;
}
