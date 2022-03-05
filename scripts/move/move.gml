///@move();
function move(){
	var _next_cell = check_cell(global.collisions);
	//if we can't go forward then find a direction we can
	if cell_is_solid([WALL_OBJECTS, ROOM_OBJECTS, COLLISION_TILES], _next_cell) {
	random_direction();
	}
	//go forward
	switch global.facing{
		case UP:
			y-=CELL_SIZE;
			break;
		case RIGHT:
			x+=CELL_SIZE;
			break;
		case DOWN: 
			y+=CELL_SIZE;
			break;
		case LEFT: 
			x-=CELL_SIZE;
			break;
	}
	//we check for treasure before setting value to player
	//pickup();
	check_if_escape(global.collisions, x div CELL_SIZE, y div CELL_SIZE, [EXIT_DOOR, ESCAPE_HATCH]);
	track_loops(global.collisions);
	ds_stack_pop(global.commands);
}