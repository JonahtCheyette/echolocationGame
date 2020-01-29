/// @description Insert description here
// You can write your code in this editor
draw_self();

//do the player silhouette
with(obj_moves){
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);

	//draw the silhouette
	if(object_index == obj_player){
		gpu_set_fog(true,c_blue,0,1);
	} else {
		gpu_set_fog(true,c_maroon,0,1);
	}
	draw_self();
	gpu_set_fog(false,c_white,0,0);

	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}