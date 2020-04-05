/// @description Insert description here
// You can write your code in this editor
if position_meeting(device_mouse_x(0), device_mouse_y(0), self) {
	if device_mouse_check_button_pressed(0, 1) {
		if global.game_mode = 2 {	
			global.game_mode = 0;
			image_index = global.game_mode;
		} else {
			global.game_mode += 1;
			image_index = global.game_mode;
		}
	}
}