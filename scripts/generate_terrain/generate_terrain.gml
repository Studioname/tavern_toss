///@generate terrain
function generate_terrain(grid){
	//clear grid
	ds_grid_set_region(grid,0,0,ds_grid_width(grid), ds_grid_height(grid), noone);
	var i;
	var j;
	if grid == global.floor {
		for (i = 0; i < ds_grid_width(grid); i++){
			for (j = 0; j < ds_grid_height(grid); j++){
				grid[# 0, j] = choose(SOIL, ROCK, SAND);
			}
		}		
	}
	
	//each substrate has a range of global.collision associated with it determined
	//by macros. Here we assign a random associated mineral to each substrate square
	if grid == global.collision {
		for (i = 0; i < ds_grid_width(grid); i++){
			for (j = 0; j < ds_grid_height(grid); j++){
				//do stuff in each cell
				//this will include tables and bar area which span multiple cells
			}
		}
	}
}