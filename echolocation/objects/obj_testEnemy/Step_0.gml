/// @description pathfinding

if(abs(suspicion) > 1){
	suspicion = sign(suspicion);
} else {
	suspicion -= 0.0001;
}

//do pathing here
if(x - goal[0] <= 20 && y - goal[1] <= 20){
	myPath = path_add();
	mp_grid_path(pathfindingGrid, myPath, x, y, goal[0], goal[1], true);
	path_start(myPath, 1, path_action_stop, true);
}

if(x != xprevious || y != yprevious){
	//is moving
	stepCounter++;
	if(stepCounter == stepMax){
		stepCounter = 0;
		create_bubble(x, y, 20, 5, 1, 0);
	}
} else {
	stepCounter = 0;
	/*
	if(alerted){
		if(abs(x - goal[0]) <= 5 && abs(y - goal[1]) <= 5){
			alerted = false;
		}
	}
	*/
}

if(distance_to_object(obj_player) <= 200){
	if(collision_line(x,y,obj_player.x, obj_player.y, obj_immobile, true, false) < 100000 && shotCountdown < -25){
		//spotted the player
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
	if(myPath != undefined){
		path_delete(myPath);
	}
	instance_destroy();
}