/// @description detect shared edges
erasersTop = [];
erasersRight = [];
erasersBottom = [];
erasersLeft = [];
for(var i = 0; i < instance_count; i++){
	if(instance_id[i] != id){
		with(instance_id[i]){
			if((other.y >= y && other.y <= y + sprite_height) || (other.y + other.sprite_height >= y && other.y + other.sprite_height <= y + sprite_height)){
				if(other.x == x + sprite_width){
					erasersLeft[array_length_1d(erasersLeft)] = [max(other.y, y), min(other.y + other.sprite_height, y + sprite_height)];
				}
				if(other.x + other.sprite_width == x){
					erasersRight[array_length_1d(erasersRight)] = [max(other.y, y), min(other.y + other.sprite_height, y + sprite_height)];
				}
			}
			if((other.x >= x && other.x <= x + sprite_width) || (other.x + other.sprite_width >= x && other.x + other.sprite_width <= x + sprite_width)){
				if(other.y == y + sprite_height){
					erasersTop[array_length_1d(erasersTop)] = [max(other.x, x), min(other.x + other.sprite_width, x + sprite_width)];
				}
				if(other.y + other.sprite_height == y){
					erasersBottom[array_length_1d(erasersBottom)] = [max(other.x, x), min(other.x + other.sprite_width, x + sprite_width)];
				}
			}
		}
	}
}
