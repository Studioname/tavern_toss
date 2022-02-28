/// @obj_player
//movement for debugging
//var _up = keyboard_check(ord("w"));
//var _down = keyboard_check(ord("s"));
//var _left = keyboard_check(ord("a"));
//var _right = keyboard_check(ord("d"));
//var _spd = 32;
//var _hsp = (_left - _right) * _spd;
//var _vsp = (_down - _up) * _spd;
//x += _hsp;
//y += _vsp;


if keyboard_check(ord("W")){
		y-=CELL_SIZE/4;
}
if keyboard_check(ord("D")){
		x+=CELL_SIZE/4;
}
if keyboard_check(ord("S")){
		y+=CELL_SIZE/4;
}
if keyboard_check(ord("A")){ 
		x-=CELL_SIZE/4;
}
