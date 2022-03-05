///@get_direction()
function get_direction(number_of_times, clockwise_or_ccw){
	var _facing;
	switch clockwise_or_ccw{
		case "cw": _facing = (global.facing + number_of_times) % 4;
		break;
		case "ccw": _facing = (global.facing - number_of_times) % 4;
		break;
		default: show_message("invalid input for change_direction script");
		break;
	}
	
	switch _facing{
		case -1: _facing = LEFT;
		break;
		case 0: _facing = UP;
		break;
		case 1: _facing = RIGHT;
		break;
		case 2: _facing = DOWN;
		break;
		case 3: _facing = LEFT;
		break;
		case 4: _facing = UP;
		break;
		case 5: _facing = RIGHT;
		break;
	}
	return _facing;
}