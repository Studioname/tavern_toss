/// @obj_menu_controller

var pause_button = keyboard_check_pressed(vk_escape);

if pause_button  and !global.game_paused {
	global.game_paused = true;
	//deactivates all instances including this one, if set to true then not
	instance_deactivate_all(true);
	//get button count and names from menu buttons struct
	button_layer = layer_create(-16000,"buttons");
	button_count = variable_struct_names_count(MENU_BUTTONS);
	button_names = variable_struct_get_names(MENU_BUTTONS);
	var i;
	//iterate through button count
	for (i = 0; i < button_count; i++){
		button = instance_create_layer(room_width/2, (room_height/2) + (-(sprite_get_height(spr_menu_button)*2.5) * i) + (sprite_get_height(spr_menu_button)) * (i * 1.25), button_layer, obj_menu_button);
		show_message(instance_exists(button));
		_id = instance_find(obj_menu_button, i);
		button.button_data = template("marine");
		show_message(variable_instance_get(_id, "button_data"));
		
		
		//show_message(_id);
		//we want to use a constructor to assign structs to menu buttons
		//that way the menu buttons will know what to do and it will be simple
		//
	}
}  

else if pause_button and global.game_paused {
	global.game_paused = false
	instance_activate_all();
	}

