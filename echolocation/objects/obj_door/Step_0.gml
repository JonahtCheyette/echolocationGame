/// @description do the opening
if(animationCounter >= 1){
	animationCounter--;
	image_angle += rotationDir * 90 / animationLength;
	create_bubble(x + lengthdir_x(sprite_height / 2, image_angle + 90), y + lengthdir_y(sprite_height / 2, image_angle + 90), 10, 3, 1, 0);
}
if (animationCounter == 1){
	create_bubble(x + lengthdir_x(sprite_height / 2, image_angle + 90), y + lengthdir_y(sprite_height / 2, image_angle + 90), 30, 10, 1, 1);
}