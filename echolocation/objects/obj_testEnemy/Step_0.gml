/// @description Insert description here
if(instance_exists(obj_player) && shotCountdown < 0){
	myPath = path_add();
	mp_grid_path(pathfindingGrid, myPath, x, y, obj_player.x, obj_player.y, true);
	path_start(myPath, 1.5, path_action_stop, true);
}

if(myPath != undefined){
	if(path_get_speed(myPath,path_position) != 0){
		stepCounter++;
		if(stepCounter == stepMax){
			stepCounter = 0;
			create_bubble(x, y, 20,5,1);
		}
	}
	if(distance_to_object(obj_player) <= 200){
		if(collision_line(x,y,obj_player.x,obj_player.y,obj_immobile,true,false) < 100000 && shotCountdown < -25){
			beginShot = true;
			path_speed = 0;
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