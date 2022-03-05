///@ds_grid_size_buffered()
//arg0[0] = grid;
//arg[1] = str(width or height);
function ds_grid_size_buffered(arg0){
	if !ds_exists(arg0[0],ds_type_grid){
		return -1;
	}
	var _arr_len = array_length(arg0);
	if _arr_len == 1 and ds_exists(arg0[0], ds_type_grid){
		if ds_grid_width(arg0[0]) == ds_grid_height(arg0[0]){
			return ds_grid_width(arg0[0]) - 1;}
	}
	else if _arr_len == 2 {
		switch arg0[1] {
			case "w": return ds_grid_width(arg0[0]) -1;
			break;
			case "h": return ds_grid_height(arg0[0]) -1;
			break;
		}
	}
	else{
		show_message("first argument given in ds_grid_size_buffered() is not a grid");	
	}
}