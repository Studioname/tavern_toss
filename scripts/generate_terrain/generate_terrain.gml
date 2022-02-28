///@generate terrain
function generate_terrain(grid){
	//clear grid
	var i;
	var j;
	if grid == global.floor {
		for (i = 0; i < ds_grid_size_buffered([grid]); i++){
			for (j = 0; j < ds_grid_size_buffered([grid]); j++){
				//do stuff
					grid [# i, j] = FLOOR;	
			}
		}		
	}
	if grid == global.collisions {
		for (i = 0; i < ds_grid_size_buffered([grid]); i++){
			for (j = 0; j < ds_grid_size_buffered([grid]); j++){
				if grid [# i, j] == noone {
					//create no paint zone
					
				}
				//before creating each object, we create a bigger no paint zone which
				//extends a few cells beyond object. We then paint object over this.
				//we check for default values and just create objects if they're not in the
				//no paint zone.
				//do stuff in each cell
				
				//we generate the features that are present in every room first
				//in order of their size
				//generate bar, then fireplace
				//then get a rough guesstimate of how many cells we have between 
				//inner bar edge and the other side of the room
				//this will include tables and bar area which span multiple cells
				//leave a minimum of three cells between bar and wall, one for
				//potential ornaments [barrels, plant pot etc], one for buffer,
				//one for stool or chair
				//we do this with while loops searching for walls, we can check
				//if the cell is smaller than half the width of the room or bigger
				//leave a minimum of two cells otherwise
			}
		}
	}
}