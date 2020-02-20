/// @description declare bubble array
bubbles = ds_list_create();

global.bubbleSuspicionRange = 4;

draw_set_circle_precision(96);

enum bubbleDrawModes {
	REGULAR,
	GROWING,
	SHRINKING,
	NONE
}