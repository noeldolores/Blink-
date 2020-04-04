/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_mole) {
	if global.spawn_side = "left" {
		var spawn_x = irandom(ds_grid_width(global.left_grid)-1)*8;
		var spawn_y = irandom(ds_grid_height(global.left_grid)-1)*8;
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_mole);
		global.spawn_side = "right";
	} else {
		var spawn_x = (irandom(ds_grid_width(global.right_grid)-1)*8) + 20;
		var spawn_y = irandom(ds_grid_height(global.right_grid)-1)*8;
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_mole);
		global.spawn_side = "left";
	}
}