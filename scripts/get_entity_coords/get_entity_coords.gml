///@get_entity_coords();
function get_entity_coords(_grid_id, _instance_id){
	var _x1 = noone;
	var _y1 = noone;
	var _x2 = noone;
	var _y2 = noone;
	var i;
	var j;
	for (i = 0; i < ds_grid_width(_grid_id); i++){
		for (j = 0; i < ds_grid_height(_grid_id); i++){
			if _x1 == noone and _y1 == noone and ds_grid_get(_grid_id, i, j) == _instance_id{
				_x1 = i;
				_y1 = j;
			}
			if ds_grid_get(_grid_id, i, j) == _instance_id{
				_x2 = i;
				_y2 = j;
			}
		}
	}
	coords[0] = _x1;
	coords[1] = _y1;
	coords[2] = _x1;
	coords[3] = _y1;
	
	return coords;
}