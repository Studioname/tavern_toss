/// @obj_controller

//create global global.substrates layer and tilemap
global.substrates_layer = layer_create(-1);
global.substrates_tilemap = layer_tilemap_create(global.substrates_layer, 0, 0, t_substrates, room_width, room_height);
//create global global.minerals layer and tilemap
global.minerals_layer = layer_create(-2);
global.minerals_tilemap = layer_tilemap_create(global.minerals_layer, 0, 0, t_minerals, room_width, room_height);
//global.substrates and global.minerals grids
global.substrates = GRID;
global.minerals = GRID;
global.objects = GRID;
//set each tile to default
ds_grid_set_region(global.substrates, 0, 0, GRID_W(global.substrates), GRID_H(global.substrates), noone);
ds_grid_set_region(global.minerals, 0, 0, GRID_W(global.minerals), GRID_H(global.minerals), noone);
ds_grid_set_region(global.objects, 0, 0, GRID_W(global.objects), GRID_H(global.objects), noone);

//we set the outer cells of 'objects' to VOID for collision purposes
var _grid_w = ds_grid_width(global.objects) -1;
var _grid_h = ds_grid_height(global.objects) -1;
ds_grid_set_region(global.objects,0,0,_grid_w, 0, VOID);
ds_grid_set_region(global.objects,0,_grid_h,_grid_w, _grid_h, VOID);
ds_grid_set_region(global.objects,0,0,0,_grid_h, VOID);
ds_grid_set_region(global.objects,_grid_w,0,_grid_w,_grid_h, VOID);

//run the substrate generator
generate_terrain(global.substrates);
//generate minerals depending on substrate
generate_terrain(global.minerals);
//paint tiles
paint_tiles(global.substrates, global.substrates_tilemap);
paint_tiles(global.minerals, global.minerals_tilemap);
//choose a random grid cell for treasure box

while !ds_grid_find(global.objects, TREASURE){
	var _random_x = irandom_range(2, ds_grid_width(global.objects)-3);
	var _random_y = irandom_range(2, ds_grid_height(global.objects)-3);
	if _random_x != floor(ds_grid_width(global.objects)/2) and _random_y != 1 {
		global.objects [# _random_x, _random_y] = TREASURE;
		break;
	}
}