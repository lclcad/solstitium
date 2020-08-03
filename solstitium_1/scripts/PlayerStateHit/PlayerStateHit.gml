in_combat = true;

var dano = 1;
if(!dmg_recieved){
	hp -= dano;
	dmg_recieved = true;
}
sprite_index = sPlayerIdleFrontHit;
if(animation_end()){
	state = PLAYERSTATE.IDLE;
	dmg_recieved = false;
	alarm[0] = 300;
}