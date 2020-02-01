/// @description Insert description here
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);
	draw_sprite_ext(sprite_index, image_number, x - camera_get_view_x(view_camera[0]), y - camera_get_view_speed_y(view_camera[0]), 1/16, 1/16, dir, c_white, 1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_self();
} else {
	obj_bubbleSurface.surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}