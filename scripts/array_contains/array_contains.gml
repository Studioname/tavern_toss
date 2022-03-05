///@array_contains(variable, array)
function array_contains(_arrays, _values){
	var i, j, k, _arr;
	for (i = 0; i < array_length(_arrays); i++){
		_arr = _arrays[i]
		if !is_array(_arr) or !is_array(_values){
			return -1;
		}
		for (j = 0; j < array_length(_arrays[i]); j++){
			for (k = 0; k < array_length(_values); k++){
				if _values[k] == _arr[j]{
					return true;
				}
			}
		}
	}
	return false;
}