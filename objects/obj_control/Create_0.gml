/// @description Initialize

//General Setup
draw_set_font(fn_ui);
device_mouse_dbclick_enable(true);

room_speed = 60;

global.tap_score = 0;
global.grid_size = 2;
global.game_mode = 0;

//Chooses a left or right side spawn start
global.spawn_side = 0;
var start_side = irandom(1)
if start_side = 0 {
	global.spawn_side = "left";
} else {
	global.spawn_side = "right";
}

//Timer Variables
countdown_timer = 3;
round_timer = 10;
round_duration = 0;

//End Game Variables
game_over = false;
can_restart = false;