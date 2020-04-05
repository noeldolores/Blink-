/// @description Insert description here
// You can write your code in this editor

if position_meeting(device_mouse_x(0), device_mouse_y(0), self) {
	if device_mouse_check_button_pressed(0, mb_left) {
		//Create game grids
		global.left_grid = ds_grid_create(global.grid_size, global.grid_size);
		global.right_grid = ds_grid_create(global.grid_size, global.grid_size);
		
		room_goto(rm_play);	
	}
}