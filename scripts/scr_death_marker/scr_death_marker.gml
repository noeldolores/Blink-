///(sudden death bool, max miss markers)
var sudden_death = argument[0];
var max_markers = argument[1];

if device_mouse_check_button_pressed(0, mb_left) {
	if !position_meeting(device_mouse_x(0), device_mouse_y(0), obj_mole) {
		if instance_number(obj_death_marker) < max_markers {	
			instance_create_layer(device_mouse_x(0), device_mouse_y(0), "Instances", obj_death_marker);
		}
		if sudden_death = true {
			round_timer = 0;
			game_over = true;
		}	
	}
}