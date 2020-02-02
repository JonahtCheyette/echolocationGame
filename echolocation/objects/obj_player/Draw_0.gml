/// @description drawing yourself
// draws the outline
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_one);
	draw_sprite_ext(outlineSprite, image_index, x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]), image_xscale, image_yscale, pointerRotation - 90, c_white, 1);
	//invincibility
	if(invincibilityFrames > 0){
		draw_sprite_stretched_ext(outlineSprite, image_index,x - sprite_width / 2 - camera_get_view_x(view_camera[0]),y - sprite_height / 2 - camera_get_view_y(view_camera[0]),sprite_width,sprite_height,c_black,(invincibilityFrames%20)/20);
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}

//draw the player
draw_self();

//invincibility
if(invincibilityFrames > 0){
	if(spd == 0){
		draw_sprite_ext(spr_playerInvincibility, 0, x, y, image_xscale, image_yscale, pointerRotation - 90, c_black, (invincibilityFrames%20)/20);
	} else {
		draw_sprite_ext(spr_playerInvincibilityWalking, image_index, x, y, image_xscale, image_yscale, pointerRotation - 90, c_black, (invincibilityFrames%20)/20);
	}
}

//silhouette
event_inherited();

//pointer
mx = mouse_x - x;
my = mouse_y - y;

pointerRotation = point_direction(x, y, mouse_x, mouse_y);

mLen = point_distance(x, y, mouse_x, mouse_y);

mx /= mLen;
my /= mLen;

mx *= 100;
my *= 100;

mx += x;
my += y;

//drawing the pointer
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
	draw_sprite_ext(spr_pointer, 0, mx - camera_get_view_x(view_camera[0]), my - camera_get_view_y(view_camera[0]), 1, 1, pointerRotation + 45, c_white, 1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}

image_angle = pointerRotation - 90;