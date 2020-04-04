/// @description Display Score and Timer

display_set_gui_size(720,320);

draw_set_color(c_red);

var ui_width_middle = display_get_gui_width()/2;
var ui_height_middle = display_get_gui_height()/2;

draw_text(ui_width_middle, ui_height_middle, global.tap_score);
