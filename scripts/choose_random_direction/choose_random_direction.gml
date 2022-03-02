///@choose_random_direction()
function choose_random_direction(){
	var _facing = global.facing;
	var _choices = [UP, DOWN, LEFT, RIGHT];
	var _facing_index = array_find(_choices, _facing);
	array_delete(_choices,_facing_index, 1);
	randomise();
	global.facing = choose(_choices[irandom(2)]);
	animations();
	ds_stack_pop(global.commands);
}