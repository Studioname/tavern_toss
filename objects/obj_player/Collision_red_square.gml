/// @red_square collision

if eat {

	with red_square {
	
		_id = instance_id_get(red_square);
		instance_destroy(_id);
		self.image_xscale += 0.5;
		self.image_yscale += 0.5;
	}

}
