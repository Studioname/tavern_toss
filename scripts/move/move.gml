///@move();
function move(){
	if check_cell(global.collisions) != VOID{
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
		pickup();
		ds_stack_pop(global.commands);
	}
	else{
		change_direction(2,"cw");
		ds_stack_pop(global.commands);
	}

}