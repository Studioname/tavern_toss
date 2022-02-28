///@generate grid
//arg0 = global._grid eg collisions;
//arg1 = global.layer_to_create tileset name;

function generate_grid(arg0, arg1){
	//create global global.tile_layer and tilemap
	//set params
	var _grid_w = ds_grid_width(arg0)-1;
	var _grid_h = ds_grid_height(arg0)-1;
	//set each tile to default
	ds_grid_set_region(arg0,0,0,_grid_w,_grid_h,noone);
	//we set the buffer cells to VOID for collision purposes
	ds_grid_set_region(arg0,0,0,_grid_w, 0, VOID);
	ds_grid_set_region(arg0,0,_grid_h,_grid_w, _grid_h, VOID);
	ds_grid_set_region(arg0,0,0,0,_grid_h, VOID);
	ds_grid_set_region(arg0,_grid_w,0,_grid_w,_grid_h, VOID);

	//run the terrain generator
	generate_terrain(arg0);
	//paint tiles
	paint_tiles(arg0, arg1);
}