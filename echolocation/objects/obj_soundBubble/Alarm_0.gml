/// @description deal with enemies
with(obj_testEnemy){
	if(distance_to_point(other.x, other.y) <= global.bubbleSuspicionRange * other.maxSize){
		var point = array_create(2);
		suspicion += other.suspicionValue / 100;
		if(other.suspicionValue > 0){
			point = find_closest_unoccupied_cell(pathfindingGrid, other.x, other.y, 5);
			if(((goal[0] == homebase[0] && goal[1] == homebase[1]) || other.maxSize > soundSize) && !chasing){
				if(suspicion >= random(1)){
					soundSize = other.maxSize;
					array_copy(goal, 0, point, 0, 2);
				}
			}
		}
	}
}
