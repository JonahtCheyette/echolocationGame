/// @description Initialize paper variables
instance_place_list(x, y, obj_paper, papers, false);
for(var i = 0; i < ds_list_size(papers); i++){
	with(papers[|i]){
		onTable = true;
	}
}
ds_list_clear(papers);