/// @description pathfinding
if(abs(suspicion) > 1){
	suspicion = sign(suspicion);
} else {
	suspicion -= 0.0001;
}

image_angle = dir;

if(chasing){
	goal = find_closest_unoccupied_cell(pathfindingGrid, obj_player.x, obj_player.y, 5);
	suspicion = 1;
}

if(shotCountdown < -25){
	if(chasing){
		spd = 8;
	} else {
		spd = 4;
	}
}

//do pathing here
if(abs(x - goal[0]) >= 2 && abs(y - goal[1]) >= 2){
	myPath = path_add();
	mp_grid_path(pathfindingGrid, myPath, x, y, goal[0], goal[1], true);
	path_start(myPath, spd, path_action_stop, true);
}


//if at home
if(abs(x - homebase[0]) <= 2 && abs(y - homebase[1]) <= 2){
	dir = homeDir;
}

if(x != xprevious || y != yprevious){
	//is moving
	stepCounter++;
	if(stepCounter == stepMax){
		stepCounter = 0;
		create_bubble(x, y, 25, 5, 1, 0);
	}
	dir = direction;
} else {
	//isn't moving
	if(shotCountdown < -25){
		//isn't stopped in order to shoot
		stepCounter = 0;
		if(abs(x - goal[0]) <= 20 && abs(y - goal[1]) <= 20){
			array_copy(goal, 0, homebase, 0, 2);
			chasing = false;
			soundSize = 0;
		}
	}
}

if(chasing){
	if(collision_line(x,y,obj_player.x, obj_player.y, obj_immobile, true, false) < 100000){
		dir = point_direction(x, y, goal[0], goal[1]);
	}
}

//spotted the player
if(distance_to_object(obj_player) <= 400 && angle_difference(dir, point_direction(x, y, obj_player.x, obj_player.y)) < 15){
	if(collision_line(x,y,obj_player.x, obj_player.y, obj_immobile, true, false) < 100000){
		chasing = true;
	}
}

if(chasing){
	if(distance_to_object(obj_player) <= 250 && collision_line(x,y,obj_player.x, obj_player.y, obj_immobile, true, false) < 100000 && shotCountdown < -25){
		beginShot = true;
	}
	if((distance_to_object(obj_player) >= 600 && collision_line(x,y,obj_player.x, obj_player.y, obj_immobile, true, false) >= 100000) || distance_to_object(obj_player) >= 1000){
		curiosityTimer = 200;
	}
	if(curiosityTimer == 0){
		curiosityTimer = -1;
		chasing = false;
		array_copy(goal, 0, homebase, 0, 2);
	}
}

if(curiosityTimer > 0){
	curiosityTimer--;
}

if(beginShot){
	beginShot = false;
	shotCountdown = 25;
	spd = 0;
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