/// @obj_controller

//create global global.substrates layer and tilemap
global.floor_layer = layer_create(-1);
global.floor_tilemap = layer_tilemap_create(global.floor_layer, 0, 0, t_substrates, room_width, room_height);
//create global global.collision layer and tilemap
global.collision_layer = layer_create(-2);
global.collision_tilemap = layer_tilemap_create(global.collision_layer, 0, 0, t_collision, room_width, room_height);
//global.substrates and global.collision grids
global.floor = GRID;
global.collision = GRID;
global.objects = GRID;
//set each tile to default
//ds_grid_set_region(global.substrates, 0, 0, GRID_W(global.substrates), GRID_H(global.substrates), noone);
ds_grid_set_region(global.collision, 0, 0, GRID_W(global.collision), GRID_H(global.collision), noone);
ds_grid_set_region(global.objects, 0, 0, GRID_W(global.objects), GRID_H(global.objects), noone);

//we set the outer cells of 'objects' to VOID for collision purposes
var _grid_w = ds_grid_width(global.objects) -1;
var _grid_h = ds_grid_height(global.objects) -1;
ds_grid_set_region(global.collision,0,0,_grid_w, 0, VOID);
ds_grid_set_region(global.collision,0,_grid_h,_grid_w, _grid_h, VOID);
ds_grid_set_region(global.collision,0,0,0,_grid_h, VOID);
ds_grid_set_region(global.collision,_grid_w,0,_grid_w,_grid_h, VOID);

//run the substrate generator
generate_terrain(global.floor);
//generate collision depending on substrate
generate_terrain(global.collision);
//paint tiles
//paint_tiles(global.substrates, global.substrates_tilemap);
paint_tiles(global.collision, global.collision_tilemap);
//choose a random grid cell for trapdoor

while !ds_grid_find(global.objects, TRAPDOOR){
	var _random_x = irandom_range(2, ds_grid_width(global.objects)-3);
	var _random_y = irandom_range(2, ds_grid_height(global.objects)-3);
	if _random_x != floor(ds_grid_width(global.objects)/2) and _random_y != 1 {
		global.objects [# _random_x, _random_y] = TRAPDOOR;
		break;
	}
}