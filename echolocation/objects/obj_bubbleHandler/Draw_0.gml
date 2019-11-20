/// @description drawing the color of the bubble and making it fade
for(var i = 0; i < ds_list_size(bubbles); i++){
	draw_set_color(c_black);
	gpu_set_blendmode_ext(bm_inv_dest_alpha,bm_one);
	draw_circle(bubbles[|i].x,bubbles[|i].y,bubbles[|i].size, 0);
	gpu_set_blendmode(bm_normal);
}