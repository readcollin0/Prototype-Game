///setupFireball(fb)

var fb = argument0;


// Basic starting stats
fb.speed = random_range(7, 9); // SHARD_SPEED

fb.image_xscale = SHARD_SCALE;
fb.image_yscale = SHARD_SCALE;


// Each one is going in a random direction
var dir = random(360);
fb.direction = dir;
fb.image_angle = dir;


// All the fade settings
if (SHARD_SHRINK_SPEED != noone) {
    fb.SHRINK = true;
    fb.SHRINK_SPEED = SHARD_SHRINK_SPEED;
}

if (SHARD_FADE_SPEED != noone) {
    fb.FADE = true;
    fb.FADE_SPEED = SHARD_FADE_SPEED;
}

if (SHARD_SLOW_SPEED != noone) {
    fb.SLOW = true;
    fb.SLOW_SPEED = SHARD_SLOW_SPEED;
}
