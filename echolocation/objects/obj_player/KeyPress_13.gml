/// @description temporary
with(obj_testEnemy){
	chasing = false;
	suspicion = 0;
}
var interactables = ds_list_create();
collision_line_list(x, y, x + lengthdir_x(50, pointerRotation), y + lengthdir_y(50, pointerRotation), obj_immobile, true, false, interactables, true);
if(ds_list_size(interactables) > 0){
	with(interactables[|0]){
		event_user(0);
	}
}