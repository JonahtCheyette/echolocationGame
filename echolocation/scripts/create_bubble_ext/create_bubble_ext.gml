/// @func create_bubble_ext(bubble_x, bubble_y, max_size, grow_speed, shrink_speed, suspicionValue, bubble_draw_mode);
/// @description creates a sound bubble
/// @param bubble_x the bubble x
/// @param bubble_y the bubble y
/// @param max_size the maximum size of the bubble (can be overshot)
/// @param grow_speed the speed (in pixels) the bubble's radius will grow
/// @param shrink_speed the speed (in pixels) the bubble's radius will shrink
/// @param suspicionValue how likely the guard is to care about the sound
/// @param bubble_draw_mode the mode the outline is drawn in

with(obj_bubbleHandler){
	ds_list_add(bubbles,instance_create_layer(argument0,argument1,"Bubbles",obj_soundBubble));
	bubbles[|ds_list_size(bubbles) - 1].maxSize = argument2;
	bubbles[|ds_list_size(bubbles) - 1].growSpeed = argument3;
	bubbles[|ds_list_size(bubbles) - 1].shrinkSpeed = argument4;
	bubbles[|ds_list_size(bubbles) - 1].suspicionValue = argument5;
	bubbles[|ds_list_size(bubbles) - 1].drawMode = argument6;
}