///@mine(grid)
function mine(){
	var _cur_x = x div CELL_SIZE;
	var _cur_y = y div CELL_SIZE;
	//add resources from current tile to resource tracker
	switch global.minerals [# _cur_x, _cur_y]{
		case CLAY: global.minerals_tracker.clay += 1;
		break;
		case TIN_ORE: global.minerals_tracker.tin_ore += 1;
		break;
		case IRON_ORE: global.minerals_tracker.iron_ore += 1;
		break;
		case STONE: global.minerals_tracker.stone += 1;
		break;
		case COAL: global.minerals_tracker.coal += 1;
		break;
		case COPPER_ORE: global.minerals_tracker.copper_ore += 1;
		break;
		case QUARTZ: global.minerals_tracker.quartz += 1;
		break;
		case FLINT: global.minerals_tracker.flint += 1;
		break;
		case AMBER: global.minerals_tracker.amber += 1;
		break;
		case SILVER_ORE: global.minerals_tracker.silver_ore += 1;
		break;
		case GOLD_ORE: global.minerals_tracker.gold_ore += 1;
		break;
		case PLATINUM_ORE: global.minerals_tracker.platinum_ore += 1;
		break;
		case RUBY: global.minerals_tracker.ruby += 1;
		break;
		case SAPPHIRE: global.minerals_tracker.sapphire += 1;
		break;
		case EMERALD: global.minerals_tracker.emerald += 1;
		break;
	}
	//delete cell
	global.minerals [# _cur_x, _cur_y] = noone;
	//unpaint tiles
	tilemap_set_at_pixel(global.substrates_tilemap,0,x,y);
	tilemap_set_at_pixel(global.minerals_tilemap,0,x,y);
}