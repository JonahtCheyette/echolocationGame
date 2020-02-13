/// @description do the tiling

//legs
if(pushed){
	for(var i = 0; i < array_height_2d(legBottoms); i++){
		draw_sprite_ext(spr_tableLeg, 0, legBottoms[i, 0], legBottoms[i, 1], 2, pushSpeed * (animationCounter + 1)/ sprite_get_height(spr_tableLeg), pushedDir - 90, c_white, 1);
	}
}

//top left corner
draw_sprite_part_ext(spr_table, 0, 0, 0, 9, 9, x, y, 2, 2, c_white, 1);
//top edge
draw_sprite_part_ext(spr_table, 0, 9, 0, 9, 9, x + 18, y, sprite_width / 9 - 2, 2, c_white, 1);
//top right corner
draw_sprite_part_ext(spr_table, 0, 18, 0, 9, 9, x + sprite_width - 18, y, 2, 2, c_white, 1);
//left edge
draw_sprite_part_ext(spr_table, 0, 0, 9, 9, 9, x, y + 18, 2, sprite_height / 9 - 2, c_white, 1);
//center
draw_sprite_part_ext(spr_table, 0, 9, 9, 9, 9, x + 18, y + 18, sprite_width / 9 - 2, sprite_height / 9 - 2, c_white, 1);
//right edge
draw_sprite_part_ext(spr_table, 0, 18, 9, 9, 9, x + sprite_width - 18, y + 18, 2, sprite_height / 9 - 2, c_white, 1);
//bottom left corner
draw_sprite_part_ext(spr_table, 0, 0, 18, 9, 9, x, y + sprite_height - 18, 2, 2, c_white, 1);
//bottom edge
draw_sprite_part_ext(spr_table, 0, 9, 18, 9, 9, x + 18, y + sprite_height - 18, sprite_width / 9 - 2, 2, c_white, 1);
//bottom right corner
draw_sprite_part_ext(spr_table, 0, 18, 18, 9, 9, x + sprite_width - 18, y + sprite_height - 18, 2, 2, c_white, 1);