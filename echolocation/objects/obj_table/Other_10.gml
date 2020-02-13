/// @description pushed over
if(!pushed){
	event_inherited();
	pushed = true;
	// holds where the player is relative to the table
	pushedDir = point_direction(obj_player.x, obj_player.y, x + sprite_width / 2, y + sprite_height / 2);
	instance_place_list(x, y, obj_paper, papers, false);
	for(var i = 0; i < ds_list_size(papers); i++){
		with(papers[|i]){
			moveCount = 50;
			dir = other.pushedDir;
			event_user(0);
		}
	}
}