function ScorpioState_Attack(){
	hitByAttack = ds_list_create();
	
	var pl_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	
	//direita
	if(pl_dir == 360 || pl_dir == 0 || (pl_dir > 270 && pl_dir <= 359) || (pl_dir > 0 && pl_dir <= 90))
	{
		if(sprite_index != sEscorpiaoAttack)
		{
			sprite_index = sEscorpiaoAttack;
			image_index = 0;
			mask_index = sEscorpiaoAttackHB; //hitbox
		}
	}
	
	//esquerda
	else if(pl_dir > 90 && pl_dir <= 270)
	{
		if(sprite_index != sEscorpiaoAttackLeft)
		{
			sprite_index = sEscorpiaoAttackLeft;
			image_index = 0;
			mask_index = sEscorpiaoAttackHBLeft;
		}
	}
	
	var hitByAttackNow = ds_list_create(); //cria a lista do player acertado
	var hits = instance_place_list(x, y, oPlayer, hitByAttackNow, false); //ve qual player foi acertado
	if(hits > 0)
	{
		for(var i = 0; i < hits; i++)
		{
			var hitID = hitByAttackNow[| i]; //acha a entrada da ds list
			//se nao existe um objeto que nao ta na lista de obj ja atacados(-1 = nao achou)
			if(ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with(hitID)
				{
					if(state != PLAYERSTATE.HIT){
						state = PLAYERSTATE.HIT;
					}
				}
			}
		}
	}
		ds_list_destroy(hitByAttackNow);

	if(animation_end())
	{
		ds_list_destroy(hitByAttack);
		mask_index = sEscorpiaoRight;
		state = SCORPIOSTATE.WANDER;
		attack_cooldown = 0;
		can_enemy_attack = false;
	}
}