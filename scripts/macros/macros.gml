///@macros

//we add a 1 tile buffer around the room
room_set_width(room, 1280+64);
room_set_height(room, 1280+64);

//grids
#macro CELL_SIZE 32
#macro CELLS_W room_width div 32
#macro CELLS_H room_height div 32
#macro GRID ds_grid_create(CELLS_W + 1, CELLS_H + 1)
//we have a one cell buffer around our grid
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

//floor
#macro FLOOR -6
#macro NO_PAINT_BUFFER 2

global.collision_tile_elements = {
	wall : {
		tileset: noone,
		val: -10,
	},
	bar : {
		tileset: noone,
		val: -11,
	},
	rear_bar : {
		tileset: noone,
		val: -12,
	},
	exit_door : {
		tileset : noone,
		val: -13,	
	},
	void : {
		tileset : noone,
		val: -59,
	},

}
global.collision_object_elements = {
	wall_objects : {
		barrel : {
			tileset: noone,
			val: -20,
			odds: 12,
		},
		plant_pot : {
			tileset: noone,
			val: -21,
			odds: 12,
		},
	},
	room_objects : {
		banquet_table : {
			tileset: noone,
			val: -30,
			odds: 50,
			w: 10,
			h: 2,
		},
		round_table : {
			tileset: noone,
			val: -31,
			odds: 10,
			w: 2,
			h: 2,
		},
		square_table : {
			tileset: noone,
			val: -32,
			odds: 10,
			w: 2,
			h: 2,
		},
		stool : {
			tileset: noone,
			val: -33,
			odds: 1,
			w: 0,
			h: 0,
		},
		fireplace : {
			tileset: noone,
			val: -34,
			odds: noone,
			w: 0,
			h: 0,
		},
		fire : {
			tileset: noone,
			val: -35,
			odds: noone,
			w: 0,
			h: 0,
		},
	},
}

//macros for quick reference
#macro COLLISION_TILES global.collision_tile_elements
#macro WALL_OBJECTS global.collision_object_elements.wall_objects
#macro ROOM_OBJECTS global.collision_object_elements.room_objects

//item data
global.item_data = {
	//magic items
	potion_of_strength : new item(noone, "Potion of Strength", -60, 40, fnc_potion_of_strength),
	potion_of_healing : new item(noone, "Potion of Healing", -61, 60, fnc_potion_of_healing),
	potion_of_polymorph : new item(noone, "Potion of Polymorph", -62, 80, fnc_potion_of_polymorph),
	
	//weapons
	sword : new item(noone, "Sword", -90, 60, fnc_sword),
	mace : new item(noone, "Mace", -91, 60, fnc_mace),
	shield : new item(noone, "Shield", -92, 60, fnc_shield),
	staff : new item(noone, "Staff", -93, 60, fnc_staff),

	//armour
	helmet : new item(noone, "Helmet", -120, 60, fnc_helmet),
	breastplate : new item(noone, "Breastplate", -120, 60, fnc_breastplate),
	boots : new item(noone, "Boots", -120, 80, fnc_boots),
	
	//misc
	beer : new item(noone, "Beer", -150, 60, fnc_beer),
	wine : new item(noone, "Wine", -150, 60, fnc_wine),
	ham : new item(noone, "Ham", -150, 60, fnc_ham),
	
	//loot
	pouch : new item(noone, "Pouch", -180, 40, fnc_pouch),
	
	//debuffs
	bucket : new item(noone, "Bucket", -210, 40, fnc_bucket),
	unpleasant_puddle : new item(noone, "Unpleasant Puddle", -211, 40, fnc_unpleasant_puddle),
}

global.enemy_data = {
	//enemies
	patron : new enemy(noone, "Patron", -250, 10, 10, 1, fnc_patron),
	brawler : new enemy(noone, "Brawler", -251, 20, 15, 1, fnc_brawler),
	mercenary : new enemy(noone, "Mercenary", -252, 20, 20, 1, fnc_mercenary),
	dwarf : new enemy(noone, "Dwarf", -253, 30, 25, 1, fnc_dwarf),
	elf : new enemy(noone, "Elf", -254, 20, 25, 1, fnc_elf),
	wizard : new enemy(noone, "Wizard", -255, 40, 30, 1, fnc_wizard),
	troll : new enemy(noone, "Troll", -256, 50, 20, 2, fnc_troll),
	barman : new enemy(noone, "Barman", -257,0,20,1000,fnc_barman),
	bouncer : new enemy(noone, "Bouncer", -258,0,20,1000,fnc_barman),
	mimic : new enemy(noone, "Mimic", -259,50,20,1,fnc_mimic),
}

global.item_data = ds_list_create();
ds_copy_struct_to_list(item_data, global.item_data);
global.enemy_data = ds_list_create();
ds_copy_struct_to_list(enemy_data, global.enemy_data);



//game
#macro VOID -59
#macro PLAYER -270
#macro ESCAPE_HATCH -272
#macro EXIT_DOOR -273

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

global.gold = 0;
global.looted_items = {
	pouch: 0,	
}

//loop tracker
global.loop_tracker = [];
global.loop_index = noone;