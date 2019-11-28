/// @description Draw the outline
gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
draw_set_color(c_white);
draw_rectangle(x, y, x + sprite_width,y + sprite_height,1);
gpu_set_blendmode(bm_normal);