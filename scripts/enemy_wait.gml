///enemy_wait(time)

var time = argument0;

if (complete) {
    waitTime = time * room_speed;
} else {
    waitTime--;
    if (waitTime <= 0) {
        return true;
    }
}

return false;
