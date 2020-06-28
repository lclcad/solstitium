is_moving = key_left + key_right + key_up + key_down;

hInput = key_right - key_left;
vInput = key_down - key_up;

if(dash_cooldown <120){dash_cooldown +=1}

if(is_moving){
	dir = point_direction(0, 0, hInput, vInput);
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);


	if(place_meeting(x + moveX, y, oWall))
	{
		while(!place_meeting(x+sign(moveX), y, oWall))
		{
			x += sign(moveX);
		}
		moveX = 0;
	}
	else{x += moveX;}//movimento


	if(place_meeting(x, y + moveY, oWall))
	{
		while(!place_meeting(x, y+sign(moveY), oWall))
		{
			y += sign(moveY);
		}
		moveY = 0;
	}
	else{y += moveY;}//movimento

	switch(dir){
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
else{
	if(last_pressed == "down"){sprite_index = sPlayerIdleFront}
	else if(last_pressed == "left"){sprite_index = sPlayerIdleLeft}
	else if(last_pressed == "right"){sprite_index = sPlayerIdleRight}
	else if(last_pressed == "up"){sprite_index = sPlayerIdleBack}
	state = PLAYERSTATE.IDLE;
}

if(key_dash && dash_cooldown == 120) state = PLAYERSTATE.DASH;
if(key_attack) state = PLAYERSTATE.ATTACK;

