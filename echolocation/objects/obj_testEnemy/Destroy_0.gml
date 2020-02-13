/// @description remove yourslef from the alarmsystems you're in
with(obj_alarmSystem){
	for(var i = ds_list_size(enemies) - 1; i >= 0; i--){
		if(enemies[|i] == other.id){
			ds_list_delete(enemies, i);
		}
	}
}