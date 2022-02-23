// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go(){
	ds_stack_reverse(global.commands_template);
	ds_stack_copy(global.commands, global.commands_template);
	obj_player.alarm[0] = ALARM_SPEED;
}