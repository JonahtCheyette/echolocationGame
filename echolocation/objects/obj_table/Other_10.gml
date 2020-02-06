/// @description pushed over
if(!pushed){
	event_inherited();
	pushed = true;
	// holds where the player is relative to the table
	pushedDir = point_direction(obj_player.x, obj_player.y, x + sprite_width / 2, y + sprite_height / 2);
}