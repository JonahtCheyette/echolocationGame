/// @description clear the surface
if(!surface_exists(surface)){
	surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}
surface_set_target(surface);
draw_clear(make_color_rgb(0,0,60));
surface_reset_target();