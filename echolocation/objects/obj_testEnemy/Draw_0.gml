/// @description silhouettes
draw_self();


draw_set_color(c_black);

draw_text(x,y,suspicion);

/*
draw_text(x,y + 10,"alerted: " + string(alerted));

draw_text(x,y + 20,"chasing: " + string(chasing));

draw_text(x,y + 30,"path speed: " + string(path_speed));
*/

if(myPath != undefined && path_exists(myPath)){
	draw_path(myPath, x, y, true);
}

draw_rectangle(goal[0] - 20, goal[1] - 20, goal[0] + 20, goal[1] + 20,0);


//silhouette
event_inherited();