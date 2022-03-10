/// @obj_player

depth = -y;
//buffer is to centre the player in the grid cell
buffer = 16;
player_placed = false;
while !player_placed{
	var _x = irandom_range(0, ds_grid_size_buffered([global.collisions]));
	var _y = irandom_range(0, ds_grid_size_buffered([global.collisions]));
	var _cell_data = ds_grid_get_adjacent_cell_data(global.collisions,_x,_y,8);
	if !array_contains(_cell_data, [EXIT_DOOR, ESCAPE_HATCH]){
		if global.collisions [# _x, _y] == noone{
			x = (_x * CELL_SIZE) + buffer;
			y = (_y * CELL_SIZE) + buffer;
			player_placed = true;
		}
	}
}

//tell objects grid what cell player is in
global.objects [# x div CELL_SIZE, y div CELL_SIZE] = PLAYER;
global.facing = choose(UP,DOWN,LEFT,RIGHT);
animations();



