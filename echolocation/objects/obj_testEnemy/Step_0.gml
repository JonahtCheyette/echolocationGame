/// @description Insert description here
if(!runBulletTimer){
	targetDir = point_direction(x, y, obj_player.x, obj_player.y);
	if(dir != targetDir){
		if(abs(angle_difference(dir, targetDir)) < turnSpeed){
			dir = targetDir;
		} else {
			dir -= sign(angle_difference(dir, targetDir)) * turnSpeed;
		}
	}

	//get the speed variables
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	// collisions
	if (place_meeting(x + hspd, y, obj_wall)){
		while(!place_meeting(x + sign(hspd), y, obj_wall)){
			x += sign(hspd);
		}
		hspd = 0;
	}

	if (place_meeting(x, y + vspd, obj_wall)){
		while(!place_meeting(x, y + sign(vspd), obj_wall)){
			y += sign(vspd);
		}
		vspd = 0;
	}

	if (place_meeting(x + hspd, y, obj_player)){
		while(!place_meeting(x + sign(hspd), y, obj_player)){
			x += sign(hspd);
		}
		hspd = 0;
	}

	x += hspd;

	if (place_meeting(x, y + vspd, obj_player)){
		while(!place_meeting(x, y + sign(vspd), obj_player)){
			y += sign(vspd);
		}
		vspd = 0;
	}

	y += vspd;

	if(!(vspd == 0 && hspd == 0)){
		stepCounter++;
		if(stepCounter == stepMax){
			create_bubble(x, y, 12, 2, 2);
			stepCounter = 0;
		}
	} else {
		stepCounter = 0;
	}
	
	if(shotCooldown <= 0){
		if(abs(targetDir - dir) < coneOfVision){
			runBulletTimer = true;
			bulletTimer = 0;
		}
	} else {
		shotCooldown--;
	}
	
} else {
	if(bulletTimer == bulletTimerMax){
		event_user(0);
		bulletTimer = 0;
		runBulletTimer = false;
		shotCooldown = shotCooldownMax;
	} else {
		bulletTimer++;
	}
}

if(enemyHealth <= 0){
	instance_destroy();
}

for(var i = ds_list_size(bullets) - 1; i >= 0; i--){
	if(bullets[|i].hit){
		instance_destroy(bullets[|i]);
		ds_list_delete(bullets,i);
	}
}