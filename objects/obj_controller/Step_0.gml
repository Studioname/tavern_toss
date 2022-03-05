///@obj_controller step
var _arr_length = array_length(global.instructions);
if point_in_rectangle(MOUSE_X_TO_GUI, MOUSE_Y_TO_GUI, global.instructions[0][1] - ICON_SIZE/2,((window_get_height()/6) * 5) - ICON_SIZE/2, global.instructions[_arr_length-1][1] + ICON_SIZE/2, (window_get_height()/6) * 5 + ICON_SIZE/2) and mouse_check_button_pressed(mb_left){
	
	var button = (MOUSE_X_TO_GUI - _draw_x_anchor + (ICON_SIZE/2)) div ICON_SIZE;
	//if the go or remove button isn't pressed
	if button < _arr_length -3 {
		var _command = {
			func : global.instructions[button][2],
			args : global.instructions[button][3]
		}
		ds_stack_push(global.commands_template, _command);
	}
	//if teleport button we push to commands stack so it doesn't enter loop
	else if button == _arr_length-3{
		var _command = {
			func : global.instructions[button][2],
			args : global.instructions[button][3]
		}
		ds_stack_push(global.commands, _command);
	}
	//if command stack empty then prompt player to input
	else if ds_stack_size(global.commands_template) == 0{
		show_message("Please input commands to continue.");	
	}
	//delete command button
	else if button == _arr_length-2{
		if ds_stack_size(global.commands_template)>0{
			ds_stack_pop(global.commands_template);	
		}
	}
	//else go
	else{
		go();
	}
}