/// @description every frame

get_input();
script_execute(move_state);

for(var i = ds_list_size(bullets) - 1; i >= 0; i--){
	if(bullets[|i].hit){
		instance_destroy(bullets[|i]);
		ds_list_delete(bullets,i);
	}
}