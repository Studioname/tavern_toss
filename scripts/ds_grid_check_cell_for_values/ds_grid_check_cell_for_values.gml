///@ds_grid_check_cell_for_values()
function ds_grid_check_cell_for_values(_grid, _x, _y, _values){
	if !ds_exists(_grid, ds_type_grid){
		return -1;
	}
	var i;
	for (i=0; i < array_length(_values);i++){
		if _grid [#_x, _y] == _values[i]{
			return _values[i];
		}
	}
	return false;
}