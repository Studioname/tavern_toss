///@generate terrain
function generate_terrain(grid){
	//clear grid
	var i;
	var j;
	if grid == global.floor {
		for (i = 0; i < ds_grid_width(grid); i++){
			for (j = 0; j < ds_grid_height(grid); j++){
				//do stuff
				if irandom(4) == 4{
					grid [# i, j] = noone;	
				}
			}
		}		
	}
	if grid == global.collisions {
		for (i = 0; i < ds_grid_width(grid); i++){
			for (j = 0; j < ds_grid_height(grid); j++){
				//do stuff in each cell
				//this will include tables and bar area which span multiple cells
				//global.collisions.bar.val
			}
		}
	}
}