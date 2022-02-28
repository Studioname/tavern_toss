///@create_no_paint_zone()
function create_no_paint_zone(_grid, _no_of_cells, _x1, _y1, _x2, _y2){
	ds_grid_set_region(_grid, _x1 - _no_of_cells, _y1 - _no_of_cells, _x2 + _no_of_cells, _y2 + _no_of_cells, NO_PAINT_ZONE);
}