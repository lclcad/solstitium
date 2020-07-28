var dano = 1;

hp -= dano;
sprite_index = sPlayerIdleFrontHit;
if(animation_end()){
	state = PLAYERSTATE.IDLE;
}
show_debug_message("player acertado");