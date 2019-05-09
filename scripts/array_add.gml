///array_add(arr, args)

var arr = argument[0];
var baseIndex = array_length_1d(arr);

for (var i=1; i<argument_count; i++) {
    arr[baseIndex + i - 1] = argument[i];
}

return arr;
