///@array_slice()
function array_slice(_array, _number_of_slices){
	var i;
	var _arr;
	for (i = 0; i < _number_of_slices; i++){
		_arr[i] = _array[i];
	}
	return _arr;
}