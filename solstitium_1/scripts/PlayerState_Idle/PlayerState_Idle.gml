is_moving = key_left + key_right + key_up + key_down;

hInput = key_right - key_left;
vInput = key_down - key_up;

//aponta para a direção que esta virado
if(is_moving){
	if(lock_pressed == false) dir = point_direction(0, 0, hInput, vInput);
	
	//verifica se a tecla foi pressionada e se nao tem dash acontecendo agora
	if(key_dash && dash_count == 0 && can_dash == true) dash_count += 1;
	
	if(dash_count < dash_frames && dash_count != 0 && can_dash == true) //o dash dura por #dash_frames
	{
		dash_count++;
		if(last_pressed == "left" || last_pressed == "right") //lock horizontal X
		{
			lock_pressed = true;
			moveX = lengthdir_x(dashspd, dir);
			if(place_meeting(x + moveX, y, oWall))
			{
				dash_count = 0;
				moveX = lengthdir_x(spd, dir);
				moveY = lengthdir_y(spd, dir);
			}
			else //se nao estiver colidindo com uma parede
			{
				moveX = lengthdir_x(dashspd, dir);
				moveY = 0;
			}
		}
		
		else if(last_pressed == "up" || last_pressed == "down") //lock vertical Y
		{
			lock_pressed = true;
			moveY = lengthdir_y(dashspd, dir);
			if(place_meeting(x, y + moveY, oWall))
			{
				dash_count = 0;
				moveX = lengthdir_x(spd, dir);
				moveY = lengthdir_y(spd, dir);
			}
			else //se nao estiver colidindo com uma parede
			{
				moveX = 0;
				moveY = lengthdir_y(dashspd, dir);
			}
		}
	}
	
	//situacao normal, ou no final do loop do dash
	else if(dash_count == dash_frames || dash_count == 0)
	{
		if(dash_count == dash_frames)
		{
			can_dash = false;
		}
		dash_count = 0;
		moveX = lengthdir_x(spd, dir);//movimento normal, com spd normal
		moveY = lengthdir_y(spd, dir);
		lock_pressed = false;
	}
	
	//lidar com o dash cooldown
	if(can_dash == false && dash_cooldown != 0)
	{
		can_dash = false;
		dash_cooldown--;
	}
	
	else if(can_dash == false && dash_cooldown == 0)
	{
		can_dash = true;
		dash_cooldown = dash_cooldown_duration;
	}

	if(place_meeting(x + moveX, y, oWall))
	{
		while(!place_meeting(x+sign(moveX), y, oWall))
		{
			x += sign(moveX);
		}
		moveX = 0;
	}
	else x += moveX; //movimento

	if(place_meeting(x, y + moveY, oWall))
	{
		while(!place_meeting(x, y+sign(moveY), oWall))
		{
			y += sign(moveY);
		}
		moveY = 0;
	}
	else y += moveY; //movimento
	
	//seta a sprite de direcao
	switch(dir){
		case 0: sprite_index = sPlayerWalkRight; break;
		case 90: sprite_index = sPlayerWalkBack; break;
		case 180: sprite_index = sPlayerWalkLeft; break;
		case 270: sprite_index = sPlayerWalkFront; break;
	}
}
else{
	if(last_pressed == "down"){sprite_index = sPlayerIdleFront}
	else if(last_pressed == "left"){sprite_index = sPlayerIdleLeft}
	else if(last_pressed == "right"){sprite_index = sPlayerIdleRight}
	else if(last_pressed == "up"){sprite_index = sPlayerIdleBack}
	state = PLAYERSTATE.IDLE;
}

if(key_attack) state = PLAYERSTATE.ATTACK;