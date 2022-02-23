///@pickup()
function pickup(){
	var _cur_x = x div CELL_SIZE;
	var _cur_y = y div CELL_SIZE;
	//add resources from current tile to resource tracker
	switch global.objects [# _cur_x, _cur_y]{
		//we add the amount of gold in the switch statement, eliminating need
		//for struct
		case POUCH: 
			global.loot += 20;
			//we then add the loot type to a struct to display at end of level
			global.looted_items.pouch += 1;
			break;
	}
	//remove object
	global.objects [# _cur_x, _cur_y] = noone;
	//unpaint tiles
	tilemap_set_at_pixel(global.objects_tilemap,0,x,y);
}