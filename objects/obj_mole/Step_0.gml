/// @description Input Check

if position_meeting(device_mouse_x(0), device_mouse_y(0), self) {
	if device_mouse_check_button_pressed(0, mb_left) {
		instance_destroy();	
	}
}