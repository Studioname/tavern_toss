///@ds_grid_get_adjacent_cell_data()
function ds_grid_get_adjacent_cell_data(_grid, _x, _y, _4_or_8_directions){
	if !ds_exists(_grid, ds_type_grid){
		return -1;
	}
	var _cell_above = _grid [# _x, _y-1];
	var _cell_right = _grid [# _x+1, _y];
	var _cell_left = _grid[# _x-1, _y];
	var _cell_below = _grid [# _x, _y+1];
	
	switch _4_or_8_directions{
		case 4: 
		return [_cell_above, _cell_right, _cell_left,  _cell_below];
		case 8:
			var _cell_above_left = _grid [# _x-1, _y-1];
			var _cell_above_right = _grid [# _x+1, _y-1];
			var _cell_below_left = _grid [# _x-1, _y+1];
			var _cell_below_right = _grid [# _x+1, _y+1];
			return [_cell_above, _cell_right, _cell_left,  _cell_below, _cell_above_left, _cell_above_right, _cell_below_left, _cell_below_right];
	}
}