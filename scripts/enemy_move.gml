///enemy_move(destX, destY, distance)

var destX = argument0;
var destY = argument1;
var maxDist = argument2;

var distToPoint = point_distance(x, y, destX, destY);

if (distToPoint > maxDist) {
    mp_potential_step_object(destX, destY, maxDist, par_wall);//move_towards_point(destX, destY, maxDist);
    return false;
} else {
    // show_message("X: " + string(x) + "#Y: " + string(y) + "##Dest. X: " + string(destX) + "#Dest. Y: " + string(destY) + "##Distance: " + string(distToPoint));
    speed = 0;
    x = destX;
    y = destY;
    return true;
}
