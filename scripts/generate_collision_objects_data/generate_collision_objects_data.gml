///@generate_collision_objects_data(_grid);
function generate_collision_objects_data(_grid, _struct){
	//iterate through given struct
	var i;
	var j;
	var _keys = variable_struct_get_names(_struct);
	var k;
	var _arr;
	for (k = 0; k < array_length(_keys)-1; k++) {
	    var _val = _keys[k];
	    _arr[k] = _struct[$ _val];
	}
	//iterator for _arr
	var l;
	//iterate through _keys
	for (l = 0; l < array_length(_arr)-1; l++){
		//different behaviour for different types of objects, room or wall
		switch _struct{
			case WALL_OBJECTS:
			//iterate through _grid
				for (i = 2; i < ds_grid_size_buffered([_grid]) -1;i++){
					for (j = 2; j < ds_grid_size_buffered([_grid]) -1;j++){ 
						//if the tile is adjacent to a wall and not the rear bar
						var _cell_data = ds_grid_get_adjacent_cell_data(_grid,i,j); 
						if array_contains(_cell_data,COLLISION_TILES.wall.val) and !array_contains(_cell_data,COLLISION_TILES.rear_bar.val){
							//we roll the odds of each, if we roll successfully assign value and break
							var _odds = _arr[l].odds;
							if irandom(_odds) == _odds{
								_grid [# i, j] = _arr[l].val;
								break;
							}
						}
					}
				}
			case ROOM_OBJECTS:
			switch _arr[l]{
				case ROOM_OBJECTS.square_table:
					//iterate through _grid
					for (i = 3; i < ds_grid_size_buffered([_grid]) -3;i++){
						for (j = 3; j < ds_grid_size_buffered([_grid]) -3;j++){ 
							//if cell is empty, and not no paint zone or void
							var _odds = _arr[l].odds;
							if irandom(_odds) == _odds{
								if _grid [#i, j] == noone {
									//get object size in tiles
									var _size = _arr[l].size;
									//draw no paint zone
									create_no_paint_zone(_grid,NO_PAINT_BUFFER+1,i,j,i+_size,j+_size);
									ds_grid_set_region(_grid,i,j,i+_size,j+_size,_arr[l].val);
								}
							}
						}
					}
				case ROOM_OBJECTS.round_table:
							//iterate through _grid
							for (i = 3; i < ds_grid_size_buffered([_grid]) -3;i++){
								for (j = 3; j < ds_grid_size_buffered([_grid]) -3;j++){ 
									//if cell is empty, and not no paint zone or void
									var _odds = _arr[l].odds;
									if irandom(_odds) == _odds{
										if _grid [#i, j] == noone {
											//get object size in tiles
											var _size = _arr[l].size;
											//draw no paint zone
											create_no_paint_zone(_grid,NO_PAINT_BUFFER+1,i,j,i+_size,j+_size);
											ds_grid_set_region(_grid,i,j,i+_size,j+_size,_arr[l].val);
							}
						}
					}
				}
				case ROOM_OBJECTS.stool:
							//iterate through _grid
							for (i = 1; i < ds_grid_size_buffered([_grid]) -1;i++){
								for (j = 1; j < ds_grid_size_buffered([_grid]) -1;j++){ 
									//if there is a table next to cell
									if array_contains(array_slice(ds_grid_get_adjacent_cell_data(_grid,i,j),4), ROOM_OBJECTS.square_table.val) and (_grid [#i,j] == noone or _grid [#i,j] == NO_PAINT_ZONE) {
									var _odds = _arr[l].odds;
									if irandom(_odds) == _odds{
										_grid [#i, j] = ROOM_OBJECTS.stool.val;
											
								
							}
						}
					}
				}
			}
		}
	}
}