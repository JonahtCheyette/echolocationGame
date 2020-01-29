/// @description initialize
size = 1;
maxSize = 11;
growing = true;
growSpeed = 1;
shrinkSpeed = 1;
suspicionValue = 0;
drawMode = bubbleDrawModes.REGULAR;
with(obj_testEnemy){
	if(distance_to_point(other.x, other.y) <= 3 * other.maxSize){
		suspicion += suspicionValue / 100;
		if(suspicionValue > 0){
			if(suspicion > random(1)){
				alerted = true;
			}
		}
	}
}