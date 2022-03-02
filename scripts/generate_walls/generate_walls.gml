///@generate_walls(_grid);
function generate_walls(_grid){
	var i;
	var j;
	for (i = 1; i < ds_grid_size_buffered([_grid]);i++){
		for (j = 1; j < ds_grid_size_buffered([_grid]);j++){
			if i == 1 or j == 1 or i == ds_grid_size_buffered([_grid]) -1 or j == ds_grid_size_buffered([_grid]) -1 {
				if _grid[# i, j] != global.collision_tile_elements.rear_bar.val{ 
					_grid [# i, j] = global.collision_tile_elements.wall.val;
				}
			}
		}
	}
}