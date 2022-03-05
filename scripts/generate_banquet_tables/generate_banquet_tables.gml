///@generate_banquet_tables();
function generate_banquet_tables(_grid){
	for (i = 2; i < ds_grid_size_buffered([_grid])-1;i++){
		for (j = 2; j < ds_grid_size_buffered([_grid])-1;j++){
			if irandom(ROOM_OBJECTS.banquet_table.odds) == ROOM_OBJECTS.banquet_table.odds{
				var _object_type = ROOM_OBJECTS.banquet_table;
				var _w = irandom_range(_object_type.w/3, _object_type.w);
				var _h = (min(floor(_w/3), 2));
				if irandom(1) == 1{
					var _z;
					_z = _w;
					_w = _h;
					_h = _z;
				}
				var _cell_data = ds_grid_get_mean(_grid, i-3,j-3,i+_w+3, j+_h+3);
				if _cell_data == noone{
					ds_grid_set_region(_grid,i,j,i+_w,j+_h,_object_type.val);
					continue;
				}
			continue;
			}
		}
	}
}