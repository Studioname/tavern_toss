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

//collision entities
#macro ROUND_TABLE -7
#macro SQUARE_TABLE -8
#macro STOOL -9
#macro BAR -10
#macro BARRELS -11

//pickups
//magic items
#macro POTION_OF_STRENGTH -20
#macro HEALING_POTION -21
#macro MAGIC_POTION -22

//weapons
#macro SWORD -40
#macro MACE -41
#macro SHIELD -42
#macro STAFF -43

//armour
#macro HELMET -60
#macro BREASTPLATE -61
#macro MAGIC_BOOTS -62

//misc
#macro BEER -80
#macro WINE -81
#macro HAM -82

//game
#macro PLAYER -100
#macro VOID -101
#macro TRAPDOOR -102

//enemies
#macro PATRON -120
#macro BRAWLER -121
#macro MERCENARY -123
#macro WIZARD -124
#macro DWARF -125
#macro ELF -126

//debuffs
//can only hop in straight line
#macro BUCKET -140
//slides forward in straight line
#macro UNPLEASANT_PUDDLE -141

//loot
#macro POUCH -160

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

//global.collision tracker

global.loot = 0;
global.looted_items = {
	pouch: 0,	
}