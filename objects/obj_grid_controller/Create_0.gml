/// @obj_controller

//some of our collision tiles need to be placed next to other collision tiles of
//the same type. For instance we want bar tiles to be connected to bar tiles
//we therefore need a system of ensuring that when our tiles make sense and
//contribute towards the gameplay. For instance the bar could be a number of different
//shapes, one of which might be a medium sized line of cells running 1 cell away from
//the room edge, which is a pain in the arse to get stuck behind. Round tables and
//rectangular ones might be drawn using ds_grid_set region for instance

//after this we get the paint_tiles script to work

//initialise stuff
global.floor = GRID
global.floor_layer = layer_create(15999);
global.floor_tilemap = layer_tilemap_create(global.floor_layer, 0, 0, t_floor, room_width, room_height);
global.collisions = GRID;
global.collisions_layer = layer_create(15998);
global.collisions_tilemap = layer_tilemap_create(global.collisions_layer, 0, 0, t_collisions, room_width, room_height);
global.objects = GRID;
global.objects_layer = layer_create(15997);
global.objects_tilemap = layer_tilemap_create(global.objects_layer, 0, 0, t_objects, room_width, room_height);
//generate grids
generate_grid(global.floor, t_floor);
generate_grid(global.collisions, t_collisions);
generate_grid(global.objects, t_objects);
generate_bar(global.collisions);
generate_walls(global.collisions);
generate_exit_door(global.collisions);
generate_banquet_tables(global.collisions);
generate_collision_objects_data(global.collisions, ROOM_OBJECTS);
generate_stools(global.collisions);
generate_escape_hatch(global.collisions);
generate_collision_objects_data(global.collisions, WALL_OBJECTS);
generate_filler_collision_data(global.collisions);
//paint tiles
paint_tiles(global.collisions, global.collisions_tilemap);
paint_tiles(global.floor, global.floor_tilemap);