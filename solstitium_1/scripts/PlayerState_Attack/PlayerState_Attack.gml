if(mouseX ==0 && mouseY == 0){//confere se há uma direção do ataque
	mouseX = mouse_x;
	mouseY = mouse_y;
	x_inicial = x;
	y_inicial = y;
}

atk_dir = point_direction(x_inicial, y_inicial, mouseX, mouseY);
moveX = lengthdir_x(2, atk_dir); //movimento horizontal do dash
moveY = lengthdir_y(2, atk_dir); //movimento vertical do dash

show_debug_message(atk_dir);

//setar sprite de acordo com direcao de ataque
if(atk_dir >= 315 || atk_dir < 45)
{
	last_pressed = "right";
	if(sprite_index != sPlayerAttackRight)
	{
		sprite_index = sPlayerAttackRight;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

mask_index = sPlayerAttackRightHB;
}

else if(atk_dir >= 45 && atk_dir <135)
{
	last_pressed = "up";
	if(sprite_index != sPlayerAttackBack)
	{
		sprite_index = sPlayerAttackBack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

mask_index = sPlayerAttackBackHB;
}


else if(atk_dir >= 135 && atk_dir <225)
{
	last_pressed = "left";
	if(sprite_index != sPlayerAttackLeft)
	{
		sprite_index = sPlayerAttackLeft;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

mask_index = sPlayerAttackLeftHB;
}

else if(atk_dir >= 225 && atk_dir <315)
{
	last_pressed = "down";
	if(sprite_index != sPlayerAttackFront)
	{
		sprite_index = sPlayerAttackFront;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

mask_index = sPlayerAttackFrontHB;
}
if(image_index < 3){
	if(place_meeting(x + moveX, y, oWall)) //colisão horizontal
	{
		while(!place_meeting(x+sign(moveX), y, oWall))
		{
			x += sign(moveX);
		}
		moveX = 0;
	}
	else{x += moveX;}//movimento


	if(place_meeting(x, y + moveY, oWall)) //colisão horizontal
	{
		while(!place_meeting(x, y+sign(moveY), oWall))
		{
			y += sign(moveY);
		}
		moveY = 0;
	}
	else{y += moveY;}//movimento
}

var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, oEnemy, hitByAttackNow, false);
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
				EnemyHit(2);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayerIdleFront;

if(animation_end())
{
	if(last_pressed == "right") {sprite_index = sPlayerIdleRight}
	if(last_pressed == "left") {sprite_index = sPlayerIdleLeft}
	mouseX = 0;
	mouseY = 0;
	state = PLAYERSTATE.IDLE;
}