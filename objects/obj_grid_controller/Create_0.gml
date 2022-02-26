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
global.floor_layer = noone;
global.floor_tilemap = noone;
global.collisions = GRID;
global.collisions_layer = noone;
global.collisions_tilemap = noone;
global.objects = GRID;
global.objects_layer = noone;
global.objects_tilemap = noone;
//generate grids
generate_grid(global.floor, [global.floor_layer, -1], [global.floor_tilemap, t_floor]);
generate_grid(global.collisions, [global.collisions_layer, -1], [global.collisions_tilemap, t_collisions]);
generate_grid(global.objects, [global.objects_layer, -1], [global.objects_tilemap, t_objects]);

//create trapdoor for escape
while !ds_grid_find(global.objects, TRAPDOOR){
	var _random_x = irandom_range(2, ds_grid_width(global.objects)-3);
	var _random_y = irandom_range(2, ds_grid_height(global.objects)-3);
	if _random_x != floor(ds_grid_width(global.objects)/2) and _random_y != 1 {
		global.objects [# _random_x, _random_y] = TRAPDOOR;
		break;
	}
}