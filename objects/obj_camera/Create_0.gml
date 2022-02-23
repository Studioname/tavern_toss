/// @obj_camera create
view_width = 1920/6;
view_height = 1280 /6;

window_scale = 3;

global.window_w = view_width * window_scale;
global.window_h = view_height * window_scale;

window_set_size(global.window_w, global.window_h);
alarm[0] = 1;

surface_resize(application_surface,global.window_w, global.window_h);