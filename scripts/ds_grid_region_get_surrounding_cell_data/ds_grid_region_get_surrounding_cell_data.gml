///@ds_grid_region_get_surrounding_cell_data();
//we want to loop around the outskirts of a region and retrieve cell data
//from the tiles up to radius value
function ds_grid_region_get_surrounding_cell_data(_grid, _x1, _y1, _x2, _y2, _rad){
	if !ds_exists(_grid, ds_type_grid){
		return -1;	
	}
	var i, j, _arr, n = 0;
	for (i = _x1-_rad; i < _x2+_rad; i++){
		for (j = _y1-_rad; j < _y2+_rad; j++){
			//dont go outside grid
			if i < _rad or i > ds_grid_size([_grid])-_rad continue;
			if j < _rad or j > ds_grid_size([_grid])-_rad continue;
			if i < _x1 or i > _x2 or j < _y1 or j > _y2{
				_arr[n] = [i,j,_grid[#i,j]];
				n++;
			}
		}
	}
}

