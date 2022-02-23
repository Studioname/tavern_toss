///@create_menu_background()
function create_menu_background(){
	if !surface_exists(menu_surf) {
		menu_surf = surface_create(room_width, room_height);
	}
	//1.check if menu surface exists
	//2.set menu surf as drawing target
	//3.clear surface incase of old artefacts
	//4.set draw color
	//5.set draw alpha
	//6.draw rectangle over screen
	//7.reset drawing target so things are drawn normally
	//8.draw surface
	//9.free surface
	surface_set_target(menu_surf);
	draw_clear_alpha(c_black,0);
	draw_set_color(c_grey);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,room_width,room_height,0);
	surface_reset_target();
	draw_surface(menu_surf,0,0);
	
	surface_free(menu_surf);
	menu_background = sprite_create_from_surface(menu_surf,0,0,room_width,room_height,false,false,0,0);
	return menu_background;
}