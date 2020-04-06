/// @description Spawn and Timer
if room = rm_play {
	if !alarm[0] {
		if countdown_timer > 0 {
			alarm[0] = scr_seconds(1);
		}
	}
	
	switch (global.game_mode) {		
		case 1:		//10 second timed, sudden death
			if countdown_timer <= 0 && !game_over {
				scr_death_marker(true, 1);
			}		
		case 0:		//10 second timed
			if countdown_timer <= 0 {
				if round_timer > 0 {
					if !alarm[1] {
						alarm[1] = scr_seconds(1/60);	
					}
					scr_spawn_mole();
					scr_death_marker(false, 5);
				} else {
					game_over = true;	
				}
			}
		break;		
		case 2:		//No timer, sudden death
			if countdown_timer <= 0 {
				if !alarm[3] {
					if round_duration >= 0 {
						alarm[3] = scr_seconds(1);	
					}
				}
				scr_spawn_mole();				
				scr_death_marker(true, 1);
			}
		break;
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
}