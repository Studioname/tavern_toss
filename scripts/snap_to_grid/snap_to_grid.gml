///@snap_to_grid()
///@thing to snap's x or y position
///@distance in tiles from mouse cursor [-2 is 2 tiles left]
function snap_to_grid(x_or_y, tile_modifier){
	var num = x_or_y div CELL_SIZE;
	return (num + tile_modifier) * CELL_SIZE;
	
}