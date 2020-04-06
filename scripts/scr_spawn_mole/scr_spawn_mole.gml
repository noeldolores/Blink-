if !instance_exists(obj_mole) {
	if global.spawn_side = "left" {
		var spawn_x = irandom(ds_grid_width(global.left_grid)-1)*(24/global.grid_size);
		var spawn_y = irandom(ds_grid_height(global.left_grid)-1)*(24/global.grid_size);
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_mole);
		global.spawn_side = "right";
	} else {
		var spawn_x = (irandom(ds_grid_width(global.right_grid)-1)*(24/global.grid_size)) + 30;
		var spawn_y = irandom(ds_grid_height(global.right_grid)-1)*(24/global.grid_size);
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_mole);
		global.spawn_side = "left";
	}
}