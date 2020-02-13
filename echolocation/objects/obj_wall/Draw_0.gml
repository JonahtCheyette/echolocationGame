/// @description Draw the outline
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
	draw_set_color(c_white);
	draw_rectangle(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]), x + sprite_width - camera_get_view_x(view_camera[0]), y + sprite_height - camera_get_view_y(view_camera[0]), true);
	draw_rectangle(x - camera_get_view_x(view_camera[0]) + 1, y - camera_get_view_y(view_camera[0]) + 1, x + sprite_width - camera_get_view_x(view_camera[0]) - 1, y + sprite_height - camera_get_view_y(view_camera[0]) -1, true);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}
draw_self();