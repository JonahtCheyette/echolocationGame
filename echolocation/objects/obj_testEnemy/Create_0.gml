/// @description Initializing everything
spd = 1;
hspd = 0;
vspd = 0;
dir = 0;
stepCounter = 0;
stepMax = 25;
maxHealth = 50;
enemyHealth = maxHealth;
beginShot = false;
shotCountdown = -1;
myPath = undefined;
suspicion = 0;
alerted = false;
goal = array_create(2);
homebase = array_create(2, x);
homebase[1] = y;