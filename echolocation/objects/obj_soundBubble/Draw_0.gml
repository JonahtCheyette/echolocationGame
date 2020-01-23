/// @description draw the bubble
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	draw_set_color(c_black);
	gpu_set_blendmode_ext(bm_zero,bm_zero);
	draw_circle(x,y,size,0);
	if(drawMode == bubbleDrawModes.REGULAR){
		draw_set_color(c_white);
		gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
		draw_circle(x,y,size + 0.5,0);
	} else if (drawMode == bubbleDrawModes.GROWING){
		if(growing){
			draw_set_color(c_white);
			gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
			draw_circle(x,y,size + 0.5,0);
		}
	} else if (drawMode == bubbleDrawModes.SHRINKING){
		if(!growing){
			draw_set_color(c_white);
			gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
			draw_circle(x,y,size + 0.5,0);
		}
	}
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(room_width, room_height);
}

gpu_set_blendmode(bm_normal);