/// @description animate
if(pushed && animationCounter < 5){
	x += lengthdir_x(pushSpeed, pushedDir);
	y += lengthdir_y(pushSpeed, pushedDir);
	animationCounter ++;
}