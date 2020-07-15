hp = 2;
attack_threshold = 40;

//enum dos estados do enemy
enum ENEMYSTATE
{
	IDLE,
	ATTACK
}
//seta o default do enemy como idle
state = ENEMYSTATE.IDLE;