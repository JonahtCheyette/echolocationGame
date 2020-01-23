/// @description get rid of bullets
for(var i = ds_list_size(bullets) - 1; i >= 0; i--){
	instance_destroy(bullets[|i]);
	ds_list_delete(bullets,i);
}