/// @description Insert description here
gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_one);
draw_self();
draw_set_color(c_red)
draw_arrow(x,y,x+lengthdir_x(20, dir), y+ lengthdir_y(20, dir),5);
draw_set_color(c_green)
draw_arrow(x,y,x+lengthdir_x(20, targetDir), y+ lengthdir_y(20,targetDir),5);
gpu_set_blendmode(bm_normal);