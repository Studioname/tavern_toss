///@check_if_escape()
function check_if_escape(_grid, _x, _y, _values){
	if ds_grid_check_cell_for_values(_grid, _x, _y, _values) != false{
		show_message("Congratulations! You escaped!");
		room_restart();
	}
}