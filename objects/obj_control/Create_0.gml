/// @description Initialize

//General Variables
room_speed = 60;
device_mouse_dbclick_enable(true);
global.tap_score = 0;
global.grid_size = 2;
global.game_mode = 0;

//Create game grids
//global.left_grid = ds_grid_create(global.grid_size, global.grid_size);
//global.right_grid = ds_grid_create(global.grid_size, global.grid_size);

//Inits spawn side trigger
global.spawn_side = 0;

//Chooses a left or right side start
var start_side = irandom(1)
if start_side = 0 {
	global.spawn_side = "left";
} else {
	global.spawn_side = "right";
}

//Round Start Countdown Timer
countdown_timer = 3;

//Round Timer
round_timer = 10;
round_duration = 0;

//Game over
game_over = false;
can_restart = false;

draw_set_font(fn_ui);