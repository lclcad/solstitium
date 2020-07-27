switch (state)
{
	case ENEMYSTATE.IDLE: EnemyState_Idle(); break;
	case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
}