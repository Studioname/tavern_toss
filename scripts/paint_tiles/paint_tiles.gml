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
					case global.collision_tile_elements.wall.val:
						tilemap_set_at_pixel(_tilemap, 4, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case global.collision_tile_elements.bar.val:
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case global.collision_tile_elements.rear_bar.val:
						tilemap_set_at_pixel(_tilemap, 2, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case EXIT_DOOR:
						tilemap_set_at_pixel(_tilemap, 12, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ESCAPE_HATCH:
						tilemap_set_at_pixel(_tilemap, 13, i * CELL_SIZE, j * CELL_SIZE);
						break;
					//testing
					case WALL_OBJECTS.barrel.val:
						tilemap_set_at_pixel(_tilemap, 6, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case WALL_OBJECTS.plant_pot.val:
						tilemap_set_at_pixel(_tilemap, 7, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROOM_OBJECTS.round_table.val:
						tilemap_set_at_pixel(_tilemap, 11, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROOM_OBJECTS.square_table.val:
						tilemap_set_at_pixel(_tilemap, 5, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROOM_OBJECTS.stool.val:
						tilemap_set_at_pixel(_tilemap, 8, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROOM_OBJECTS.banquet_table.val:
						tilemap_set_at_pixel(_tilemap, 5, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROOM_OBJECTS.bookcase.val:
						tilemap_set_at_pixel(_tilemap, 14, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROOM_OBJECTS.statue.val:
						tilemap_set_at_pixel(_tilemap, 15, i * CELL_SIZE, j * CELL_SIZE);
						break;
				}
			}
		}
	}
}