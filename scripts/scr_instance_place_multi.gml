///scr_instance_place_multi(x, y, obj)

var px = x;
var py = y;
x = argument0;
y = argument1;
var result = noone;
with argument2 {
    if place_meeting(x, y, other) {
        result[array_length_1d(result)] = id;
    }
}
x = px;
y = py;
return result;
