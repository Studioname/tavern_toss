///@change_direction()
function change_direction(number_of_times, clockwise_or_ccw){
	
	//if clockwise_or_ccw == "ccw" then number_of_times *= -1;
	//var _facing = global.facing + number_of_times;
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
		case -1: global.facing = LEFT;
		break;
		case 0: global.facing = UP;
		break;
		case 1: global.facing = RIGHT;
		break;
		case 2: global.facing = DOWN;
		break;
		case 3: global.facing = LEFT;
		break;
	}
	animations();
}