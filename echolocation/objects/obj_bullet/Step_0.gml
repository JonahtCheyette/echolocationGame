/// @description move the bullet, create sound bubbles

// collisions
if (place_meeting(x + hspd, y + vspd, obj_wall)){
	hit = true;
	while(!place_meeting(x + hspd/spd, y + vspd/spd, obj_wall)){
		x += hspd/spd;
		y += vspd/spd;
	}
	create_bubble(x,y,15,1,2);
	hspd = 0;
	vspd = 0;
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
		create_bubble(x,y,15,1,2);
		hspd = 0;
		vspd = 0;
	}
}

if(!firstFrame){
	x += hspd;
	y += vspd;
} else {
	firstFrame = false;
}

if(!hit){
	create_bubble(x + hspd/2, y + vspd/2,6,2,3);
}

if(x > room_width || y > room_height || x < 0 || y < 0){
	hit = true;
}