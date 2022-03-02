///@cell_is_solid(_struct, _cell)
function cell_is_solid(_structs, _cell){
	var i;
	//unpack _structs array
	for (i = 0; i < array_length(_structs); i++){
		var j;
		var _struct = _structs[i];
		var _keys = variable_struct_get_names(_struct);
		for (j= array_length(_keys)-1; j >= 0; j--){
			var _key = _keys[j];
		    var _sub_struct = _struct[$ _key];
			if _cell == _sub_struct.val {	
				return true;
			}
		}
	}
	return false;
}

///@cell_is_solid(_struct, _cell)
//function cell_is_solid(_struct, _cell){
//	var _keys = variable_struct_get_names(_struct);
//	var i;
//	for (i= array_length(_keys) -1; i >= 0; i--){
//		var _key = _keys[i];
//	    var _sub_struct = _struct[$ _key];
//		if _cell == _sub_struct.val {	
//			return true;
//		}
//	}
//	return false;
//}

/////@cell_is_solid(_structs, _cell)
//function cell_is_solid(_structs, _cell){
//	var i;
//	var j;
//	for (i=0; i < array_length(_structs)-1; i++){
//		var _struct = _structs[i]
//		var _keys = variable_struct_get_names(_struct);
//		for (j= array_length(_keys) -1; j >= 0; j--){
//			var _key = _keys[j];
//			if _cell == _key.val {	
//				return true;
//			}
//		}
//	}
//	return false;
//}

