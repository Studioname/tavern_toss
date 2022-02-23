///@generate terrain
function generate_terrain(grid){
	//clear grid
	ds_grid_set_region(grid,0,0,ds_grid_width(grid), ds_grid_height(grid), noone);
	var i;
	var j;
	if grid == global.substrates {
		//we want to layer the global.substrates like a cake, so we loop through grid height
		//and assign each cell at 0, i a random substrate
		for (j = 0; j < ds_grid_height(grid); j++){
			grid[# 0, j] = choose(SOIL, ROCK, SAND);
			//we then set each row to the same value as the first cell
			ds_grid_set_region(grid, 1, j, ds_grid_width(grid), j, grid [# 0, j]);
		}		
	}
	
	//each substrate has a range of global.minerals associated with it determined
	//by macros. Here we assign a random associated mineral to each substrate square
	if grid == global.minerals {
		for (i = 0; i < ds_grid_width(grid); i++){
			for (j = 0; j < ds_grid_height(grid); j++){
				grid [# i, j] = global.substrates[# i, j] - irandom_range(1,3);
			}
		}
	}
}