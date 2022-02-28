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
global.floor_layer = layer_create(-1);
global.floor_tilemap = layer_tilemap_create(global.floor_layer, 0, 0, t_floor, room_width, room_height);
global.collisions = GRID;
global.collisions_layer = layer_create(-2);
global.collisions_tilemap = layer_tilemap_create(global.collisions_layer, 0, 0, t_collisions, room_width, room_height);
global.objects = GRID;
global.objects_layer = layer_create(-3);
global.objects_tilemap = layer_tilemap_create(global.objects_layer, 0, 0, t_objects, room_width, room_height);
//generate grids
generate_grid(global.floor, t_floor);
generate_grid(global.collisions, t_collisions);
generate_grid(global.objects, t_objects);
generate_bar(global.collisions);
//paint tiles
paint_tiles(global.collisions, global.collisions_tilemap);
//create trapdoor for escape
while !ds_grid_find(global.objects, TRAPDOOR){
	var _random_x = irandom_range(2, ds_grid_size_buffered([global.objects])-1);
	var _random_y = irandom_range(2, ds_grid_size_buffered([global.objects])-1);
	if _random_x != floor(ds_grid_width(global.objects)/2) and _random_y != 1 {
		global.objects [# _random_x, _random_y] = TRAPDOOR;
		break;
	}
}