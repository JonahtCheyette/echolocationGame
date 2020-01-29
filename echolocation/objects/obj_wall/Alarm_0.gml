/// @description find the sections that overlap with other walls
for(var i = 0; i < instance_number(obj_wall); i++){
	var instance = instance_find(obj_wall, i);
	if(instance != id){
		with(instance){
			if(other.y <= y + sprite_height && other.y + other.sprite_height >= y){
				if(other.x == x + sprite_width){
					erasersRight[array_height_2d(erasersRight), 0] = max(other.y, y);
					erasersRight[array_height_2d(erasersRight) - 1, 1] = min(other.y + other.sprite_height, y + sprite_height);
				}
				if(other.x + other.sprite_width == x){
					erasersLeft[array_height_2d(erasersLeft), 0] = max(other.y, y);
					erasersLeft[array_height_2d(erasersLeft) - 1, 1] = min(other.y + other.sprite_height, y + sprite_height);
				}
			}
			if(other.x <= x + sprite_width && other.x + other.sprite_width >= x){
				if(other.y == y + sprite_height){
					erasersBottom[array_height_2d(erasersBottom), 0] = max(other.x, x);
					erasersBottom[array_height_2d(erasersBottom) - 1, 1] = min(other.x + other.sprite_width, x + sprite_width);
				}
				if(other.y + other.sprite_height == y){
					erasersTop[array_height_2d(erasersTop), 0] = max(other.x, x);
					erasersTop[array_height_2d(erasersTop) - 1, 1] = min(other.x + other.sprite_width, x + sprite_width);
				}
			}
		}
	}
}