///@paint_tiles();
function paint_tiles(_grid, _tilemap){

	//iterate through terrain map and paint tiles accordingly
	var i;
	var j;
	if _grid == global.floor {

		for (i = 0; i < ds_grid_width(_grid) -1; i++){
			for (j = 0; j < ds_grid_height(_grid) -1; j++){
				
				var _grid_value = ds_grid_get(_grid, i, j);
				
				switch _grid_value {
					case FLOOR: 
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
				}
			
			}
		}
	}
	if _grid == global.collisions {
		for (i = 0; i < ds_grid_width(_grid) -1; i++){
			for (j = 0; j < ds_grid_height(_grid) -1; j++){
				
				var _grid_value = ds_grid_get(_grid, i, j);
				
				switch _grid_value {
					case global.collisions_data.bar.val:
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
				}
			}
		}
	}
}