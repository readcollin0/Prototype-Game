/// parse_program_arg(param_map, argument)

var param_map = argument0; 
var arg = argument1; 

switch (arg[0]) {
    case "--debug":
        ds_map_replace(param_map, "debugMode", true);
        break;
        
    case "--testLevel":
        ds_map_replace(param_map, "testLevel", true);
        break;
        
    case "-l":
    case "--level":
        if (array_length_1d(arg) == 2) {
            ds_map_replace(param_map, "startingRoom", arg[1]);
        }
        break;
        
    default:
        break;
}
