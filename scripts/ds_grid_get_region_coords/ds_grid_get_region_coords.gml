///@ds_grid_get_region();
//returns an array of coordinates for a specified region
function ds_grid_get_region_coords(_grid, _x1, _y1, _x2, _y2){
	var i, j, _arr, n = 0;
	for (i = _x1; i < _x2; i++){
		for (j = _y1; j < _y2; j++){
			_arr[n] = [i,j];
			n++;
		}
	}
	return _arr;
}