if(mouseX == 0 && mouseY == 0){ //confere se há uma direçao do dash
	mouseX = mouse_x;
	mouseY = mouse_y;
	x_inicial = x;
	y_inicial = y;
}

dash_dir = point_direction(x_inicial, y_inicial, mouseX, mouseY); //aponta para o dash
moveX = lengthdir_x(dash_spd, dash_dir); //movimento horizontal do dash
moveY = lengthdir_y(dash_spd, dash_dir); //movimento vertical do dash




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
	
	if(dash_dir >= 45 && dash_dir < 135){sprite_index = sPlayerWalkBack; sprite_set_speed(sprite_index, 20, spritespeed_framespersecond); last_pressed="up";}
	else if(dash_dir >= 135 && dash_dir < 225){sprite_index = sPlayerWalkLeft; sprite_set_speed(sprite_index, 20, spritespeed_framespersecond)last_pressed="left";}
	else if(dash_dir >= 225 && dash_dir < 315){sprite_index = sPlayerWalkFront; sprite_set_speed(sprite_index, 20, spritespeed_framespersecond)last_pressed="down";}
	else if(dash_dir >315 || dash_dir < 45){sprite_index = sPlayerWalkRight; sprite_set_speed(sprite_index, 20, spritespeed_framespersecond)last_pressed="right";}
	
	
dash_count += 1;

if(dash_count==15){state = PLAYERSTATE.IDLE; dash_cooldown = 0; dash_count = 0; mouseX = 0; mouseY = 0; sprite_set_speed(sprite_index, 10, spritespeed_framespersecond)}