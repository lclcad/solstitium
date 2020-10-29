event_inherited(); //inherit o evento parent

player = oPlayer;

collidable = false;

hp = 20;
is_hit = false;
is_hitable = true;
attack_threshold = 40;
hitByAttack = ds_list_create();
can_enemy_attack = false;
attack_cooldown = 0;
stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;

attack_cooldown = 25;

//aggro
aggroCheck = 0;
aggroCheckDuration = 5;
enemyAggroRadius = 48;

enemyAggroRadius = 150;
enemyAttackRadius = 35;
enemyWanderDistance = 32;
//SPEED
scorpioSpeed = 0.8;
hSpeed = 0;
vSpeed = 0;

sprMove = sEscorpiaoRight;

collision = oParentCollision;

xTo = xstart;
yTo = ystart;
dir = 0;
//time
timePassed = 0;
waitDuration = 60;
wait = 0;

//sprAttack = sEscorpiaoAttack;

//enum dos estados do enemy
enum SCORPIOSTATE
{
	IDLE,
	ATTACK,
	WANDER,
	CHASE,
	WAIT,
	DEAD
}
//seta o default do enemy como idle
state = SCORPIOSTATE.WANDER;