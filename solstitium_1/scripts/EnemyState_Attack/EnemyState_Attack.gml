hitByAttack = ds_list_create();

var pl_dir = point_direction(x, y, oPlayer.x, oPlayer.y);

//direita
if(pl_dir == 360 || pl_dir == 0 || (pl_dir >= 315 && pl_dir <= 359) || (pl_dir > 0 && pl_dir <= 45))
{
	if(sprite_index != sEnemyAttackRight)
	{
		sprite_index = sEnemyAttackRight;
		image_index = 0;
		mask_index = sPlayerAttackRightHB;
	}
}

//cima
//TO DO: FAZER BAGULHO DE ATAQUE PRA CIMA E PRA BAIXO
else if(pl_dir > 45 && pl_dir <= 135)
{
	if(sprite_index != sEnemyAttackRight)
	{
		sprite_index = sEnemyAttackRight;
		image_index = 0;
		mask_index = sPlayerAttackRightHB;
	}
}

//esquerda
else if(pl_dir > 135 && pl_dir <= 225)
{
	if(sprite_index != sEnemyAttackLeft)
	{
		sprite_index = sEnemyAttackLeft;
		image_index = 0;
		mask_index = sPlayerAttackLeftHB;
	}
}

//baixo
else if(pl_dir > 225 && pl_dir < 315)
{
	if(sprite_index != sEnemyAttackLeft)
	{
		sprite_index = sEnemyAttackLeft;
		image_index = 0;
		mask_index = sPlayerAttackLeftHB;
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
				oPlayer.state = PLAYERSTATE.HIT;
			}
		}
	}
}
	ds_list_destroy(hitByAttackNow);

if(animation_end())
{
	ds_list_destroy(hitByAttack);
	mask_index = sEnemy;
	state = ENEMYSTATE.IDLE;
	attack_cooldown = 0;
	can_enemy_attack = false;
}