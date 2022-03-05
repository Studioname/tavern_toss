///@random_direction()
function random_direction(){
	var _facing = global.facing;
	var _behind = get_direction(2, "cw");
	var _choices = [UP, DOWN, LEFT, RIGHT];
	var _facing_index = array_find(_choices, _facing);
	array_delete(_choices,_facing_index, 1);
	var _behind_index = array_find(_choices, _behind);
	array_delete(_choices,_behind_index, 1);
	//if we havent moved
	while cell_is_solid([COLLISION_TILES, WALL_OBJECTS, ROOM_OBJECTS], check_cell(global.collisions)){
		randomise();
		var _arr_len = array_length(_choices);
		if _arr_len > 0 {
			var _choice = _choices[irandom(_arr_len-1)];
			global.facing = _choice;
			array_delete(_choices,array_find(_choices,_choice), 1);
		}
		else {
			global.facing = _behind;	
		}
	}
	animations();
}