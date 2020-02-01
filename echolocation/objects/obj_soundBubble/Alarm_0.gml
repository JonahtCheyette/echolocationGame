/// @description deal with enemies
with(obj_testEnemy){
	if(distance_to_point(other.x, other.y) <= global.bubbleSuspicionRange * other.maxSize){
		suspicion += other.suspicionValue / 100;
		if(other.suspicionValue > 0){
			
		}
	}
}
