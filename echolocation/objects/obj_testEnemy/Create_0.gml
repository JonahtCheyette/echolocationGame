/// @description Initializing everything
stepCounter = 0;
stepMax = 25;
maxHealth = 50;
enemyHealth = maxHealth;
beginShot = false;
shotCountdown = -1;
suspicion = 0;
homebase = array_create(2, x);
homebase[1] = y;
goal = array_create(2);
array_copy(goal, 0, homebase, 0, 2);
myPath = undefined;
soundSize = 0;
chasing = false;
dir = 90;
spd = 8;
curiosityTimer = -1;