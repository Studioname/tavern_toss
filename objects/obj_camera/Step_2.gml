/// @obj_camera end step

camera_set_view_size(VIEW, view_width, view_height);

if instance_exists(obj_player){
	var _x = clamp(obj_player.x - view_width/2, CELL_SIZE, room_width-view_width);
	var _y = clamp(obj_player.y - view_height/2, CELL_SIZE, room_height-view_height);
	
	var _cur_x = camera_get_view_x(VIEW);
	var _cur_y = camera_get_view_y(VIEW);
	
	var _spd = .1;
	
	camera_set_view_pos(VIEW, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd));
	
}