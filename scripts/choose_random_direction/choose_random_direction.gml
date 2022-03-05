///@choose_random_direction()
function choose_random_direction(){
	change_direction(irandom_range(-1,1),choose("cw", "ccw"));
	//var _facing = global.facing;
	//var _choices = [UP, DOWN, LEFT, RIGHT];
	//switch _facing {
	//	case UP:
	//	break;
	//	case RIGHT:
	//	break;
	//	case LEFT:
	//	break;
	//	case DOWN:
	//	break;
	//}
	//var _facing_index = array_find(_choices, _facing);
	//array_delete(_choices,_facing_index, 1);
	//randomise();
	//global.facing = choose(_choices[irandom(2)]);
	animations();
	ds_stack_pop(global.commands);
}