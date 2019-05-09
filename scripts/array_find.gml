///array_find(array, element);

var size = array_length_1d(argument0);

for (var i = 0; i < size; i++) {
    if (argument0[i] == argument1) {
        return i;
    }
}

return noone;
