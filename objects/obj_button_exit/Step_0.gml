/// @description Insert description here
// You can write your code in this editor

if !alarm[0] {
	if protection_timer > 0 {
		alarm[0] = scr_seconds(1);
	}
	
	if position_meeting(device_mouse_x(0), device_mouse_y(0), self) {
		if device_mouse_check_button_pressed(0, 1) {
			game_end();
		}
	}
}