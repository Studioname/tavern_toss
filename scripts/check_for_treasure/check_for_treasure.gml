///@check_for_treasure
function check_for_treasure(){
	if global.objects [# x div CELL_SIZE, y div CELL_SIZE] == TREASURE {
		show_message("Treasure found! Proceed to the next level.")	
	}
}