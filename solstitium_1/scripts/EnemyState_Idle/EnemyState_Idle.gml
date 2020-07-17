if(hp != 0){//checagem para a animação de dano
	if(animation_end()){
		sprite_index = sEnemy;
	}
}

//verifica se o player está perto o suficiente para o ataque
/*var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);
if(distance_to_player > attack_threshold)
{
	state = ENEMYSTATE.ATTACK;
}*/