///@array_contains(variable, array)
function array_contains(_array, _value){
	if !is_array(_array){
		return -1;
	}
	var _array_len = array_length(_array);
	var i;
	for (i=0;i<_array_len;i++){
		if _array[i] == _value{
			return true;
		}
	}
	return false;
}