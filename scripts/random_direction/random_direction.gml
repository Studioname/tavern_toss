// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_direction(){
	var _facing = global.facing;
	var _choices = [UP, DOWN, LEFT, RIGHT];
	var _facing_index = array_find(_choices, _facing);
	array_delete(_choices,_facing_index, 1);
	randomise();
	var _choice = choose(_choices[0], _choices[1], _choices[2]);
	global.facing = _choice;
	animations();
	ds_stack_pop(global.commands);
}