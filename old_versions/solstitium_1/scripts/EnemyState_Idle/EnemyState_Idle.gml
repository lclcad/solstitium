if(hp != 0){//checagem para a animação de dano
	if(animation_end()){
		sprite_index = sEnemy;
	}
}

if(attack_cooldown < 120){attack_cooldown += 1; can_enemy_attack = false;} //recarga do ataque
if(attack_cooldown == 120) can_enemy_attack = true; //checa se houve o ataque

//verifica se o player está perto o suficiente para o ataque
var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
if(distance_to_player < oEnemy.attack_threshold && can_enemy_attack == true)
{
	state = ENEMYSTATE.ATTACK;
}
