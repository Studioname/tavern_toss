///@track_loops();
function track_loops(_grid){
	var i, j, k, l, _x, _y, _arr;
	_x = x div CELL_SIZE;
	_y = y div CELL_SIZE;
	var _arr_index = array_find(global.loop_tracker, [_x, _y]);
	if _arr_index != false{
		if is_array(global.loop_index){
			if global.loop_tracker[_arr_index] == global.loop_index[0]{
				//reposition randomly
				var _player_teleported = false;
				while !_player_teleported {
					var _ran_x = irandom_range(2, ds_grid_size_buffered(_grid)-1);
					var _ran_y = irandom_range(2, ds_grid_size_buffered(_grid)-1);
					if _grid [# _ran_x, _ran_y] == noone {
						x = _ran_x;
						y = _ran_y;
						_player_teleported = true;
						global.loop_index = noone;
						global.loop_tracker = [];
						exit;
					}
				}	
			}
		}
		global.loop_index = [_x, _y];
		
		//record index
		//initiate coordinate counter to track identical cells, second value - first
		
		//if there are more than 3 identical cells in sequence, teleport
	}
	//if loop tracker exceeds max array size then delete first cell
	if array_length(global.loop_tracker) > 100 {
		array_delete(global.loop_tracker,0,1);
	}
	global.loop_tracker[array_length(global.loop_tracker)+1] = [_x, _y];
}