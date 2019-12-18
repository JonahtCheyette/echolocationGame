/// @description draw the bubble
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
gpu_set_blendmode(bm_normal);