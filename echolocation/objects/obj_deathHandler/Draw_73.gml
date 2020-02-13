/// @description draw health bar
if(room != rm_dead && room != rm_start){
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 100, camera_get_view_y(view_camera[0]) + 10, 0);
	draw_set_color(c_red);
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 100 * health/obj_player.maxHealth, camera_get_view_y(view_camera[0]) + 10, 0);
}