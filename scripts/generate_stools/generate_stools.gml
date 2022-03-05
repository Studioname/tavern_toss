///@generate_stools()
function generate_stools(_grid){
	var i, j, _cell_data;
	for (i=1;i < ds_grid_size_buffered([_grid]);i++){
		for (j=1;j < ds_grid_size_buffered([_grid]);j++){
			if _grid[#i,j] == noone{
				_cell_data = ds_grid_get_adjacent_cell_data(_grid,i,j,4);
				if array_contains([_cell_data], [ROOM_OBJECTS.round_table.val, ROOM_OBJECTS.square_table.val, COLLISION_TILES.bar.val, ROOM_OBJECTS.banquet_table.val]){
					if !array_contains([_cell_data],[COLLISION_TILES.rear_bar.val]){
						if irandom(ROOM_OBJECTS.stool.odds) == ROOM_OBJECTS.stool.odds{
							_grid[#i,j] = ROOM_OBJECTS.stool.val;
						}
					}
				}
			}
		}
	}
}