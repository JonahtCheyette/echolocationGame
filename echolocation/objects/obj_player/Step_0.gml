/// @description every frame
get_input();

dir = point_direction(0, 0, xaxis, yaxis);

//get length
if((xaxis == 0) && (yaxis == 0)){
	len = 0;
} else {
	len = spd;
}

//get the speed variables
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//calculating knockback
hspd += knockbackX;
vspd += knockbackY;

knockbackX *= 0.5;
knockbackY *= 0.5;

// collisions
if (place_meeting(x + hspd, y, obj_wall)){
	while(!place_meeting(x + sign(hspd), y, obj_wall)){
		x += sign(hspd);
	}
	hspd = 0;
}

if (place_meeting(x + hspd, y, obj_testEnemy)){
	while(!place_meeting(x + sign(hspd), y, obj_testEnemy)){
		x += sign(hspd);
	}
	player_damage(instance_place(x + sign(hspd), y, obj_testEnemy), 10);
	hspd = 0;
}

x += hspd;

if (place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y += sign(vspd);
	}
	vspd = 0;
}

if (place_meeting(x, y + vspd, obj_testEnemy)){
	while(!place_meeting(x, y + sign(vspd), obj_testEnemy)){
		y += sign(vspd);
	}
	player_damage(instance_place(x, y + sign(vspd), obj_testEnemy), 10);
	vspd = 0;
}

y += vspd;

for(var i = ds_list_size(bullets) - 1; i >= 0; i--){
	if(bullets[|i].hit){
		instance_destroy(bullets[|i]);
		ds_list_delete(bullets,i);
	}
}

if(!(vspd == 0 && hspd == 0)){
	stepCounter++;
	if(stepCounter == stepMax){
		create_bubble(x, y, 4, 1, 1);
		stepCounter = 0;
	}
} else {
	stepCounter = 0;
}

if(invincibilityFrames > 0){
	invincibilityFrames--;
}