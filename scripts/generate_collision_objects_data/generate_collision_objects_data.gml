///@generate_collision_objects_data(_grid);
function generate_collision_objects_data(_grid, _struct){
	//iterate through given struct
	var i;
	var j;
	//different behaviour for different types of objects, room or wall
	switch _struct{
		case ROOM_OBJECTS:
			//make 2 passes
			repeat(2){
				//loop through grid
				for (i = 2; i < ds_grid_size_buffered([_grid])-1;i++){
					for (j = 2; j < ds_grid_size_buffered([_grid])-1;j++){
						//roll to see which type of object
						var _object_type = choose_weighted(ROOM_OBJECTS.round_table, ROOM_OBJECTS.round_table.odds, ROOM_OBJECTS.square_table, ROOM_OBJECTS.square_table.odds);
						var _w = irandom(_object_type.w);
						var _h = irandom(_object_type.h);
						var _cell_data = ds_grid_get_mean(_grid, i-3,j-3,i+_w+3, j+_h+3);
						if _cell_data == noone{
							ds_grid_set_region(_grid,i,j,i+_w,j+_h,_object_type.val);
							continue;
					}
						continue;
				}
			}
		}
		case WALL_OBJECTS:
			for (i = 2; i < ds_grid_size_buffered([_grid]) -1;i++){
				for (j = 2; j < ds_grid_size_buffered([_grid]) -1;j++){ 
					var _object_type = choose_weighted(WALL_OBJECTS.plant_pot, WALL_OBJECTS.plant_pot.odds, WALL_OBJECTS.barrel, WALL_OBJECTS.barrel.odds,);
					//if the tile is adjacent to a wall and not the rear bar
					var _cell_data = ds_grid_get_adjacent_cell_data(_grid,i,j,8); 
					if array_contains([_cell_data], [COLLISION_TILES.wall.val]) and !array_contains([_cell_data],[COLLISION_TILES.rear_bar.val, ROOM_OBJECTS.stool.val, EXIT_DOOR]){
						//we roll the odds of each, if we roll successfully assign value and break
						var _odds = _object_type.odds;
						if irandom(_odds) == _odds{
							_grid [# i, j] = _object_type.val;
						
					}
				}
			}
		}
	}
}