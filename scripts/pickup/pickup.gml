///@pickup()
function pickup(_grid){
	var _cur_x = x div CELL_SIZE;
	var _cur_y = y div CELL_SIZE;
	//add resources from current tile to resource tracker
	
	//remove object
	if _grid[# _cur_x, _cur_y] != noone{
	//global.gold += _grid [# _cur_x, _cur_y].gold;
	}
	global.objects [# _cur_x, _cur_y] = noone;
	//instance_destroy(...grid contains instance id)
	//unpaint tiles
	//tilemap_set_at_pixel(global.objects_tilemap,0,x,y);
	
}