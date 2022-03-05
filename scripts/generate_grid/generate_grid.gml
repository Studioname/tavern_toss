///@generate grid
//arg0 = global._grid eg collisions;
//arg1 = global.layer_to_create tileset name;

function generate_grid(arg0, arg1){
	//create global global.tile_layer and tilemap
	//set params
	var _grid_w = ds_grid_width(arg0)-1;
	var _grid_h = ds_grid_height(arg0)-1;
	//we set the buffer cells to VOID for collision purposes
	ds_grid_set_region(arg0,0,0,_grid_w, _grid_h, VOID);
	//set cells to default value
	ds_grid_set_region(arg0,2,2,_grid_w-2, _grid_h-2, noone);
	//run the terrain generator
	generate_terrain(arg0);
	//paint tiles
	paint_tiles(arg0, arg1);
}