in_combat = true;

current_player_attack_damage = 1;//dá a abertura pra botar outras armas e tal

if(mouseX == 0 && mouseY == 0){//confere se há uma direção do ataque
	//determina a direção do ataque
	mouseX = mouse_x;
	mouseY = mouse_y;
	//determina a posição inicial do player
	x_inicial = x;
	y_inicial = y;
}

atk_dir = point_direction(x_inicial, y_inicial, mouseX, mouseY);
moveX = lengthdir_x(2, atk_dir); //movimento horizontal do ataque
moveY = lengthdir_y(2, atk_dir); //movimento vertical do ataque

//configura a hitbox do ataque
if(atk_hitbox == noone){
	atk_hitbox = instance_create_depth(x, y, depth - 200, oPlayerAttack);
}

//seta o sprite de acordo com direcao de ataque
if(atk_dir >= 315 || atk_dir < 45)
{
	last_pressed = "right";
	if(sprite_index != sPlayerAttackRight)
	{
		sprite_index = sPlayerAttackRight;
		image_index = 0;
		with (atk_hitbox){
			image_index = sPlayerAttackRightHB;
			mask_index = sPlayerAttackRightHB;
		}
	}
}

else if(atk_dir >= 45 && atk_dir <135)
{
	last_pressed = "up";
	if(sprite_index != sPlayerAttackBack)
	{
		sprite_index = sPlayerAttackBack;
		image_index = 0;
		with(atk_hitbox){
			image_index = sPlayerAttackBackHB;
			mask_index = sPlayerAttackBackHB;
		}
	}
}

else if(atk_dir >= 135 && atk_dir <225)
{
	last_pressed = "left";
	if(sprite_index != sPlayerAttackLeft)
	{
		sprite_index = sPlayerAttackLeft;
		image_index = 0;
		with(atk_hitbox){
			image_index = sPlayerAttackLeftHB;
			mask_index = sPlayerAttackLeftHB;
		}
	}
}

else if(atk_dir >= 225 && atk_dir <315)
{
	last_pressed = "down";
	if(sprite_index != sPlayerAttackFront)
	{
		sprite_index = sPlayerAttackFront;
		image_index = 0;
		with(atk_hitbox){
			image_index = sPlayerAttackFrontHB;
			mask_index = sPlayerAttackFrontHB;
		}
	}
}

if(image_index <= 3){ //verifica o frame do ataque para realizar movimento
	var collisionH = instance_place(x + moveX, y, collision);
	if(collisionH != noone && collisionH.collidable) //checa se há colisão horizontal
	{
		while(!place_meeting(x+sign(moveX), y, collision))
		{
			x += sign(moveX);
			atk_hitbox.x += sign(moveX);
		}
		moveX = 0;
	}
	else{x += moveX; atk_hitbox.x += moveX;}//movimento horizontal

	var collisionV = instance_place(x, y + moveY, collision);
	if(collisionV != noone && collisionV.collidable) //checa se há colisão vertical
	{
		while(!place_meeting(x, y+sign(moveY), collision))
		{
			y += sign(moveY);
			atk_hitbox.y += sign(moveY);
		}
		moveY = 0;
	}
	else{y += moveY; atk_hitbox.y += moveY;}//movimento vertical
}

//efetuação do ataque
with(atk_hitbox){
	var hitByAttackNow = ds_list_create(); //cria a lista dos inimigos acertados
	var hits = instance_place_list(x, y, oEnemy, hitByAttackNow, false); //ve quais inimigos foram acertados
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
					EnemyHit(oPlayer.current_player_attack_damage);
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
}


if(animation_end())//checa se o ataque terminou
{
	atk_hitbox = noone;
	instance_destroy(oPlayerAttack);
	mouseX = 0;
	mouseY = 0;
	state = PLAYERSTATE.IDLE;
	alarm[0] = 300;
}