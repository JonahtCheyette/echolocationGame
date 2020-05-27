/// @description collisions
//get the speed variables
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

//calculating knockback
if(object_index == obj_player){
	hspd += knockbackX;
	vspd += knockbackY;

	knockbackX *= 0.5;
	knockbackY *= 0.5;


// collisions
if (place_meeting(x + hspd, y, obj_immobile)){
		while(!place_meeting(x + sign(hspd), y, obj_immobile)){
			x += sign(hspd);
		}
		hspd = 0;
	}
}

if(object_index == obj_player){
	if (place_meeting(x + hspd, y, obj_moves)){
		player_damage_knockback(instance_place(x + sign(hspd), y, obj_moves), 10);
	}
}

x += hspd;

if(object_index == obj_player){
	if (place_meeting(x, y + vspd, obj_immobile)){
		while(!place_meeting(x, y + sign(vspd), obj_immobile)){
			y += sign(vspd);
		}
		vspd = 0;
	}
}

if(object_index == obj_player){
	if (place_meeting(x, y + vspd, obj_moves)){
		player_damage_knockback(instance_place(x, y + sign(vspd), obj_moves), 10);
	}
}

y += vspd;