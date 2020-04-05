/// @description Draw Round Timer
if room = rm_play && (global.game_mode = 0 || global.game_mode = 1 ) {
	draw_healthbar((room_width/2)-3, 0, (room_width/2)+3, room_height, (round_timer/10)*100, c_white, c_red, c_black, 3, true, false);
}