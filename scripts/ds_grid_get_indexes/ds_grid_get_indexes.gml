///@ds_grid_get_indexes(id, value);
function ds_grid_get_indexes(_id, _value){
	var i;
	var j;
	var k = 0;
	var _arr;
	if !ds_exists(_id, ds_type_grid){
		return -1;
	}
	for (i = 0; i < ds_grid_width(_id); i++){
		for (j = 0; j < ds_grid_height(_id); j++){
			if _id [# i, j] == _value {
				_arr[k] = [i,j];
				k++;
			}
		}
	}
	return _arr;
}