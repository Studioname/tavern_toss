///@generate_terrain()
function generate_terrain_d(cycles, odds, cell_type){
	
	//move grid controller to random tile
	x = snap_to_grid(irandom_range(0, room_width), 0);
	y = snap_to_grid(irandom_range(0, room_height), 0);

	//run terrain cycle x times
	counter = cycles;
	
	while counter > 0 {
		
		//determine position at next tile
		var north = y - CELL_SIZE;
		var east = x + CELL_SIZE;
		var south = y + CELL_SIZE;
		var west = x - CELL_SIZE;
		var _direction = choose(north, east, south, west);

		//if _direction exceeds room boundaries then find random tile within bounds
		if _direction < 0 or _direction > (room_width or room_height){
			var _random_tile_x = irandom_range(0, ds_grid_width(terrain)-1);
			var _random_tile_y = irandom_range(0, ds_grid_height(terrain)-1);
			x = _random_tile_x * CELL_SIZE;
			y = _random_tile_y * CELL_SIZE;
			}

		//move controller to new position
		switch _direction {
			case north : y = north;
			break;
			case east : x = east;
			break;
			case south : y = south;
			break;
			case west : x = west;
			break;
		}
		//odds are number of sides on dice + 1
		//if the tile is empty and dice lands then assign terrain value to current cell
		if ds_grid_get(terrain, x div CELL_SIZE, y div CELL_SIZE) == noone {
			if odds == irandom(odds) {
				ds_grid_set(terrain, x div CELL_SIZE, y div CELL_SIZE, cell_type);
				counter -=1;
			
			}
		}
	}
}