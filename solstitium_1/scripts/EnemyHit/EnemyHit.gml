var dano = argument0;

hp -= dano;

if(hp <= 0)
{
	hp = 0
	sprite_index = sEnemyDead;
}