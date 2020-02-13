/// @func create_borders();
/// @description creates walls just offscreen to keep things from wandering off the screen
var test = instance_create_layer(0, -1200, "Instances", obj_wall);
with(instance_create_layer(0, -1 * obj_wall.sprite_height, "Background", obj_wall)){
	image_xscale = room_width / image_xscale
}
with(instance_create_layer(-1 * obj_wall.sprite_width, 0, "Background", obj_wall)){
	image_yscale = room_height / image_yscale;
}
with(instance_create_layer(0, room_height + obj_wall.sprite_height, "Background", obj_wall)){
	image_xscale = room_width / image_xscale;
}
with(instance_create_layer(room_width + obj_wall.sprite_width, 0, "Background", obj_wall)){
	image_yscale = room_height / image_yscale;
}
instance_destroy(test);