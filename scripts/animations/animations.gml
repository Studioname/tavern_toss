// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animations(){
	switch global.facing{
		case UP: sprite_index = spr_player_up;
		break;
		case RIGHT: sprite_index = spr_player_right;
		break;
		case DOWN: sprite_index = spr_player_down;
		break;
		case LEFT: sprite_index = spr_player_left;
		break;
	}
}