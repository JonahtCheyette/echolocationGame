/// @description move yourself if needed
if(moveCount > 0){
	moveCount --;
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	image_angle += spd * rotDir;
	if(place_meeting(x, y, obj_immobile)){
		if(!(onTable && instance_place(x,y,obj_immobile).object_index == obj_table)){
			moveCount = 0;
		}
	}
} else if (moveCount == 0){
	moveCount --;
	rotDir = floor(random(2));
	if(!rotDir){
		rotDir --;
	}
}
if(moveCount == 1){
	event_user(0);
}

if(place_meeting(x,y, obj_moves)){
	moveCount = 5;
	dir = point_direction(obj_moves.x, obj_moves.y, x, y);
	event_user(0);
}

if(onTable){
	if(place_meeting(x,y, obj_immobile)){
		if(instance_place(x,y,obj_immobile).object_index != obj_table){
			onTable = false;
		}
	}
}