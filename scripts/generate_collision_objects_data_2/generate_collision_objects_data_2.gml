/////@generate_collision_objects_data(_grid);
////function generate_collision_objects_data(_grid, _struct){
//	//iterate through given struct
//	var i;
//	var j;
//	var _keys = variable_struct_get_names(_struct);
//	var k;
//	var _arr;
//	for (k = 0; k < array_length(_keys)-1; k++) {
//	    var _val = _keys[k];
//	    _arr[k] = _struct[$ _val];
//	}
//	//iterator for _arr
//	var l;
//	//iterate through _arr
//	for (l = 0; l < array_length(_arr)-1; l++){
//		//different behaviour for different types of objects, room or wall
//		switch _struct{
//			case WALL_OBJECTS:
//			//iterate through _grid
//				for (i = 2; i < ds_grid_size_buffered([_grid]) -1;i++){
//					for (j = 2; j < ds_grid_size_buffered([_grid]) -1;j++){ 
//						//if the tile is adjacent to a wall and not the rear bar
//						var _cell_data = ds_grid_get_adjacent_cell_data(_grid,i,j); 
//						if array_contains(_cell_data,COLLISION_TILES.wall.val) and !array_contains(_cell_data,COLLISION_TILES.rear_bar.val) and !array_contains(_cell_data,EXIT_DOOR){
//							//we roll the odds of each, if we roll successfully assign value and break
//							var _odds = _arr[l].odds;
//							if irandom(_odds) == _odds{
//								_grid [# i, j] = _arr[l].val;
//								break;
//							}
//						}
//					}
//				}
//			case ROOM_OBJECTS:
//			//roll to see which type of object
//			repeat(50){
//			var _object_type = choose_weighted(ROOM_OBJECTS.round_table.val, ROOM_OBJECTS.round_table.odds, ROOM_OBJECTS.square_table.val, ROOM_OBJECTS.square_table.odds);
//			switch _object_type{
//				case ROOM_OBJECTS.square_table:
//					var _w = irandom(_arr[l].size);
//					var _h = irandom(_arr[l].size);
//					//iterate through _grid
//					for (i = 1; i < ds_grid_size_buffered([_grid]) -1;i++){
//						for (j = 1; j < ds_grid_size_buffered([_grid]) -1;j++){
//							if _grid[#i-3,j-3] == noone and _grid[#i+_w+3,j+_h+3] == noone{
//								ds_grid_set_region(_grid,i,j,i+_w,j+_h,_arr[l].val);
//								continue;
//							}
//							continue;
//						}
//					}
//					//		//check against odds
//					//		//var _odds = _arr[l].odds;
//					//		//if irandom(_odds) == _odds{
//					//		//get object size in tiles
//					//		var _w = irandom(_arr[l].size);
//					//		var _h = irandom(_arr[l].size);
//					//		//if cell value is noone, and the cell bottom right of object * size is also empty
//					//			if _grid [#i, j] == noone and _grid[# i + _w, j + _h] == noone {		
//					//				//draw no paint zone
//					//				create_no_paint_zone(_grid,NO_PAINT_BUFFER+1,i,j,i+_w,j+_h);
//					//				ds_grid_set_region(_grid,i,j,i+_w,j+_h,_arr[l].val);
//					//			//}
//					//		}
//					//	}
//					//}
//				//case ROOM_OBJECTS.round_table:
//				//			//iterate through _grid
//				//			for (i = 3; i < ds_grid_size_buffered([_grid]) -6;i++){
//				//				for (j = 3; j < ds_grid_size_buffered([_grid]) -6;j++){ 
									
									
//				//					//get object size in tiles
//				//					var _w = irandom(_arr[l].size);
//				//					var _h = irandom(_arr[l].size);
//				//					//check odds
//				//					//var _odds = _arr[l].odds;
//				//					//if irandom(_odds) == _odds{
//				//						//if cell is empty, and not no paint zone or void
//				//						if _grid [#i, j] == noone and _grid[# i + _w, j + _h] == noone {
//				//							//draw no paint zone
//				//							create_no_paint_zone(_grid,NO_PAINT_BUFFER+1,i,j,i+_w,j+_h);
//				//							ds_grid_set_region(_grid,i,j,i+_w,j+_h,_arr[l].val);
//				//			//}
//				//		}
//				//	}
//				//}
//				//case ROOM_OBJECTS.stool:
//				//			//iterate through _grid
//				//			for (i = 1; i < ds_grid_size_buffered([_grid]) -1;i++){
//				//				for (j = 1; j < ds_grid_size_buffered([_grid]) -1;j++){ 
//				//					//if there is a table next to cell
//				//					if array_contains(array_slice(ds_grid_get_adjacent_cell_data(_grid,i,j),4), ROOM_OBJECTS.square_table.val) and (_grid [#i,j] == noone or _grid [#i,j] == NO_PAINT_ZONE) {
//				//					var _odds = _arr[l].odds;
//				//					if irandom(_odds) == _odds{
//				//						_grid [#i, j] = ROOM_OBJECTS.stool.val;
											
//				//				}
//				//			}
//				//		}
//				//	}
//				//}
				
//			}
//		}
//	}
//}