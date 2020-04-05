/// @description Insert description here
// You can write your code in this editor

if position_meeting(device_mouse_x(0), device_mouse_y(0), self) {
	if device_mouse_check_button_pressed(0, 1) {
		if global.grid_size = 4 {	
			global.grid_size = 2;
			image_index = global.grid_size - 2;
		} else {
			global.grid_size += 1;
			image_index = global.grid_size - 2;
		}
	}
}