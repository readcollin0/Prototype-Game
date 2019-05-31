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
    
    case "-p":
    case "--pos":
        if (array_length_1d(arg) == 3) {
            if (valid_number(arg[1], false) && valid_number(arg[2], false)) {
                ds_map_replace(param_map, "startingXPos", real(arg[1]));
                ds_map_replace(param_map, "startingYPos", real(arg[2]));
            } else {
                show_error("Invalid numbers used for starting positions!", true);
            }
        } else {
            show_error("Invalid parameter setup!#Correct: --pos <x> <y>", true);
        }
        break;
    default:
        break;
}
