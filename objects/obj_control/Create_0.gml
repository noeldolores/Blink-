/// @description Initialize

//Create game grids
global.left_grid = ds_grid_create(2, 2);
global.right_grid = ds_grid_create(2, 2);


//Inits game score
global.tap_score = 0;

//Inits spawn side trigger
global.spawn_side = 0;

//Chooses a left or right side start
var start_side = irandom(1)
if start_side = 0 {
	global.spawn_side = "left";
} else {
	global.spawn_side = "right";
}

