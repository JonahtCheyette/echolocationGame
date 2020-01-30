/// @description draw the surface
if(!surface_exists(surface)){
	surface = surface_create(room_width, room_height);
}
if(surface_exists(surface)){
	draw_surface(surface,0,0);
}