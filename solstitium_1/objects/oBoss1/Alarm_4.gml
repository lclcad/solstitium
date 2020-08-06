/// @description volta para escolher o ataque
state = PLANTSTATE.CHOSEATTACK;
is_hitable = false;
with(oFlower){
	state = FLOWERSTATE.INACTIVE;
}
with(oFloor){
	if(will_fire){
		
	}
	state = FLOORSTATE.INACTIVE;
}
