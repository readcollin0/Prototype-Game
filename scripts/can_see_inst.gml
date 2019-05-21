///can_see_inst(inst, angle, range, fov)

var inst = argument0;
var viewAngle = argument1;
var range = argument2;
var fov = argument3;

var dist = point_distance(x, y, inst.x, inst.y);
if (dist > range) {
    return false;
}

var angleToInst = point_direction(x, y, inst.x, inst.y);
var angleDif = angle_difference(viewAngle, angleToInst);
var absDif = abs(angleDif);
var testFov = fov / 2;

if (abs(angle_difference(viewAngle, angleToInst)) > fov / 2) {
    return false;
}

if (collision_line(x, y, inst.x, inst.y, par_wallBlock, false, true) != noone) {
    return false;
}

return true;
