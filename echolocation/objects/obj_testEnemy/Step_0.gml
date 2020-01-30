/// @description Insert description here
if(chasing){
	myPath = path_add();
	if(instance_exists(obj_player) && (distance_to_object(obj_player) > 180 || collision_line(x,y,obj_player.x,obj_player.y,obj_immobile,true,false))){
		mp_grid_path(pathfindingGrid, myPath, x, y, obj_player.x, obj_player.y, true);
		path_start(myPath, 1.5, path_action_stop, true);
	}
} else if (x != homebase[0] && y != homebase[1]){
	myPath = path_add();
	mp_grid_path(pathfindingGrid, myPath, x, y, homebase[0], homebase[1], true);
	path_start(myPath, 1.5, path_action_stop, true);
}

if(myPath != undefined){
	if(path_get_speed(myPath,path_position) != 0){
		stepCounter++;
		if(stepCounter == stepMax){
			stepCounter = 0;
			create_bubble(x, y, 20, 5, 1, 0);
		}
	}
	if(distance_to_object(obj_player) <= 200){
		if(collision_line(x,y,obj_player.x, obj_player.y, obj_immobile, true, false) < 100000 && shotCountdown < -25){
			beginShot = true;
			path_speed = 0;
			chasing = true;
			suspicion = 1;
			alerted = true;
		}
	}
}

if(beginShot){
	beginShot = false;
	shotCountdown = 25;
}

shotCountdown--;

if(shotCountdown == 0){
	shoot(point_direction(x,y,obj_player.x,obj_player.y), x, y, true);
}

if(enemyHealth <= 0){
	path_delete(myPath);
	instance_destroy();
}