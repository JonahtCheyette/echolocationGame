/// @description deal with enemies
with(obj_testEnemy){
	if(distance_to_point(other.x, other.y) <= 3 * other.maxSize && !chasing){
		suspicion += other.suspicionValue / 100;
		if(other.suspicionValue > 0){
			if(alerted){
				chasing = true;
				suspicion = 1;
			} else if(suspicion > random(1)) {
				alerted = true;
			}
		} else if (alerted) {
			if(suspicion < random(1)) {
				alerted = false;
			}
		}
	}
}
