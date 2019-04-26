///array_add(arr, *args)

var arr = argument0;
var baseIndex = array_length_1d(arr);

for (var i=0; i<argument_count-1; i++) {
    arr[baseIndex + i] = argument[1 + i];
}
