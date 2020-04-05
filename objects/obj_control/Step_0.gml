/// @description Spawn and Timer

if room = rm_play {
	if !alarm[0] {
		if countdown_timer > 0 {
			alarm[0] = scr_seconds(1);
		}
	}
	
	if countdown_timer <= 0 {
		if !alarm[1] {
			if round_timer > 0 {
				alarm[1] = scr_seconds(1);	
			}
		}
		if round_timer > 0 {
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
		} else {
			game_over = true;	
		}
	}
}

if game_over = true {
	if instance_exists(obj_mole) {
		instance_destroy(obj_mole);
	}
	if can_restart = false {
		if !alarm[2] {
			alarm[2] = scr_seconds(1);	
		}
	} else {		
		if device_mouse_check_button_pressed(0, 2) {
			room_goto(rm_start);
			instance_destroy(self);
		}
	}
}