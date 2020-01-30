/// @description drawing yourself
if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
	draw_set_color(c_white);
	draw_circle(x - 1, y - 1,7.5,1);
	if(invincibilityFrames > 0){
		draw_set_color(c_black);
		draw_set_alpha((invincibilityFrames%20)/20);
		draw_circle(x - 1,y - 1,7.5,1);
		draw_set_alpha(1);
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(room_width, room_height);
}

draw_self();

if(invincibilityFrames > 0){
	draw_set_color(c_black);
	draw_set_alpha((invincibilityFrames%20)/20);
	//draw_circle(x - 1,y - 1,7.5,false);
	draw_set_alpha(1);
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

mx *= 50;
my *= 50;

mx += x;
my += y;

if(surface_exists(obj_bubbleSurface.surface)){
	surface_set_target(obj_bubbleSurface.surface);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_one);
	draw_sprite_ext(spr_pointer, 0, mx, my, 0.5, 0.5, pointerRotation + 45, c_white, 1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	obj_bubbleSurface.surface = surface_create(room_width, room_height);
}

draw_sprite_ext(spr_pointer, 0, mx, my, 0.5, 0.5, pointerRotation + 45, c_white, 1);