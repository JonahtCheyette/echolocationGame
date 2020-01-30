/// @description silhouettes
draw_self();

draw_set_color(c_black);
draw_text(x,y,suspicion);

draw_text(x,y + 20,"alerted: " + string(alerted));

draw_text(x,y + 40,"chasing: " + string(chasing));

//silhouette
event_inherited();