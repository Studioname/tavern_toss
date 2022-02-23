///@macros

//we add a 1 tile buffer around the room
room_set_width(room, 1280+64);
room_set_height(room, 1280+64);

//grids
#macro CELL_SIZE 32
#macro CELLS_W room_width div 32
#macro CELLS_H room_height div 32
#macro GRID ds_grid_create(CELLS_W + 1, CELLS_H + 1)
#macro GRID_W ds_grid_width
#macro GRID_H ds_grid_height

//ui
#macro ICON_SIZE 64
#macro MOUSE_X_TO_GUI device_mouse_x_to_gui(0)
#macro MOUSE_Y_TO_GUI device_mouse_y_to_gui(0)
//camera
#macro VIEW view_camera[0]

//converts mouse coords to nearest grid point
#macro MOUSE_X_TO_GRID (mouse_x - (CELL_SIZE / 2)) div CELL_SIZE
#macro MOUSE_Y_TO_GRID (mouse_y - (CELL_SIZE / 2)) div CELL_SIZE
#macro SNAP_MOUSE_X_TO_GRID MOUSE_X_TO_GRID * CELL_SIZE
#macro SNAP_MOUSE_Y_TO_GRID MOUSE_Y_TO_GRID * CELL_SIZE

//global.substrates
#macro SOIL -7
#macro ROCK -11
#macro SAND -15
#macro SEAM -19
#macro GEMS -23
//global.minerals
#macro CLAY -8
#macro TIN_ORE -9
#macro IRON_ORE -10
#macro STONE -12
#macro COAL -13
#macro COPPER_ORE -14
#macro QUARTZ -16
#macro FLINT -17
#macro AMBER -18
#macro SILVER_ORE -20
#macro GOLD_ORE -21
#macro PLATINUM_ORE -22
#macro RUBY -24
#macro SAPPHIRE -25
#macro EMERALD -26

#macro PLAYER -48
#macro TREASURE -49
#macro VOID -50

//bitmasking values
#macro NORTH 1
#macro WEST 2
#macro EAST 4
#macro SOUTH 8

//facing
#macro UP 0
#macro RIGHT 1
#macro DOWN 2
#macro LEFT 3

//game state

global.game_paused = false;

//alarm speed

global.alarm_speed = 10;
#macro ALARM_SPEED global.alarm_speed

//global.minerals tracker

global.minerals_tracker = {
	clay: 0,
	tin_ore: 0,
	iron_ore: 0,
	stone: 0,
	coal: 0,
	copper_ore: 0,
	quartz: 0,
	flint: 0,
	amber: 0,
	silver_ore: 0,
	gold_ore: 0,
	platinum_ore: 0,
	ruby: 0,
	sapphire: 0,
	emerald: 0
}