///@ds_grid_find_last(id, value);
//finds last cell in grid of a certain value
function ds_grid_find_last(_id, _value){
	var i;
	var j;
	if !ds_exists(_id, ds_type_grid){
		return -1;
	}
	for (i = 0; i < ds_grid_width(_id); i++){
		for (j = 0; j < ds_grid_height(_id); j++){
			if _id [# i, j] == _value {
				var _arr;
				_arr[0] = i;
				_arr[1] = j;
			}
		}
	}
	if _arr != undefined {
		return _arr;
	}
	else {
		return undefined;
	}
}