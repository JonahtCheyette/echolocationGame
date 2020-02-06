/// @description declare bubble array
bubbles = ds_list_create();

global.bubbleSuspicionRange = 8;

draw_set_circle_precision(48);

create_bubble(1000,1000,10000000,100000,0, 0);

enum bubbleDrawModes {
	REGULAR,
	GROWING,
	SHRINKING,
	NONE
}