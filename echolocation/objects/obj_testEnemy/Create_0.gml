/// @description Initializing everything
stepCounter = 0;
stepMax = 25;
maxHealth = 50;
enemyHealth = maxHealth;
beginShot = false;
shotCountdown = -1;
suspicion = 0;
homebase = [x,y];
goal = [x,y];
myPath = undefined;
soundSize = 0;
chasing = false;
dir = image_angle;
homeDir = dir;
spd = 8;
curiosityTimer = -1;