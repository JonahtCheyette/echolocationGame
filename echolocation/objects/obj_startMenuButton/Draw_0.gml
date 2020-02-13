/// @description draw
draw_set_color(make_color_rgb(0,255,196));
draw_rectangle(0, y, x, y + sprite_height - 1, false);
draw_self();
if(onTop){
	draw_set_color(c_black);
} else {
	draw_set_color(c_gray);
}
draw_set_font(fnt_Game);
draw_text_transformed(5, y, str, 64 / string_height(str), 64 / string_height(str), 0);