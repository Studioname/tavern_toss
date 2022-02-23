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
					case SOIL: 
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case ROCK: 
						tilemap_set_at_pixel(_tilemap, 2, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case SAND: 
						tilemap_set_at_pixel(_tilemap, 3, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case SEAM: 
						tilemap_set_at_pixel(_tilemap, 4, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case GEMS:
						tilemap_set_at_pixel(_tilemap, 5, i * CELL_SIZE, j * CELL_SIZE);
						break;
				}
			
			}
		}
	}
	if _grid == global.collision {
		for (i = 0; i < ds_grid_width(_grid) -1; i++){
			for (j = 0; j < ds_grid_height(_grid) -1; j++){
				
				var _grid_value = ds_grid_get(_grid, i, j);
				
				switch _grid_value {
					case CLAY:
						tilemap_set_at_pixel(_tilemap, 1, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case TIN_ORE: 
						tilemap_set_at_pixel(_tilemap, 2, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case IRON_ORE: 
						tilemap_set_at_pixel(_tilemap, 3, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case STONE: 
						tilemap_set_at_pixel(_tilemap, 4, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case COAL: 
						tilemap_set_at_pixel(_tilemap, 5, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case COPPER_ORE:
						tilemap_set_at_pixel(_tilemap, 6, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case QUARTZ:
						tilemap_set_at_pixel(_tilemap, 7, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case FLINT:
						tilemap_set_at_pixel(_tilemap, 8, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case AMBER:
						tilemap_set_at_pixel(_tilemap, 9, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case SILVER_ORE:
						tilemap_set_at_pixel(_tilemap, 10, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case GOLD_ORE:
						tilemap_set_at_pixel(_tilemap, 11, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case PLATINUM_ORE:
						tilemap_set_at_pixel(_tilemap, 12, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case RUBY:
						tilemap_set_at_pixel(_tilemap, 13, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case SAPPHIRE:
						tilemap_set_at_pixel(_tilemap, 14, i * CELL_SIZE, j * CELL_SIZE);
						break;
					case EMERALD:
						tilemap_set_at_pixel(_tilemap, 15, i * CELL_SIZE, j * CELL_SIZE);
						break;
				}
			}
		}
	}
}