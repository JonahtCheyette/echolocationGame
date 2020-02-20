/// @description find what direction
animationCounter = animationLength;
if(abs(angle_difference(point_direction(x + lengthdir_x((sprite_height - 3)/2, image_angle + 90), y + lengthdir_y((sprite_height - 3)/2, image_angle + 90), pushX, pushY), image_angle)) < 90){
	rotationDir = 1;
} else {
	rotationDir = -1;
}