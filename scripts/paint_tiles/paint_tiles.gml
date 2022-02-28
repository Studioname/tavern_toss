///@paint_tiles();
function paint_tiles(_grid, _tilemap){
	//iterate through terrain map and paint tiles accordingly
	var i;
	var j;
	for (i = 0; i < ds_grid_size_buffered([_grid]); i++){
		for (j = 0; j < ds_grid_size_buffered([_grid]); j++){
			var _grid_value = ds_grid_get(_grid, i, j);
			//floor
			if _grid == global.floor {
				switch _grid_value {
					case FLOOR: 
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
			}
		}
			//collisions
			if _grid == global.collisions {
				switch _grid_value {
					case NO_PAINT_ZONE: 
						tilemap_set_at_pixel(_tilemap, 3, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case global.collisions_data.wall.val:
						tilemap_set_at_pixel(_tilemap, 4, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case global.collisions_data.bar.val:
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case global.collisions_data.rear_bar.val:
						tilemap_set_at_pixel(_tilemap, 2, i * CELL_SIZE, j * CELL_SIZE);
						break;
				}
			}
		}
	}
}