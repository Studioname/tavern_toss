///@array_find(variable, array)
function array_find(_array, _value){
	if !is_array(_array){
		return -1;
	}
	var _array_len = array_length(_array);
	var i;
	for (i=0;i<_array_len;i++){
		if _array[i] == _value{
			return i;
		}
	}
	return false;
}