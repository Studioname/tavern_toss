/// @obj_player

depth = -y;
//buffer is to centre the player in the grid cell
buffer = 16;
x = room_width/2 + buffer;
y = CELL_SIZE * 2 + buffer;
//tell objects grid what cell player is in
global.objects [# x div CELL_SIZE, y div CELL_SIZE] = PLAYER;
global.facing = DOWN;



