/// @description clear the surface
if(!surface_exists(surface)){
	surface = surface_create(room_width, room_height);
}
if(surface_exists(surface)){
	surface_set_target(surface);
	draw_clear(make_color_rgb(0,0,60));
	surface_reset_target();
}