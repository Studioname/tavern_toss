///@generate_clump_terrain
function generate_clump_terrain(cycles, odds, cell_type){
	
	//counter
	var counter = cycles;
	//select random position
	while counter > 0 {
		var _x = snap_to_grid(irandom_range(0, room_width), 0);
		var _y = snap_to_grid(irandom_range(0, room_height), 0);
		//find nearest clump and add a block to it
		if ds_grid_value_exists(terrain, _x, _y, room_width, room_height, cell_type){
			var _nearest_x_pos = ds_grid_value_x(terrain, _x, _y, room_width, room_height, cell_type);
			var _nearest_y_pos = ds_grid_value_y(terrain, _x, _y, room_width, room_height, cell_type);
			
			if irandom(odds) == odds {
				ds_grid_set_disk(terrain, _nearest_x_pos, _nearest_y_pos, irandom(7), cell_type)
			}
			
			else {
			
				//choose a random adjacent cell, we must be able to determine which direction it is in
				var _direction = irandom(3);
				switch _direction{
					case 0: 
						if terrain [# _nearest_x_pos +1, _nearest_y_pos] != ROCK or WATER or UPPER{
							ds_grid_set(terrain, _nearest_x_pos +1, _nearest_y_pos, cell_type);
							counter -=1;}
						break;
					case 1: if terrain [# _nearest_x_pos -1, _nearest_y_pos] != ROCK or WATER or UPPER{
							ds_grid_set(terrain, _nearest_x_pos -1, _nearest_y_pos, cell_type);
							counter -=1;}
						break;
					case 2: if terrain [# _nearest_x_pos, _nearest_y_pos +1] != ROCK or WATER or UPPER{
							ds_grid_set(terrain, _nearest_x_pos, _nearest_y_pos +1, cell_type);
							counter -=1;}
						break;
					case 3: if terrain [# _nearest_x_pos, _nearest_y_pos -1] != ROCK or WATER or UPPER{
							ds_grid_set(terrain, _nearest_x_pos, _nearest_y_pos -1, cell_type);
							counter -=1;}
						break;
				}
			}
		}
	}
}