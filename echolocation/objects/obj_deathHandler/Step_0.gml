/// @description check and deal with player's death
if(health <= 0 && room != rm_dead){
	for(var i = ds_list_size(obj_bubbleHandler.bubbles) - 1; i >= 0; i--){
		instance_destroy(obj_bubbleHandler.bubbles[|i]);
		ds_list_delete(obj_bubbleHandler.bubbles,i);
	}
	room_goto(rm_dead);
}