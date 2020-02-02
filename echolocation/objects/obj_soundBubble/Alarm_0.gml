/// @description deal with enemies
with(obj_testEnemy){
	if(distance_to_point(other.x, other.y) <= global.bubbleSuspicionRange * other.maxSize){
		var point = array_create(2);
		suspicion += other.suspicionValue / 100;
		if(other.suspicionValue > 0){
			point = find_closest_unoccupied_cell(pathfindingGrid, other.x, other.y, 5);
			//if(!alerted){
				if(suspicion >= random(1)){
					array_copy(goal, 0, point, 0, 2);
					show_debug_message("new goal");
					show_debug_message("goal x: " + string(goal[0]));
					show_debug_message("goal y: " + string(goal[1]));
					show_debug_message("point x: " + string(point[0]));
					show_debug_message("point y: " + string(point[1]));
				}
				/*
			} else {
				goal = point;
			}*/
		}
	}
}
