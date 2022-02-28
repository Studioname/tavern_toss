///@generate_objects_adjacent_to_wall(_grid);
function generate_objects_adjacent_to_wall(_grid){
	var i;
	var j;
	for (i = 2; i < ds_grid_size_buffered([_grid]) -1;i++){
		for (j = 2; j < ds_grid_size_buffered([_grid]) -1;j++){
			if i == 2 or j == 2 or i == ds_grid_size_buffered([_grid]) -1 or j == ds_grid_size_buffered([_grid]) -1 {
				var _cell_data = ds_grid_get_adjacent_cell_data(_grid, i, j, global.collisions_data.rear_bar.val);
				if !array_contains(_cell_data, global.collisions_data.rear_bar.val){
					var odds = global.collisions_data.plant_pot.odds;
					if irandom(odds) == odds{
						_grid [# i, j] = global.collisions_data.plant_pot.val;
					}
				}
			}
		}
	}
}