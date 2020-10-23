function PlayerStateDead() {
	if(!instance_exists(oFadeOut)){
		fade = instance_create_depth(0, 0, -9999, oFadeOut);
		fade.alpha_spd = 0.05;
	}
	if(fade.current_alpha == 1){
		room_goto_previous();
		hp = 10;
		key_count = 0;
	}
}
