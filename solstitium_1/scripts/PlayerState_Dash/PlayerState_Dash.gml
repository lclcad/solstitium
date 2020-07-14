if(mouseX == 0 && mouseY == 0){ //confere se há uma direçao do dash
	mouseX = mouse_x;
	mouseY = mouse_y;
	x_inicial = x;
	y_inicial = y;
}

dash_dir = point_direction(x_inicial, y_inicial, mouseX, mouseY); //aponta para o dash
moveX = lengthdir_x(dash_spd, dash_dir); //movimento horizontal do dash
moveY = lengthdir_y(dash_spd, dash_dir); //movimento vertical do dash


//seta o sprite na direção do dash	
if(dash_dir >= 45 && dash_dir < 135){
	if(sprite_index != sPlayerDashBack){
		sprite_index = sPlayerDashBack;
		image_index = 0;
	}
}
else if(dash_dir >= 135 && dash_dir < 225){
	last_pressed = "left";
	if(sprite_index != sPlayerDashLeft){
		sprite_index = sPlayerDashLeft;
		image_index = 0;
	}
}
else if(dash_dir >= 225 && dash_dir < 315){
	if(sprite_index != sPlayerDashFront){
		sprite_index = sPlayerDashFront;
		image_index = 0;
	}
}
else if(dash_dir >= 315 || dash_dir < 45){
	last_pressed="right";
	if(sprite_index != sPlayerDashRight){
		sprite_index = sPlayerDashRight;
		image_index = 0;
	}
}
	
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

//cria o efeito de velocidade
if(image_index mod 120){
	var dasheffect = instance_create_depth(x, y, depth + 1, oPlayerDashEffect);
	dasheffect.sprite_index = sprite_index;
}	
	
	
	


if(animation_end()){state = PLAYERSTATE.IDLE; dash_cooldown = 0; mouseX = 0; mouseY = 0;}