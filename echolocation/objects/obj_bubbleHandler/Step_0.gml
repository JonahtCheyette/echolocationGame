/// @description create bubble whenever there's a click
if(mouse_button){
	create_bubble(mouse_x, mouse_y, 10, 1, 0.5);
}
for(var i = ds_list_size(bubbles) - 1; i >= 0; i--){
	if(bubbles[|i].size <= 0){
		instance_destroy(bubbles[|i]);
		ds_list_delete(bubbles,i);
	}
}