///@generate_bar()
function generate_bar(_grid){
	randomise();
	//we leave two buffer cells between bar and wall, one for path and one 
	//for the bar at back
	var _buffer = 3;
	var _bar_len = round(irandom_range((ds_grid_size_buffered([_grid]) -2 )/3, (ds_grid_size_buffered([_grid]) -2) * 0.8));
	//determine side
	var _side = irandom(3);
	random_get_seed();
	var _bar_start = irandom_range(5, ds_grid_size_buffered([_grid]) - _bar_len - 6);
	switch _side{
		//top side
		case 0: 
			//front bar
			ds_grid_set_region(_grid, _bar_start, _buffer, _bar_start+_bar_len, _buffer, global.collision_tile_elements.bar.val);
			//rear bar
			ds_grid_set_region(_grid, _bar_start, _buffer-2, _bar_start+_bar_len, _buffer-2, global.collision_tile_elements.rear_bar.val)
			break;
			
		//left side
		case 1: 
			ds_grid_set_region(_grid, _buffer, _bar_start, _buffer, _bar_start+_bar_len, global.collision_tile_elements.bar.val);
			ds_grid_set_region(_grid, _buffer -2, _bar_start, _buffer -2, _bar_start+_bar_len, global.collision_tile_elements.rear_bar.val);
			break;
			
		//right side
		case 2:
			ds_grid_set_region(_grid, ds_grid_size_buffered([_grid]) - _buffer, _bar_start, ds_grid_size_buffered([_grid]) - _buffer, _bar_start+_bar_len, global.collision_tile_elements.bar.val);
			ds_grid_set_region(_grid, ds_grid_size_buffered([_grid]) - _buffer +2, _bar_start, ds_grid_size_buffered([_grid]) - _buffer +2, _bar_start+_bar_len, global.collision_tile_elements.rear_bar.val);
			break;
			
		//bottom
		case 3:
			ds_grid_set_region(_grid, _bar_start, ds_grid_size_buffered([_grid]) - _buffer, _bar_start+_bar_len, ds_grid_size_buffered([_grid]) - _buffer, global.collision_tile_elements.bar.val);
			ds_grid_set_region(_grid, _bar_start, ds_grid_size_buffered([_grid]) - _buffer +2, _bar_start+_bar_len, ds_grid_size_buffered([_grid]) - _buffer +2, global.collision_tile_elements.rear_bar.val);
			break;
	}
}