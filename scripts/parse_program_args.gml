/// parse_program_args()

var numParams = parameter_count();

global.params = noone;
global.settings = create_param_ds_map();

for (var i = 0; i < numParams; i++) {
    global.params[i] = parameter_string(i);
}

for (var i = 1; i < numParams; i++) {
    var arg = noone;
    arg[0] = global.params[i];
    while (i < numParams - 1 && string_char_at(global.params[i + 1], 1) != "-") {
        arg = array_add(arg, global.params[1 + i++]);
    }
    parse_program_arg(global.settings, arg);
}
