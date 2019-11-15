/// @description create bubble whenever there's a click
if(mouse_button){
	bubble = instance_create_layer(mouse_x,mouse_y,"Instances",obj_soundBubble);
	bubble.size = 10;
}