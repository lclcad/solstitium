hInput = key_right - key_left; //pega o input de movimento horizontal
vInput = key_down - key_up; //pega o input de movimento vertical
is_moving = bool(key_left + key_right + key_up + key_down); //pega se há movimento

if(is_moving){ //checa se há movimento
	dir = point_direction(0, 0, hInput, vInput); //define a direção do movimento
	moveX = lengthdir_x(spd, dir); //define o movimento horizontal
	moveY = lengthdir_y(spd, dir); //define o movimento vertical


	if(place_meeting(x + moveX, y, collision)) //checa se há colisão horizontal
	{
		while(!place_meeting(x+sign(moveX), y, collision))
		{
			x += sign(moveX);
		}
		moveX = 0;
	}
	else{x += moveX;}//movimento horizontal


	if(place_meeting(x, y + moveY, collision)) //checa se há colisão vertical
	{
		while(!place_meeting(x, y+sign(moveY), collision))
		{
			y += sign(moveY);
		}
		moveY = 0;
	}
	else{y += moveY;}//movimento vertical

	switch(dir){ //seta o sprite na direção do movimento
		case 0: sprite_index = sPlayerWalkRight; break;
		case 90: sprite_index = sPlayerWalkBack; break;
		case 180: sprite_index = sPlayerWalkLeft; break;
		case 270: sprite_index = sPlayerWalkFront; break;
		case 45: if(sprite_index == sPlayerWalkRight || sprite_index == sPlayerWalkBack){break;}else{sprite_index = sPlayerWalkBack; break;}
		case 135: if(sprite_index == sPlayerWalkLeft || sprite_index == sPlayerWalkBack){break;}else{sprite_index = sPlayerWalkBack; break;}
		case 225: if(sprite_index == sPlayerWalkLeft || sprite_index == sPlayerWalkFront){break;}else{sprite_index = sPlayerWalkFront; break;}
		case 315: if(sprite_index == sPlayerWalkRight || sprite_index == sPlayerWalkFront){break;}else{sprite_index = sPlayerWalkFront; break;}
	}
}
else{ //se não houver movimento seta o sprite idle
	if(last_pressed == "down"){sprite_index = sPlayerIdleFront}
	else if(last_pressed == "left"){sprite_index = sPlayerIdleLeft}
	else if(last_pressed == "right"){sprite_index = sPlayerIdleRight}
	else if(last_pressed == "up"){sprite_index = sPlayerIdleBack}
	is_moving = false;
}

if(dash_cooldown <120){dash_cooldown +=1} //recarga do dash

if(key_dash && dash_cooldown == 120) state = PLAYERSTATE.DASH; //checa se houve dash
if(key_attack) state = PLAYERSTATE.ATTACK; //checa se houve ataque

