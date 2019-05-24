/// fade(fadeOutRate, waitFrames, fadeInRate)

if (global.doFade) {
    return false;
} else {
    global.doFade = true;
    global.fadeOutRate = argument0;
    global.waitFrames = argument1;
    global.fadeInRate = argument2;
    
    return true;
}

