next_box = mouse_check_button_released(mb_left);

if(next_box){
	state = PLAYERSTATE.IDLE;
	key_attack = false;
	if(instance_exists(oTextbox)){
		instance_destroy(oTextbox);
	}
}
dir = point_direction(x, y, dialog_char.x, dialog_char.y);

if(dir < 45 && dir > 315){sprite_index = sPlayerIdleRight;}
else if(dir <= 315 && dir >= 225){sprite_index = sPlayerIdleFront;}
else if(dir < 225 && dir >= 135){sprite_index = sPlayerIdleLeft;}
else{sprite_index = sPlayerIdleBack;}