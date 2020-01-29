/// @description every frame
get_input();

dir = point_direction(0, 0, xaxis, yaxis);

//get length
if((xaxis == 0) && (yaxis == 0)){
	spd = 0;
} else {
	spd = 1;
}

event_inherited();

if(!(vspd == 0 && hspd == 0)){
	stepCounter++;
	if(stepCounter == stepMax){
		create_bubble(x, y, 10, 3, 1, 3);
		stepCounter = 0;
	}
} else {
	stepCounter = 0;
}

if(invincibilityFrames > 0){
	invincibilityFrames--;
}