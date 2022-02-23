///@array_find(variable, array)
function array_find(_variable, _array){
	var _array_len = array_length(_array);
	var i;
	for (i=0;i<_array_len;i++){
		if _array[i] == _variable{
			return i;
		}
	}
	//else
	return false;
}