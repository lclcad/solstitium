is_moving = key_left + key_right + key_up + key_down;

if(key_down){last_pressed = "down"}
if(key_left){last_pressed = "left"}
if(key_right){last_pressed = "right"}
if(key_up){last_pressed = "up"}

if(key_left){sprite_index = sPlayerWalkLeft}//seta o sprite de acordo c/ a direcao
if(key_right){sprite_index = sPlayerWalkRight}
if(key_up){sprite_index = sPlayerWalkBack}
if(key_down){sprite_index = sPlayerWalkFront}

if(is_moving == 0)//para a animacao e deixa o sprite no idle
{
	if(last_pressed == "down"){sprite_index = sPlayerIdleFront}
	else if(last_pressed == "left"){sprite_index = sPlayerIdleLeft}
	else if(last_pressed == "right"){sprite_index = sPlayerIdleRight}
	else if(last_pressed == "up"){sprite_index = sPlayerIdleBack}
}

var	move = key_right - key_left;
hsp = move * walksp;

var movey = key_down - key_up;
vsp = movey * walksp;

//lidar com diagonal
if (vsp != 0) and (hsp != 0) {spd = dagsp}
else {spd = walksp}

if(place_meeting(x, y+1, oWall) && key_up)
{
	vsp = -7;
}

if(place_meeting(x + hsp, y, oWall))
{
	while(!place_meeting(x+sign(hsp), y, oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
else{x += hsp;}//movimento

if(place_meeting(x, y + vsp, oWall))
{
	while(!place_meeting(x, y+sign(vsp), oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
else{y += vsp;}//movimento

if(key_attack) state = PLAYERSTATE.ATTACK;