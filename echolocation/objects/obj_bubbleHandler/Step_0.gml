/// @description create bubble whenever there's a click
if(mouse_button){
	bubble = instance_create_layer(mouse_x,mouse_y,"Bubbles",obj_soundBubble);
	bubble.size = 10;
	/*
	col = draw_getpixel_ext(mouse_x,mouse_y)
	alpha = (col>>24) & 255;
	blue = (col>>16) & 255;
	green = (col>>8) & 255;
	red = col & 255;
	show_debug_message("r: " + string(red))
	show_debug_message("g: " + string(green))
	show_debug_message("b: " + string(blue))
	show_debug_message("a: " + string(alpha))*/
}