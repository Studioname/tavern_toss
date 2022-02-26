///@pickup()
function pickup(){
	var _cur_x = x div CELL_SIZE;
	var _cur_y = y div CELL_SIZE;
	//add resources from current tile to resource tracker
	
	//remove object
	global.objects [# _cur_x, _cur_y] = noone;
	//unpaint tiles
	//tilemap_set_at_pixel(global.objects_tilemap,0,x,y);
}