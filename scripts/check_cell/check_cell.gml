///@check_cell()
function check_cell(grid){
	
	//get current coords
	var _cur_x = x div CELL_SIZE;
	var _cur_y = y div CELL_SIZE;
	//var _target_cell;
	switch global.facing{
		case UP: 
			return grid [# _cur_x, _cur_y-1];
			break;
		case RIGHT:
			return grid [# _cur_x+1, _cur_y];
			break;
		case DOWN: 
			return grid [# _cur_x, _cur_y+1];
			break;
		case LEFT: 
			return grid [# _cur_x-1, _cur_y];
			break;
	}
}