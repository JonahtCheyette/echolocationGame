/// @description Draw the outline
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
	draw_set_color(c_white);
	for(var i = 0; i < array_height_2d(barsLeft); i++){
		draw_line(x - 1 - camera_get_view_x(view_camera[0]), barsLeft[i,0] - camera_get_view_y(view_camera[0]), x - 1 - camera_get_view_x(view_camera[0]), barsLeft[i,1] - camera_get_view_y(view_camera[0]));
	}
	for(var i = 0; i < array_height_2d(barsRight); i++){
		draw_line(x + sprite_width - 1 - camera_get_view_x(view_camera[0]), barsRight[i,0] - camera_get_view_y(view_camera[0]), x + sprite_width - 1 - camera_get_view_x(view_camera[0]), barsRight[i,1] - camera_get_view_y(view_camera[0]));
	}
	for(var i = 0; i < array_height_2d(barsTop); i++){
		draw_line(barsTop[i,0] - camera_get_view_x(view_camera[0]), y - 1 - camera_get_view_y(view_camera[0]), barsTop[i,1] - camera_get_view_x(view_camera[0]), y - 1 - camera_get_view_y(view_camera[0]));
	}
	for(var i = 0; i < array_height_2d(barsBottom); i++){
		draw_line(barsBottom[i,0] - camera_get_view_x(view_camera[0]), y + sprite_height - 1 - camera_get_view_y(view_camera[0]), barsBottom[i,1] - camera_get_view_x(view_camera[0]), y + sprite_height - 1 - camera_get_view_y(view_camera[0]));
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}
draw_self();