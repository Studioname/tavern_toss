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
			//no paint zone
			//we use min/max to make sure we don't overshoot the walls we've painted
			create_no_paint_zone(_grid, 3, _bar_start, 1, _bar_start+_bar_len, _buffer);
			//front bar
			ds_grid_set_region(_grid, _bar_start, _buffer, _bar_start+_bar_len, _buffer, global.collisions_data.bar.val);
			//rear bar
			ds_grid_set_region(_grid, _bar_start, _buffer-2, _bar_start+_bar_len, _buffer-2, global.collisions_data.rear_bar.val)
			break;
			
		//left side
		case 1: 
			create_no_paint_zone(_grid, 3, _buffer, _bar_start, _buffer, _bar_start+_bar_len);
			ds_grid_set_region(_grid, _buffer, _bar_start, _buffer, _bar_start+_bar_len, global.collisions_data.bar.val);
			ds_grid_set_region(_grid, _buffer -2, _bar_start, _buffer -2, _bar_start+_bar_len, global.collisions_data.rear_bar.val);
			break;
			
		//right side
		case 2:
			create_no_paint_zone(_grid, 3, ds_grid_size_buffered([_grid])-_buffer, _bar_start, ds_grid_size_buffered([_grid]) - _buffer, _bar_start+_bar_len);
			ds_grid_set_region(_grid, ds_grid_size_buffered([_grid]) - _buffer, _bar_start, ds_grid_size_buffered([_grid]) - _buffer, _bar_start+_bar_len, global.collisions_data.bar.val);
			ds_grid_set_region(_grid, ds_grid_size_buffered([_grid]) - _buffer +2, _bar_start, ds_grid_size_buffered([_grid]) - _buffer +2, _bar_start+_bar_len, global.collisions_data.rear_bar.val);
			break;
			
		//bottom
		case 3:
			create_no_paint_zone(_grid, 3, _bar_start, ds_grid_size_buffered([_grid])-_buffer, _bar_start+_bar_len, ds_grid_size_buffered([_grid]) - _buffer);
			ds_grid_set_region(_grid, _bar_start, ds_grid_size_buffered([_grid]) - _buffer, _bar_start+_bar_len, ds_grid_size_buffered([_grid]) - _buffer, global.collisions_data.bar.val);
			ds_grid_set_region(_grid, _bar_start, ds_grid_size_buffered([_grid]) - _buffer +2, _bar_start+_bar_len, ds_grid_size_buffered([_grid]) - _buffer +2, global.collisions_data.rear_bar.val);
			break;
	}
}