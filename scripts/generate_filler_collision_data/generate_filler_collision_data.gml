///@generate_filler_collision_data(_grid);
function generate_filler_collision_data(_grid){
	var i, j;
	//make 2 passes
	repeat(2){
		//loop through grid
		for (i = 2; i < ds_grid_size_buffered([_grid])-1;i++){
			for (j = 2; j < ds_grid_size_buffered([_grid])-1;j++){
				//roll to see which type of object
				var _object_type = choose_weighted(ROOM_OBJECTS.bookcase, ROOM_OBJECTS.bookcase.odds, ROOM_OBJECTS.statue, ROOM_OBJECTS.statue.odds);
				if irandom(_object_type.odds) == _object_type.odds {
					var _w = irandom(_object_type.w);
					var _h = irandom(_object_type.h);
					var _buffer;
					switch _object_type{
						case ROOM_OBJECTS.bookcase: _buffer = 2;
						break;
						case ROOM_OBJECTS.statue: _buffer = 1;
						break;
					}
					var _cell_data = ds_grid_get_mean(_grid, i-_buffer,j-_buffer,i+_w+_buffer, j+_h+_buffer);
					if _cell_data == noone{
						ds_grid_set_region(_grid,i,j,i+_w,j+_h,_object_type.val);
					}	
				}
			}
		}
	}
}