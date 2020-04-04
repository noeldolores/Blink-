/// @description Initialize

//General Variables
room_speed = 60;
device_mouse_dbclick_enable(true);
global.tap_score = 0;

//Create game grids
global.left_grid = ds_grid_create(2, 2);
global.right_grid = ds_grid_create(2, 2);

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

//Game over
game_over = false;