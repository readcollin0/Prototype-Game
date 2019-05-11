///setupFireball(fb)

var fb = argument0;


// Basic starting stats
fb.startSpeed = SHARD_SPEED_MAX;
fb.speed = random_range(SHARD_SPEED_MIN, SHARD_SPEED_MAX); // SHARD_SPEED
fb.damage = SHARD_DAMAGE
fb.DAMAGE_DROP = SHARD_DAMAGE_DROP;

fb.image_xscale = SHARD_SCALE;
fb.image_yscale = SHARD_SCALE;


// Each one is going in a random direction
var dir = random(360);
fb.direction = dir;
fb.image_angle = dir;


// All the fade settings
fb.SHRINK_SPEED = SHARD_SHRINK_SPEED;
fb.FADE_SPEED = SHARD_FADE_SPEED;
fb.SLOW_SPEED = SHARD_SLOW_SPEED;
