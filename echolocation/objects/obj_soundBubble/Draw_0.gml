/// @description draw the bubble
draw_set_color(c_black);
gpu_set_blendmode(bm_max);
draw_circle(mouse_x,mouse_y,size,0);
gpu_set_blendmode(bm_normal);
