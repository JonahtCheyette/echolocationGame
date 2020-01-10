/// @description Initializing everything
spd = 1;
hspd = 0;
vspd = 0;
dir = 0;
bullets = ds_list_create();
stepCounter = 0;
stepMax = 25;
bulletTimer = 0;
bulletTimerMax = 40;
runBulletTimer = false;
shotCooldown = 0;
shotCooldownMax = 120;
turnSpeed = 2;
coneOfVision = 5;
maxHealth = 50;
enemyHealth = maxHealth;