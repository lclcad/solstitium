var dano = argument0;

hp -= dano;

is_hit = true;

alarm[0] = room_speed * 0.1;

if(hp <= 0)
{
	hp = 0;
	state = ENEMYSTATE.DEAD;
}