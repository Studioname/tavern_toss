///@ds_grid_find(id, value);
function ds_grid_find(_id, _value){
	var i;
	var j;
	if ds_exists(_id, ds_type_grid){
		for (i = 0; i < ds_grid_width(_id); i++){
			for (j = 0; j < ds_grid_height(_id); j++){
				if _id [# i, j] == _value {
					return [i, j];
					}
				}
			}
		return false;
	}
	else {
		show_message("grid does not exist");
	}
}