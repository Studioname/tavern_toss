///@generate_escape_hatch()
function generate_escape_hatch(_grid){
	var i, j, _x, _y, _escape_hatch_created = false;
	while !_escape_hatch_created {
		var _x = irandom_range(0, ds_grid_size_buffered([_grid]));
		var _y = irandom_range(0, ds_grid_size_buffered([_grid]));
		if _grid [# _x, _y] == noone{
			_grid [# _x, _y] = ESCAPE_HATCH;
			_escape_hatch_created = true;
		}
	}
}