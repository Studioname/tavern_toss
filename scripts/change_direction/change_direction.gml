///@change_direction()
function change_direction(_number_of_times, _clockwise_or_ccw){
	global.facing = get_direction(_number_of_times, _clockwise_or_ccw);;
	animations();
}