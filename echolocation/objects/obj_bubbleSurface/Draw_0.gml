/// @description draw the surface
if(!surface_exists(surface)){
	surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}
if(surface_exists(surface)){
	draw_surface(surface,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
}