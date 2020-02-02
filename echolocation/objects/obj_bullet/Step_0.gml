/// @description move the bullet, create sound bubbles

// collisions
if (place_meeting(x + hspd, y + vspd, obj_immobile)){
	hit = true;
	while(!place_meeting(x + hspd/spd, y + vspd/spd, obj_immobile)){
		x += hspd/spd;
		y += vspd/spd;
	}
}

if(!enemy){
	if (place_meeting(x + hspd, y + vspd, obj_testEnemy)){
		hit = true;
		hitEnemy = instance_place(x + hspd, y + vspd, obj_testEnemy);
		hitEnemy.enemyHealth -= damage;
		while(!place_meeting(x + hspd/spd, y + vspd/spd, obj_testEnemy)){
			x += hspd/spd;
			y += vspd/spd;
		}
	}
} else {
	if (place_meeting(x + hspd, y + vspd, obj_player)){
		hit = true;
		hitEnemy = instance_place(x + hspd, y + vspd, obj_player);
		player_damage(damage);
		while(!place_meeting(x + hspd/spd, y + vspd/spd, obj_player)){
			x += hspd/spd;
			y += vspd/spd;
		}
	}
}

if(hit){
	//create_bubble(x, y, 70, 9, 2, 10);
	hspd = 0;
	vspd = 0;
} else {
	create_bubble(x + hspd/2, y + vspd/2, 18, 2, 3, 25);
}

if(!firstFrame){
	x += hspd;
	y += vspd;
} else {
	firstFrame = false;
}

if(x > room_width || y > room_height || x < 0 || y < 0){
	hit = true;
}