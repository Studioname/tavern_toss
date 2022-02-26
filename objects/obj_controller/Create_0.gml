///@obj_controller create

//our first stack of player commands
//will copy to commands when commands stack is empty to loop them
global.commands_template = ds_stack_create()
//second stack
global.commands = ds_stack_create();

//initialise collisions, items and enemy structs
//create grid_controller object
instance_create_layer(0,0,"grid_controller", obj_grid_controller);

//create camera object
instance_create_layer(0,0,"camera", obj_camera);

//create player object
instance_create_layer(0,0,"player", obj_player);

//the gui size can be different from camera width and room size so we set it to
//the same w/h as camera
display_set_gui_size(global.window_w,global.window_h);

//gui width and height
_gui_w = display_get_gui_width();
_gui_h = display_get_gui_height();

//we use a var here because we can't reference the array length without creating it
var _no_of_buttons = 8;
//anchor for drawing buttons on x axis
_draw_x_anchor = (_gui_w/2 - (ICON_SIZE * _no_of_buttons/2)) + ICON_SIZE/2;

//_draw_y_base = _gui_h/6 * 5;

//array key
//[x][0] = entry, sprite
//...[1] = button x coordinates
//...[2] = function id
//...[3] = function arguments
global.instructions[0][0] = spr_turn_left;
global.instructions[0][1] = _draw_x_anchor;
global.instructions[0][2] = change_direction;
global.instructions[0][3] = [1, "ccw"];

global.instructions[1][0] = spr_turn_right;
global.instructions[1][1] = _draw_x_anchor + (ICON_SIZE);
global.instructions[1][2] = change_direction;
global.instructions[1][3] = [1, "cw"];

global.instructions[2][0] = spr_turn_around;
global.instructions[2][1] = _draw_x_anchor + (ICON_SIZE*2);
global.instructions[2][2] = change_direction;
global.instructions[2][3] = [2, "cw"];

global.instructions[3][0] = spr_move;
global.instructions[3][1] = _draw_x_anchor  + (ICON_SIZE*3);
global.instructions[3][2] = move;
global.instructions[3][3] = [];

global.instructions[4][0] = spr_random_direction;
global.instructions[4][1] = _draw_x_anchor  + (ICON_SIZE*4);
global.instructions[4][2] = random_direction;
global.instructions[4][3] = [];

global.instructions[5][0] = spr_loop;
global.instructions[5][1] = _draw_x_anchor  + (ICON_SIZE*5);
global.instructions[5][2] = loop;
global.instructions[5][3] = [];

global.instructions[6][0] = spr_undo;
global.instructions[6][1] = _draw_x_anchor  + (ICON_SIZE*6);
global.instructions[6][2] = undo;
global.instructions[6][3] = [];

global.instructions[7][0] = spr_go;
global.instructions[7][1] = _draw_x_anchor + (ICON_SIZE*7);
global.instructions[7][2] = go;
global.instructions[7][3] = [];