/// @description temporary
with(obj_testEnemy){
	chasing = false;
	alerted = false;
	suspicion = false;
}
with(collision_line(x, y, x + lengthdir_x(50, pointerRotation), y + lengthdir_y(50, pointerRotation), obj_immobile, true, false)){
	event_user(0);
}