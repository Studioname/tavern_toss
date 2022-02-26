///@ds_copy_struct_to_list()
//iterates through struct and copies entries to list
function ds_copy_struct_to_list(_struct, _list){
	//iterate through the struct and add the items to a list
	var _collision_keys = variable_struct_get_names(_struct);
	for (var i = array_length(_collision_keys)-1; i >= 0; --i) {
	    var _key = _collision_keys[i];
	    var _val = _struct[$ _key];
		ds_list_add(_list, _val);
	}
}