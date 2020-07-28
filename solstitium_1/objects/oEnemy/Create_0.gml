hp = 2;
attack_threshold = 40;
hitByAttack = ds_list_create();
can_enemy_attack = false;
attack_cooldown = 0;

attack_cooldown = 30;

//enum dos estados do enemy
enum ENEMYSTATE
{
	IDLE,
	ATTACK,
	DEAD
}
//seta o default do enemy como idle
state = ENEMYSTATE.IDLE;