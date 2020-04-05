/// @description Spawn and Timer

if room = rm_play {
	if !alarm[0] {
		if countdown_timer > 0 {
			alarm[0] = scr_seconds(1);
		}
	}
	
	switch (global.game_mode) {
		//10 second timed, sudden death
		case 1:
			if countdown_timer <= 0 && !game_over {
				if device_mouse_check_button_pressed(0, mb_left) {
					if !position_meeting(device_mouse_x(0), device_mouse_y(0), obj_mole) {
						round_timer = 0;
					}
				}
			}
		//10 second timed
		case 0:
			if countdown_timer <= 0 && !game_over {
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
		break;
		
		//No timer, sudden death
		case 2: ;
			if countdown_timer <= 0 {
				if !alarm[3] {
					if round_duration >= 0 {
						alarm[3] = scr_seconds(1);	
					}
				}
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
				if device_mouse_check_button_pressed(0, mb_left) {
					if !position_meeting(device_mouse_x(0), device_mouse_y(0), obj_mole) {
						game_over = true;
					}
				}
			}
		break;
		
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