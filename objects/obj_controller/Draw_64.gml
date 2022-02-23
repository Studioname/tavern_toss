/// @obj_controller draw_gui

var _icon_array_length = array_length(global.instructions);
var i;
for (i = 0; i < _icon_array_length; i++){
	draw_sprite(global.instructions[i][0], 0, global.instructions[i][1],_gui_h/6 * 5);	
}