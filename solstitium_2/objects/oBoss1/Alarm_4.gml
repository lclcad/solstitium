/// @description volta para escolher o ataque
x = start_x_pos;
y = start_y_pos;

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
