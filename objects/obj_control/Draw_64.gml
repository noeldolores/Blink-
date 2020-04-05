/// @description Display Score and Timer

display_set_gui_size(1080,540);

draw_set_color(c_red);

var ui_width_middle = display_get_gui_width()/2;
var ui_height_middle = display_get_gui_height()/2;

if room = rm_play {
	
	draw_set_halign(fa_middle);
	
	if !alarm[0] {
		draw_text(ui_width_middle, ui_height_middle / 8, "Score: " + string(global.tap_score));
	}

	if alarm[0] {
		draw_text(ui_width_middle, ui_height_middle, "Begin in: " + string(countdown_timer));
	}
	
	if alarm[1] {
		//draw_text(ui_width_middle, ui_height_middle - 8,  "Time Left");
		//draw_text(ui_width_middle, ui_height_middle + 8,  round_timer);
	}
	if game_over = true {
		draw_text(ui_width_middle, ui_height_middle - 32, "Game Over!");
	}
	if can_restart = true {
		draw_text(ui_width_middle, ui_height_middle, "Double Tap Anywhere to Restart");
	}
	draw_set_halign(fa_left);
}