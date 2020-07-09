var dano = argument0;

hp -= dano;
sprite_index = sEnemyHit;

if(hp <= 0)
{
	hp = 0
	sprite_index = sEnemyDead;
}