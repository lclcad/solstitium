function PlantState_Dead(){
	if(instance_exists(oSpike)) instance_destroy(oSpike);
	state = PLANTSTATE.DEAD;
	is_hitable = false;
	sprite_index = sBoss1Die;
}