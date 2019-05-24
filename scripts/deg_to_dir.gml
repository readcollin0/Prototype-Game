/// deg_to_dir(angle)
// Converts degrees to a dir (1,2,3,4)

var deg = argument0;

if (deg >= 315) {
    return 2;
} else if (deg > 225) {
    return 3;
} else if (deg >= 135) {
    return 4;
} else if (deg > 45) {
    return 1;
} else {
    return 2;
}
