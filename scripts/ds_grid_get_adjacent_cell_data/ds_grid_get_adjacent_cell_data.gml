///@ds_grid_get_adjacent_cell_data()
function ds_grid_get_adjacent_cell_data(_grid, _x, _y){
	if !ds_exists(_grid, ds_type_grid){
		return -1;
	}
	var _cell_above = _grid [# _x, _y-1];
	var _cell_right = _grid [# _x+1, _y];
	var _cell_left = _grid[# _x-1, _y];
	var _cell_below = _grid [# _x, _y+1];
	
	var _cell_above_left = _grid [# _x-1, _y-1];
	var _cell_above_right = _grid [# _x+1, _y-1];
	var _cell_below_left = _grid [# _x-1, _y+1];
	var _cell_below_right = _grid [# _x+1, _y+1];
	var _arr = [_cell_above, _cell_right, _cell_left,  _cell_below, _cell_above_left, _cell_above_right, _cell_below_left, _cell_below_right]

	return _arr;
}