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

x += hspd;
y += vspd;

if(!hit){
	create_bubble_ext(x + hspd/2, y + vspd/2,6,2,3, bubbleDrawModes.REGULAR);
}