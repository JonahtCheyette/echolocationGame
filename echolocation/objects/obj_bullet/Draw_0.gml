/// @description draw the bullet
if(!hit){
	gpu_set_blendmode_ext(bm_inv_dest_alpha,bm_one);
	draw_self();
	gpu_set_blendmode(bm_normal);
}