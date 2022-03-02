///@random_direction()
function random_direction(){
	var _facing = global.facing;
	var _choices = [UP, DOWN, LEFT, RIGHT];
	var _facing_index = array_find(_choices, _facing);
	array_delete(_choices,_facing_index, 1);
	//if we havent moved
	while cell_is_solid([COLLISION_TILES, WALL_OBJECTS, ROOM_OBJECTS], check_cell(global.collisions)){
		var _choice = _choices[irandom(array_length(_choices)-1)];
		global.facing = _choice;
		array_delete(_choices,array_find(_choices,_choice), 1);
	}
	animations();
}