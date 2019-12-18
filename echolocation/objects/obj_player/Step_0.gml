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

// collisions
if (collision_circle(x + hspd, y, 7.5, obj_wall, false, true) != noone){
	while(collision_circle(x + hspd, y, 7.5, obj_wall, false, true) == noone){
		x += sign(hspd);
	}
	hspd = 0;
}

if (place_meeting(x + hspd, y, obj_testEnemy)){
	while(!place_meeting(x + sign(hspd), y, obj_testEnemy)){
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd;

if (collision_circle(x, y + vspd, 7.5, obj_wall, false, true) != noone){
	while(collision_circle(x, y + vspd, 7.5, obj_wall, false, true) == noone){
		y += sign(vspd);
	}
	vspd = 0;
}

if (place_meeting(x, y + vspd, obj_testEnemy)){
	while(!place_meeting(x, y + sign(vspd), obj_testEnemy)){
		y += sign(vspd);
	}
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