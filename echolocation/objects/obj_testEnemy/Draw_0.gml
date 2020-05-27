/// @description silhouettes
draw_self();

if(myPath != undefined){
	draw_set_color(c_white)
draw_path(myPath, x, y, true)
}

//silhouette
event_inherited();