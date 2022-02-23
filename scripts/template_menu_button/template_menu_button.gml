///@template_menu_button()
function template_menu_button(button){
	
//unit stats
//each race will have access to particular buildings, each of which can produce particular units
//we use constructor to pass button data to instance variables
//we need to determine if a button opens sub menus, if it does, it needs functionality to remove old buttons
//and create new

//menu buttons are created on game pause
//if user selects button with sub menu, current menu is rendered inactive/invisible and new menu is created
//from sub menu options
//if user leaves sub menu, inactive menu becomes active/visible

//we use menu button obj and activate if game pauses


	if button == "options" {
		//var sub_menu = new construct_menu_button();
		return new construct_menu_button(button, "menu buttons");
		}

	else if button == "quit_to_main_menu" {
		return new construct_menu_button(button, room_goto(0));	
	}

	else if button == "exit_to_desktop" {
		return new construct_menu_button(button, game_end());	
	}
}