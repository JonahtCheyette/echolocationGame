/// @description Draw the outline
gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
draw_set_color(c_white);
for(var i = 0; i < array_height_2d(barsLeft); i++){
	draw_line(x, barsLeft[i,0], x, barsLeft[i,1]);
}
for(var i = 0; i < array_height_2d(barsRight); i++){
	draw_line(x + sprite_width, barsRight[i,0], x + sprite_width, barsRight[i,1]);
}
for(var i = 0; i < array_height_2d(barsTop); i++){
	draw_line(barsTop[i,0], y, barsTop[i,1], y);
}
for(var i = 0; i < array_height_2d(barsBottom); i++){
	draw_line(barsBottom[i,0], y + sprite_height, barsBottom[i,1], y + sprite_height);
}
gpu_set_blendmode(bm_normal);