/// @description draw the bubble
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	draw_set_color(c_black);
	gpu_set_blendmode_ext(bm_zero,bm_zero);
	draw_circle(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]),size,0);
	if(drawMode == bubbleDrawModes.REGULAR){
		draw_set_color(c_white);
		gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
		draw_circle(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]),size + 0.5,0);
	} else if (drawMode == bubbleDrawModes.GROWING){
		if(growing){
			draw_set_color(c_white);
			gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
			draw_circle(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]),size + 0.5,0);
		}
	} else if (drawMode == bubbleDrawModes.SHRINKING){
		if(!growing){
			draw_set_color(c_white);
			gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
			draw_circle(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]),size + 0.5,0);
		}
	}
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}

gpu_set_blendmode(bm_normal);