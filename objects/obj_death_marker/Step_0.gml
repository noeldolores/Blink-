if global.game_mode = 0 {
	image_alpha -= 0.1;
	if image_alpha = 0 {
		instance_destroy();	
	}
}