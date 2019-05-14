/// create_param_ds_map()

var map = ds_map_create();
ds_map_add(map, "debugMode", def_debug);
ds_map_add(map, "testLevel", def_useTestLevel);
ds_map_add(map, "startingRoom", noone);

return map;
