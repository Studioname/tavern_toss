///@generate_exit_door();
function generate_exit_door(_grid){
	var _exit_door_created = false;
	while !_exit_door_created{
		var _x = choose(1, ds_grid_size_buffered([_grid]));
		var _y = irandom_range(2, ds_grid_size_buffered([_grid])-1);
		if irandom(1) == 1{
			//swap x for y axis
			var _z;
			_z = _x;
			_x = _y;
			_y = _z;
		}
		if _grid [# _x, _y] == COLLISION_TILES.wall.val{
			_grid [# _x, _y] = EXIT_DOOR;
			_exit_door_created = true;
		}
	}
}