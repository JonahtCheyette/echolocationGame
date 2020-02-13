/// @description check if the mouse is over the button
if(collision_point(mouse_x, mouse_y, obj_startMenuButton, false, false) || (mouse_x < x && mouse_y >= y && mouse_y <= y + sprite_height)){
	onTop = true;
	if(mouse_check_button_pressed(mb_left)){
		event_user(0);
	}
} else {
	onTop = false;
}