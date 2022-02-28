///@cell_is_solid(_struct, _cell)
function cell_is_solid(_struct, _cell){
	var _keys = variable_struct_get_names(_struct);
	var i;
	for (i= array_length(_keys) -1; i >= 0; i--){
		var _key = _keys[i];
	    var _sub_struct = _struct[$ _key];
		if _cell == _sub_struct.val {	
			return true;
		}
	}
	return false;
}