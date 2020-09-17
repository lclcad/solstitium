function PlayerHit() {
	in_combat = true;

	var dano = 1;
	if(is_hitable){
		hp -= dano;
		is_hitable = false;
	}

	if(hp == 0){
		state = PLAYERSTATE.DEAD;
	}

	else{
		state = PLAYERSTATE.IDLE;
		alarm[0] = room_speed;
	}


}
