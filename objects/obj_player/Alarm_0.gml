/// @obj_player alarm 0
//we need an fsm to execute movement input by the user

var _top_command = ds_stack_top(global.commands);

if !ds_stack_empty(global.commands) {
	switch _top_command.func {
		case change_direction : 
			script_execute(_top_command.func, _top_command.args[0], _top_command.args[1]);
			ds_stack_pop(global.commands);
			break;
		case move :
				move();
				break;
		case choose_random_direction:
				choose_random_direction();
				break;
		case teleport:
			teleport(global.collisions);
			break;
	}
	alarm[0] = ALARM_SPEED;
}

else if ds_stack_empty(global.commands){
	ds_stack_copy(global.commands, global.commands_template);
	alarm[0] = 1;
}