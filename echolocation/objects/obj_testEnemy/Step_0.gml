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

	event_inherited();

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
		shoot(targetDir, x + lengthdir_x(7.5, targetDir), y + lengthdir_y(7.5, targetDir), true);
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