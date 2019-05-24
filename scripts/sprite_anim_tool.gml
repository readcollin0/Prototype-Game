/// sprite_anim_tool(min_index, max_index, anim_frames)

var min_index = argument0;
var max_index = argument1;
var anim_frames = argument2;

if (image_index < min_index || image_index > max_index) {
    image_index = min_index;
    anim_timer = anim_frames;
}

anim_timer--;

if (anim_timer <= 0) {
    image_index++;
    if (image_index > max_index) {
        image_index = min_index;
    }
    anim_timer = anim_frames;
}
