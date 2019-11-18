/// @description create bubble whenever there's a click
if(mouse_button){
	ds_list_add(bubbles,instance_create_layer(mouse_x,mouse_y,"Bubbles",obj_soundBubble));
}
for(var i = ds_list_size(bubbles) - 1; i >= 0; i--){
	if(bubbles[|i].size <= 0){
		instance_destroy(bubbles[|i]);
		ds_list_delete(bubbles,i);
	}
}