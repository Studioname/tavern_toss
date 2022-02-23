///@move();
function move(){
	if check_cell(global.objects) != VOID{
		global.objects [# x div CELL_SIZE, y div CELL_SIZE] = noone;
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
		mine();
		check_for_treasure();
		global.objects [# x div CELL_SIZE, y div CELL_SIZE] = PLAYER;
		ds_stack_pop(global.commands);
	}
	else{
		change_direction(2,"cw");
		ds_stack_pop(global.commands);
	}

}