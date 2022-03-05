///teleport()
function teleport(_grid){
	var _cur_x = x;
	var _cur_y = y;
	
	while _cur_x == x and _cur_y == y{
		var _ran_x = irandom_range(2, ds_grid_size_buffered([_grid])-2);
		var _ran_y = irandom_range(2, ds_grid_size_buffered([_grid])-2);
		if _grid[# _ran_x, _ran_y] == noone and _cur_x != _ran_x and _cur_y != _ran_y {
			//if random cell isn't adjacent to escape
			var _cell_data = ds_grid_get_adjacent_cell_data(_grid, _ran_x, _ran_y,8);
			if !array_contains([_cell_data], [EXIT_DOOR, ESCAPE_HATCH]){
				x = (_ran_x * CELL_SIZE) + 16;
				y = (_ran_y * CELL_SIZE) + 16;
				ds_stack_pop(global.commands);
			}
		}
	}
}