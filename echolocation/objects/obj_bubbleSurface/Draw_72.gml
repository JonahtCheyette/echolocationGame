/// @description Insert description here
// You can write your code in this editor
if(surface_exists(surface)){
	surface_set_target(surface);
	draw_clear(make_color_rgb(0,0,60));
	surface_reset_target();
}